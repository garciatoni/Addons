
RematchSaved = {
	[86447] = {
		{
			"BattlePet-0-000007B7FCFD", -- [1]
			422, -- [2]
			218, -- [3]
			321, -- [4]
			1238, -- [5]
		}, -- [1]
		{
			"BattlePet-0-0000070E5078", -- [1]
			1370, -- [2]
			919, -- [3]
			581, -- [4]
			1532, -- [5]
		}, -- [2]
		{
			"BattlePet-0-000008C146A4", -- [1]
			473, -- [2]
			507, -- [3]
			521, -- [4]
			2863, -- [5]
		}, -- [3]
		["teamName"] = "Ikky",
	},
}
RematchSettings = {
	["JournalUsed"] = true,
	["HidePetToast"] = true,
	["QueueSanctuary"] = {
	},
	["Sort"] = {
		["Order"] = 2,
		["FavoritesFirst"] = true,
	},
	["AllowHiddenPetsDefaulted"] = true,
	["BackupCount"] = 0,
	["PetCardXPos"] = 1120.01220703125,
	["PreferredMode"] = 1,
	["ActivePanel"] = 1,
	["Sanctuary"] = {
		["BattlePet-0-0000070E5078"] = {
			1, -- [1]
			true, -- [2]
			1532, -- [3]
			25, -- [4]
			1319, -- [5]
			322, -- [6]
			273, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000008C146A4"] = {
			1, -- [1]
			true, -- [2]
			2863, -- [3]
			25, -- [4]
			1298, -- [5]
			297, -- [6]
			309, -- [7]
			4, -- [8]
		},
		["BattlePet-0-000007B7FCFD"] = {
			1, -- [1]
			true, -- [2]
			1238, -- [3]
			25, -- [4]
			1562, -- [5]
			292, -- [6]
			244, -- [7]
			4, -- [8]
		},
	},
	["YPos"] = 231.3332824707031,
	["SelectedTab"] = 1,
	["PetCardYPos"] = 378.6666259765625,
	["SpecialSlots"] = {
	},
	["UseDefaultJournal"] = true,
	["CollectionChartType"] = 1,
	["FavoriteFilters"] = {
	},
	["TeamGroups"] = {
		{
			"General", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [1]
		{
			"New Tab", -- [1]
			"Interface\\Icons\\PetJournalPortrait", -- [2]
		}, -- [2]
	},
	["Filters"] = {
		["Other"] = {
		},
		["Expansion"] = {
		},
		["Script"] = {
		},
		["Types"] = {
		},
		["Favorite"] = {
		},
		["Collected"] = {
		},
		["Strong"] = {
		},
		["Similar"] = {
		},
		["Breed"] = {
		},
		["Rarity"] = {
		},
		["Sources"] = {
		},
		["Level"] = {
		},
		["Tough"] = {
		},
		["Moveset"] = {
		},
	},
	["ExpandedOptHeaders"] = {
	},
	["ScriptFilters"] = {
		{
			"Unnamed Pets", -- [1]
			"-- Collected pets that still have their original name.\n\nreturn owned and not customName", -- [2]
		}, -- [1]
		{
			"Partially Leveled", -- [1]
			"-- Pets that have earned some xp in battle.\n\nreturn xp and xp>0", -- [2]
		}, -- [2]
		{
			"Unique Abilities", -- [1]
			"-- Pets with abilities not shared by other pets.\n\nif not count then\n  -- create count of each ability per species\n  count = {}\n  for speciesID in AllSpeciesIDs() do\n    for abilityID in AllAbilities(speciesID) do\n      if not count[abilityID] then\n        count[abilityID] = 0\n      end\n      count[abilityID] = count[abilityID] + 1\n    end\n  end\nend\n\nfor _,abilityID in ipairs(abilityList) do\n  if count[abilityID]==1 then\n    return true\n  end\nend", -- [2]
		}, -- [3]
		{
			"Pets Without Rares", -- [1]
			"-- Collected battle pets that have no rare version.\n\nif not rares then\n  rares = {}\n  for petID in AllPetIDs() do\n    if select(5,C_PetJournal.GetPetStats(petID))==4 then\n      rares[C_PetJournal.GetPetInfoByPetID(petID)]=true\n    end\n  end\nend\n\nif canBattle and owned and not rares[speciesID] then\n  return true\nend", -- [2]
		}, -- [4]
		{
			"Hybrid Counters", -- [1]
			"-- Pets with three or more attack types different than their pet type.\n\nlocal count = 0\nfor _,abilityID in ipairs(abilityList) do\n  local abilityType,noHints = select(7, C_PetBattles.GetAbilityInfoByID(abilityID) )\n  if not noHints and abilityType~=petType then\n    count = count + 1\n  end\nend\n\nreturn count>=3\n", -- [2]
		}, -- [5]
	},
	["CollapsedOptHeaders"] = {
		true, -- [1]
		true, -- [2]
		true, -- [3]
		true, -- [4]
		true, -- [5]
		true, -- [6]
		true, -- [7]
		true, -- [8]
		true, -- [9]
		true, -- [10]
		true, -- [11]
		true, -- [12]
		true, -- [13]
	},
	["ExpandedTargetHeaders"] = {
	},
	["QueueSortOrder"] = 1,
	["XPos"] = 663.1480712890625,
	["loadedTeam"] = 86447,
	["JournalPanel"] = 3,
	["CornerPos"] = "BOTTOMLEFT",
	["LevelingQueue"] = {
	},
	["ElvUIToastDefaulted"] = true,
	["UseTypeBar"] = false,
	["CustomScaleValue"] = 100,
	["PetNotes"] = {
	},
}
