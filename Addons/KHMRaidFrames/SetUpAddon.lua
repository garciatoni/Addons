local KHMRaidFrames = LibStub("AceAddon-3.0"):GetAddon("KHMRaidFrames")
local L = LibStub("AceLocale-3.0"):GetLocale("KHMRaidFrames")

local _G, CompactRaidFrameContainer = _G, CompactRaidFrameContainer

-- SETUP
function KHMRaidFrames:OnInitialize()
    self:RegisterEvent("COMPACT_UNIT_FRAME_PROFILES_LOADED")
end

function KHMRaidFrames:Setup()
    local defaults_settings = self:Defaults()
    self.db = LibStub("AceDB-3.0"):New("KHMRaidFramesDB", defaults_settings)

    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)

    local LibDualSpec = LibStub("LibDualSpec-1.0")
    LibDualSpec:EnhanceDatabase(self.db, "KHMRaidFrames")
    LibDualSpec:EnhanceOptions(profiles, self.db)

    self.config = LibStub("AceConfigRegistry-3.0")
    self.config:RegisterOptionsTable("KHMRaidFrames", self:SetupOptions())
    self.config:RegisterOptionsTable("KHM Profiles", profiles)
    self.config:RegisterOptionsTable("KHM Profile Stuff", self:SetupProfiles())

    self.dialog = LibStub("AceConfigDialog-3.0")
    self.dialog.general = self.dialog:AddToBlizOptions("KHMRaidFrames", L["KHMRaidFrames"])
    self.dialog.profiles = self.dialog:AddToBlizOptions("KHM Profiles", L["Profiles"], "KHMRaidFrames")
    self.dialog.stuff = self.dialog:AddToBlizOptions("KHM Profile Stuff", L["KHM Profile Stuff"], "KHMRaidFrames")

    self:SecureHookScript(self.dialog.general, "OnShow", "OnOptionShow")
    self:SecureHookScript(self.dialog.general, "OnHide", "OnOptionHide")

    for i, command in ipairs{"khm", "лрь"} do
        self:RegisterChatCommand(command, function(arg, ...)
            local args = {}

            for token in string.gmatch(arg, "[^%s]+") do
                table.insert(args, token)
            end

            if args[1] == "rl" or args[1] == "кд" then
                self:CompactUnitFrameProfiles_ApplyProfile()
                self:CompactRaidFrameContainer_LayoutFrames()
                self:Print("Hard Reload")
                return
            end

            if args[1] == "dump" then
                self.PrintV(_G[args[2]])
                return
            end

            if args[1] == "debug" then
                self.db.profile.debug = not self.db.profile.debug

                if self.db.profile.debug then
                    _G["KHM"] = self
                end

                self:Print("Debug mode is "..(self.db.profile.debug and "on" or "off"))
                return
            end

            InterfaceOptionsFrame_OpenToCategory("KHMRaidFrames")
            InterfaceOptionsFrame_OpenToCategory("KHMRaidFrames")
        end)
    end

    for i, command in ipairs{"rl", "кд"} do
        self:RegisterChatCommand(command, function() ReloadUI() end)
    end

    if self.db.profile.debug then
        _G["KHM"] = self
    end

    self:SetInternalVariables()
end

function KHMRaidFrames:SetInternalVariables()
    self:GetRaidProfileSettings()

    self.isOpen = false

    self.maxFrames = 10
    self.virtual = {
        shown = false,
        frames = {
            buffFrames = {},
            debuffFrames = {},
            dispelDebuffFrames = {},
        },
        groupType = "raid",
    }

    self.aurasCache = {}
    self.processedFrames = {}
    self.coloredFrames = {}

    self.glowingFrames = {
        auraGlow = {
            buffFrames = {},
            debuffFrames = {},
        },
        frameGlow = {
            buffFrames = {},
            debuffFrames = {},
        },
    }

    -- throttling refreshes
    self.refreshingSettings = false
    self.reloadingSettings = false
    self.profileThrottleSecs = 0.1
    self.refreshThrottleSecs = 0.1


    local Masque = LibStub("Masque", true)
    self.Masque = Masque and {} or nil

    if self.db.profile.Masque then
        if self.Masque then
            self.Masque.buffFrames = Masque:Group("KHMRaidFrames", "Buff Auras")
            self.Masque.debuffFrames = Masque:Group("KHMRaidFrames", "Debuff Auras")
        end
    end

    self:GetVirtualFrames()
end
--

