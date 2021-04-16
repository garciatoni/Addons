
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.0.7",
	},
	["profileKeys"] = {
		["Zanagor - Dun Modr"] = "Predeterminado",
		["Sagar - Dun Modr"] = "Predeterminado",
		["Zaradel - Dun Modr"] = "Predeterminado",
		["Adadsdbdfv - Argent Dawn"] = "Predeterminado",
		["Thunderstruk - Dun Modr"] = "Predeterminado",
		["Koontz - Dun Modr"] = "Predeterminado",
		["Sagarra - Dun Modr"] = "Predeterminado",
		["Kontz - Dun Modr"] = "Predeterminado",
		["Thunderstrak - Sanguino"] = "Predeterminado",
		["Nynsar - Dun Modr"] = "Predeterminado",
		["Shiradry - Dun Modr"] = "Predeterminado",
		["Shiradry - Sanguino"] = "Predeterminado",
		["Derstrak - Dun Modr"] = "Predeterminado",
		["Kontz - Zul'jin"] = "Predeterminado",
		["Syrona - Sanguino"] = "Predeterminado",
		["Nyxagard - Dun Modr"] = "Predeterminado",
		["Thunderstrak - Zul'jin"] = "Predeterminado",
		["Thunderstrak - Dun Modr"] = "Predeterminado",
		["Nimkasi - Dun Modr"] = "Predeterminado",
		["Thanazos - Dun Modr"] = "Predeterminado",
		["Koontz - Sanguino"] = "Predeterminado",
		["Ankaranir - Zul'jin"] = "Predeterminado",
		["Syrona - Dun Modr"] = "Predeterminado",
		["Urthak - Dun Modr"] = "Predeterminado",
		["Nyxagart - Dun Modr"] = "Predeterminado",
		["Shageer - Dun Modr"] = "Predeterminado",
		["Fsfsit - Dun Modr"] = "Predeterminado",
		["Francisjosa - Hyjal"] = "Predeterminado",
		["Thundër - Dun Modr"] = "Predeterminado",
		["Tassa - Dun Modr"] = "Predeterminado",
		["Hjkbjhnio - Dun Modr"] = "Predeterminado",
	},
	["profiles"] = {
		["Predeterminado"] = {
			["rules"] = {
				{
					["id"] = "Plater",
					["priority"] = 2,
					["theme"] = "Plater",
				}, -- [1]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 2,
					["theme"] = "Plater Nameplates Theme",
				}, -- [2]
				{
					["id"] = "Weak auras",
					["priority"] = 3,
				}, -- [3]
				{
					["patterns"] = {
						"OmniCD", -- [1]
					},
					["id"] = "OmniCD",
					["priority"] = 4,
					["theme"] = "Plater",
				}, -- [4]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
					["enableText"] = false,
				},
				["Plater"] = {
					["textStyles"] = {
						["seconds"] = {
							["b"] = 1,
							["scale"] = 1.299999952316284,
							["g"] = 0.9921568627450981,
							["r"] = 0.984313725490196,
						},
						["soon"] = {
						},
						["minutes"] = {
							["scale"] = 0.9500000476837158,
						},
					},
					["effect"] = "none",
					["fontSize"] = 20,
				},
				["Predeterminado"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
					["fontFace"] = "Interface\\Addons\\Details\\fonts\\Oswald-Regular.otf",
					["enableText"] = false,
					["effect"] = "none",
				},
			},
		},
	},
}
OmniCC4Config = {
	["version"] = "8.2.5",
	["groupSettings"] = {
		["base"] = {
			["fontSize"] = 18,
			["effect"] = "none",
			["yOff"] = 0,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["mmSSDuration"] = 0,
			["styles"] = {
				["seconds"] = {
					["scale"] = 1,
				},
				["minutes"] = {
					["scale"] = 1,
				},
				["soon"] = {
					["scale"] = 1.5,
				},
				["hours"] = {
					["scale"] = 0.75,
				},
				["charging"] = {
					["scale"] = 0.75,
				},
				["controlled"] = {
					["scale"] = 1.5,
				},
			},
			["minEffectDuration"] = 30,
		},
		["Plater"] = {
			["fontSize"] = 20,
			["effect"] = "none",
			["styles"] = {
				["minutes"] = {
					["scale"] = 0.9500000476837158,
				},
				["soon"] = {
					["scale"] = 1.5,
				},
				["seconds"] = {
					["a"] = 1,
					["b"] = 1,
					["scale"] = 1.299999952316284,
					["g"] = 0.9921568627450981,
					["r"] = 0.984313725490196,
				},
				["hours"] = {
					["scale"] = 0.75,
				},
				["charging"] = {
					["scale"] = 0.75,
				},
				["controlled"] = {
					["scale"] = 1.5,
				},
			},
			["minEffectDuration"] = 30,
			["scaleText"] = false,
			["xOff"] = 0,
			["tenthsDuration"] = 0,
			["fontOutline"] = "OUTLINE",
			["minSize"] = 0.5,
			["mmSSDuration"] = 0,
			["yOff"] = 0,
			["minDuration"] = 2,
		},
		["PlaterNameplates Blacklist"] = {
			["enabled"] = false,
			["styles"] = {
				["minutes"] = {
				},
				["soon"] = {
				},
				["seconds"] = {
				},
				["hours"] = {
				},
				["charging"] = {
				},
				["controlled"] = {
				},
			},
			["tenthsDuration"] = 0,
			["minSize"] = 0.5,
			["minEffectDuration"] = 30,
			["minDuration"] = 2,
			["mmSSDuration"] = 0,
		},
	},
	["groups"] = {
		{
			["id"] = "PlaterNameplates Blacklist",
			["rules"] = {
				"PlaterMainAuraIcon", -- [1]
				"PlaterSecondaryAuraIcon", -- [2]
				"ExtraIconRowIcon", -- [3]
			},
			["enabled"] = true,
		}, -- [1]
		{
			["id"] = "Plater",
			["rules"] = {
			},
			["enabled"] = true,
		}, -- [2]
	},
}
