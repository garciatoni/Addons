local AddOnName, AddOn = ...

-- Import ElvUI UnitFrame's Engine
if not ElvUI then return end
local _, E, L, V, P, G = nil, unpack(ElvUI)
local ElvUF = ElvUI.oUF

local AddonVersion = GetAddOnMetadata("ElvUI_AbsorbTags", "Version")

absorbAuras = {}

-- getAbsorb
E.Absorbs_getAbsorb = function(unit, auraID, filter)
	local absorbValue
	
	absorbValue = 0
	if auraID then
		--
	else
		auraID = "default"
	end
	
	if filter then
		--
	else
		filter = 6;
	end
	
	-- print ('using filter' .. filter .. ' for auraID ' .. auraID)

	if auraID == 0 then
		--
	else
		if auraID == "player" then
			--
		else 
			local i
			for i=1,40 do
				local name, icon, count, typeName, duration, expiry, source, stealable, shown, spellID, value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12 = UnitAura(unit, i, "PLAYER HELPFUL")

				if spellID then					
					
					if spellID == auraID then
						
						if filter == 1 then
							absorbValue = absorbValue + (value1 or 0)
						end
						if filter == 2 then
							absorbValue = absorbValue + (value1 or 0)
						end
						if filter == 3 then
							absorbValue = absorbValue + (value3 or 0)
						end
						if filter == 4 then
							absorbValue = absorbValue + (value4 or 0)
						end
						if filter == 5 then
							absorbValue = absorbValue + (value5 or 0)
						end
						if filter == 6 then
							absorbValue = value6
						end
						if filter == 7 then
							absorbValue = value7
						end
						if filter == 8 then
							absorbValue = value8
						end
						if filter == 9 then
							absorbValue = absorbValue + (value9 or 0)
						end
						if filter == 10 then
							absorbValue = absorbValue + (value10 or 0)
						end
						if filter == 11 then
							absorbValue = absorbValue + (value11 or 0)
						end
						if filter == 12 then
							absorbValue = absorbValue + (value12 or 0)
						end
					end
				end
			end
		end
	end
	
	return absorbValue
end

local function ArraySearch(array, value)
	for _,v in pairs(array) do
		if v == value then
			return true
		end
	end
	return false
end

-- getHealingAbsorb
E.Absorbs_getHealingAbsorbs = function(unit)
	local healingAbsorbValue = 0
	local name, _, spellId, value1, value2, value3
	local i = 1	
	healingAbsorbValue = 0
	
	for i=1,40 do
		name, _, _, _, _, _, _, _, _, _, spellId, _, _, _, value1, value2, value3 = UnitAura(unit, i, "PLAYER|HARMFUL")
		if ArraySearch(Debuffs, spellID) then
			if value1 and value1 > 0 then
				healingAbsorbValue = healingAbsorbValue + value1
			elseif value2 and value2 > 0 then
				healingAbsorbValue = healingAbsorbValue + value2
			elseif value3 and value3 > 0 then
				healingAbsorbValue = healingAbsorbValue + value3
			end
		end
	end
	
	if healingAbsorbValue > 0 then
		return (healingAbsorbValue * -1)
	else
		return 0
	end
end

-- getAuraId
E.Absorbs_getAuraId = function(auraName)
	return absorbAuras[auraName] or 0
end

ElvUF.Tags.Events['nl'] = 'UNIT_CONNECTION'
ElvUF.Tags.Methods['nl'] = function(unit) 
	return "\n"
end



-- Custom Functions
ElvUF.Tags.Events['felshadow-infusion'] = 'UNIT_AURA'
ElvUF.Tags.Methods['felshadow-infusion'] = function(unit)    
	local procValue
	procValue = 0
	
	for i=1,40 do
		name, _, _, _, _, _, _, _, _, _, spellId, _, _, _, value1, value2, value3 = UnitAura(unit, i, "PLAYER")
		if spellId == 184671 then
			procValue = procValue + (value1 or 0)
		end
	end
	
	return procValue or 0
end

-- Custom Functions
ElvUF.Tags.Events['felshadow-infusion-percentage'] = 'UNIT_AURA'
ElvUF.Tags.Methods['felshadow-infusion-percentage'] = function(unit)    
	local procValue
	procValue = 0
	for i=1,40 do
		name, _, _, _, _, _, _, _, _, _, spellId, _, _, _, value1, value2, value3 = UnitAura(unit, i, "PLAYER")
		if spellId == 184671 then
			procValue = procValue + (value1 or 0)
		end
	end
		
	procValue = (procValue / 70)
	if procValue > 0 then
		return (math.floor(procValue * 100) / 100) .. '%'
	else 
		return '0%'
	end
end

