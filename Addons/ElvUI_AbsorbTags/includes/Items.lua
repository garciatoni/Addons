local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}


-- All
absorbAuras["lk-valanyr"]						= 64413
absorbAuras["wod-legendary-ring"]				= 187805
absorbAuras["wod-shieldtronic"]					= 173260

-- 7.0 Trinkets
absorbAuras["legion-shroud-of-the-naglfar"]		= 215248
absorbAuras["legion-spirit-fragment"]			= 221878

-- 7.1 Trinkets
absorbAuras["legion-delicious-cake"]			= 225723

-- 7.2.5 Trinkets
absorbAuras["legion-archive-of-faith"]			= 242621
absorbAuras["legion-recompiled-guardian-module"]= 242618
absorbAuras["legion-the-deceivers-grand-design"]= 242623

-- 7.X Legendaries
absorbAuras["legion-prydaz-xavarics-magnum-opus"]= 207428

-- 8.0 Azerite Traits
absorbAuras["bfa-resounding-protection"]		= 269279
absorbAuras["bfa-unwavering-ward"]				= 296003



-- 8.3 Azerite Essences
absorbAuras["bfa-standstill"]					= 299883




--functions --
-- Lich King
ElvUF.Tags.Events['absorbs:valanyr'] = 'UNIT_AURA'
ElvUF.Tags.Methods['absorbs:valanyr'] = function(unit)    
	local procValue
	procValue = 0
	
	for i=1,40 do
		name, _, _, _, _, _, _, _, _, _, spellId, _, _, _, value1, value2, value3 = UnitAura(unit, i, "PLAYER")
		if spellId == 64413 then
			procValue = procValue + (value1 or 0)
		end
	end
	
	return procValue or 0
end

ElvUF.Tags.Events['absorbs:lk-valanyr'] = 'UNIT_AURA'
ElvUF.Tags.Methods['absorbs:lk-valanyr'] = function(unit)    
	local procValue
	procValue = 0
	
	for i=1,40 do
		name, _, _, _, _, _, _, _, _, _, spellId, _, _, _, value1, value2, value3 = UnitAura(unit, i, "PLAYER")
		if spellId == 64413 then
			procValue = procValue + (value1 or 0)
		end
	end
	
	return procValue or 0
end


-- Cataclysm


-- Warlords
-- Legendary Ring
ElvUF.Tags.Events['absorbs:wod-legendary-ring'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:wod-legendary-ring'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["wod-legendary-ring"]) or 0)
end

-- Legion - Shroud of the Naglfar
ElvUF.Tags.Events['absorbs:legion-shroud-of-the-naglfar'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-shroud-of-the-naglfar'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-shroud-of-the-naglfar"]) or 0)
end

-- Legion - Spirit Fragment
ElvUF.Tags.Events['absorbs:legion-spirit-fragment'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-spirit-fragment'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-spirit-fragment"]) or 0)
end

-- Legion - Perfectly Preserved Cake
ElvUF.Tags.Events['absorbs:legion-delicious-cake'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-delicious-cake'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-delicious-cake"]) or 0)
end

-- Legion - Archive of Faith
ElvUF.Tags.Events['absorbs:legion-archive-of-faith'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-archive-of-faith'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-archive-of-faith"]) or 0)
end

-- Legion - Recompiled Guardian Module
ElvUF.Tags.Events['absorbs:legion-recompiled-guardian-module'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-recompiled-guardian-module'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-recompiled-guardian-module"]) or 0)
end

-- Legion - The Deceiver's Grand Design
ElvUF.Tags.Events['absorbs:legion-the-deceivers-grand-design'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-the-deceivers-grand-design'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-the-deceivers-grand-design"]) or 0)
end

-- Legion - Prydaz, Xavaric's Magnum Opus
ElvUF.Tags.Events['absorbs:legion-prydaz-xavarics-magnum-opus'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:legion-prydaz-xavarics-magnum-opus'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["legion-prydaz-xavarics-magnum-opus"]) or 0)
end

-- BFA - Standstill
-- Legendary Ring
ElvUF.Tags.Events['absorbs:bfa-standstill'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:bfa-standstill'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bfa-standstill"]) or 0)
end

-- BFA - Resounding Protection
ElvUF.Tags.Events['absorbs:bfa-resounding-protection'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:bfa-resounding-protection'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bfa-resounding-protection"]) or 0)
end

-- BFA - Resounding Protection
ElvUF.Tags.Events['absorbs:bfa-unwavering-ward'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:bfa-unwavering-ward'] = function(unit)
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["bfa-unwavering-ward"]) or 0)
end



-- Fancy Functions
ElvUF.Tags.Events['absorbs:common'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:common'] = function(unit)    
	local myAbsorb
	
	myAbsorb = 0
	myAbsorb = myAbsorb + ElvUF.Tags.Methods['absorbs:lk-valanyr'](unit)
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["wod-legendary-ring"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-shroud-of-the-naglfar"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-spirit-fragment"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-delicious-cake"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-archive-of-faith"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-recompiled-guardian-module"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-the-deceivers-grand-design"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["legion-prydaz-xavarics-magnum-opus"]) 
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bfa-standstill"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bfa-resounding-protection"])
	myAbsorb = myAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["bfa-unwavering-ward"])
	
	return myAbsorb
end


