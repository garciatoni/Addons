local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")

E:AddTagInfo('absorbs-total', "Absorbs", "Shows the total absorbs on the unit from all sources (returns ' ' when 0)", 100)
E:AddTagInfo('absorbs:total', "Absorbs", "Shows the total absorbs on the unit from all sources (returns '0' when 0)", 110)
E:AddTagInfo('absorbs-mine', "Absorbs", "Shows players absorbs on unit in the raid frames (self varies based on class) (returns ' ' when 0)", 120)
E:AddTagInfo('absorbs:mine', "Absorbs", "Shows players absorbs on unit in the raid frames (self varies based on class) (returns '0' when 0)", 130)
E:AddTagInfo('absorbs-percentage', "Absorbs", "Shows units total absorb / maxhp as a percentage in the raid frames", 140)
E:AddTagInfo('health:absorbs', "Absorbs", "Shows the total absorbs + current hp as a percentage of maxhp on the unit from all sources", 150)
E:AddTagInfo('health-absorbs', "Absorbs", "Shows the total absorbs + current hp on the unit from all sources", 160)
E:AddTagInfo('health+absorbs', "Absorbs", "Shows the total absorbs + current hp on the unit from all sources", 170)
E:AddTagInfo('classcolor', "Absorbs", "Changes the text colour to the class colour of the unit", 180)

E:AddTagInfo('health-current', "Absorbs", "Shows the current health of the unit", 200)
E:AddTagInfo('health-max', "Absorbs", "Shows the max health of the unit", 210)
E:AddTagInfo('health-precentage', "Absorbs", "Shows the percentage of health of the unit", 220)
E:AddTagInfo('nl', "Absorbs", "Adds a line break", 1000)
