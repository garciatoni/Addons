local name,ZGV = ...

local L = ZGV.L

local Dungeons = {}

ZGV.Dungeons = Dungeons

local DungeonProto = {}
function DungeonProto:GetName(difficulty)
	difficulty = difficulty or self.difficulty
	
	return L['dungeon_'..difficulty]:format(self.name)
end


local DungeonNamesToMapNames = {
	['Deadmines'] = "The Deadmines",
}
setmetatable(DungeonNamesToMapNames,{__index=function(t,map) return map end})  -- return the same name if no alias is found
Dungeons.DungeonNamesToMapNames  = DungeonNamesToMapNames

Dungeons.ExpansionsLimits = {
	[0] = 30, -- vanilla
	[1] = 30, -- tbc
	[2] = 30, -- wotlk
	[3] = 35, -- cata
	[4] = 35, -- mop
	[5] = 40, -- wod
	[6] = 45, -- legion
	[7] = 50, -- bfa
	[8] = 60, -- shadowlands
}


-- Timewalks and legion mythics do not have any lfg entry, so we need to hardcode basic data for them
local hardcoded_dungeons = {
	-- timewalk tbc
	["e_249"] = {expansionLevel=1, minLevel=11, difficulty=24, name="Magisters' Terrace"},
	["e_250"] = {expansionLevel=1, minLevel=11, difficulty=24, name="Mana-Tombs"},
	["e_254"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Arcatraz"},
	["e_255"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Black Morass"},
	["e_259"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Shattered Halls"},
	["e_260"] = {expansionLevel=1, minLevel=11, difficulty=24, name="The Slave Pens"},
	-- timewalk wotlk			
	["e_271"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Ahn'kahet: The Old Kingdom"},
	["e_274"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Gundrak"},
	["e_275"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Halls of Lightning"},
	["e_278"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Pit of Saron"},
	["e_281"] = {expansionLevel=2, minLevel=11, difficulty=24, name="The Nexus"},
	["e_286"] = {expansionLevel=2, minLevel=11, difficulty=24, name="Utgarde Pinnacle"},
	-- timewalk cata			
	["e_184"] = {expansionLevel=3, minLevel=11, difficulty=24, name="End Time"},
	["e_71"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Grim Batol"},
	["e_69"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Lost City of the Tol'vir"},
	["e_67"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="The Stonecore"},
	["e_68"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="The Vortex Pinnacle"},
	["e_65"]  = {expansionLevel=3, minLevel=11, difficulty=24, name="Throne of the Tides"},
	-- timewalk mop				
	["e_303"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Gate of the Setting Sun"},
	["e_321"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Mogu'Shan Palace"},
	["e_312"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Shado'Pan Monastery"},
	["e_324"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Siege of Niuzao Temple"},
	["e_302"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Stormstout Brewery"},
	["e_313"] = {expansionLevel=4, minLevel=11, difficulty=24, name="Temple of the Jade Dragon"},

	-- mythic legion
	["e_777"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Assault on Violet Hold"},
	["e_740"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Black Rook Hold"},
	["e_800"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Court of Stars"},
	["e_762"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Darkheart Thicket"},
	["e_716"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Eye of Azshara"},
	["e_721"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Halls of Valor"},
	["e_727"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Maw of Souls"},
	["e_767"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Neltharion's Lair"},
	["e_726"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="The Arcway"},
	["e_707"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Vault of the Wardens"},
	["e_860"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Return to Karazhan"},
	["e_900"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Cathedral of Eternal Night"},
	["e_945"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=170,--]] difficulty=23, name="Seat of the Triumvirate"},
	-- mythic battle for azeroth
	["e_968"]   = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Atal'Dazar"},
	["e_1001"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Freehold"},
	["e_1041"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Kings' Rest"},
	["e_1036"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Shrine of the Storm"},
	["e_1023"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Siege of Boralus"},
	["e_1030"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Temple of Sethraliss"},
	["e_1012"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="The MOTHERLODE!!"},
	["e_1022"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="The Underrot"},
	["e_1002"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Tol Dagor"},
	["e_1021"]  = {expansionLevel=7, minLevel=50, --[[min_ilevel=310,--]] difficulty=23, name="Waycrest Manor"},
	--["e_1178"]  = {expansionLevel=7, minLevel=120, min_ilevel=310, difficulty=23, name="Operation: Mechagon",  },

	-- world bosses
	["e_322"]  = {expansionLevel=4, minLevel=50, --[[min_ilevel=70,--]] difficulty=14, name="World Bosses"},
	["e_557"]  = {expansionLevel=5, minLevel=50, --[[min_ilevel=90,--]] difficulty=14, name="World Bosses"},
	["e_833"]  = {expansionLevel=6, minLevel=50, --[[min_ilevel=150,--]] difficulty=14, name="World Bosses"},
	["e_1028"] = {expansionLevel=7, minLevel=50, --[[min_ilevel=280,--]] difficulty=14, name="World Bosses"}, 
}

local max_levels = {
	[2093]=1, -- Castle Nathria (Mythic)
	[2092]=1, -- Castle Nathria, Blood From Stone
	[2091]=1, -- Castle Nathria, Reliquary of Opulence
	[2096]=1, -- Castle Nathria, An Audience with Arrogance
	[2090]=1, -- Castle Nathria, The Leeching Vaults

	[2037]=50, -- Ny'alotha, the Waking City, Halls of Devotion
	[2038]=50, -- Ny'alotha, the Waking City, Gift of Flesh
	[2036]=50, -- Ny'alotha, the Waking City, Vision of Destiny
	[2039]=50, -- Ny'alotha, the Waking City, The Waking Dream
	[2010]=50, -- Eternal Palace, Depths of the Devoted
	[2011]=50, -- Eternal Palace, The Circle of Stars
	[2009]=50, -- Eternal Palace, The Grand Reception
	[1731]=50, -- Uldir, Halls of Containment
	[1732]=50, -- Uldir, Crimson Descent
	[1733]=50, -- Uldir, Heart of Corruption
	[1947]=50, -- Dazar'alor, Might of the Alliance
	[1945]=50, -- Dazar'alor, Siege of Dazar'alor
	[1949]=50, -- Dazar'alor, Death's Bargain
	[1946]=50, -- Dazar'alor, Empire's Fall
	[1950]=50, -- Dazar'alor, Victory or Death
	[1947]=50, -- Dazar'alor, Might of the Alliance
	[1945]=50, -- Dazar'alor, Siege of Dazar'alor
	[1949]=50, -- Dazar'alor, Death's Bargain
	[1946]=50, -- Dazar'alor, Empire's Fall
	[1950]=50, -- Dazar'alor, Victory or Death
	[1948]=50, -- Dazar'alor, Defense of Dazar'alor
	[1951]=50, -- Crucible of Storms

}

local add_flags = {
	["e_860"] = { attunement_achieve=11547 }, -- Return to Karazhan M
	["e_900"] = { attunement_queston=46244 }, -- Cathedral of Eternal Night M
	[1115] = { attunement_achieve=11547 }, -- Return to Karazhan HC
	[1488] = { attunement_queston=46244 }, -- Cathedral of Eternal Night HC
	[2006] = { nomythicplus=true }, -- Operation: Mechagon
}

local override_min_levels = { -- bfa dungeons have different min levels per faction
--[[ shadowlands unified levels, it seems
	[1672] = { Alliance=110, Horde=120, Neutral=120 }, -- Freehold
	[1774] = { Alliance=110, Horde=120, Neutral=120 }, -- Shrine of the Storm
	[1705] = { Alliance=110, Horde=120, Neutral=120 }, -- Waycrest Manor
	[1778] = { Alliance=115, Horde=120, Neutral=120 }, -- Tol Dagor
	[1668] = { Alliance=120, Horde=110, Neutral=120 }, -- Atal´dazar
	[1694] = { Alliance=120, Horde=110, Neutral=120 }, -- Temple of Sethraliss
	[1777] = { Alliance=120, Horde=110, Neutral=120 }, -- The Underrot
	[1707] = { Alliance=120, Horde=115, Neutral=120 }, -- The Motherlode!!
--]]
}

setmetatable(Dungeons,{
	__index=function(t,id)
		-- cache from game, to get all data in one place
		if not id then return end

		if type(id)=="string" and not hardcoded_dungeons[id] then return end   -- error("No function Dungeons."..id)   -- don't error, this breaks Spoo.

		local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, min_ilevel, attunement_achieve, attunement_quest, attunement_queston, bonusRepAmount,isTimeWalker,minPlayers,name2
		if hardcoded_dungeons[id] then
			local d=hardcoded_dungeons[id]
			name,expansionLevel,minLevel,min_ilevel,difficulty = d.name,d.expansionLevel,d.minLevel,d.min_ilevel,d.difficulty
		else
			name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, min_ilevel  = GetLFGDungeonInfo(id)
		end

		if name and typeID~=4 then
			local dungeon = {}

			dungeon.id = id
			dungeon.name = name
			dungeon.difficulty = difficulty
			dungeon.isHoliday = isHoliday
			if override_min_levels[id] then
				dungeon.minLevel = override_min_levels[id][Dungeons.Faction]
			else
				dungeon.minLevel = minLevel
			end
			dungeon.expansionLevel = expansionLevel
			dungeon.maxScaleLevel = math.max(Dungeons.ExpansionsLimits[expansionLevel],dungeon.minLevel) -- maxscale cannot be lower than minlevel (uldir hero/mythic reports being from exp6, so maxscale would be 110)
			dungeon.min_ilevel = min_ilevel

			if add_flags[id] then
				for flag,value in pairs(add_flags[id]) do
					dungeon[flag]=value
				end
			end

			dungeon.mythicplus = (Dungeons.CurrentExpansion == expansionLevel)

			dungeon.max_level = max_levels[id] -- used to disable lfr instances when outleveling them

			local map = ZGV.LibRover.data.MapIDsByName[DungeonNamesToMapNames[name]]
			dungeon.map=map

			rawset(t,id or 0,dungeon)
			setmetatable(dungeon,{__index=DungeonProto})
			return dungeon
		end
	end,
})

function Dungeons:Get(id)
	return self[id]
end

tinsert(ZGV.startups,{"Dungeons startup",function(self)
	Dungeons.CurrentExpansion = GetServerExpansionLevel()

	--if not LFDDungeonList then return end
	Dungeons.Faction = UnitFactionGroup("player")
	Dungeons.MaxLevelForLatestExpansion = GetMaxLevelForLatestExpansion()

	for id=1,3000 do
		local cache_wasted = self[id]
	end
end})

ZGV.UTILS.Dungeons = {
	GetDungeonsByName = function()
		local bynames = {}
		for k,v in pairs(Dungeons) do if type(v)=="table" and v.name then
			bynames[v.name]=v
		end end
		return bynames
	end
}
