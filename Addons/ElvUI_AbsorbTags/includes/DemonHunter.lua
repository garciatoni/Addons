local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")
local absorbAuras = {...}

absorbAuras["soul-barrier"]					= 227225


-- functions --
ElvUF.Tags.Events['absorbs:demon-hunter'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:demon-hunter'] = function(unit)    
	local totalAbsorb
	totalAbsorb = 0
	
	totalAbsorb = totalAbsorb + ElvUF.Tags.Methods['absorbs:common'](unit)
	
	totalAbsorb = totalAbsorb + E.Absorbs_getAbsorb(unit, absorbAuras["soul-barrier"])
		
	return E:ShortValue(totalAbsorb)
end

-- Soul Barrier
ElvUF.Tags.Events['absorbs:demon-hunter:soul-barrier'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:demon-hunter:soul-barrier'] = function(unit)    
	return E:ShortValue(E.Absorbs_getAbsorb(unit, absorbAuras["soul-barrier"]) or 0)
end