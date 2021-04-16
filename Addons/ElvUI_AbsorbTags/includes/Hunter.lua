local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}


-- functions --
ElvUF.Tags.Events['absorbs:hunter'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:hunter'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	return E:ShortValue(totalAbsorb)
end