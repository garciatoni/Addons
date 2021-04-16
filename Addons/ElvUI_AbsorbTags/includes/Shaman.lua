local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["stone-bulwark"]				= 114893
absorbAuras["shaman-t16-2p"]				= 145378


-- functions --
ElvUF.Tags.Events['absorbs:shaman'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:shaman'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["stone-bulwark"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["absorbs:shaman:t16-2p"])
	
	return E:ShortValue(totalAbsorb)
end

-- Stone Bulwark
ElvUF.Tags.Events['absorbs:shaman:stone-bulwark'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:shaman:stone-bulwark'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["stone-bulwark"]) or 0)
end

-- T16 2P Bonus
ElvUF.Tags.Events['absorbs:shaman:t16-2p'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:shaman:t16-2p'] = function(unit)    
	return 0
	-- return E:ShortValue(getAbsorb(unit, getAuraId("shaman-t16-2p")) or 0)
end