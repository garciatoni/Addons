--[[ Compiled by Zneak @ Frostmourne US ]]


--[[ SHADOWED UNIT FRAMES ]]
local frame=CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function(self, event, addon)
        if (addon == "Blizzard_TimeManager") then
                for i, v in pairs({PlayerFrameTexture, TargetFrameTextureFrameTexture, PetFrameTexture, PartyMemberFrame1Texture, PartyMemberFrame2Texture, PartyMemberFrame3Texture, PartyMemberFrame4Texture,
                        PartyMemberFrame1PetFrameTexture, PartyMemberFrame2PetFrameTexture, PartyMemberFrame3PetFrameTexture, PartyMemberFrame4PetFrameTexture, FocusFrameTextureFrameTexture,
                        TargetFrameToTTextureFrameTexture, FocusFrameToTTextureFrameTexture, BonusActionBarFrameTexture0, BonusActionBarFrameTexture1, BonusActionBarFrameTexture2, BonusActionBarFrameTexture3,
                        BonusActionBarFrameTexture4, MainMenuBarTexture0, MainMenuBarTexture1, MainMenuBarTexture2, MainMenuBarTexture3, MainMenuMaxLevelBar0, MainMenuMaxLevelBar1, MainMenuMaxLevelBar2,
                        MainMenuMaxLevelBar3, MinimapBorder, CastingBarFrameBorder, FocusFrameSpellBarBorder, TargetFrameSpellBarBorder, MiniMapTrackingButtonBorder, MiniMapLFGFrameBorder, MiniMapBattlefieldBorder,
                        MiniMapMailBorder, MinimapBorderTop,
                        select(1, TimeManagerClockButton:GetRegions())
                }) do
                        v:SetVertexColor(.4, .4, .4)
                end

                for i,v in pairs({ select(2, TimeManagerClockButton:GetRegions()) }) do
                        v:SetVertexColor(1, 1, 1)
                end

                self:UnregisterEvent("ADDON_LOADED")
                frame:SetScript("OnEvent", nil)
        end
end)

for i, v in pairs({ MainMenuBarLeftEndCap, MainMenuBarRightEndCap }) do
        v:SetVertexColor(.35, .35, .35)
end



--[[ CENTRE CAST BAR ]]
CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetScale(1.15)
CastingBarFrame:SetPoint("TOP", WorldFrame, "CENTER", 0, 150)
CastingBarFrame.SetPoint = function() end
--CastingBarFrameIcon:Show()
--CastingBarFrameIcon:SetSize(20, 20)
--CastingBarFrameIcon:SetPoint("RIGHT", CastingBarFrame, "LEFT", -5, 2)



--[[ TARGET CAST BAR ABOVE TARGET FRAME ]]
TargetFrameSpellBar:ClearAllPoints()
TargetFrameSpellBar:SetScale(1.1)
TargetFrameSpellBar:SetPoint("CENTER", TargetFrame, "TOP", -10, 5)
TargetFrameSpellBar.SetPoint = function() end



--[[ CLASS ICONS INSTEAD OF PORTRAITS (UNIT FRAME) ]]
hooksecurefunc("UnitFramePortrait_Update",function(self)
        if self.portrait then
                if UnitIsPlayer(self.unit) then                         
                        local t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
                        if t then
                                self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
                                self.portrait:SetTexCoord(unpack(t))
                        end
                else
                        self.portrait:SetTexCoord(0,1,0,1)
                end
        end
end)



--[[ CLASS COLOURS BEHIND TARGET (UNIT FRAME) ]]
local frame = CreateFrame("FRAME")
frame:RegisterEvent("GROUP_ROSTER_UPDATE")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("PLAYER_FOCUS_CHANGED")
frame:RegisterEvent("UNIT_FACTION")

local function eventHandler(self, event, ...)
        if UnitIsPlayer("target") then
                c = RAID_CLASS_COLORS[select(2, UnitClass("target"))]
                TargetFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
        end
        if UnitIsPlayer("focus") then
                c = RAID_CLASS_COLORS[select(2, UnitClass("focus"))]
                FocusFrameNameBackground:SetVertexColor(c.r, c.g, c.b)
        end
end

frame:SetScript("OnEvent", eventHandler)

for _, BarTextures in pairs({TargetFrameNameBackground, FocusFrameNameBackground}) do
        BarTextures:SetTexture("Interface\\TargetingFrame\\UI-StatusBar")
end



--[[ MOVE & RESIZE PARTY FRAMES ]]
-- To show in-game: /run for i=1,4 do _G["PartyMemberFrame"..i]:Show() end
PartyMemberFrame1:ClearAllPoints()
PartyMemberFrame1:SetPoint("TOPLEFT", 50, 150)
--PartyMemberFrame1:SetPoint("TOP", WorldFrame,"TOPLEFT", 150, 150)
--PartyMemberFrame1.SetPoint = function() end
PartyMemberFrame1:SetScale(1.25)
PartyMemberFrame2:SetScale(1.25)
PartyMemberFrame3:SetScale(1.25)
PartyMemberFrame4:SetScale(1.25)



--[[ HIDE CHAT BUTTON ]]
local f = CreateFrame("Button",nil,UIParent)
f:SetSize(30,30)
f.t=f:CreateTexture(nil,"BORDER")
f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
f.t:SetAllPoints(f)
f:SetPoint("BOTTOM","ChatFrame1ButtonFrame","BOTTOM",0,-35)
f:Show()

local ChatHide = false
--[[although not required, but makes the button more alive
f:SetScript("onmousedown", function(self, button)
        if ChatHide  == false then
                if button == "LeftButton" then
                        f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Down.blp")
                end
        elseif ChatHide == true then
                if button == "LeftButton" then
                        f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Down.blp")
                end
        end
end)

f:SetScript("onmouseup", function(self, button)
        if ChatHide  == false then
                if button == "LeftButton" then
                        f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
                end
        elseif ChatHide == true then
                if button == "LeftButton" then
                        f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Up.blp")
                end
        end
end)
--]]
f:SetScript("onclick", function(self, button)
        if ChatHide == false then
                f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Maximize-Up.blp")
                FriendsMicroButton:Hide()
                GeneralDockManager:Hide()
                ChatFrameMenuButton:Hide()
                ChatFrame1EditBox:Hide()
                for i=1, NUM_CHAT_WINDOWS do
                        _G["ChatFrame"..i..""]:SetAlpha(0)
                        _G["ChatFrame"..i.."ButtonFrame"]:Hide()
                end
                ChatHide = true
        elseif ChatHide == true then
                f.t:SetTexture("Interface\\CHATFRAME\\UI-ChatIcon-Minimize-Up.blp")
                FriendsMicroButton:Show()
                GeneralDockManager:Show()
                ChatFrameMenuButton:Show()
                ChatFrame1EditBox:Show()
                for i=1, NUM_CHAT_WINDOWS do
                        _G["ChatFrame"..i..""]:SetAlpha(1)
                        _G["ChatFrame"..i.."ButtonFrame"]:Show()
                end
                ChatHide = false
        end
end)



--[[ MINIMAP CLEAN UP ]]
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
Minimap:EnableMouseWheel(true)
Minimap:SetScript('onmousewheel', function(self, delta)
        if delta > 0 then
                Minimap_ZoomIn()
        else
                Minimap_ZoomOut()
        end
end)
MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint("TOPRIGHT", -26, 7)