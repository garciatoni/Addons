
SexyMap2DB = {
	["Syrona-Sanguino"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["rightClickToConfig"] = true,
			["autoZoom"] = 5,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["northTag"] = true,
		},
		["coordinates"] = {
			["enabled"] = true,
			["fontColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["yOffset"] = 10,
			["font"] = "Friz Quadrata TT",
			["borderColor"] = {
			},
			["coordPrecision"] = "%d,%d",
			["backgroundColor"] = {
			},
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MiniMapMailFrame"] = "always",
				["MiniMapWorldMapButton"] = "never",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["MinimapZoomOut"] = "never",
				["SexyMapZoneTextButton"] = "always",
				["TimeManagerClockButton"] = "always",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["movers"] = {
			["lockDurability"] = false,
			["lockObjectives"] = false,
			["moveDurability"] = false,
			["lockCaptureBar"] = false,
			["moveVehicle"] = false,
			["lockVehicle"] = false,
			["moverPositions"] = {
			},
			["moveBuffs"] = false,
			["lockBuffs"] = false,
			["moveCaptureBar"] = false,
			["moveObjectives"] = false,
		},
	},
	["global"] = {
		["core"] = {
			["clamp"] = true,
			["point"] = "BOTTOMRIGHT",
			["relpoint"] = "BOTTOMRIGHT",
			["autoZoom"] = 6,
			["northTag"] = false,
			["y"] = 0,
			["x"] = 0,
			["lock"] = true,
			["scale"] = 1.2,
			["shape"] = 130871,
			["rightClickToConfig"] = false,
		},
		["coordinates"] = {
			["enabled"] = true,
			["fontSize"] = 8,
			["fontColor"] = {
			},
			["xOffset"] = 250,
			["updateRate"] = 0.1,
			["yOffset"] = -250,
			["font"] = "Friz Quadrata TT",
			["borderColor"] = {
			},
			["coordPrecision"] = "%d,%d",
			["backgroundColor"] = {
			},
		},
		["movers"] = {
			["lockDurability"] = true,
			["lockObjectives"] = true,
			["moveDurability"] = true,
			["lockCaptureBar"] = true,
			["moveVehicle"] = true,
			["lockVehicle"] = true,
			["moverPositions"] = {
				["durability"] = {
					"BOTTOM", -- [1]
					"BOTTOM", -- [2]
					-110.9333724975586, -- [3]
					1.244360327720642, -- [4]
				},
				["capturebar"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-131.2222595214844, -- [3]
					7.044356822967529, -- [4]
				},
				["buffs"] = {
					"TOPRIGHT", -- [1]
					"TOPRIGHT", -- [2]
					-3.13335657119751, -- [3]
					-14.07774257659912, -- [4]
				},
				["vehicle"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-304.8442687988281, -- [3]
					4.755637645721436, -- [4]
				},
				["objectives"] = {
					"BOTTOMRIGHT", -- [1]
					"BOTTOMRIGHT", -- [2]
					-4.100030422210693, -- [3]
					27.11112594604492, -- [4]
				},
			},
			["moveBuffs"] = true,
			["lockBuffs"] = true,
			["moveCaptureBar"] = true,
			["moveObjectives"] = true,
		},
		["buttons"] = {
			["radius"] = 4,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MiniMapInstanceDifficulty"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["MiniMapTracking"] = "hover",
				["LibDBIcon10_Leatrix_Plus"] = "hover",
				["LibDBIcon10_Masque"] = "hover",
				["LibDBIcon10_Leatrix_Maps"] = "hover",
				["MinimapZoomIn"] = "never",
				["MiniMapMailFrame"] = "always",
				["LibDBIcon10_WeakAuras"] = "hover",
				["TimeManagerClockButton"] = "never",
				["LibDBIcon10_BigWigs"] = "hover",
				["GameTimeFrame"] = "always",
				["LibDBIcon10_BtWLoadouts"] = "hover",
				["MiniMapWorldMapButton"] = "never",
				["MinimapZoomOut"] = "never",
				["LibDBIcon10_Clicked"] = "hover",
				["SexyMapZoneTextButton"] = "never",
				["LibDBIcon10_DetailsStreamer"] = "hover",
				["GarrisonLandingPageMinimapButton"] = "always",
				["LibDBIcon10_Plater"] = "hover",
				["GuildInstanceDifficulty"] = "always",
				["LibDBIcon10_Details"] = "hover",
			},
			["dragPositions"] = {
				["MiniMapMailFrame"] = 96.1884455924005,
				["QueueStatusMinimapButton"] = 145.4742358856496,
				["GarrisonLandingPageMinimapButton"] = 214.7960484844174,
				["GameTimeFrame"] = 57.92591663298633,
				["MiniMapTracking"] = 79.3301916047717,
			},
			["controlVisibility"] = true,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 40,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "chat",
		},
	},
	["Shiradry-Dun Modr"] = {
		["core"] = {
			["clamp"] = true,
			["lock"] = false,
			["northTag"] = true,
			["shape"] = "Interface\\AddOns\\SexyMap\\shapes\\circle.tga",
			["autoZoom"] = 5,
			["rightClickToConfig"] = true,
		},
		["coordinates"] = {
			["enabled"] = true,
			["fontColor"] = {
			},
			["xOffset"] = 0,
			["updateRate"] = 1,
			["yOffset"] = 10,
			["font"] = "Friz Quadrata TT",
			["borderColor"] = {
			},
			["coordPrecision"] = "%d,%d",
			["backgroundColor"] = {
			},
		},
		["buttons"] = {
			["radius"] = 10,
			["lockDragging"] = false,
			["allowDragging"] = true,
			["visibilitySettings"] = {
				["MinimapZoomIn"] = "never",
				["MiniMapMailFrame"] = "always",
				["TimeManagerClockButton"] = "always",
				["QueueStatusMinimapButton"] = "always",
				["GarrisonLandingPageMinimapButton"] = "always",
				["SexyMapZoneTextButton"] = "always",
				["MinimapZoomOut"] = "never",
				["MiniMapWorldMapButton"] = "never",
			},
			["dragPositions"] = {
			},
			["controlVisibility"] = true,
		},
		["movers"] = {
			["lockDurability"] = false,
			["lockObjectives"] = false,
			["moveDurability"] = false,
			["lockCaptureBar"] = false,
			["moveVehicle"] = false,
			["lockVehicle"] = false,
			["moverPositions"] = {
			},
			["moveBuffs"] = false,
			["lockBuffs"] = false,
			["moveCaptureBar"] = false,
			["moveObjectives"] = false,
		},
		["clock"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["borders"] = {
			["applyPreset"] = false,
			["borders"] = {
				{
					["name"] = "Rune 1",
					["r"] = 0.3098039215686275,
					["scale"] = 1.4,
					["rotSpeed"] = -30,
					["g"] = 0.4784313725490196,
					["texture"] = 165630,
				}, -- [1]
				{
					["a"] = 0.3799999952316284,
					["rotSpeed"] = 60,
					["r"] = 0.196078431372549,
					["scale"] = 2.1,
					["name"] = "Rune 2",
					["g"] = 0.2901960784313725,
					["texture"] = 165638,
				}, -- [2]
				{
					["a"] = 0.3,
					["name"] = "Fade",
					["r"] = 0,
					["scale"] = 1.6,
					["g"] = 0.2235294117647059,
					["texture"] = 167062,
				}, -- [3]
			},
			["backdrop"] = {
				["show"] = false,
				["textureColor"] = {
				},
				["settings"] = {
					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
					["tile"] = false,
					["edgeSize"] = 16,
					["insets"] = {
						["top"] = 4,
						["right"] = 4,
						["left"] = 4,
						["bottom"] = 4,
					},
				},
				["borderColor"] = {
				},
				["scale"] = 1,
			},
			["hideBlizzard"] = true,
		},
		["zonetext"] = {
			["bgColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["font"] = "Friz Quadrata TT",
			["fontColor"] = {
			},
			["borderColor"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["xOffset"] = 0,
			["yOffset"] = 0,
		},
		["ping"] = {
			["showPing"] = true,
			["showAt"] = "map",
		},
	},
	["Nynsar-Dun Modr"] = "global",
	["Thunderstrak-Dun Modr"] = "global",
	["Thunderstrak-Sanguino"] = "global",
	["presets"] = {
	},
	["Thunderstrak-Zul'jin"] = "global",
	["Syrona-Dun Modr"] = "global",
}
