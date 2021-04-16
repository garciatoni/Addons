local ADDON_NAME, PRIVATE_TABLE = ...
local playerUnits = {player = true, vehicle = true, pet = true}
local canCure = ShadowUF.Units.canCure
local Auras = ShadowUF.modules["auras"]
local defaultUpdate = ShadowUF.modules.auras.Update

-- Modify an aura's appearance based on the config that has been passed
local function modifyAura(button, config, name)

	local fadeout = config.fadeOut or false
	local fadeAmount = config.fadeAmount or 0
	local desaturate = config.desaturate or false
	local darken = config.darken or false
	local darkenAmount = config.darkenAmount or 0

	-- Reversing the slider value so we can use it for the vertex color
	if (darkenAmount == 0) then
		darkenAmount = 1
	elseif (darkenAmount > 0) then
		darkenAmount = 1 - darkenAmount
	end

	if (config.fadeOut == true) then
		button:SetAlpha(fadeAmount)
	else
		button:SetAlpha(1)
	end

	if (config.desaturate == true) then
		button.icon:SetDesaturated(1)
	else
		button.icon:SetDesaturated(nil)
	end

	if (config.darken == true) then
		button.icon:SetVertexColor(darkenAmount, darkenAmount, darkenAmount)
	else
		button.icon:SetVertexColor(1, 1, 1)
	end

end

-- Reset an aura's appearance
local function resetAura(button)

	button:SetAlpha(1)
	button.icon:SetDesaturated(nil)
	button.icon:SetVertexColor(1, 1, 1)

end

-- Check the auras for an aura frame, and modify them if they're not the player's auras
local function checkAuras(parent, auraFrame, config, type)

	local auraFilter

	if(type == "buffs") then
		auraFilter = "HELPFUL"
	elseif (type == "debuffs") then
		auraFilter = "HARMFUL"
	else
		return false
	end

	auraFrame.index = 0

	-- Loop through all the auras in this frame
	while( true ) do

		auraFrame.index = auraFrame.index + 1
		local shouldModify = true
		local name, texture, count, auraType, duration, endTime, caster, isRemovable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff = UnitAura(auraFrame.parent.unit, auraFrame.index, auraFilter)

		-- If there's no aura name, assume we've passed all the auras and end the loop
		if( not name ) then break end

		--print(type .. "." .. auraFrame.index)

		-- Check the aura against filters
		if( parent.whitelist[type] and not parent.whitelist[name] and not parent.whitelist[spellID] ) then
			shouldModify = false
		end

		if( parent.blacklist[type] and ( parent.blacklist[name] or parent.blacklist[spellID] ) ) then
			shouldModify = false
		end

		-- Check if the aura is cast by the player
		if (caster == "player") then
			shouldModify = false
		end

		-- Check if this is a boss aura, and if we should be modifying boss auras
		if (isBossDebuff == true and config.ignoreBoss == true) then
			shouldModify = false
		end

		-- Check if this is aura can be removed, and if we should be modifying removable auras
		if (isRemovable == true and config.ignoreRem == true) then
			shouldModify = false
		end

		-- Check there's actually an aura button (this was coming up as nil sometimes)
		if (auraFrame.buttons[auraFrame.index]) then
			if (shouldModify == true) then
				-- If we still think the aura should be modified, pass the button and the unit's config
				modifyAura(auraFrame.buttons[auraFrame.index], config, name)
			else
				-- If something has flagged this aura not to be modified, make sure the aura's appearance is reset
				resetAura(auraFrame.buttons[auraFrame.index])
			end
		end

	end

end

-- Hook into SUF's aura update function
function ShadowUF.modules.auras:Update(frame, ...)

	-- Get the config for this unit
	local config = ShadowUF.db.profile.units[frame.unitType].notMyAuras

	-- Run SUF's aura update function first
	defaultUpdate(self, frame, ...)

	-- Pass each aura frame (buffs and debuffs) to be checked
	if( frame.auras ) then
		if( frame.auras.buffs ) then
			checkAuras(frame.auras, frame.auras.buffs, config.buffs, "buffs")
		end
		if( frame.auras.debuffs ) then
			checkAuras(frame.auras, frame.auras.debuffs, config.debuffs, "debuffs")
		end
	end

end

