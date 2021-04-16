local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["anti-magic-shield"]			= 48707
absorbAuras["blood-shield"]					= 77535
absorbAuras["purgatory"]					= 116888
absorbAuras["tombstone"]					= 219809

	
-- functions --
ElvUF.Tags.Events['absorbs:death-knight'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["blood-shield"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["anti-magic-shield"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["glyph-of-death-coil"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["tombstone"])
		
	return E:ShortValue(totalAbsorb)
end

-- Anti-Magic Shield
ElvUF.Tags.Events['absorbs:death-knight:anti-magic-shield'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:anti-magic-shield'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["anti-magic-shield"]) or 0)
end

-- Blood Shield
ElvUF.Tags.Events['absorbs:death-knight:blood-shield'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:blood-shield'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["blood-shield"]) or 0)
end

-- Glyph of Death Coil
ElvUF.Tags.Events['absorbs:death-knight:glyph-of-death-coil'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:glyph-of-death-coil'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["glyph-of-death-coil"]) or 0)
end

-- Tombstone
ElvUF.Tags.Events['absorbs:death-knight:tombstone'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:tombstone'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["tombstone"]) or 0)
end

-- Death Pact
ElvUF.Tags.Events['absorbs:death-knight:death-pact'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:death-pact'] = function(unit)  
	return E:ShortValue(0)
end

-- Purgatory
ElvUF.Tags.Events['absorbs:death-knight:purgatory'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:death-knight:purgatory'] = function(unit)    
	return E:ShortValue(0)
end