-- HOOKS
function KHMRaidFrames:COMPACT_UNIT_FRAME_PROFILES_LOADED()
    self:Setup()

    self.db.RegisterCallback(self, "OnProfileChanged", function(...) self:SafeRefresh() end)
    self.db.RegisterCallback(self, "OnProfileCopied", function(...) self:SafeRefresh() end)
    self.db.RegisterCallback(self, "OnProfileReset", function(...) self:SafeRefresh() end)

    self:RegisterEvent("PLAYER_REGEN_ENABLED", "OnEvent")
    self:RegisterEvent("PLAYER_ROLES_ASSIGNED", "OnEvent")
    self:RegisterEvent("RAID_TARGET_UPDATE", "OnEvent")
    self:RegisterEvent("PARTY_LEADER_CHANGED", "OnEvent")
    self:RegisterEvent("GROUP_LEFT", "OnEvent")

    self:SecureHook("CompactRaidFrameContainer_LayoutFrames")
    self:SecureHook("CompactUnitFrame_UpdateHealPrediction")
    self:SecureHook("CompactUnitFrame_UpdateAuras")
    self:SecureHook("CompactUnitFrame_UpdateAll")

    self.RefreshProfileSettings()

    -- custom interface display
    self:SecureHook(self.dialog, "FeedGroup", function() self:CustomizeOptions() end)

    self:SecureHook("CompactUnitFrameProfiles_ApplyProfile")

    self:SafeRefresh()
end

function KHMRaidFrames:OnEvent(event, ...)
    local groupType = IsInRaid() and "raid" or "party"

    if event == "PLAYER_REGEN_ENABLED" then
        for frame in self.IterateCompactFrames(groupType) do
            if not InCombatLockdown() then
                self:AddSubFrames(frame, groupType)
            end
        end

        if self.deffered then
            self:GetRaidProfileSettings()

            self:SafeRefresh()

            self.deffered = false
        end
    elseif event == "RAID_TARGET_UPDATE" then
        self:UpdateRaidMark(groupType)
        self:CustomizeOptions()
    elseif event == "PLAYER_ROLES_ASSIGNED" then
        self:UpdateRaidMark(groupType)
        self:CustomizeOptions()
    elseif event == "PARTY_LEADER_CHANGED" or event == "GROUP_LEFT" then
        self.UpdateLeaderIcon()
    end
end

function KHMRaidFrames.RefreshProfileSettings()
    local groupType = IsInRaid() and "raid" or "party"

    KHMRaidFrames.processedFrames = {}
    KHMRaidFrames.coloredFrames = {}

    KHMRaidFrames.RevertResourceBar()

    KHMRaidFrames.currentGroup = groupType

    local db = KHMRaidFrames.db.profile[KHMRaidFrames.currentGroup].nameAndIcons

    -- unhooking
    if not db.name.enabled and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateName") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateName")
    end

    if not db.statusText.enabled and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateStatusText") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateStatusText")
    end

    if (not db.roleIcon.enabled and not KHMRaidFrames.db.profile[groupType].frames.showResourceOnlyForHealers) and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateRoleIcon") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateRoleIcon")
    end

    if not db.readyCheckIcon.enabled and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateReadyCheck") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateReadyCheck")

    end

    if not db.centerStatusIcon.enabled and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateCenterStatusIcon") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateCenterStatusIcon")
    end


    if not KHMRaidFrames.db.profile[KHMRaidFrames.currentGroup].frames.colorEnabled and KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateHealthColor") then
        KHMRaidFrames:Unhook("CompactUnitFrame_UpdateHealthColor")
    end

    -- hooking
    if KHMRaidFrames.db.profile[KHMRaidFrames.currentGroup].frames.colorEnabled and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateHealthColor") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateHealthColor",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                KHMRaidFrames:CompactUnitFrame_UpdateHealthColorInternal(frame, IsInRaid() and "raid" or "party")
            end
        )
    end

    if db.name.enabled and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateName") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateName",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                KHMRaidFrames.SetUpNameInternal(frame, IsInRaid() and "raid" or "party")
            end
        )
    end

    if db.statusText.enabled and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateStatusText") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateStatusText",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                KHMRaidFrames.SetUpStatusTextInternal(frame, IsInRaid() and "raid" or "party")
            end
        )
    end

    if (db.roleIcon.enabled or KHMRaidFrames.db.profile[groupType].frames.showResourceOnlyForHealers) and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateRoleIcon") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateRoleIcon",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                if not frame.unit then return end

                local role = KHMRaidFrames.GetRole(frame)

                local groupType = IsInRaid() and "raid" or "party"

                KHMRaidFrames:SetUpRoleIconInternal(frame, groupType, role)
                KHMRaidFrames.UpdateResourceBar(frame, groupType, role)
            end
        )
    end

    if db.readyCheckIcon.enabled and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateReadyCheck") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateReadyCheck",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                KHMRaidFrames:SetUpReadyCheckIconInternal(frame, IsInRaid() and "raid" or "party")
            end
        )
    end

    if db.centerStatusIcon.enabled and not KHMRaidFrames:IsHooked("CompactUnitFrame_UpdateCenterStatusIcon") then
        KHMRaidFrames:SecureHook(
            "CompactUnitFrame_UpdateCenterStatusIcon",
            function(frame)
                if KHMRaidFrames.SkipFrame(frame) then return end

                KHMRaidFrames:SetUpCenterStatusIconInternal(frame, IsInRaid() and "raid" or "party")
            end
        )
    end

    -- disabling
    if not db.leaderIcon.enabled then
        KHMRaidFrames.UpdateLeaderIcon()
    end

    if not KHMRaidFrames.db.profile[KHMRaidFrames.currentGroup].raidIcon.enabled then
        KHMRaidFrames:UpdateRaidMark()
    end

    -- reverting
    KHMRaidFrames.RevertName()
    KHMRaidFrames.RevertStatusText()
    KHMRaidFrames.RevertRoleIcon()
    KHMRaidFrames.RevertReadyCheckIcon()
    KHMRaidFrames.RevertStatusIcon()
    KHMRaidFrames.ReverseHealthBarColors()
    KHMRaidFrames.RevertRaidTargetIcon()
    KHMRaidFrames.RevertLeaderIcon()
