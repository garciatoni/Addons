local name,ZGV = ...

local ItemScore = {}
ZGV.ItemScore = ItemScore

-- Stat keywords:
-- Only stats defined in this table are valid. Use entry in blizz when filling rule sets

ItemScore.Keywords = {
	[1]  = {blizz="AGILITY", zgvdisplay="Agility", pawn="Agility", regexname=ITEM_MOD_AGILITY_SHORT},
	[2]  = {blizz="ATTACK_POWER", zgvdisplay="Attack Power", pawn="Ap", regexname=STAT_ATTACK_POWER},
	[3]  = {blizz="ARMOR", zgvdisplay="Armor", pawn="Armor", regexname=ARMOR_TEMPLATE:gsub("[ ]*%%s[ ]*","")}, -- base armor on gear
	[4]  = {blizz="AVOIDANCE", zgvdisplay="Avoidance", pawn="Avoidance", regexname=STAT_AVOIDANCE},
	[5]  = {blizz="CRIT", zgvdisplay="Crit", pawn="CritRating", regexname=ITEM_MOD_CRIT_RATING_SHORT},
	[6]  = {blizz="DAMAGE_PER_SECOND", zgvdisplay="Dps", pawn="Dps", regexname=DPS_TEMPLATE:gsub("[ ]*%%s[ ]*","")},
	[7]  = {blizz="HASTE", zgvdisplay="Haste", pawn="HasteRating", regexname=STAT_HASTE},
	[8]  = {blizz="STURDINESS", zgvdisplay="Indestructible", pawn="Indestructible", regexname=STAT_STURDINESS},
	[9]  = {blizz="INTELLECT", zgvdisplay="Intellect", pawn="Intellect", regexname=ITEM_MOD_INTELLECT_SHORT},
	[10] = {blizz="LIFESTEAL", zgvdisplay="Leech", pawn="Leech", regexname=STAT_LIFESTEAL},
	[11] = {blizz="MASTERY", zgvdisplay="Mastery", pawn="MasteryRating", regexname=STAT_MASTERY},
	[12] = {blizz="SPEED", zgvdisplay="Movement Speed", pawn="MovementSpeed", regexname=STAT_MOVEMENT_SPEED},
	[13] = {blizz="RESILIENCE", zgvdisplay="Resilience", pawn="ResilienceRating", regexname=STAT_RESILIENCE},
	[14] = {blizz="WEAPONSPEED", zgvdisplay="Weapon Speed", pawn="Speed", regexname=WEAPON_SPEED},
	[15] = {blizz="SPELL_POWER", zgvdisplay="Spell Power", pawn="SpellPower", regexname=STAT_SPELLPOWER},
	[16] = {blizz="STAMINA", zgvdisplay="Stamina", pawn="Stamina", regexname=ITEM_MOD_STAMINA_SHORT},
	[17] = {blizz="STRENGTH", zgvdisplay="Strength", pawn="Strength", regexname=ITEM_MOD_STRENGTH_SHORT},
	[18] = {blizz="VERSATILITY", zgvdisplay="Versatility", pawn="Versatility", regexname=STAT_VERSATILITY},
}

for index,data in ipairs(ItemScore.Keywords) do
	data.regex = ("([0-9,.]+) " .. data.regexname):lower()
	data.regex2 = (data.regexname .. " ([0-9.,]+)"):lower()
end

-- Gear keywords:
-- Only gear defined in this table are valid. Use second entry when filling item sets

ItemScore.Gear_PawnToZygor = {
	IsCloth="CLOTH",
	IsLeather="LEATHER",
	IsMail="MAIL",
	IsPlate="PLATE",
	IsShield="SHIELD",
	IsAxe="AXE",
	Is2HAxe="TH_AXE",
	IsBow="BOW",
	IsCrossbow="CROSSBOW",
	IsDagger="DAGGER",
	IsFist="FIST",
	IsGun="GUN",
	IsMace="MACE",
	Is2HMace="TH_MACE",
	IsPolearm="TH_POLE",
	IsStaff="TH_STAFF",
	IsSword="SWORD",
	Is2HSword="TH_SWORD",
	IsWand="WAND",
	IsOffHand="OFFHAND",
	IsFrill="MISCARM",
	IsWarglaive="WARGLAIVE",
}

