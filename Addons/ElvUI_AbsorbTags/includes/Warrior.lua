local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["shield-barrier"]				= 112048
absorbAuras["ignore-pain"]					= 190456


-- functions --
ElvUF.Tags.Events['absorbs:warrior'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warrior'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["shield-barrier"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["ignore-pain"])
	
	return E:ShortValue(totalAbsorb)
end

-- Shield Barrier
ElvUF.Tags.Events['absorbs:warrior:shield-barrier'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warrior:shield-barrier'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["shield-barrier"]) or 0)
end

-- Ignore Pain
ElvUF.Tags.Events['absorbs:warrior:ignore-pain'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warrior:ignore-pain'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["ignore-pain"]) or 0)
end