end
--

-- PROFILES
function KHMRaidFrames:CompactUnitFrameProfiles_ApplyProfile(profile)
    self:GetRaidProfileSettings(profile)

    if profile and (self.db:GetCurrentProfile() ~= profile) then
        self.SyncProfiles(profile)
    end

    if self.db.profile.Masque then
        if self.Masque then
            self.Masque.buffFrames = self.Masque.buffFrames or Masque:Group("KHMRaidFrames", "Buff Auras")
            self.Masque.debuffFrames = self.Masque.debuffFrames or Masque:Group("KHMRaidFrames", "Debuff Auras")
        end
    end

    if not self.reloadingSettings then
        self.reloadingSettings = true
        C_Timer.After(self.profileThrottleSecs, function()
            self.ReloadSetting()
        end)
    end
end

function KHMRaidFrames.ReloadSetting()
    KHMRaidFrames.RefreshProfileSettings()
    KHMRaidFrames:SafeRefresh()
    KHMRaidFrames.reloadingSettings = false
end

function KHMRaidFrames:GetRaidProfileSettings(profile)
    local settings

    if InCombatLockdown() then
        profile = profile or self.db.profile.current_profile
        settings = self.db.profile.saved_profiles[profile] or self.db.profile.saved_profiles.default
        self.useCompactPartyFrames = true
        self.deffered = true
    else
        profile = profile or GetActiveRaidProfile()
        settings = GetRaidProfileFlattenedOptions(profile)

        if not settings then
            settings = self.db.profile.saved_profiles[profile] or self.db.profile.saved_profiles.default
        end

        self.useCompactPartyFrames = true
    end

    self.horizontalGroups = settings.horizontalGroups
    self.displayMainTankAndAssist =  settings.displayMainTankAndAssist
    self.keepGroupsTogether = settings.keepGroupsTogether
    self.displayBorder = settings.displayBorder
    self.displayPowerBar = settings.displayPowerBar
    self.displayPets = settings.displayPets
    self.useClassColors = settings.useClassColors
    self.healthText = settings.healthText

    local savedProfile = {}
    savedProfile.horizontalGroups = settings.horizontalGroups
    savedProfile.displayMainTankAndAssist = settings.displayMainTankAndAssist
    savedProfile.keepGroupsTogether = settings.keepGroupsTogether
    savedProfile.displayBorder = settings.displayBorder
    savedProfile.displayPowerBar = settings.displayPowerBar
    savedProfile.displayPets = settings.displayPets
    savedProfile.useCompactPartyFrames = self.useCompactPartyFrames
    savedProfile.useClassColors = settings.useClassColors

    self.db.profile.current_profile = profile
    self.db.profile.saved_profiles[profile] = savedProfile
end

function KHMRaidFrames.SyncProfiles(profile)
    if KHMRaidFrames_SyncProfiles then
        local dbProfiles = KHMRaidFrames.db:GetProfiles()

        for _, v in ipairs(dbProfiles) do
            if profile == v then
                KHMRaidFrames.db:SetProfile(profile)

                KHMRaidFrames:CustomizeOptions()
            end
        end
    end