ItemScore.rules = {
	["DEATHKNIGHT"] = {
		--PLATE is at 1 because DKs start at level 55
		[1] = { --BLOOD-TANK
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=7.65, STAMINA=73.41, VERSATILITY=16.33, DAMAGE_PER_SECOND=9.63, HASTE=3.33, MASTERY=1.50, CRIT=0.49, LIFESTEAL=9.61, ARMOR=27.58 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FROST-DPS
			itemtypes={ AXE=1, SWORD=1, MACE=1, PLATE=1 },
			stats = { STRENGTH=2.65, MASTERY=0.96, HASTE=1.08, CRIT=1.05, VERSATILITY=0.92, DAMAGE_PER_SECOND=9.38 },--DAMAGE_PER_SECOND_OFFHAND=3.29
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --UNHOLY-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=2.99, MASTERY=1.37, CRIT=1.23, HASTE=1.07, VERSATILITY=1.13, DAMAGE_PER_SECOND=14.92 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
	["DEMONHUNTER"] = {
		[1] = { -- HAVOC-DPS
			itemtypes={ WARGLAIVE=1, FIST=1, AXE=1, SWORD=1, LEATHER=1 },
			stats = { AGILITY=2.36, HASTE=1.12, CRIT=0.76, VERSATILITY=0.95, MASTERY=0.60, DAMAGE_PER_SECOND=11.72 },--DAMAGE_PER_SECOND_OFFHAND=1.88
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- VENGEANCE-TANK
			itemtypes={ WARGLAIVE=1, FIST=1, AXE=1, SWORD=1, LEATHER=1 },
			stats = {AGILITY=3.14, STAMINA=68.82, HASTE=1.46, VERSATILITY=13.64, MASTERY=1.82, CRIT=1.40, DAMAGE_PER_SECOND=9.20, LIFESTEAL=9.08, ARMOR=51.44 },--DAMAGE_PER_SECOND_OFFHAND=1.72
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["DRUID"] = {
		[1] = { --BALANCE-DPS
			itemtypes={ DAGGER=1, MACE=1, MISCARM=1, TH_MACE=1, TH_STAFF=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=3.01, HASTE=1.46, CRIT=0.91, VERSATILITY=1.01, MASTERY=1.14 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --FERAL-DPS
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.49, HASTE=1.02, CRIT=0.92, VERSATILITY=0.85, MASTERY=1.03, DAMAGE_PER_SECOND=14.23 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --GUARDIAN-TANK
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=9.07, STAMINA=30.70, MASTERY=40.38, VERSATILITY=16.30, HASTE=12.01, CRIT=2.57, DAMAGE_PER_SECOND=36.11, LIFESTEAL=8.83, ARMOR=52.66 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[4] = { --RESTORATION-HEALER
			itemtypes={ DAGGER=1,MACE=1,MISCARM=1, TH_MACE=1, TH_STAFF=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=7.21, HASTE=6.59, CRIT=6.57, VERSATILITY=6.54 , MASTERY=6.61 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["HUNTER"] = {
		[1] = { -- BEAST MASTERY-DPS
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.45, MASTERY=0.68, CRIT=0.75, HASTE=0.78, VERSATILITY=0.85, DAMAGE_PER_SECOND=10.69 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- MARKSMANSHIP-DPS
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.65, MASTERY=1.07, HASTE=0.89, CRIT=0.95, VERSATILITY=0.95, DAMAGE_PER_SECOND=15.22 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- SURVIVAL-DPS
			itemtypes={AXE=1, SWORD=1, DAGGER=1, FIST=1, TH_AXE=1, TH_SWORD=1, TH_STAFF=1, TH_POLE=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.21, HASTE=0.83, CRIT=0.78, VERSATILITY=0.74, MASTERY=0.46, DAMAGE_PER_SECOND=10.17 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["MAGE"] = {
		[1] = { -- ARCANE-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.63, CRIT=0.95, VERSATILITY=0.99, HASTE=0.85, MASTERY=0.88 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- FIRE-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.69, MASTERY=0.82, VERSATILITY=0.95, HASTE=0.97, CRIT=0.78 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { -- FROST-DPS
			itemtypes={ TH_STAFF=1, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=2.48, HASTE=1.06, CRIT=0.91, VERSATILITY=0.89 , MASTERY=0.79 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=19.88, STAMINA=44.06, VERSATILITY=12.13, CRIT=15.13, MASTERY=2.39, HASTE=17.14, DAMAGE_PER_SECOND=36.85, LIFESTEAL=34.12, ARMOR=29.62 },--DAMAGE_PER_SECOND_OFFHAND=0.18
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --MISTWEAVER-HEALER
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { INTELLECT=7.51, CRIT=6.01, VERSATILITY=4.51, HASTE=3.01, MASTERY=1.51 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ FIST=1, AXE=1, SWORD=1, MACE=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.78, VERSATILITY=0.98, HASTE=0.92, MASTERY=0.91, CRIT=0.99, DAMAGE_PER_SECOND=13.77 },--DAMAGE_PER_SECOND_OFFHAND=2.01
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		}
	},
	["PALADIN"] = {
		[1] = { --HOLY-HEALER
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, MISCARM=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { INTELLECT=6.58, CRIT=6.18, HASTE=6.56, VERSATILITY=6.22, MASTERY=6.42 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --PROTECTION-TANK
			itemtypes={ AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=17.69, STAMINA=42.45, HASTE=0.69, MASTERY=8.48, VERSATILITY=8.30, CRIT=0.49, DAMAGE_PER_SECOND=6.66, LIFESTEAL=18.62, ARMOR=10.20 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --RETRIBUTION-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.27, HASTE=0.89, VERSATILITY=0.82, MASTERY=0.88, CRIT=0.83, DAMAGE_PER_SECOND=13.01 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
	["PRIEST"] = {
		[1] = { -- DISCIPLINE-HEALER
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = {  INTELLECT=7.52, HASTE=6.02, CRIT=4.52, VERSATILITY=4.48, MASTERY=4.48 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- HOLY-HEALER
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=7.52, CRIT=5.72, VERSATILITY=5.72, HASTE=6.11, MASTERY=5.11 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --SHADOW-DPS
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.80, HASTE=1.28, CRIT=1.09, MASTERY=1.04, VERSATILITY=1.05 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION-DPS
			itemtypes={ DAGGER=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.14, HASTE=0.90, CRIT=0.83, MASTERY=0.72, VERSATILITY=0.74, DAMAGE_PER_SECOND=10.65 },--DAMAGE_PER_SECOND_OFFHAND=1.32
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --OUTLAW-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.57, HASTE=0.80, CRIT=0.79, VERSATILITY=0.86, MASTERY=0.65, DAMAGE_PER_SECOND=12.55 },--DAMAGE_PER_SECOND_OFFHAND=1.84
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --SUBTLETY-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=1 },
			stats = { AGILITY=2.90, CRIT=0.94, MASTERY=0.77, HASTE=0.73, VERSATILITY=0.97, DAMAGE_PER_SECOND=15.24 },--DAMAGE_PER_SECOND_OFFHAND=0.96
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		}
	},
	["SHAMAN"] = {
		[1] = { -- ELEMENTAL-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, TH_AXE=20, TH_MACE=20, MISCARM=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { INTELLECT=2.78, HASTE=0.73, MASTERY=0.72, CRIT=0.85, VERSATILITY=0.83 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- ENHANCEMENT:-DPS
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_AXE=20, TH_MACE=20, MISCARM=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { AGILITY=2.75, HASTE=1.12, CRIT=0.91, MASTERY=0.94, VERSATILITY=0.95, DAMAGE_PER_SECOND=11.27 },--DAMAGE_PER_SECOND_OFFHAND=1.52
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- RESTORATION-HEALER
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, TH_AXE=20, TH_MACE=20, MISCARM=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=1 },
			stats = { INTELLECT=5.58, CRIT=4.08, VERSATILITY=4.08, HASTE=3.67, MASTERY=3.67 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.68, HASTE=0.96, MASTERY=1.06, VERSATILITY=0.96, CRIT=1.21 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --DEMONOLOGY-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.97, HASTE=1.63, CRIT=0.71, VERSATILITY=0.73, MASTERY=0.69 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --DESTRUCTION-DPS
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=2.40, HASTE=0.72, MASTERY=0.97, CRIT=0.88, VERSATILITY=0.91 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["WARRIOR"] = {
		[1] = { --ARMS-DPS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },
			stats = { STRENGTH=2.07, CRIT=0.76, HASTE=1.03, VERSATILITY=0.79, MASTERY=0.76, DAMAGE_PER_SECOND=11.86 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FURY-DPS
			itemtypes={ TH_POLE=1, TH_AXE=10, TH_MACE=10, TH_SWORD=10, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1 },  -- duals...
			stats = { STRENGTH=1.98, HASTE=0.88, MASTERY=0.80, CRIT=0.82, VERSATILITY=0.76, DAMAGE_PER_SECOND=7.66 },--DAMAGE_PER_SECOND_OFFHAND=3.46
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --PROTECTION-TANK
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, CLOTH=-27, LEATHER=-27, MAIL=-27, PLATE=1},
			stats = { STRENGTH=38.05, STAMINA=71.79, HASTE=0.66, MASTERY=8.61, VERSATILITY=22.99, CRIT=0.93, DAMAGE_PER_SECOND=57.85, LIFESTEAL=12.39, ARMOR=26.63 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
}

ItemScore.FixedLevelHeirloom = {
	-- Garrosh weapons
	[104399]=100, [104400]=100, [104403]=100, [104405]=100, [104406]=100, [104407]=100, [104408]=100, 
	[104409]=100, [105670]=100, [105673]=100, [105674]=100, [105676]=100, [105677]=100, [105679]=100, 
	[105680]=100, [105683]=100, [105684]=100, [105685]=100, [105686]=100, [105687]=100, [105688]=100,
	[105689]=100, [105690]=100, [105691]=100, [105692]=100, [105693]=100, 
	-- 6.2 trinkets
	[126948]=100, [126949]=100, [128318]=100,
	-- 6.2.3 mythic dungeon trinkets
	[133585]=110, [133595]=110, [133596]=110, [133597]=110, [133598]=110,
	}

ItemScore.HeirloomBonuses = { -- Max level depends on bonus
	[582] = 90,
	[583] = 100,
	[3592] = 110,
	[3615] = 110,
	[3616] = 110,
	[3617] = 110,
	[5805] = 120,
	[5806] = 120,
	[5807] = 120,
	[5808] = 120,
	}
setmetatable(ItemScore.HeirloomBonuses,{__index=function(t,index) return 60 end}) 

ItemScore.ProtectedGear = {
	-- legion weapons are no longer protected, since they do not give skills anymore
	[158075] = function() return ItemScore.playerlevel<=120 end, -- heart of azeroth during bfa leveling
}

ItemScore.Unique_Equipped_Families = { -- those items are unique equipped, but do not return GetItemUniqueness values
	 -- wod rings
	[10001] = {[124636]=1,[124635]=1,[124638]=1,[124634]=1,[124637]=1},

	-- Legion legendary non-weapons gear
	[357] = {[132369]=2,[132378]=2,[132410]=2,[132449]=2,[132452]=2,[132460]=2,[133973]=2,[133974]=2,[137037]=2,[137038]=2,[137039]=2,[137040]=2,[137041]=2,[137042]=2,[137043]=2,[137044]=2,[137045]=2,[137046]=2,[137047]=2,[137048]=2,[137049]=2,[137050]=2,[137051]=2,[137052]=2,[137054]=2,[137055]=2,[137220]=2,[137223]=2,[137276]=2,[137382]=2,[138854]=2,[144249]=2, [144258]=2, [144259]=2, [150936]=2,[151636]=2,[151639]=2,[151640]=2,[151641]=2,[151642]=2,[151643]=2,[151644]=2,[151646]=2,[151647]=2,[151649]=2,[151650]=2,[152626]=2}, 

	-- ghost pirate ring heirlooms
	[10002] = {[128169]=1,[128172]=1,[128173]=1},
	}

-- what stats are available on gems depending on source expansion
ItemScore.GemStatsByExp = {
	[1] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- tbc
	[2] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- wotlk
	[3] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- cata
	[4] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- mop
	[5] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- wod
	[6] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- legion
	[7] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- bfa
}

-- details about gems based on expansions and rarity. ilvl of socketed item required for gem to fit it, and how point budget changes with player level
ItemScore.GemData = { -- from level [a] gem gives b points
	[2] = { -- uncommon
		[1] = { ilvl=1,   points={[1]=3, [59]=4}}, -- tbc
		[2] = { ilvl=70,  points={[1]=3, [59]=4}}, -- wotlk
		[3] = { ilvl=102, points={[1]=3, [59]=4, [81]=5}}, -- cata
		[4] = { ilvl=114, points={[1]=3, [59]=4, [81]=5}}, -- mop
		[5] = { ilvl=80,  points={[1]=3, [59]=4, [81]=5, [91]=6}}, -- wod
		[6] = { ilvl=81,  points={[1]=3, [59]=4, [81]=5, [91]=6, [101]=7}}, -- legion
		[7] = { ilvl=100, points={[1]=3, [59]=4, [81]=5, [91]=6, [101]=7, [111]=30}}, -- bfa
	},
	[3] = { -- rare
		[1] = { ilvl=1,   points={[1]=4, [59]=5}}, -- tbc
		[2] = { ilvl=80,  points={[1]=4, [59]=5}}, -- wotlk
		[3] = { ilvl=102, points={[1]=4, [59]=5, [81]=6}}, -- cata
		[4] = { ilvl=114, points={[1]=4, [59]=5, [81]=6}}, -- mop
		[5] = { ilvl=80,  points={[1]=4, [59]=5, [81]=6, [91]=7}}, -- wod
		[6] = { ilvl=81,  points={[1]=4, [59]=5, [81]=6, [91]=7, [101]=9}}, -- legion
		[7] = { ilvl=100, points={[1]=4, [59]=5, [81]=6, [91]=7, [101]=9, [111]=40}}, -- bfa
	},
	[4] = { -- epic
		[1] = { ilvl=1,   points={[1]=5, [59]=6}}, -- tbc
		[2] = { ilvl=80,  points={[1]=5, [59]=6}}, -- wotlk
		[3] = { ilvl=102, points={[1]=5, [59]=6, [81]=7}}, -- cata
		-- no boe epics for pandas
		[5] = { ilvl=80,  points={[1]=5, [59]=6, [81]=7, [91]=8}}, -- wod
		[6] = { ilvl=81,  points={[1]=5, [59]=6, [81]=7, [91]=8, [101]=11}}, -- legion
		-- no boe epics for bfa
	}
}

ItemScore.Item_Weapon_Types = {
	[0] = "AXE",
	[1] = "TH_AXE",
	[2] = "BOW",
	[3] = "GUN",
	[4] = "MACE",
	[5] = "TH_MACE",
	[6] = "TH_POLE",
	[7] = "SWORD",
	[8] = "TH_SWORD",
	[9] = "WARGLAIVE",
	[10] = "TH_STAFF",
	[11] = "DRUID_BEAR",
	[12] = "DRUID_CAT",
	[13] = "FIST",
	[14] = "MISCWEAP",
	[15] = "DAGGER",
	[16] = "THROWN",
	[17] = "SPEAR",
	[18] = "CROSSBOW",
	[19] = "WAND",
	[20] = "FISHPOLE",
	}

ItemScore.Item_Armor_Types = {
	[0] = "JEWELERY", -- necklace, rings and trinkets, also some cosmetic armor
	[1] = "CLOTH",
	[2] = "LEATHER",
	[3] = "MAIL",
	[4] = "PLATE",
	[5] = "COSMETIC",
	[6] = "SHIELD",
	}

-- Yes Dugi, we did update for shadowlands
ItemScore.MythicPlusMods = {
	-- level, prefix, item level
	 [2]={p=3410,lvl=187},
	 [3]={p=3411,lvl=190},
	 [4]={p=3412,lvl=194},
	 [5]={p=3413,lvl=194},
	 [6]={p=3414,lvl=197},
	 [7]={p=3415,lvl=200},
	 [8]={p=3416,lvl=200},
	 [9]={p=3417,lvl=200},
	[10]={p=3418,lvl=204},
	[11]={p=3509,lvl=204},
	[12]={p=3510,lvl=207},
	[13]={p=3534,lvl=207},
	[14]={p=3535,lvl=207},
	[15]={p=3536,lvl=210},
}

local mythic_baseline = 1498
local mythic_baselevel = 184
for i,v in pairs(ItemScore.MythicPlusMods) do
	ItemScore.MythicPlusMods[i] = v.p..":"..(mythic_baseline-mythic_baselevel+v.lvl)
end

ItemScore.TypeToSlot = {
	INVTYPE_WEAPON = INVSLOT_MAINHAND, -- dual wield handled in GetValidSlots
	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND, -- titan fury hanndled in GetValidSlots
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_RANGED = INVSLOT_MAINHAND,
	INVTYPE_RANGEDRIGHT = INVSLOT_MAINHAND,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_NECK = INVSLOT_NECK,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_ROBE = INVSLOT_CHEST,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_FINGER = INVSLOT_FINGER1, -- second slot handled in GetValidSlots
	INVTYPE_TRINKET = INVSLOT_TRINKET1, -- second slot handled in GetValidSlots
}

ItemScore.KeywordsPawnToRules = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsPawnToRules[v.pawn]=v.blizz end
ItemScore.KeywordsZygorToPawn = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsZygorToPawn[v.blizz]=v.pawn end
ItemScore.Gear_ZygorToPawn = {} for i,v in pairs(ItemScore.Gear_PawnToZygor) do ItemScore.Gear_ZygorToPawn[v]=i end

-- Build simpler defaults table for use in options
ItemScore.Defaults = {}
for class,specs in pairs(ItemScore.rules) do
    ZGV.ItemScore.Defaults[class] = {}
    for spec,data in pairs(specs) do
	ZGV.ItemScore.Defaults[class][spec] = {}

	for name,v in pairs(data.stats) do
		table.insert(ZGV.ItemScore.Defaults[class][spec],{name=name,weight=v})
	end
	sort(ZGV.ItemScore.Defaults[class][spec],function(a,b) return a.name<b.name end)
    end
end 