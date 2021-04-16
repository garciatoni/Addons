
MegaMacroConfig = nil
MegaMacroGlobalData = {
	["Macros"] = {
		{
			["Id"] = 2,
			["Code"] = "/cast [@mouseover,help] Alivio presto;[harm] Arañazo\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 2,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Arañazo/Alivio",
		}, -- [1]
		{
			["Id"] = 3,
			["Code"] = "/cancelaura Dominio astral\n/cast [@mouseover,help,exist] Recrecimiento\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 3,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Cancel/cura",
		}, -- [2]
		{
			["Id"] = 4,
			["Code"] = "/cast Piel de corteza\n/cast [noform:1] Forma de oso\n/cancelform \n",
			["Scope"] = "gg",
			["ScopedIndex"] = 4,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Defensivo",
		}, -- [3]
		{
			["Id"] = 5,
			["Code"] = "/cast [@mouseover,help] Resguardo de Cenarius;Destripar\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 5,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Destripar/resgua",
		}, -- [4]
		{
			["Id"] = 6,
			["Code"] = "/cast [@mouseover,help,dead] Renacer; [@mouseover,help,exists] Estimular; [@player] Estimular",
			["Scope"] = "gg",
			["ScopedIndex"] = 6,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Estimular",
		}, -- [5]
		{
			["Id"] = 7,
			["Code"] = "/cast [@mouseover,help] recrecimiento ; Flagelo\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 7,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Flagelo/cura",
		}, -- [6]
		{
			["Id"] = 8,
			["ScopedIndex"] = 8,
			["Code"] = "/focus [@mouseover]\n",
			["Scope"] = "gg",
			["IsStaticTextureFallback"] = false,
			["StaticTexture"] = 132212,
			["DisplayName"] = "Foco",
		}, -- [7]
		{
			["Id"] = 9,
			["Code"] = "/cast [@mouseover,help] Rejuvenecimiento;[harm] Mordedura feroz\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 9,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Mordedura/Reju",
		}, -- [8]
		{
			["Id"] = 10,
			["Code"] = "/cast [@mouseover] Nutrir\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 10,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Nutrir",
		}, -- [9]
		{
			["Id"] = 12,
			["ScopedIndex"] = 12,
			["Code"] = "/PULL 3\n",
			["Scope"] = "gg",
			["IsStaticTextureFallback"] = false,
			["StaticTexture"] = 136112,
			["DisplayName"] = "PULL",
		}, -- [10]
		{
			["Id"] = 13,
			["Code"] = "/run SetCVar(\"autounshift\",0)\n/cast [@mouseover,exists,help] Recrecimiento;[@player] Recrecimiento\n/run SetCVar(\"autounshift\",1)\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 13,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Recregat",
		}, -- [11]
		{
			["Id"] = 16,
			["Code"] = "/cast [@mouseover,help] Flor de vida;[harm] Triturar\n",
			["Scope"] = "gg",
			["ScopedIndex"] = 16,
			["StaticTexture"] = 134400,
			["DisplayName"] = "Triturar/Flor",
		}, -- [12]
	},
	["Activated"] = true,
	["Classes"] = {
		["Paladín"] = {
			["Macros"] = {
				{
					["Id"] = 61,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@mouseover,help,exists] Bendición de protección; [harm] Martillo de cólera",
					["Scope"] = "gc",
					["Class"] = "Paladín",
					["ScopedIndex"] = 1,
					["DisplayName"] = "Prote/pegar",
				}, -- [1]
			},
			["Specializations"] = {
				["Sagrado"] = {
					["Macros"] = {
					},
				},
				["Reprensión"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Pícara"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Sutileza"] = {
					["Macros"] = {
					},
				},
				["Forajido"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Druida"] = {
			["Macros"] = {
				{
					["Id"] = 64,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@arena1]  Ciclón",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 4,
					["DisplayName"] = "Ciclon1",
				}, -- [1]
				{
					["Id"] = 65,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@arena2]  Ciclón",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 5,
					["DisplayName"] = "Ciclon2",
				}, -- [2]
				{
					["Id"] = 66,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@mouseover] Ciclón ",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 10,
					["DisplayName"] = "CiclonMouse",
				}, -- [3]
				{
					["Id"] = 62,
					["StaticTexture"] = 514640,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [nocombat,nostealth] acechar;forma felina\n",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 2,
					["DisplayName"] = "Gato",
				}, -- [4]
				{
					["Id"] = 67,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [talent:3/2] Amputar; [talent:3/3] Rugido incapacitante",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 7,
					["DisplayName"] = "Stuns",
				}, -- [5]
				{
					["Id"] = 61,
					["StaticTexture"] = 132144,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [flyable] Forma de viaje(Cambio de forma);[swimming] Forma de viaje(Cambio de forma); Forma de montura(Cambio de forma)",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 1,
					["DisplayName"] = "Viaje",
				}, -- [6]
				{
					["Id"] = 70,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cancelform [@mouseover,help,nostance:0]\n/cast [@mouseover,exists] Carga salvaje; Carga salvaje",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 10,
					["DisplayName"] = "carga",
				}, -- [7]
				{
					["Id"] = 68,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@arena3]  Ciclón",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 8,
					["DisplayName"] = "clon3",
				}, -- [8]
				{
					["Id"] = 63,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/cast [@mouseover,exists] Espinas; [@player ]Espinas",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 3,
					["DisplayName"] = "espinas",
				}, -- [9]
				{
					["Id"] = 69,
					["StaticTexture"] = 134400,
					["IsStaticTextureFallback"] = true,
					["Code"] = "/use [nocombat, nostealth] Acechar; Forma felina(Cambio de forma)",
					["Scope"] = "gc",
					["Class"] = "Druida",
					["ScopedIndex"] = 9,
					["DisplayName"] = "sigilo",
				}, -- [10]
			},
			["Specializations"] = {
				[""] = {
					["Macros"] = {
					},
				},
				["Feral"] = {
					["Macros"] = {
						{
							["Code"] = "#showtooltip Arañazo\n/cast [nostealth] Furia del tigre\n/cast Arañazo\n\n",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "arañazo",
							["Specialization"] = "Feral",
							["Id"] = 91,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 132122,
							["ScopedIndex"] = 1,
						}, -- [1]
						{
							["Code"] = "/cast [@mouseover,help,dead] Renacer; Testarazo",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "corte",
							["Specialization"] = "Feral",
							["Id"] = 92,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 2,
							["StaticTexture"] = 134400,
						}, -- [2]
					},
				},
				["Guardián"] = {
					["Macros"] = {
						{
							["Code"] = "/cast [@mouseover,help,dead] Renacer; Testarazo",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Corte",
							["Specialization"] = "Guardián",
							["Id"] = 91,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 134400,
							["ScopedIndex"] = 1,
						}, -- [1]
						{
							["Code"] = "/cast [@mouseover,help,exists] Eliminar corrupción; Eliminar corrupción",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Eliminar",
							["Specialization"] = "Guardián",
							["Id"] = 92,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 135952,
							["ScopedIndex"] = 2,
						}, -- [2]
					},
				},
				["Equilibrio"] = {
					["Macros"] = {
						{
							["Code"] = "/cast [@mouseover,help,dead] Renacer; [@mouseover,help,exists] Estimular; Rayo solar",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Corte",
							["Specialization"] = "Equilibrio",
							["Id"] = 91,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 1,
							["StaticTexture"] = 252188,
						}, -- [1]
						{
							["Code"] = "#Showtooltip Solar Beam\n/stopcasting\n/cast Enredo masivo\n/cast Rayo solar",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Root",
							["Specialization"] = "Equilibrio",
							["ScopedIndex"] = 2,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 252188,
							["Id"] = 92,
						}, -- [2]
					},
				},
				["Restauración"] = {
					["Macros"] = {
						{
							["Code"] = "/cast Forma de antárbol(Cambio de forma)\n/dance",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "",
							["Specialization"] = "Restauración",
							["ScopedIndex"] = 8,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 132145,
							["Id"] = 98,
						}, -- [1]
						{
							["Code"] = "/cast [@player] Crecimiento salvaje",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Crecimiento",
							["Specialization"] = "Restauración",
							["StaticTexture"] = 236153,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 2,
							["Id"] = 92,
						}, -- [2]
						{
							["Code"] = "/cast [@mouseover,help,dead] Renacer;[@mouseover,harm,exists,nodead]  Ciclón; [@player] Estimular",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Estimular",
							["Specialization"] = "Restauración",
							["StaticTexture"] = 136048,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 1,
							["Id"] = 91,
						}, -- [3]
						{
							["Code"] = "/cast [@mouseover, harm]Fuego solar",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Fuego Solar",
							["Specialization"] = "Restauración",
							["Id"] = 94,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 4,
							["StaticTexture"] = 134400,
						}, -- [4]
						{
							["Code"] = "/castsequence reset=2 Fuego Solar, Fuego lunar",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Fuegos",
							["Specialization"] = "Restauración",
							["StaticTexture"] = 236216,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 3,
							["Id"] = 93,
						}, -- [5]
						{
							["Code"] = "/cast [@mouseover,harm] Fuego solar; Oleada de estrellas",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Pulsar",
							["Specialization"] = "Restauración",
							["Id"] = 96,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 134400,
							["ScopedIndex"] = 6,
						}, -- [6]
						{
							["Code"] = "/use Rocío de ambrosía\n/cast [nostealth] Acechar\n/p DRINK",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Restear",
							["Specialization"] = "Restauración",
							["ScopedIndex"] = 7,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 134400,
							["Id"] = 97,
						}, -- [7]
						{
							["Code"] = "/cast [@mouseover, exists] Sobrecrecimiento; [@player] Sobrecrecimiento",
							["Scope"] = "gs",
							["Class"] = "Druida",
							["DisplayName"] = "Sobre",
							["Specialization"] = "Restauración",
							["Id"] = 95,
							["IsStaticTextureFallback"] = true,
							["ScopedIndex"] = 5,
							["StaticTexture"] = 1408836,
						}, -- [8]
					},
				},
			},
		},
		["Caballero de la Muerte"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Sangre"] = {
					["Macros"] = {
					},
				},
				["Profano"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Chamán"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Restauración"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Cazadora de demonios"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Venganza"] = {
					["Macros"] = {
						{
							["Code"] = "/cast [@cursor] Sigilo de llamas\n",
							["Scope"] = "gs",
							["Class"] = "Cazadora de demonios",
							["DisplayName"] = "",
							["Specialization"] = "Venganza",
							["ScopedIndex"] = 1,
							["IsStaticTextureFallback"] = true,
							["StaticTexture"] = 1344652,
							["Id"] = 91,
						}, -- [1]
					},
				},
				["Devastación"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Cazadora"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				[""] = {
					["Macros"] = {
					},
				},
			},
		},
		["Monje"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Viajero del viento"] = {
					["Macros"] = {
					},
				},
				["Maestro cervecero"] = {
					["Macros"] = {
					},
				},
			},
		},
		["Bruja"] = {
			["Macros"] = {
			},
			["Specializations"] = {
				["Aflicción"] = {
					["Macros"] = {
					},
				},
			},
		},
	},
}