end
--

-- CONFIG PANEL CLOSE/OPEN
function KHMRaidFrames:OnOptionShow()
    self.isOpen = true
    self:ShowRaidFrame()
    self:ConfigOptionsOpen()
end

function KHMRaidFrames:OnOptionHide()
    self.isOpen = false

    self:HideRaidFrame()
end

function KHMRaidFrames:ShowRaidFrame()
    if not InCombatLockdown() and not IsInGroup() and self.useCompactPartyFrames then
        CompactRaidFrameContainer:Show()
        CompactRaidFrameManager:Show()
    end
end

function KHMRaidFrames:HideRaidFrame()
    if not self.db.profile.party.frames.showPartySolo and not InCombatLockdown() and not IsInGroup() and self.useCompactPartyFrames then
        CompactRaidFrameContainer:Hide()
        CompactRaidFrameManager:Hide()
    end

    self:HideVirtual()
end
--

-- DEFAULTS RELATED FUNCTIONS
function KHMRaidFrames:Defaults()
    local SharedMedia = LibStub("LibSharedMedia-3.0")

    local defaults_settings = {profile = {party = {}, raid = {}, glows = {}}}
    KHMRaidFrames.font = SharedMedia.DefaultMedia.font or "Friz Quadrata TT"

    local commons = {
        frames = {
            hideGroupTitles = false,
            texture = "Blizzard Raid Bar",
            clickThrough = false,
            enhancedAbsorbs = false,
            showPartySolo = false,
            tracking = {},
            trackingStr = "",
            autoScaling = true,
            showResourceOnlyForHealers = false,
            alpha = 1.0,
            alphaBackgound = 1.0,
            powerBarHeight = 8,
            powerBarTexture = "Blizzard Raid PowerBar",
            colorEnabled = false,
            color = {1, 1, 1},
            backGroundColor = {0.1, 0.1, 0.1},
        },
        dispelDebuffFrames = {
            num = 3,
            numInRow = 3,
            rowsGrowDirection = "TOP",
            anchorPoint = "TOPRIGHT",
            growDirection = "LEFT",
            size = 12,
            xOffset = 0,
            yOffset = 0,
            exclude = {},
            excludeStr = "",
            alpha = 1.0,
        },
        debuffFrames = {
            num = 3,
            numInRow = 3,
            rowsGrowDirection = "TOP",
            anchorPoint = "BOTTOMLEFT",
            growDirection = "RIGHT",
            size = 11,
            xOffset = 0,
            yOffset = 0,
            exclude = {},
            excludeStr = "",
            bigDebuffSize = 11 + 9,
            showBigDebuffs = true,
            smartAnchoring = true,
            alpha = 1.0,
        },
        buffFrames = {
            num = 3,
            numInRow = 3,
            rowsGrowDirection = "TOP",
            anchorPoint = "BOTTOMRIGHT",
            growDirection = "LEFT",
            size = 11,
            xOffset = 0,
            yOffset = 0,
            exclude = {},
            excludeStr = "",
            alpha = 1.0,
        },
        raidIcon = {
            enabled = false,
            size = 15,
            xOffset = 0,
            yOffset = 0,
            anchorPoint = "TOP",
            alpha = 1.0,
        },
        nameAndIcons = {
            name = {
                font = KHMRaidFrames.font,
                size = 11,
                flag = "None",
                hJustify = "LEFT",
                xOffset = 0,
                yOffset = -1,
                showServer = true,
                classColoredNames = false,
                enabled = false,
                hide = false,
            },
            statusText = {
                font = KHMRaidFrames.font,
                size = 12,
                flag = "None",
                hJustify = "CENTER",
                xOffset = 0,
                yOffset = 0,
                enabled = false,
                abbreviateNumbers = false,
                precision = 0,
                notShowStatuses = false,
                showPercents = false,
                color = {1, 1, 1, 1},
                classColoredText = false,
            },
            roleIcon = {
                size = 12,
                xOffset = 0,
                yOffset = 0,
                healer = "",
                damager = "",
                tank = "",
                vehicle = "",
                toggle = false,
                enabled = false,
                colors = {
                    healer = {1, 1, 1, 1},
                    damager = {1, 1, 1, 1},
                    tank = {1, 1, 1, 1},
                    vehicle = {1, 1, 1, 1},
                },
                hide = false,
            },
            readyCheckIcon  = {
                size = 15 ,
                xOffset = 0,
                yOffset = 0,
                ready = "",
                notready = "",
                waiting = "",
                toggle = false,
                enabled = false,
                colors = {
                    ready = {1, 1, 1, 1},
                    notready = {1, 1, 1, 1},
                    waiting = {1, 1, 1, 1},
                },
                hide = false,
            },
            centerStatusIcon = {
                size = 22,
                xOffset = 0,
                yOffset = 0,
                inOtherGroup = "",
                hasIncomingResurrection = "",
                hasIncomingSummonPending = "",
                hasIncomingSummonAccepted = "",
                hasIncomingSummonDeclined = "",
                inOtherPhase = "",
                toggle = false,
                enabled = false,
                colors = {
                    inOtherGroup = {1, 1, 1, 1},
                    hasIncomingResurrection = {1, 1, 1, 1},
                    hasIncomingSummonPending = {1, 1, 1, 1},
                    hasIncomingSummonAccepted = {1, 1, 1, 1},
                    hasIncomingSummonDeclined = {1, 1, 1, 1},
                    inOtherPhase = {1, 1, 1, 1},
                },
                hide = false,
            },
            leaderIcon = {
                size = 10 ,
                xOffset = 0,
                yOffset = 0,
                anchorPoint = "TOPRIGHT",
                icon = "",
                enabled = false,
                alpha = 1.0,
                colors = {
                    icon = {1, 1, 1, 1},
                },
            },
        },
    }
    defaults_settings.profile.party = commons
    defaults_settings.profile.raid = commons

    defaults_settings.profile.glows = {
        auraGlow = {
            buffFrames = {
                type = "pixel",
                options = self.GetGlowOptions(),
                tracking = {},
                trackingStr = "",
                enabled = false,
                useDefaultsColors = true,
            },
            debuffFrames = {
                type = "pixel",
                options = self.GetGlowOptions(),
                tracking = {},
                trackingStr = "",
                enabled = false,
                useDefaultsColors = true,
            },
            defaultColors = self.defuffsColors,
        },
        frameGlow = {
            buffFrames = {
                type = "pixel",
                options = self.GetGlowOptions(),
                tracking = {},
                trackingStr = "",
                enabled = false,
                useDefaultsColors = true,
            },
            debuffFrames = {
                type = "pixel",
                options = self.GetGlowOptions(),
                tracking = {},
                trackingStr = "",
                enabled = false,
                useDefaultsColors = true,
            },
            defaultColors = self.defuffsColors,
        },
        glowBlockList = {
            tracking = {},
            trackingStr = "",
        },
    }

    defaults_settings.profile.Masque = false
    defaults_settings.profile.saved_profiles = {
        default = {
            displayPowerBar = true,
            frameHeight = self.NATIVE_UNIT_FRAME_HEIGHT,
            frameWidth = self.NATIVE_UNIT_FRAME_WIDTH,
            displayBorder = true,
            keepGroupsTogether = false,
            displayPets = true,
            useCompactPartyFrames = true,
            horizontalGroups = false,
            displayMainTankAndAssist = false,
        }
    }

    defaults_settings.profile.current_profile = "default"

    return defaults_settings
