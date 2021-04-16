local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["dark-pact"]					= 108416
absorbAuras["soul-leech"]					= 108366	


-- functions --
ElvUF.Tags.Events['absorbs:warlock'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warlock'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["dark-pact"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["soul-leech"])
	
	return E:ShortValue(totalAbsorb)
end


-- Dark Pact
ElvUF.Tags.Events['absorbs:warlock:dark-pact'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warlock:dark-pact'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["dark-pact"]) or 0)
end	

-- Soul Leech
ElvUF.Tags.Events['absorbs:warlock:soul-leech'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:warlock:soul-leech'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["soul-leech"]) or 0)
end	