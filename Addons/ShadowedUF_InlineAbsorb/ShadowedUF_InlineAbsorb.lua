local ADDON, Addon = ...
local IncAbsorb = ShadowUF.modules["incAbsorb"]

function IncAbsorb:OnLayoutApplied(frame)
	if( not frame.visibility[self.frameKey] or not frame.visibility.healthBar ) then return end

	if( frame.visibility.healAbsorb ) then
		frame:RegisterUnitEvent("UNIT_HEAL_ABSORB_AMOUNT_CHANGED", self, "UpdateFrame")
	else
		frame:UnregisterSingleEvent("UNIT_HEAL_ABSORB_AMOUNT_CHANGED", self, "UpdateFrame")
	end
	
end

function IncAbsorb:OnLayoutWidgets(frame)
	if(frame[self.frameKey] == nil) then return end
	
	local cap = ShadowUF.db.profile.units[frame.unitType][self.frameKey].cap or 1.30
	local width  = ShadowUF.db.profile.units[frame.unitType][self.frameKey].width or 0.3
	local reverseFill = ShadowUF.db.profile.units[frame.unitType][self.frameKey].reverseFill ~= frame.healthBar:GetReverseFill()	
	local flip = ShadowUF.db.profile.units[frame.unitType][self.frameKey].flip
	local bar = frame[self.frameKey]
	
	bar.total = nil

	-- Sets size and theme
	bar:SetSize(frame.healthBar:GetSize())
	bar:SetStatusBarTexture(ShadowUF.Layout.mediaPath.statusbar)
	bar:SetStatusBarColor(ShadowUF.db.profile.healthColors[self.colorKey].r, ShadowUF.db.profile.healthColors[self.colorKey].g, ShadowUF.db.profile.healthColors[self.colorKey].b, ShadowUF.db.profile.bars.alpha)
	bar:GetStatusBarTexture():SetHorizTile(false)
	bar:SetOrientation(frame.healthBar:GetOrientation())	
	bar:SetReverseFill(reverseFill)	
	bar:Hide()	
	
	bar.simple = true
	bar:SetFrameLevel(frame.topFrameLevel +1)

	bar:ClearAllPoints()		
	if( bar:GetOrientation() == "HORIZONTAL" ) then
		bar:SetWidth(frame.healthBar:GetWidth() * cap)
		bar:SetPoint(reverseFill and "RIGHT" or "LEFT", frame.healthBar)
		bar:SetPoint(flip 		 and "TOP" or "BOTTOM", frame.healthBar)
		bar:SetPoint(flip and "BOTTOM" or "TOP", frame.healthBar, flip and "TOP" or "BOTTOM", 0, (flip and -1 or 1) * frame.healthBar:GetHeight() * width)
	else
		bar:SetHeight(frame.healthBar:GetHeight() * cap)
		bar:SetPoint(reverseFill and "TOP" or "BOTTOM", frame.healthBar)
		bar:SetPoint(flip 		 and "RIGHT" or "LEFT", frame.healthBar)
		bar:SetPoint(flip and "LEFT" or "RIGHT", frame.healthBar, flip and "RIGHT" or "LEFT", (flip and -1 or 1) * frame.healthBar:GetWidth() * width, 0)
	end	
end

function IncAbsorb:PositionBar(frame, incAmount)
	local bar = frame[self.frameKey]
	local health = UnitHealth(frame.unit)
	
	incAmount = UnitGetTotalAbsorbs(frame.unit) or 0

	local health = UnitHealth(frame.unit)
	if( health <= 0 or incAmount <= 0 ) then
		bar.total = nil
		bar:Hide()
		return
	end

	if( not bar.total ) then 
		bar:Show() 
	end
	
	bar.total = incAmount

	bar:SetMinMaxValues(0, UnitHealthMax(frame.unit) * (ShadowUF.db.profile.units[frame.unitType][self.frameKey].cap or 1.30))
	bar:SetValue(bar.total)
end

function IncAbsorb:OnConfigurationLoad()
	ShadowUF.Config.unitTable.args.bars.args.incAbsorb.args = {
		heals = {
			order = 1,
			type = "toggle",
			name = ShadowUF.L["Show incoming absorbs"],
			desc = ShadowUF.L["Adds a bar inside the health bar indicating how much damage will be absorbed."],
			arg = "incAbsorb.enabled",
			hidden = false
		},
		cap = {
			order = 3,
			type = "range",
			name = ShadowUF.L["Outside bar limit"],
			desc = ShadowUF.L["Percentage value of how far outside the unit frame the incoming absorb bar can go. 130% means it will go 30% outside the frame, 100% means it will not go outside."],
			min = 1, max = 1.50, step = 0.05, isPercent = true,
			arg = "incAbsorb.cap",
			hidden = false,
		},
		reverseFill = {
			order = 4,
			type = "toggle",
			name = Addon.L["Reverse fill"],
			desc = Addon.L["Changes the fill direction so the bar fill opposite the health bar."],
			arg = "incAbsorb.reverseFill",
			hidden = false,
		},
		width = {
			order = 5,
			type = "range",
			name = Addon.L["Width"],
			desc = Addon.L["How thick the absorb bar is compared to the health bar."],
			min = 0, max = 1, step = 0.05, isPercent = true,
			arg = "incAbsorb.width",
			hidden = false,
		},
		flip = {
			order = 6,
			type = "toggle",
			name = Addon.L["Flip side"],
			desc = Addon.L["Changes the side the absorb bar is attached too"],
			arg = "incAbsorb.flip",
			hidden = false,
		},
	}
end