-- Add our config options to SUF
function Auras:OnConfigurationLoad()

	local auraArgs = ShadowUF.Config.auraTable.args.display.args

	auraArgs.notMyAuras = {
		order = 5,
		type = "group",
		inline = true,
		hidden = false,
		args = {
			buffs = {
				order = 1,
				type = "group",
				name = "Not My Auras",
				inline = true,
				hidden = function(info)
					local type = info[#(info) - 3]
					if (type == "buffs") then
						return false
					else
						return true
					end
				end,
				disabled = function(info)
					local type = info[#(info) - 4]
					if (type == "buffs") then
						return false
					else
						return true
					end
				end,
				args = {
					fadeOut = {
						order = 0,
						type = "toggle",
						name = PRIVATE_TABLE.L["FadeBuffTitle"],
						desc = PRIVATE_TABLE.L["FadeBuffDesc"],
						arg = "notMyAuras.buffs.fadeOut",
						hidden = false,
					},
					fadeAmount = {
						order = 1,
						type = "range",
						name = PRIVATE_TABLE.L["FadeOpacBuffTitle"],
						desc = PRIVATE_TABLE.L["FadeOpacBuffDesc"],
						min = 0,
						max = 1,
						step = 0.05,
						isPercent = true,
						arg = "notMyAuras.buffs.fadeAmount",
						hidden = false,
					},
					darken = {
						order = 2,
						type = "toggle",
						name = PRIVATE_TABLE.L["DarkBuffTitle"],
						desc = PRIVATE_TABLE.L["DarkBuffDesc"],
						arg = "notMyAuras.buffs.darken",
						hidden = false,
					},
					darkenAmount = {
						order = 3,
						type = "range",
						name = PRIVATE_TABLE.L["DarkAmountBuffTitle"],
						desc = PRIVATE_TABLE.L["DarkAmountBuffDesc"],
						min = 0,
						max = 1,
						step = 0.05,
						isPercent = true,
						arg = "notMyAuras.buffs.darkenAmount",
						hidden = false,
					},
					desaturate = {
						order = 4,
						inline = false,
						type = "toggle",
						name = PRIVATE_TABLE.L["DesatBuffTitle"],
						desc = PRIVATE_TABLE.L["DesatBuffDesc"],
						arg = "notMyAuras.buffs.desaturate",
						hidden = false,
					},
					ignoreBoss = {
						order = 5,
						type = "toggle",
						name = PRIVATE_TABLE.L["IgnoreBossBuffTitle"],
						desc = PRIVATE_TABLE.L["IgnoreBossBuffDesc"],
						arg = "notMyAuras.buffs.ignoreBoss",
						hidden = false,
					},
					IgnoreRem = {
						order = 6,
						type = "toggle",
						name = PRIVATE_TABLE.L["IgnoreRemBuffTitle"],
						desc = PRIVATE_TABLE.L["IgnoreRemBuffDesc"],
						arg = "notMyAuras.buffs.ignoreRem",
						hidden = false,
					}
				},
			},
			debuffs = {
				order = 2,
				type = "group",
				name = "Not My Auras",
				inline = true,
				hidden = function(info)
					local type = info[#(info) - 3]
					if (type == "debuffs") then
						return false
					else
						return true
					end
				end,
				disabled = function(info)
					local type = info[#(info) - 4]
					if (type == "debuffs") then
						return false
					else
						return true
					end
				end,
				args = {
					fadeOut = {
						order = 0,
						type = "toggle",
						name = PRIVATE_TABLE.L["FadeDebuffTitle"],
						desc = PRIVATE_TABLE.L["FadeDebuffDesc"],
						arg = "notMyAuras.debuffs.fadeOut",
						hidden = false,
					},
					fadeAmount = {
						order = 1,
						type = "range",
						name = PRIVATE_TABLE.L["FadeOpacDebuffTitle"],
						desc = PRIVATE_TABLE.L["FadeOpacDebuffDesc"],
						min = 0,
						max = 1,
						step = 0.05,
						isPercent = true,
						arg = "notMyAuras.debuffs.fadeAmount",
						hidden = false,
					},
					darken = {
						order = 2,
						type = "toggle",
						name = PRIVATE_TABLE.L["DarkDebuffTitle"],
						desc = PRIVATE_TABLE.L["DarkDebuffDesc"],
						arg = "notMyAuras.debuffs.darken",
						hidden = false,
					},
					darkenAmount = {
						order = 3,
						type = "range",
						name = PRIVATE_TABLE.L["DarkAmountDebuffTitle"],
						desc = PRIVATE_TABLE.L["DarkAmountDebuffDesc"],
						min = 0,
						max = 1,
						step = 0.05,
						isPercent = true,
						arg = "notMyAuras.debuffs.darkenAmount",
						hidden = false,
					},
					desaturate = {
						order = 4,
						inline = false,
						type = "toggle",
						name = PRIVATE_TABLE.L["DesatDebuffTitle"],
						desc = PRIVATE_TABLE.L["DesatDebuffDesc"],
						arg = "notMyAuras.debuffs.desaturate",
						hidden = false,
					},
					ignoreBoss = {
						order = 5,
						type = "toggle",
						name = PRIVATE_TABLE.L["IgnoreBossDebuffTitle"],
						desc = PRIVATE_TABLE.L["IgnoreBossDebuffDesc"],
						arg = "notMyAuras.debuffs.ignoreBoss",
						hidden = false,
					},
					IgnoreRem = {
						order = 6,
						type = "toggle",
						name = PRIVATE_TABLE.L["IgnoreRemDebuffTitle"],
						desc = PRIVATE_TABLE.L["IgnoreRemDebuffDesc"],
						arg = "notMyAuras.debuffs.ignoreRem",
						hidden = false,
					}
				},
			}
		}
	}
end

local OriginalLoadUnitDefaults = ShadowUF.LoadUnitDefaults
function ShadowUF:LoadUnitDefaults()
	OriginalLoadUnitDefaults(self)

	-- Initialize defaults
	for _, unit in pairs(self.unitList) do
		self.defaults.profile.units[unit].notMyAuras = {
			buffs = {
				fadeOut = false,
				fadeAmount = 1,
				desaturate = false,
				desaturateAmount = 0,
				ignoreBoss = true,
				ignoreRem = true,
			},
			debuffs = {
				fadeOut = false,
				fadeAmount = 1,
				desaturate = false,
				desaturateAmount = 0,
				ignoreBoss = true,
				ignoreRem = true,
			}
		}
	end
end
