local KHMRaidFrames = LibStub("AceAddon-3.0"):GetAddon("KHMRaidFrames")

local UnitIsPlayer, CreateFrame, UIParent = UnitIsPlayer, CreateFrame, UIParent


function KHMRaidFrames:GetVirtualFrames()
    local frame, texture, text

    for frameType in self.IterateSubFrameTypes() do
        for i=1, self.maxFrames do
            frame = CreateFrame("Button", nil, UIParent)
            self.virtual.frames[frameType][i] = frame

            texture = frame:CreateTexture(nil, "BACKGROUND")
            texture:SetAllPoints(frame)

            frame.texture = texture

            text = frame:CreateFontString(frame, "OVERLAY", "GameTooltipText")
            text:SetFont("Fonts\\FRIZQT__.TTF", 11, "THICKOUTLINE, MONOCHROME")
            text:SetPoint("CENTER", 0, 0)
            text:SetText(i)

            frame.text = text

            if frameType == "buffFrames" then
                texture:SetTexture("Interface\\Icons\\ability_rogue_sprint")
            elseif frameType == "debuffFrames" then
                texture:SetTexture("Interface\\Icons\\ability_rogue_kidneyshot")
            else
                texture:SetTexture("Interface\\RaidFrame\\Raid-Icon-DebuffMagic")
            end

            frame:Hide()
        end
    end
end

function KHMRaidFrames:ShowVirtual()
    local frame

    for _frame in self.IterateCompactFrames() do
        if _frame.displayedUnit and UnitIsPlayer(_frame.displayedUnit) then
            frame = _frame
            break
        end
    end

    if frame == nil then
        return
    end

    self.virtual.shown = true
    self.virtual.frame = frame

    self:SetUpVirtual("buffFrames", self.virtual.groupType, self.componentScale(self.virtual.groupType))
    self:SetUpVirtual("debuffFrames", self.virtual.groupType, self.componentScale(self.virtual.groupType), true)
    self:SetUpVirtual("dispelDebuffFrames", self.virtual.groupType, 1)
end

function KHMRaidFrames:SetUpVirtual(subFrameType, groupType, resize, bigSized)
    if self.virtual.shown == false then return end

    local db = self.db.profile[groupType][subFrameType]

    local typedframes = self.virtual.frames[subFrameType]

    for frameNum=1, #typedframes do
        if frameNum > db.num then
            typedframes[frameNum]:Hide()
        elseif frameNum <= db.num then
            typedframes[frameNum]:Show()
        end
    end

    self:SetUpSubFramesPositionsAndSize(self.virtual.frame, subFrameType, groupType, true)

    if db.showBigDebuffs and bigSized then
        typedframes[1].isBossAura = true

        local size = db.bigDebuffSize * resize

        typedframes[1]:SetSize(size, size)

        if db.smartAnchoring then
            self:SmartAnchoring(self.virtual.frame, groupType, true)
        end
    end
end

function KHMRaidFrames:HideVirtual()
    for _, group in pairs(self.virtual.frames) do
        for _, frame in ipairs(group) do
            frame:Hide()
        end
    end

    self.virtual.shown = false
end