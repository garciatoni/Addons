local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.Featured={}

table.insert(GuideMenu.Featured,{
	title="Shadowlands", group="shadowlands",

{"section", text=[[LEVELING]]},
        {"banner", image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsLeveling",showcaseonly=true},
	{"content", text=[[Reach Level 10]]},
	{"text", text=[[Shadowlands introduces a new shared starter zone called Exile's Reach to level from 1-10. If starting a new character, use the Exiles Reach guide to reach level 10.]]},
	{"columns",
	{"item", text=[[**Exile's Reach (1-10)**]], guide="LEVELING\\Starter Guides\\Exile's Reach (1-10)"},
	}, --columnsend

	{"content", text=[[Reach Level 50]]},
	{"text", text=[[At level 10 you can choose one expansion which will scale to level you from 10 to 50. If it's your first time Use the Chromie Time guide to pick or change your expansion.]]},
	{"columns",
	{"item", text=[[**Chromie Time**]], guide="LEVELING\\Starter Guides\\Chromie Time",roadmaponly=true},
	{"item", text=[[**Classic (10-50)**]], folder="LEVELING\\Classic (10-50)",roadmaponly=true},
	{"item", text=[[**The Burning Crusade (10-50)**]], folder="LEVELING\\The Burning Crusade (10-50)",roadmaponly=true},
	{"item", text=[[**Wrath of the Lich King (10-50)**]], folder="LEVELING\\Wrath of the Lich King (10-50)",roadmaponly=true},
	{"item", text=[[**Cataclysm (10-50)**]], folder="LEVELING\\Cataclysm (10-50)",roadmaponly=true},
	{"item", text=[[**Pandaria (10-50)**]], folder="LEVELING\\Pandaria (10-50)",roadmaponly=true},
	{"item", text=[[**Draenor (10-50)**]], folder="LEVELING\\Draenor (10-50)",roadmaponly=true},
	{"item", text=[[**Legion (10-50)**]], folder="LEVELING\\Legion (10-50)",roadmaponly=true},
	{"item", text=[[**Battle for Azeroth (10-50)**]], folder="LEVELING\\Battle for Azeroth (10-50)",roadmaponly=true},
	}, --columnsend
	
	{"content", text=[[Complete The Shadowlands Intro]]},
	{"text", text=[[Once you've reached level 50 you're ready to begin your journey into the Shadowlands by completing the intro scenario.]]},
	{"list", text=[[If it's your first time through Shadowlands you have to complete the storyline and will need to select the Main Character choice when prompted in this guide. If you've already played through Shadowlands you can choose the Alt Character option to skip the storyline and level with side quests, dungeons, and world quests.]]},
	{"columns",
	{"item", text=[[**Shadowlands Intro & Main Story Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline"},
	}, --columnsend

	{"content", text=[[Reach Level 60]]},
	{"text", text=[[After you've completed the intro you will be able to choose one of the following four new zones to level up to 60. If you prefer to level only with story line quests and skip the side quests choose the story only versions]]},
	{"list", text=[[Alternatively, you can level up with our Shadowlands Dungeon guides.]]},
	{"columns",
	{"item", text=[[**Bastion**]], guide="LEVELING\\Shadowlands (50-60)\\Bastion"},
	{"item", text=[[**Bastion (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Bastion (Story Only)"},
	{"item", text=[[**Maldraxxus**]], guide="LEVELING\\Shadowlands (50-60)\\Maldraxxus"},
	{"item", text=[[**Maldraxxus (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Maldraxxus (Story Only)"},
	{"item", text=[[**Ardenweald**]], guide="LEVELING\\Shadowlands (50-60)\\Ardenweald"},
	{"item", text=[[**Ardenweald (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Ardenweald (Story Only)"},
	{"item", text=[[**Revendreth**]], guide="LEVELING\\Shadowlands (50-60)\\Revendreth"},
	{"item", text=[[**Revendreth (Story Only)**]], guide="LEVELING\\Shadowlands (50-60)\\Revendreth (Story Only)"},
	{"item", text=[[**The Maw**]], guide="LEVELING\\Shadowlands (50-60)\\The Maw"},
	}, --columnsend

	{"content", text=[[Complete Your Covenant Questline]]},
	{"text", text=[[Once you've reached level 60 you can start your covenant questline.]]},
	{"columns",
	{"item", text=[[**Kyrian Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Covenants\\Kyrian Questline"},
	{"item", text=[[**Night Fae Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Covenants\\Night Fae Questline"},
	{"item", text=[[**Necrolord Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Covenants\\Necrolord Questline"},
	{"item", text=[[**Venthyr Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Covenants\\Venthyr Questline"},
	}, --columnsend

{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsDungeons",showcaseonly=true},
	{"content", text=[[Leveling Dungeons]]},
	{"text", text=[[You can level up to 60 using the following dungeons.]]},
	{"columns",
	{"item", text=[[**The Necrotic Wake**]], guide="DUNGEONS\\Shadowlands Dungeons\\The Necrotic Wake"},
	{"item", text=[[**Plaguefall**]], guide="DUNGEONS\\Shadowlands Dungeons\\Plaguefall"},
	{"item", text=[[**Mists of Tirna Scithe**]], guide="DUNGEONS\\Shadowlands Dungeons\\Mists of Tirna Scithe"},
	{"item", text=[[**Halls of Atonement**]], guide="DUNGEONS\\Shadowlands Dungeons\\Halls of Atonement"},
	}, --columnsend

	{"content", text=[[Max Level Dungeons]]},
	{"text", text=[[You can complete the following dungeons once you've reached level 60.]]},
	{"columns",
	{"item", text=[[**Theater of Pain**]], guide="DUNGEONS\\Shadowlands Dungeons\\Theater of Pain"},
	{"item", text=[[**De Other Side**]], guide="DUNGEONS\\Shadowlands Dungeons\\De Other Side"},
	{"item", text=[[**Spires of Ascension**]], guide="DUNGEONS\\Shadowlands Dungeons\\Spires of Ascension"},
	{"item", text=[[**Sanguine Depths**]], guide="DUNGEONS\\Shadowlands Dungeons\\Sanguine Depths"},
	}, --columnsend

	{"content", text=[[Unlock Torghast]]},
	{"text", text=[[Torghast is a new endlessly replayable dungeon. Use the guides below to unlock and play through the Torghast dungeon.]]},
	{"columns",
	{"item", text=[[**Torghast Questline**]], guide="LEVELING\\Shadowlands (50-60)\\Torghast\\Torghast Questline"},
	}, --columnsend

	{"content", text=[[Shadowlands Raids]]},
	{"columns",
	{"item", text=[[**Castle Nathria**]], guide="DUNGEONS\\Shadowlands Raids\\Castle Nathria"},
	}, --columnsend

{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsDailies",showcaseonly=true},

	{"content", text=[[Unlock World Quests and Covenant Dailies]]},
	{"text", text=[[Play through the Covenant Questline guides in the Leveling section until you unlock World Quests and Covenant Dailies.]]},

	{"content", text=[[Zone World Quests]]},
	{"text", text=[[Once you've reached level 60 you can enjoy the end game by completing world quests in the following zones.]]},
	{"list", text=[[It is recommended that you use the World Quest Planner feature for this.]]},
	{"columns",
	{"item", text=[[**Bastion World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Bastion World Quests"},
	{"item", text=[[**Ardenweald World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Ardenweald World Quests"},
	{"item", text=[[**Maldraxxus World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Maldraxxus World Quests"},
	{"item", text=[[**Revendreth World Quests**]], guide="DAILIES\\Shadowlands (50-60)\\Revendreth World Quests"},
	{"item", text=[[**Ve'nari Daily Quests (The Maw)**]], guide="DAILIES\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)", faction="A"},
	{"item", text=[[**Ve'nari World Quests (The Maw)**]], guide="DAILIES\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)", faction="H"},
	}, --columnsend

	{"content", text=[[Covenant World Quests]]},
	{"text", text=[[Once you've reached level 60 you can enjoy the end game by completing world quests for the following covenants.]]},
	{"list", text=[[It is recommended that you use the World Quest Planner feature for this.]]},
	{"columns",
	{"item", text=[[**Kyrian Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Covenants\\Kyrian Daily Quests"},
	{"item", text=[[**Night Fae Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Covenants\\Night Fae Daily Quests"},
	{"item", text=[[**Necrolord Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Covenants\\Necrolord Daily Quests"},
	{"item", text=[[**Venthyr Dailies**]], guide="DAILIES\\Shadowlands (50-60)\\Covenants\\Venthyr Daily Quests"},
	}, --columnsend

--[=[

{"section", text=[[REPUTATIONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsReputations",showcaseonly=true},
	{"content", text=[[Reach Exalted Status With Your Covenant]]},
	{"columns",
	{"item", text=[[**Kyrian Covenant of Bastion**]], guide="REPUTATIONS\\Shadowlands\\Kyrian Covenant of Bastion"},
	{"item", text=[[**Night Fae of Ardenweald**]], guide="REPUTATIONS\\Shadowlands\\Night Fae of Ardenweald"},
	{"item", text=[[**Necrolords of Maldraxxus**]], guide="REPUTATIONS\\Shadowlands\\Necrolords of Maldraxxus"},
	{"item", text=[[**Venthyr of Revendreth**]], guide="REPUTATIONS\\Shadowlands\\Venthyr of Revendreth"},
	}, --columnsend

--]=]

{"section", text=[[PROFESSIONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsProfessions",showcaseonly=true},
	{"content", text=[[Reach Max Profession Skill in Shadowlands]]},
	{"text", text=[[NOTE: These guides are still a work in progress.]]},
	{"columns",
	{"item", text=[[**Shadowlands Jewelcrafting 1-100**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Shadowlands Jewelcrafting 1-100"},
	{"item", text=[[**Shadowlands Cooking 1-100**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Shadowlands Cooking 1-100"},
	{"item", text=[[**Shadowlands Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Shadowlands Herbalism 1-175"},
	{"item", text=[[**Shadowlands Mining 1-175**]], guide="PROFESSIONS\\Mining\\Leveling Guides\\Shadowlands Mining 1-175"},
	{"item", text=[[**Shadowlands Tailoring 1-100**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Shadowlands Tailoring 1-100"},
	{"item", text=[[**Shadowlands Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Shadowlands Alchemy 1-175"},
	{"item", text=[[**Shadowlands Enchanting 1-100**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Shadowlands Enchanting 1-100"},
	{"item", text=[[**Shadowlands Engineering 1-100**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Shadowlands Engineering 1-100"},
	{"item", text=[[**Shadowlands Inscription 1-100**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Shadowlands Inscription 1-100"},
	{"item", text=[[**Shadowlands Leatherworking 1-100**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Shadowlands Leatherworking 1-100"},
	{"item", text=[[**Shadowlands Archaeology 1-175**]], guide="PROFESSIONS\\Archaeology\\Leveling Guides\\Shadowlands Archaeology 1-175"},
	{"item", text=[[**Shadowlands Blacksmithing 1-100**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Shadowlands Blacksmithing 1-100"},
	{"item", text=[[**Shadowlands Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Shadowlands Fishing 1-175"},
	}, --columnsend

})



table.insert(GuideMenu.Featured,{
	title="Patch 8.3 - Visions of N'Zoth", group="patch_83",

{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\Patch83Leveling",showcaseonly=true},
		{"content", text=[[Optional: Unlock Allied Races]]},
		{"text", text=[[Mechangnomes for Alliance and Vulperans for Horde are now available to unlock.]]},
		{"columns",
		{"item", text=[[**Mechagnome Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Mechagnome Race Unlock",faction="A"},
		{"item", text=[[**Vulpera Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Vulpera Race Unlock", faction="H"},

		}, --columnsend
		{"content", text=[[Optional: Obtain Worgen or Goblin Heritage Armor ]]},
		{"text", text=[[You can now obtain Heritage Armor for Worgen (Alliance only) and Goblins (Horde only).]]},
		{"columns",
		{"item", text=[[**Worgen Heritage Armor**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Heritage Armor\\Worgen Heritage Armor", faction="A"},
	{"item", text=[[**Goblin Heritage Armor**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Heritage Armor\\Goblin Heritage Armor", faction="H"},
		}, --columnsend
		{"content", text=[[Magni's Plan Questline]]},
		{"text", text=[[This is the new main questline for Patch 8.3. Play through the Magni's Plan leveling guide until you unlock the legendary cloak. This will open both assault zones and factions.]]},
		{"list", text=[[Once you complete this you can proceed to the new Dailies content.]]},
		{"columns",
		{"item", text=[[**Magni's Plan**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Heart of Azeroth\\Magni's Plan"},
		}, --columnsend
		{"content", text=[[Horrific Visions]]},
		{"text", text=[[These are 1-5 player Mage Tower inspired challenges. You can enter these solo or with a group when each group member has a Vessel of Horrific Visions. ]]},
		{"list", text=[[You get a Vessel of Horrific Vision each week from the N'Zoth assault and can purchase additional ones for 10,000 Coalescing Visions from Wrathion in the Chamber of Heart.]]},
		{"columns",
		{"item", text=[[**Horrific Vision of Stormwind**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Horrific Vision of Stormwind"},
		}, --columnsend
	
	{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\Patch83Dungeons",showcaseonly=true},
	{"content", text=[[Raids]]},
	{"text", text=[[These guides will walk you through all 4 wings of the new 12 boss raid.]], guide="Magni's Plan"},
	{"columns",
	{"item", text=[[**Ny'alotha, the Waking City - Vision of Destiny**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Vision of Destiny"},
	{"item", text=[[**Ny'alotha, the Waking City - Halls of Devotion**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Halls of Devotion"},
	{"item", text=[[**Ny'alotha, the Waking City - Gift of Flesh**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - Gift of Flesh"},{"item", text=[[**Ny'alotha, the Waking City - The Waking Dream**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny'alotha, the Waking City - The Waking Dream"},
	}, --columnsend
	{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\Patch83Dailies",showcaseonly=true},
	{"content", text=[[Assaults]]},
	{"text", text=[[One zone will have the Ny'alotha raid entrance in it each week. This zone is the N�Zoth assault zone and it will remain active each week. Do the assault in this zone every Tuesday.]]},
	{"list", text=[[The zone without the raid entrance will alternate every few days with a new assault available. ]]},
	{"columns",
	{"item", text=[[**Uldum Assaults**]], guide="DAILIES\\Battle for Azeroth\\Uldum\\Uldum Assaults"},
	{"item", text=[[**Vale of Eternal Blossoms Assaults**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms Assaults"},
	}, --columnsend
	{"content", text=[[World Quests]]},
	{"columns",
	{"item", text=[[**Uldum World Quests**]], guide="DAILIES\\Battle for Azeroth\\Uldum World Quests"},
	{"item", text=[[**Vale of Eternal Blossoms World Quests**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms World Quests"},
	}, --columnsend
	{"content", text=[[Reputations ]]},
	{"columns",
	{"item", text=[[**Rajani**]], guide="REPUTATIONS\\Battle for Azeroth\\Rajani"},
	{"item", text=[[**Uldum Accord**]], guide="REPUTATIONS\\Battle for Azeroth\\Uldum Accord"},
	}, --columnsend
	
	{"section", text=[[PETSMOUNTS]]},

     {"content", text=[[Source: Vendor]]},
    {"guideslist",filters={patch="83000", source="Vendor"},columns=4},

	{"content", text=[[Source: Drop]]},
    {"guideslist",filters={patch="83000", source="Drop"},columns=4},

      {"content", text=[[Source: Quest]]},
    {"guideslist",filters={patch="83000", source="Quest"},columns=4},

          {"content", text=[[Source: Achievement]]},
    {"guideslist",filters={patch="83000", source="Achievement"},columns=4},
--[=[
              {"content", text=[[Source: Discovery]]},
    {"guideslist",filters={patch="83000", source="Discovery"},columns=4},
    
              {"content", text=[[Source: Profession]]},
    {"guideslist",filters={patch="83000", source="Profession"},columns=4},

              {"content", text=[[Source: Promotion]]},
    {"guideslist",filters={patch="83000", source="Promotion"},columns=4},

              {"content", text=[[Source: Trading Card Game]]},
    {"guideslist",filters={patch="83000", source="TradingCardGame"},columns=4},

              {"content", text=[[Source: World Event]]},
    {"guideslist",filters={patch="83000", source="WorldEvent"},columns=4}, --]=]


	
	{"section", text=[[TITLES]]},
	
	{"content", text=[[Titles]]},
	{"columns",
	{"item", text=[[**The Awakened**]], guide="TITLES\\Battle for Azeroth Titles\\General\\The Awakened"},
	{"item", text=[[**Veteran of the Fourth War**]], guide="TITLES\\Battle for Azeroth Titles\\General\\Veteran of the Fourth War"},
	}, --columnsend
	{"content", text=[[Dungeon / Raid Achievements]]},
	{"columns",
	{"item", text=[[**Mythic: N'Zoth, the Corruptor**]], guide="ACHIEVEMENTS\\Dungeons & Raids\\Battle for Azeroth Raids\\Mythic: N'Zoth, the Corruptor"},
	{"item", text=[[**Battle for Azeroth Keystone Master: Season Four**]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Master: Season Four"},
	{"item", text=[[**Battle for Azeroth Keystone Conqueror: Season Four**]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Conqueror: Season Four"},
	}, --columnsend
	{"content", text=[[Reputation Achievements]]},
	{"columns",
	{"item", text=[[**Allied Races: Mechagnome**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Mechagnome", faction="A"},
	{"item", text=[[**Heritage of the Mechagnome**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Mechagnome", faction="A"},
	{"item", text=[[**Allied Races: Vulpera**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Vulpera", faction="H"},
	{"item", text=[[**Heritage of the Vulpera**]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Vulpera", faction="H"},
	}, --columnsend
	{"content", text=[[Expansion Achievements	]]},
	{"columns",
	{"item", text=[[**The Most Horrific Vision of Stormwind**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\The Most Horrific Vision of Stormwind"},
	{"item", text=[[**The Even More Horrific Vision of Stormwind**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\The Even More Horrific Vision of Stormwind"},
	{"item", text=[[**Reeking of Visions**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\Reeking of Visions"},
	{"item", text=[[**Through the Depths of Visions**]], guide="Through the Depths of Visions"},
	{"item", text=[[**We Have the Technology**]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N'Zoth\\We Have the Technology"},
	}, --columnsend
	{"content", text=[[Pets Battle Achievements]]},
	{"columns",
	{"item", text=[[**Pet Battle Challenge: Blackrock Depths**]], guide="ACHIEVEMENTS\\Pet Battles\\Battle for Azeroth\\Pet Battle Challenge: Blackrock Depths"},
	}, --columnsend
	{"content", text=[[Quest Achievements]]},
	{"columns",
	{"item", text=[[**The Fourth War**]], guide="ACHIEVEMENTS\\Quests\\Battle for Azeroth\\The Fourth War"},
	}, --columnsend


})

table.insert(GuideMenu.Featured,{
	title="Battle for Azeroth", group="patch_80",

{"section", text=[[LEVELING]]},
{"banner", image=ZGV.DIR.."\\Guides\\Images\\BFALeveling",showcaseonly=true},
{"content", text=[[Unlock Allied Races]]},
{"text", text=[[If you wish to play as one of the new Allied races, you will need to unlock them first, if you haven't already.]]},
{"columns",
{"item", text=[[|cfffe6100Void Elf Race Unlock]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Void Elf Race Unlock", faction="A"},

{"item", text=[[|cfffe6100Lightforged Draenei Race Unlock]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Lightforged Draenei Race Unlock", faction="A"},

	{"item", text=[[**Nightborne Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Nightborne Race Unlock", faction="H"},
	{"item", text=[[**Highmountain Tauren Race Unlock**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Allied Races\\Highmountain Tauren Race Unlock", faction="H"},

}, --columnsend
{"content", text=[[10-50 Leveling    ]]},
{"text", text=[[Use the Chromie Time guide and choose the Battle for Azeroth expansion. Before you can begin exploring the continents of Kul Tiras and Zandalar, you'll need to obtain the Heart of Azeroth, a necklace that replaces your artifact weapons. You'll also want to to begin the War Campaign guide in a separate tab. New war campaign quests will unlock as you level your character, so you will be using this guide along with the Leveling guides during the entire leveling process. ]]},

{"list", text=[[Alternatively, you can level up with our Dungeon Guides. However, you'll miss out on reputation needed to unlock World Quests later.]], folder="DUNGEONS\\Battle for Azeroth Dungeons\\"},

{"list", text=[[Once you reach level 120 you can start using our End Game guides.]], folder="DAILIES\\Battle for Azeroth\\"},
{"columns",
{"item", text=[[**Chromie Time**]], guide="LEVELING\\Starter Guides\\Chromie Time"},

{"item", text=[[|cfffe6100Tiragarde Sound]], guide="LEVELING\\Battle for Azeroth (10-50)\\Kul Tiras\\Tiragarde Sound (10-50)", faction="A"},

{"item", text=[[|cfffe6100Stormsong Valley]], guide="LEVELING\\Battle for Azeroth (10-50)\\Kul Tiras\\Stormsong Valley (35-50)", faction="A"},

{"item", text=[[|cfffe6100Drustvar]], guide="LEVELING\\Battle for Azeroth (10-50)\\Kul Tiras\\Drustvar (25-50)", faction="A"},

	{"item", text=[[**Zuldazar**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Zandalar\\Zuldazar (10-50)", faction="H"},
	{"item", text=[[**Nazmir**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Zandalar\\Nazmir (10-50)", faction="H"},
	{"item", text=[[**Vol'dun**]], guide="LEVELING\\Battle for Azeroth (10-50)\\Zandalar\\Vol'dun (10-50)", faction="H"},

{"item", text=[[|cfffe6100War Campaign]], guide="LEVELING\\Battle for Azeroth (10-50)\\War Campaign"},
}, --columnsend

	
	{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\BFADungeons",showcaseonly=true},

	{"text", text=[[You can run Dungeons to level up to 120 and get gear. ]]},
	{"list", text=[[Alternatively, you can level up with our Leveling guides.]], folder="LEVELING\\Battle for Azeroth (10-50)"},
	{"list", text=[[You can use the Gear Finder to find the best gear for your character.]]},
	{"list", text=[[Once you reach level 120 you can start using our End Game guides.]]},
	{"content", text=[[Dungeons]]},
	{"columns",
	{"item", text=[[**Freehold**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Freehold"},
	{"item", text=[[**Atal'Dazar**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Atal'Dazar"},
	{"item", text=[[**Waycrest Manor**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Waycrest Manor"},
	{"item", text=[[**Shrine of the Storm**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Shrine of the Storm"},
	{"item", text=[[**Siege of Boralus**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Siege of Boralus"},
	{"item", text=[[**Temple of Sethraliss**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Temple of Sethraliss"},
	{"item", text=[[**The Underrot**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\The Underrot"},
	{"item", text=[[**Kings' Rest**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\Kings' Rest"},
	{"item", text=[[**The MOTHERLODE!!**]], guide="DUNGEONS\\Battle for Azeroth Dungeons\\The MOTHERLODE!!"},
	}, --columnsend
	{"content", text=[[Raids]]},
	{"columns",
	{"item", text=[[**Uldir - Crimson Descent**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Crimson Descent"},
	{"item", text=[[**Uldir - Halls of Containment**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Halls of Containment"},
	{"item", text=[[**Uldir - Heart of Corruption**]], guide="DUNGEONS\\Battle for Azeroth Raids\\Uldir - Heart of Corruption"},
	}, --columnsend

	
	{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\BFADailies",showcaseonly=true},
	{"content", text=[[Unlock World Quests]]},
	{"text", text=[[Once you've reached 120 and unlocked all 3 of the footholds in the War Campaign you'll receive a quest to unlock World Quests. In order to complete this quest you will need to reach "Friendly" status with the 3 new factions in Battle for Azeroth. After reaching Friendly status, you can turn in the quest, which will give you the Flight Master's Whistle and unlock world quests.]]},
	{"list", text=[[This will already be done if you used our Leveling guides.]]},
	{"columns",
	{"item", text=[[**Proudmoore Admiralty**]], guide="REPUTATIONS\\Battle for Azeroth\\Proudmoore Admiralty", faction="A"},
	{"item", text=[[**Order of Embers**]], guide="REPUTATIONS\\Battle for Azeroth\\Order of Embers", faction="A"},
	{"item", text=[[**Storm's Wake**]], guide="REPUTATIONS\\Battle for Azeroth\\Storm's Wake", faction="A"},

	{"item", text=[[**Zandalari Empire**]], guide="REPUTATIONS\\Battle for Azeroth\\Zandalari Empire", faction="H"},
	{"item", text=[[**Talanji's Expedition**]], guide="REPUTATIONS\\Battle for Azeroth\\Talanji's Expedition", faction="H"},
	{"item", text=[[**Voldunai**]], guide="REPUTATIONS\\Battle for Azeroth\\Voldunai", faction="H"},
	}, --columnsend
	{"content", text=[[Complete World Quests]]},
	{"text", text=[[Complete world quests in Kul Tiras and Zandalar to earn gear, gain War Resources, and Artifact Power to improve your Heart of Azeroth necklace.]]},
	{"list", text=[[You can use the World Quest Planner feature to complete World Quests.]]},
	{"columns",
	{"item", text=[[**Arathi Highlands World Quests**]], guide="DAILIES\\Battle for Azeroth\\Arathi Highlands World Quests"},
	{"item", text=[[**Drustvar World Quests**]], guide="DAILIES\\Battle for Azeroth\\Drustvar World Quests"},
	{"item", text=[[**Mechagon Island World Quests**]], guide="DAILIES\\Battle for Azeroth\\Mechagon Island World Quests"},
	{"item", text=[[**Nazmir World Quests**]], guide="DAILIES\\Battle for Azeroth\\Nazmir World Quests"},
	{"item", text=[[**Vale of Eternal Blossoms World Quests**]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms World Quests"},
	}, --columnsend


	
	{"section", text=[[PROFESSIONS]]},
	{"content", text=[[Gathering Professions]]},
	{"columns",
	{"item", text=[[**Kul Tiran Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Kul Tiran Herbalism 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Skinning 1-175**]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Kul Tiran Skinning 1-175", faction="A"},

	{"item", text=[[**Zandalari Herbalism 1-175**]], guide="PROFESSIONS\\Herbalism\\Leveling Guides\\Zandalari Herbalism 1-175", faction="H"},
	{"item", text=[[**Zandalari Skinning 1-175**]], guide="PROFESSIONS\\Skinning\\Leveling Guides\\Zandalari Skinning 1-175", faction="H"},
	}, --columnsend
	{"content", text=[[Crafting Professions]]},
	{"columns",
	{"item", text=[[**Kul Tiran Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Kul Tiran Alchemy 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Blacksmithing 1-175**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Kul Tiran Blacksmithing 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Enchanting 1-175**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Kul Tiran Enchanting 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Engineering 1-175**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Inscription 1-175**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Kul Tiran Inscription 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Jewelcrafting 1-175**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Kul Tiran Jewelcrafting 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Leatherworking 1-175**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Kul Tiran Leatherworking 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Tailoring 1-175**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Kul Tiran Tailoring 1-175", faction="A"},

	{"item", text=[[**Zandalari Alchemy 1-175**]], guide="PROFESSIONS\\Alchemy\\Leveling Guides\\Zandalari Alchemy 1-175", faction="H"},
	{"item", text=[[**Zandalari Blacksmithing 1-175**]], guide="PROFESSIONS\\Blacksmithing\\Leveling Guides\\Zandalari Blacksmithing 1-175", faction="H"},
	{"item", text=[[**Zandalari Enchanting 1-175**]], guide="PROFESSIONS\\Enchanting\\Leveling Guides\\Zandalari Enchanting 1-175", faction="H"},
	{"item", text=[[**Zandalari Engineering 1-175**]], guide="PROFESSIONS\\Engineering\\Leveling Guides\\Zandalari Engineering 1-175", faction="H"},
	{"item", text=[[**Zandalari Inscription 1-175**]], guide="PROFESSIONS\\Inscription\\Leveling Guides\\Zandalari Inscription 1-175", faction="H"},
	{"item", text=[[**Zandalari Jewelcrafting 1-175**]], guide="PROFESSIONS\\Jewelcrafting\\Leveling Guides\\Zandalari Jewelcrafting 1-175", faction="H"},
	{"item", text=[[**Zandalari Leatherworking 1-175**]], guide="PROFESSIONS\\Leatherworking\\Leveling Guides\\Zandalari Leatherworking 1-175", faction="H"},
	{"item", text=[[**Zandalari Tailoring 1-175**]], guide="PROFESSIONS\\Tailoring\\Leveling Guides\\Zandalari Tailoring 1-175", faction="H"},
	}, --columnsend
	{"content", text=[[Secondary Professions]]},
	{"columns",
	{"item", text=[[**Kul Tiran Cooking 1-175**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Kul Tiran Cooking 1-175", faction="A"},
	{"item", text=[[**Kul Tiran Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Kul Tiran Fishing 1-175", faction="A"},

	{"item", text=[[**Zandalari Cooking 1-175**]], guide="PROFESSIONS\\Cooking\\Leveling Guides\\Zandalari Cooking 1-175", faction="H"},
	{"item", text=[[**Zandalari Fishing 1-175**]], guide="PROFESSIONS\\Fishing\\Leveling Guides\\Zandalari Fishing 1-175", faction="H"},
	}, --columnsend
	
	{"content", text=[[Profession Questlines]]},
	{"columns",
	{"item", text=[[**Kul Tiran Herbalism Quest Line**]], guide="PROFESSIONS\\Herbalism\\Quest Guides\\Kul Tiran Herbalism Quest Line", faction="A"},
	{"item", text=[[**Kul Tiran Skinning Quest Guide**]], guide="PROFESSIONS\\Skinning\\Quest Guides\\Kul Tiran Skinning Quest Guide", faction="A"},

	{"item", text=[[**Zandalari Herbalism Quest Line**]], guide="PROFESSIONS\\Herbalism\\Quest Guides\\Zandalari Herbalism Quest Line", faction="H"},
	{"item", text=[[**Zandalari Skinning Quest Guide**]], guide="PROFESSIONS\\Skinning\\Quest Guides\\Zandalari Skinning Quest Guide", faction="H"},
	}, --columnsend


{"section", text=[[PETSMOUNTS]]},

    	{"content", text=[[Source: Pet Battle]]},
    {"guideslist",filters={patch="80100", source="PetBattle"},columns=4},

     {"content", text=[[Source: Vendor]]},
    {"guideslist",filters={patch="80100", source="Vendor"},columns=4},

	{"content", text=[[Source: Drop]]},
    {"guideslist",filters={patch="80100", source="Drop"},columns=4},

      {"content", text=[[Source: Quest]]},
    {"guideslist",filters={patch="80100", source="Quest"},columns=4},

          {"content", text=[[Source: Achievement]]},
    {"guideslist",filters={patch="80100", source="Achievement"},columns=4},
    
              {"content", text=[[Source: Profession]]},
    {"guideslist",filters={patch="80100", source="Profession"},columns=4},

              {"content", text=[[Source: Promotion]]},
    {"guideslist",filters={patch="80100", source="Promotion"},columns=4},



})