-- Healing Absorb Functions
ElvUF.Tags.Events['absorbs:healing'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:healing'] = function(unit)    
	local myAbsorb
	
	myAbsorb = 0
	myAbsorb = myAbsorb + (E:Absorbs_getHealingAbsorbs(unit) or 0)

	return E:ShortValue(myAbsorb)
end

-- Fancy Functions
ElvUF.Tags.Events['absorbs:mine-total'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:mine-total'] = function(unit)    
	local myAbsorb, allAbsorbs
	
	myAbsorb = ElvUF.Tags.Methods['absorbs:mine'](unit)
	allAbsorbs = E:ShortValue(UnitGetTotalAbsorbs(unit))
	
	local class, classFileName = UnitClass("player")
	local color = RAID_CLASS_COLORS[classFileName]
	
	return Hex(color.r, color.g, color.b) .. myAbsorb .. ' / |cffFFFFFF' .. allAbsorbs
end

-- Generic Absorbs
ElvUF.Tags.Events['absorbs:mine'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs:mine'] = function(unit)    
	local totalAbsorb
	
	local localizedClass, englishClass, classIndex = UnitClass("PLAYER");
	
	if classIndex == 0 then
		totalAbsorb = 0
	end
	
	if classIndex == 1 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:warrior'](unit)
	end
	
	if classIndex == 2 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:paladin'](unit)
	end
	
	if classIndex == 3 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:hunter'](unit)
	end
	
	if classIndex == 4 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:rogue'](unit)
	end
	
	if classIndex == 5 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:priest'](unit)
	end
	
	if classIndex == 6 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:death-knight'](unit)
	end
	
	if classIndex == 7 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:shaman'](unit)
	end
	
	if classIndex == 8 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:mage'](unit)
	end
	
	if classIndex == 9 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:warlock'](unit)
	end
	
	if classIndex == 10 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:monk'](unit)
	end
	
	if classIndex == 11 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:druid'](unit)
	end
	
	if classIndex == 12 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:demon-hunter'](unit)
	end
	
	return totalAbsorb
end

-- Generic Absorbs
ElvUF.Tags.Events['absorbs-mine'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs-mine'] = function(unit)    
	local totalAbsorb
	
	local localizedClass, englishClass, classIndex = UnitClass("PLAYER");
	
	if classIndex == 0 then
		totalAbsorb = 0
	end
	
	if classIndex == 1 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:warrior'](unit)
	end
	
	if classIndex == 2 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:paladin'](unit)
	end
	
	if classIndex == 3 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:hunter'](unit)
	end
	
	if classIndex == 4 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:rogue'](unit)
	end
	
	if classIndex == 5 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:priest'](unit)
	end
	
	if classIndex == 6 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:death-knight'](unit)
	end
	
	if classIndex == 7 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:shaman'](unit)
	end
	
	if classIndex == 8 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:mage'](unit)
	end
	
	if classIndex == 9 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:warlock'](unit)
	end
	
	if classIndex == 10 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:monk'](unit)
	end
	
	if classIndex == 11 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:druid'](unit)
	end
	
	if classIndex == 12 then
		totalAbsorb = ElvUF.Tags.Methods['absorbs:demon-hunter'](unit)
	end
	
	if totalAbsorb == 0 then
		return ""
	end
	
	if totalAbsorb == "0" then
		return ""
	end	
		
	return totalAbsorb
end


ElvUF.Tags.Events['classcolour'] = "UNIT_CONNECTION"
ElvUF.Tags.Methods['classcolour'] = function(u)	
	local localizedClass, englishClass, classIndex = UnitClass(u);
	
	if classIndex == 0 then
		return '|cff000000';
	end
	
	if classIndex == 1 then
		-- Warrior
		return '|cffC79C6E';
	end
	
	if classIndex == 2 then
		-- Paladin
		return '|cffF58CBA';
	end
	
	if classIndex == 3 then
		-- Hunter
		return '|cffABD473';
	end
	
	if classIndex == 4 then
		-- Rouge
		return '|cffFFF569';
	end
	
	if classIndex == 5 then
		-- Priest
		return '|cffFFFFFF';
	end
	
	if classIndex == 6 then
		-- Death Knight
		return '|cffC41F3B';
	end
	
	if classIndex == 7 then
		-- Shaman
		return '|cff0070DE';
	end
	
	if classIndex == 8 then
		-- Mage
		return '|cff69CCF0';
	end
	
	if classIndex == 9 then
		-- Warlock
		return '|cff9482C9';
	end
	
	if classIndex == 10 then
		-- Monk
		return '|cff00FF96';
	end
	
	if classIndex == 11 then
		-- Druid
		return '|cffFF7D0A';
	end
	
	if classIndex == 12 then
		-- Demon Hunter
		return '|cffA330C9';
	end
end

ElvUF.Tags.Events['classcolor'] = "UNIT_CONNECTION"
ElvUF.Tags.Methods['classcolor'] = function(u)	
	local localizedClass, englishClass, classIndex = UnitClass(u);
	
	if classIndex == 0 then
		return '|cff000000';
	end
	
	if classIndex == 1 then
		-- Warrior
		return '|cffC79C6E';
	end
	
	if classIndex == 2 then
		-- Paladin
		return '|cffF58CBA';
	end
	
	if classIndex == 3 then
		-- Hunter
		return '|cffABD473';
	end
	
	if classIndex == 4 then
		-- Rouge
		return '|cffFFF569';
	end
	
	if classIndex == 5 then
		-- Priest
		return '|cffFFFFFF';
	end
	
	if classIndex == 6 then
		-- Death Knight
		return '|cffC41F3B';
	end
	
	if classIndex == 7 then
		-- Shaman
		return '|cff0070DE';
	end
	
	if classIndex == 8 then
		-- Mage
		return '|cff69CCF0';
	end
	
	if classIndex == 9 then
		-- Warlock
		return '|cff9482C9';
	end
	
	if classIndex == 10 then
		-- Monk
		return '|cff00FF96';
	end
	
	if classIndex == 11 then
		-- Druid
		return '|cffFF7D0A';
	end
	
	if classIndex == 12 then
		-- Demon Hunter
		return '|cffA330C9';
	end
end

-- Generic Total Absorb (returns '' rather than '0')
ElvUF.Tags.Events['absorbs-total'] = 'UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['absorbs-total'] = function(unit)
	local absorb = UnitGetTotalAbsorbs(unit) or 0
	if absorb == 0 then
		return ''
	end
	if absorb == "0" then
		return ''
	end
	
	return '+' .. E:ShortValue(absorb)
end


-- Generic Total Absorb (returns '0' rather than '')
ElvUF.Tags.Events['absorbs:total'] = 'UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['absorbs:total'] = function(unit)
	local absorb = UnitGetTotalAbsorbs(unit) or 0
	if absorb == 0 then
		return '0'
	else
		return '+' .. E:ShortValue(absorb)
	end
end


-- Health:Current
ElvUF.Tags.Events['health-current'] = 'UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['health-current'] = function(unit)
	return E:ShortValue(UnitHealth(unit))
end


-- Health:Max
ElvUF.Tags.Events['health-max'] = 'UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED'
ElvUF.Tags.Methods['health-max'] = function(unit)
	return E:ShortValue(UnitHealthMax(unit))	
end


-- Health:Percentage
ElvUF.Tags.Events['health-percentage'] = 'UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['health-percentage'] = function(unit)
	return E:GetFormattedText('CURRENT_PERCENT', UnitHealth(unit), UnitHealthMax(unit))
end


-- Health+Current
ElvUF.Tags.Events['health+absorbs'] = 'UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['health+absorbs'] = function(unit)
	local unitAbsorbs
	local status = UnitIsDead(unit) and DEAD or UnitIsGhost(unit) and L['Ghost'] or not UnitIsConnected(unit) and L['Offline']
	if (status) then
		return status
	else
		unitAbsorbs = UnitGetTotalAbsorbs(unit) or 0
		return E:ShortValue(UnitHealth(unit) + unitAbsorbs)
	end
end

-- Generic Health + Absorb as percentage of maxhp
ElvUF.Tags.Events['health:absorbs'] = 'UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED UNIT_ABSORB_AMOUNT_CHANGED'
ElvUF.Tags.Methods['health:absorbs'] = function(unit)
	local status = UnitIsDead(unit) and DEAD or UnitIsGhost(unit) and L['Ghost'] or not UnitIsConnected(unit) and L['Offline']

	if (status) then
		return status
	else
		return E:GetFormattedText('PERCENT', UnitHealth(unit) + (UnitGetTotalAbsorbs(unit) or 0), UnitHealthMax(unit))
	end
end

-- Generic Absorb Percentage
ElvUF.Tags.Events['absorbs-percentage'] = 'UNIT_ABSORB_AMOUNT_CHANGED UNIT_HEALTH_FREQUENT UNIT_MAXHEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED UNIT_AURA'
ElvUF.Tags.Methods['absorbs-percentage'] = function(unit)    
	local unitAbsorbs
	local unitMaxHealth	
	local status
	
	unitAbsorbs = UnitGetTotalAbsorbs(unit) or 0
	return E:GetFormattedText('PERCENT', unitAbsorbs, UnitHealthMax(unit) or 1)	
end