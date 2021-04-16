local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["power-word-shield"]			= 17
absorbAuras["clarity-of-will"]				= 152118


-- functions --
ElvUF.Tags.Events['absorbs:priest'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:priest'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["power-word-shield"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["clarity-of-will"])
	
	return E:ShortValue(totalAbsorb)
end

-- Power Word: Shield
ElvUF.Tags.Events['absorbs:priest:power-word-shield'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:priest:power-word-shield'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["power-word-shield"]) or 0)
end

-- Clarity of Will
ElvUF.Tags.Events['absorbs:priest:clarity-of-will'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:priest:clarity-of-will'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["clarity-of-will"]) or 0)
end