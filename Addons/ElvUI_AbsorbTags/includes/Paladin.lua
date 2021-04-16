local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}


absorbAuras["shield-of-vengeance"]			= 184662
absorbAuras["pally-prot-t18-2pc"]			= 185676
absorbAuras["greater-blessing-of-kings"]	= 203538
absorbAuras["bulwark-of-order"]				= 209388
absorbAuras["bulwark-of-the-masses"]		= 270655
absorbAuras["artifact-of-time"]				= 270655
absorbAuras["bulwark-of-light-prot"]		= 272976
absorbAuras["bulwark-of-light-ret"]			= 272977
absorbAuras["bulwark-of-light-holy"]		= 272979


-- functions --
ElvUF.Tags.Events['absorbs:paladin'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["shield-of-vengeance"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["pally-prot-t18-2pc"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["greater-blessing-of-kings"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-order"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-the-masses"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-prot"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-ret"])
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-holy"])
	
	return E:ShortValue(totalAbsorb)
end


-- Shield of Vengeance
ElvUF.Tags.Events['absorbs:paladin:shield-of-vengeance'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:shield-of-vengeance'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["shield-of-vengeance"]) or 0)
end

-- Prot T18
ElvUF.Tags.Events['absorbs:paladin:pally-prot-t18-2pc'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:pally-prot-t18-2pc'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["pally-prot-t18-2pc"]) or 0)
end

-- Greater Blessing of Kings
ElvUF.Tags.Events['absorbs:paladin:greater-blessing-of-kings'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:greater-blessing-of-kings'] = function(unit)
	output(E.Absorbs_getAuraId("greater-blessing-of-kings"))
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["greater-blessing-of-kings"]) or 0)
end

-- Bulwark of Order
ElvUF.Tags.Events['absorbs:paladin:bulwark-of-order'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:bulwark-of-order'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-order"]) or 0)
end

-- Bulwark of the Masses
ElvUF.Tags.Events['absorbs:paladin:bulwark-of-the-masses'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:bulwark-of-the-masses'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-the-masses"]) or 0)
end

-- Artifact of Time
ElvUF.Tags.Events['absorbs:paladin:artifact-of-time"'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:artifact-of-time"'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["artifact-of-time"]) or 0)
end

-- Bulwark of Light (Prot)
ElvUF.Tags.Events['absorbs:paladin:bulwark-of-light-prot'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:bulwark-of-light-prot'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-prot"]) or 0)
end

-- Bulwark of Light (Ret)
ElvUF.Tags.Events['absorbs:paladin:bulwark-of-light-ret'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:bulwark-of-light-ret'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-ret"]) or 0)
end

-- Bulwark of Light (Holy)
ElvUF.Tags.Events['absorbs:paladin:bulwark-of-light-holy'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:paladin:bulwark-of-light-holy'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bulwark-of-light-holy"]) or 0)
end