end

function KHMRaidFrames:RestoreDefaults(groupType, frameType, subType)
    if InCombatLockdown() then
        print("Can not refresh settings while in combat")
        return
    end

    local defaults_settings = subType and self:Defaults()["profile"][groupType][frameType][subType] or self:Defaults()["profile"][groupType][frameType]

    for k, v in pairs(defaults_settings) do
        self.db.profile[groupType][frameType][k] = v
    end

    self:SafeRefresh(groupType)
end

function KHMRaidFrames:CopySettings(dbFrom, dbTo)
    if InCombatLockdown() then
        print("Can not refresh settings while in combat")
        return
    end

    for k, v in pairs(dbFrom) do
        if dbTo[k] ~= nil then
            dbTo[k] = v
        end
    end

    self:SafeRefresh(groupType)
end

function KHMRaidFrames:RestoreDefaultsByTable(groupType, frameType, subType, vars)
    if InCombatLockdown() then
        print("Can not refresh settings while in combat")
        return
    end

    local defaults_settings = subType and self:Defaults()["profile"][groupType][frameType][subType] or self:Defaults()["profile"][groupType][frameType]

    for _, v in ipairs(vars) do
        self.db.profile[groupType][frameType][v] = defaults_settings[v]
    end

    self:SafeRefresh(groupType)
end

function KHMRaidFrames:CopySettingsByTable(dbFrom, dbTo, vars)
    if InCombatLockdown() then
        print("Can not refresh settings while in combat")
        return
    end

    for _, v in ipairs(vars) do
        if dbFrom[v] ~= nil then
            dbTo[v] = dbFrom[v]
        end
    end

    self:SafeRefresh(groupType)
end

--