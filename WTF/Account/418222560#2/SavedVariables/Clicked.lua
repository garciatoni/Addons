
ClickedDB = {
	["profileKeys"] = {
		["Koontz - Dun Modr"] = "DEATHKNIGHT",
		["Thunderstrak - Dun Modr"] = "Thunderstrak - Dun Modr",
		["Nimkasi - Dun Modr"] = "MONK",
		["Koontz - Sanguino"] = "SHAMAN",
		["Thunderstrak - Zul'jin"] = "DRUID",
		["Syrona - Dun Modr"] = "PALADIN",
		["Nyxa - Dun Modr"] = "HUNTER",
		["Thunderstrak - Sanguino"] = "Thunderstrak - Dun Modr",
		["Nynsar - Dun Modr"] = "Thunderstrak - Dun Modr",
		["Thunderstruk - Dun Modr"] = "WARLOCK",
		["Sagar - Dun Modr"] = "SHAMAN",
		["Shiradry - Dun Modr"] = "DEMONHUNTER",
		["Nyxagard - Dun Modr"] = "ROGUE",
		["Syrona - Sanguino"] = "PALADIN",
	},
	["profiles"] = {
		["HUNTER"] = {
			["version"] = "0.13.4",
		},
		["Thunderstrak - Dun Modr"] = {
			["bindings"] = {
				{
					["cache"] = {
						["displayIcon"] = 236288,
						["displayName"] = "Cast Cura de la Naturaleza",
					},
					["identifier"] = 1,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = true,
						["allowStartAttack"] = true,
						["spellValue"] = "Cura de la Naturaleza",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "BUTTON2",
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["never"] = false,
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["unit"] = "DEFAULT",
								["hostility"] = "ANY",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [1]
				{
					["cache"] = {
						["displayIcon"] = 136081,
						["displayName"] = "Cast Rejuvenecimiento",
					},
					["identifier"] = 2,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Rejuvenecimiento",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "4",
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["never"] = false,
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["unit"] = "MOUSEOVER",
								["hostility"] = "HELP",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [2]
				{
					["cache"] = {
						["displayIcon"] = 134206,
						["displayName"] = "Cast Flor de vida",
					},
					["identifier"] = 3,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Flor de vida",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "3",
					["integrations"] = {
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["unit"] = "MOUSEOVER",
								["hostility"] = "HELP",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["never"] = false,
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["type"] = "SPELL",
				}, -- [3]
				{
					["cache"] = {
						["displayIcon"] = 136085,
						["displayName"] = "Cast Recrecimiento",
					},
					["identifier"] = 5,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Recrecimiento",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "2",
					["integrations"] = {
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["unit"] = "DEFAULT",
								["hostility"] = "ANY",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["never"] = false,
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["type"] = "SPELL",
				}, -- [4]
				{
					["cache"] = {
						["displayIcon"] = 134914,
						["displayName"] = "Cast Alivio presto",
					},
					["identifier"] = 6,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Alivio presto",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "1",
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["never"] = false,
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["unit"] = "MOUSEOVER",
								["hostility"] = "HELP",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [5]
				{
					["cache"] = {
						["displayIcon"] = 132137,
						["displayName"] = "Cast Resguardo de Cenarius",
					},
					["identifier"] = 7,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Resguardo de Cenarius",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "5",
					["integrations"] = {
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["hostility"] = "HELP",
								["unit"] = "MOUSEOVER",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["never"] = false,
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["type"] = "SPELL",
				}, -- [6]
				{
					["cache"] = {
						["displayIcon"] = 572025,
						["displayName"] = "Cast Corteza de hierro",
					},
					["identifier"] = 8,
					["action"] = {
						["itemValue"] = "",
						["macroValue"] = "",
						["interrupt"] = false,
						["allowStartAttack"] = true,
						["spellValue"] = "Corteza de hierro",
						["targetUnitAfterCast"] = false,
						["macroMode"] = "FIRST",
						["cancelQueuedSpell"] = false,
					},
					["keybind"] = "MOUSEWHEELUP",
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["never"] = false,
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["unit"] = "MOUSEOVER",
								["hostility"] = "HELP",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [7]
				{
					["type"] = "SPELL",
					["identifier"] = 10,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["macroMode"] = "FIRST",
						["allowStartAttack"] = true,
						["interrupt"] = false,
						["targetUnitAfterCast"] = false,
						["spellValue"] = "Sobrecrecimiento",
						["itemValue"] = "",
					},
					["cache"] = {
						["displayName"] = "Cast Sobrecrecimiento",
						["displayIcon"] = 1408836,
					},
					["integrations"] = {
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["hostility"] = "HELP",
								["unit"] = "MOUSEOVER",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Thunderstrak",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["class"] = {
							["single"] = "DRUID",
							["selected"] = 0,
							["multiple"] = {
								"DRUID", -- [1]
							},
						},
						["never"] = false,
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["race"] = {
							["single"] = "NightElf",
							["selected"] = 0,
							["multiple"] = {
								"NightElf", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 4,
							["selected"] = 0,
							["multiple"] = {
								4, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["warMode"] = {
							["value"] = false,
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["keybind"] = "º",
				}, -- [8]
				["next"] = 11,
			},
			["version"] = "0.17.2",
		},
		["PALADIN"] = {
			["bindings"] = {
				{
					["keybind"] = "2",
					["identifier"] = 1,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["macroMode"] = "FIRST",
						["allowStartAttack"] = false,
						["interrupt"] = false,
						["targetUnitAfterCast"] = false,
						["spellValue"] = "Destello de Luz",
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135907,
						["displayName"] = "Cast Destello de Luz",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["covenant"] = {
							["single"] = 2,
							["selected"] = 0,
							["multiple"] = {
								2, -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["never"] = false,
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [1]
				{
					["keybind"] = "4",
					["identifier"] = 2,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["macroMode"] = "FIRST",
						["allowStartAttack"] = false,
						["interrupt"] = false,
						["targetUnitAfterCast"] = false,
						["spellValue"] = "Luz del mártir",
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 1360762,
						["displayName"] = "Cast Luz del mártir",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["covenant"] = {
							["single"] = 2,
							["selected"] = 0,
							["multiple"] = {
								2, -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["never"] = false,
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ANY",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "HELP",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [2]
				{
					["keybind"] = "BUTTON2",
					["identifier"] = 3,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["macroMode"] = "FIRST",
						["allowStartAttack"] = false,
						["interrupt"] = false,
						["targetUnitAfterCast"] = false,
						["spellValue"] = "Choque Sagrado",
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135972,
						["displayName"] = "Cast Choque Sagrado",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["covenant"] = {
							["single"] = 2,
							["selected"] = 0,
							["multiple"] = {
								2, -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["never"] = false,
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "ANY",
						},
						["regular"] = {
							{
								["vitals"] = "ALIVE",
								["hostility"] = "HELP",
								["unit"] = "MOUSEOVER",
							}, -- [1]
							{
								["vitals"] = "ALIVE",
								["hostility"] = "HARM",
								["unit"] = "TARGET",
							}, -- [2]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [3]
				{
					["keybind"] = "1",
					["identifier"] = 4,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["macroMode"] = "FIRST",
						["allowStartAttack"] = false,
						["interrupt"] = false,
						["targetUnitAfterCast"] = false,
						["spellValue"] = "Palabra de gloria",
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 133192,
						["displayName"] = "Cast Palabra de gloria",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["covenant"] = {
							["single"] = 2,
							["selected"] = 0,
							["multiple"] = {
								2, -- [1]
							},
						},
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["never"] = false,
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [4]
				{
					["keybind"] = "MOUSEWHEELUP",
					["identifier"] = 5,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["allowStartAttack"] = false,
						["macroMode"] = "FIRST",
						["spellValue"] = "Bendición de sacrificio",
						["targetUnitAfterCast"] = false,
						["interrupt"] = false,
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135966,
						["displayName"] = "Cast Bendición de sacrificio",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["never"] = false,
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [5]
				{
					["keybind"] = "9",
					["identifier"] = 6,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["allowStartAttack"] = false,
						["macroMode"] = "FIRST",
						["spellValue"] = "Limpiar",
						["targetUnitAfterCast"] = false,
						["interrupt"] = false,
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135949,
						["displayName"] = "Cast Limpiar",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["never"] = false,
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [6]
				{
					["keybind"] = "º",
					["identifier"] = 7,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["allowStartAttack"] = false,
						["macroMode"] = "FIRST",
						["spellValue"] = "Luz Sagrada",
						["targetUnitAfterCast"] = false,
						["interrupt"] = false,
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135981,
						["displayName"] = "Cast Luz Sagrada",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["never"] = false,
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [7]
				{
					["keybind"] = "F8",
					["identifier"] = 8,
					["action"] = {
						["cancelQueuedSpell"] = false,
						["macroValue"] = "",
						["allowStartAttack"] = false,
						["macroMode"] = "FIRST",
						["spellValue"] = "Bendición de libertad",
						["targetUnitAfterCast"] = false,
						["interrupt"] = false,
						["itemValue"] = "",
					},
					["cache"] = {
						["displayIcon"] = 135968,
						["displayName"] = "Cast Bendición de libertad",
					},
					["integrations"] = {
					},
					["load"] = {
						["playerNameRealm"] = {
							["value"] = "Syrona",
							["selected"] = false,
						},
						["pvpTalent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["combat"] = {
							["value"] = "IN_COMBAT",
							["selected"] = false,
						},
						["instanceType"] = {
							["single"] = "NONE",
							["selected"] = 0,
							["multiple"] = {
								"NONE", -- [1]
							},
						},
						["playerInGroup"] = {
							["value"] = "",
							["selected"] = false,
						},
						["class"] = {
							["single"] = "PALADIN",
							["selected"] = 0,
							["multiple"] = {
								"PALADIN", -- [1]
							},
						},
						["pet"] = {
							["value"] = "ACTIVE",
							["selected"] = false,
						},
						["warMode"] = {
							["value"] = "IN_WAR_MODE",
							["selected"] = false,
						},
						["covenant"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["race"] = {
							["single"] = "LightforgedDraenei",
							["selected"] = 0,
							["multiple"] = {
								"LightforgedDraenei", -- [1]
							},
						},
						["specialization"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["inGroup"] = {
							["value"] = "IN_GROUP_PARTY_OR_RAID",
							["selected"] = false,
						},
						["talent"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
						["spellKnown"] = {
							["value"] = "",
							["selected"] = false,
						},
						["never"] = false,
						["form"] = {
							["single"] = 1,
							["selected"] = 0,
							["multiple"] = {
								1, -- [1]
							},
						},
					},
					["targets"] = {
						["hovercast"] = {
							["enabled"] = true,
							["vitals"] = "ALIVE",
							["hostility"] = "HELP",
						},
						["regular"] = {
							{
								["vitals"] = "ANY",
								["hostility"] = "ANY",
								["unit"] = "DEFAULT",
							}, -- [1]
							["enabled"] = false,
						},
					},
					["type"] = "SPELL",
				}, -- [8]
				["next"] = 9,
			},
			["version"] = "0.17.2",
		},
		["SHAMAN"] = {
			["version"] = "0.15.3",
		},
		["WARLOCK"] = {
			["version"] = "0.17.2",
		},
		["DEMONHUNTER"] = {
			["version"] = "0.17.2",
		},
		["DEATHKNIGHT"] = {
			["version"] = "0.16.2",
		},
		["DRUID"] = {
			["version"] = "0.17.2",
			["groups"] = {
				{
					["displayIcon"] = "Interface\\ICONS\\INV_Misc_QuestionMark",
					["name"] = "New Group",
					["identifier"] = "group-1",
				}, -- [1]
				["next"] = 2,
			},
		},
		["MONK"] = {
			["version"] = "0.15.3",
			["minimap"] = {
				["minimapPos"] = 166.7851550196535,
			},
		},
		["ROGUE"] = {
			["version"] = "0.17.2",
		},
	},
}
