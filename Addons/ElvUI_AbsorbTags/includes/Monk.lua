local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["life-cocoon"]					= 116849


-- functions --
ElvUF.Tags.Events['absorbs:monk'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:monk'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["life-cocoon"])
	
	return E:ShortValue(totalAbsorb)
end

-- Life Cocoon
ElvUF.Tags.Events['absorbs:monk:life-cocoon'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:monk:life-cocoon'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["life-cocoon"]) or 0)
end