
OmniCDDB = {
	["profileKeys"] = {
		["Koontz - Dun Modr"] = "Default",
		["Thunderstrak - Dun Modr"] = "Default",
		["Koontz - Sanguino"] = "Default",
		["Syrona - Dun Modr"] = "Default",
		["Thunderstrak - Zul'jin"] = "Default",
		["Thunderstrak - Sanguino"] = "Default",
		["Nynsar - Dun Modr"] = "Default",
		["Shiradry - Dun Modr"] = "Default",
		["Syrona - Sanguino"] = "Default",
	},
	["global"] = {
		["oodVer"] = 2520,
		["oodChk"] = 210320,
		["disableElvMsg"] = true,
		["oodMsg"] = "|cfff16436 A new update is available. (Hotfix)",
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Thunderstrak - Dun Modr"] = {
					["enabled"] = false,
				},
			},
		},
	},
	["version"] = 2.51,
	["cooldowns"] = {
	},
	["profiles"] = {
		["Default"] = {
			["Party"] = {
				["party"] = {
					["position"] = {
						["preset"] = "TOPLEFT",
						["attach"] = "TOPLEFT",
						["anchor"] = "TOPRIGHT",
					},
					["manualPos"] = {
						["interruptBar"] = {
							["y"] = 253.5153056178842,
							["x"] = 189.506797123513,
						},
						["raidCDBar"] = {
							["y"] = 434.8490556684919,
							["x"] = 163.9063841772259,
						},
					},
				},
				["arena"] = {
					["spells"] = {
						["31661"] = true,
						["212619"] = false,
						["2139"] = false,
						["317320"] = false,
						["227847"] = false,
						["236320"] = false,
						["6552"] = false,
						["23922"] = false,
					},
					["position"] = {
						["columns"] = 4,
						["paddingX"] = 1,
						["attach"] = "TOPLEFT",
						["preset"] = "TOPLEFT",
						["offsetX"] = -5,
						["anchor"] = "TOPRIGHT",
						["offsetY"] = 3,
					},
				},
				["visibility"] = {
					["none"] = true,
				},
			},
			["tooltipID"] = true,
			["notifyNew"] = false,
			["loginMsg"] = false,
		},
	},
}
