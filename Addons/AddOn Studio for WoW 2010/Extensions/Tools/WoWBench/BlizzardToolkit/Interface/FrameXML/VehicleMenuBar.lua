local MAX_OVERLAY = 3;
local MAX_ARTWORK = 10;
local MAX_BORDER = 7;
local MAX_BACKGROUND = 1;

local MAX_ACTIONBUTTONS = 6;

local SkinsData = {
	["Mechanical"] = {
		["Overall"] = {
			yesPitchWidth = 970,
			noPitchWidth = 888,
			yesPitchHeight = 53,
			noPitchHeight = 53,
		},
		["PitchUpButton"] = {	--Pitch up button
			height = 36,
			width = 38,
			point = "BOTTOMLEFT",
			xOfs = 146,
			yOfs = 41,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-Pitch-Up]],
			normalTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-Pitch-Down]],
			pushedTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pitchHidden = 1,
		},
		["PitchDownButton"] = {	--Pitch up button
			height = 36,
			width = 38,
			point = "BOTTOMLEFT",
			xOfs = 146,
			yOfs = 3,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-PitchDown-Up]],
			normalTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-PitchDown-Down]],
			pushedTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pitchHidden = 1,
		},
		["LeaveButton"] = {	--Leave button
			height = 47,
			width = 50,
			point = "BOTTOMRIGHT",
			xOfs = -148,
			yOfs = 18,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-Exit-Up]],
			normalTexCoord = { 0.140625, 0.859375, 0.140625, 0.859375 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-Exit-Down]],
			pushedTexCoord = { 0.140625, 0.859375, 0.140625, 0.859375 },
		},
		["ActionButtonFrame"] = {
			point = "BOTTOMLEFT",
			relativePoint = "BOTTOMRIGHT",
			xOfs = -735,
			yOfs = 15,
		},
		["PitchSlider"] = {
			height = 78,
			width = 31,
			point = "BOTTOMLEFT",
			xOfs = 192,
			yOfs = 5,
			pitchHidden = 1,
		},
		["PitchSliderBG"] = {
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.46875, 0.50390625, 0.31640625, 0.62109375 },
		},
		["PitchSliderOverlayThing"] = {
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.38671875, 0.46484375, 0.31640625, 0.62109375 },
		},
		["PitchSliderMarker"] = {
			height = 15,
			width = 30,
			point = "CENTER",
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.46875, 0.50390625, 0.45, 0.55 },
		},
		[1] = {	--Left end cap
			layer = "BORDER",
			height = 74,
			width = 141,
			point = "BOTTOMLEFT",
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.0, 0.55078125, 0.0, 0.2890625 },
		},
		[2] = {	--Right end cap
			layer = "BORDER",
			height = 74,
			width = 141,
			point = "BOTTOMRIGHT",
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.55078125, 0.0, 0.0, 0.2890625 },
		},
		[3] = {	--Left pump
			layer = "OVERLAY",
			height = 77,
			width = 58,
			point = "BOTTOMLEFT",
			xOfs = 92,
			yOfs = 13,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.5546875, 0.78125, 0.0, 0.30078125 },
		},
		[4] = {	--Right pump
			layer = "OVERLAY",
			height = 77,
			width = 58,
			point = "BOTTOMRIGHT",
			xOfs = -92,
			yOfs = 13,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.78125, 0.5546875, 0.0, 0.30078125 },
		},
		[5] = {	--Left border
			layer = "ARTWORK",
			height = 96,
			width = 24,
			point = "BOTTOMLEFT",
			xOfs = 128,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.50390625, 0.59765625, 0.30859375, 0.68359375 },
		},
		[6] = {	--Pitch Buttons Background
			layer = "BORDER",
			height = 92,
			width = 44,
			point = "BOTTOMLEFT",
			xOfs = 145,
			yOfs = -6,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.21484375, 0.38671875, 0.3203125, 0.6796875 },
			pitchHidden = 1,
		},
		[7] = {	--Right border
			layer = "ARTWORK",
			height = 96,
			width = 24,
			point = "BOTTOMRIGHT",
			xOfs = -128,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.90625, 1.0, 0.30859375, 0.68359375 },
		},
		[8] = {	--Pitch Slider border
			layer = "ARTWORK",
			height = 96,
			width = 52,
			point = "BOTTOMLEFT",
			xOfs = 182,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.59765625, 0.80078125, 0.30859375, 0.68359375 },
			pitchHidden = 1,
		},
		[9] = {	--Action buttons background
			layer = "BORDER",
			height = 85,
			width = 533,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -212,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.0, 2.08203125, 0.68359375, 1.0 },
		},
		[10] = {	--Leave button background
			layer = "BORDER",
			height = 92,
			width = 54,
			point = "BOTTOMRIGHT",
			xOfs = -145,
			yOfs = -5,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.0, 0.2109375, 0.3203125, 0.6796875 },
		},
		[11] = {	--Border between micro buttons and leave button
			layer = "ARTWORK",
			height = 96,
			width = 26,
			point = "BOTTOMRIGHT",
			xOfs = -193,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.59765625, 0.69921875, 0.30859375, 0.68359375 },
		},
		[12] = {	--Border between micro buttons and action buttons
			layer = "ARTWORK",
			height = 96,
			width = 26,
			point = "BOTTOMRIGHT",
			xOfs = -335,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.80078125, 0.90234375, 0.30859375, 0.68359375 },
		},
		[13] = {	--Border above pitch buttons
			layer = "ARTWORK",
			height = 16,
			width = 30,
			point = "BOTTOMLEFT",
			xOfs = 152,
			yOfs = 80,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border]],
			texCoord = { 0.25, 0.71875, 0.0, 1.0 },
			pitchHidden = 1,
		},
		[14] = {	--Border above action buttons
			layer = "ARTWORK",
			height = 16,
			width = 375,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -361,
			yOfs = 80,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border]],
			texCoord = { 0.0, 5.859375, 0.0, 1.0 },
		},
		[15] = {	--Border below action buttons
			layer = "ARTWORK",
			height = 16,
			width = 375,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -361,
			yOfs = -3,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border]],
			texCoord = { 0.0, 5.859375, 0.0, 1.0 },
		},
		[16] = {	--Border above leave button
			layer = "ARTWORK",
			height = 16,
			width = 41,
			point = "BOTTOMRIGHT",
			xOfs = -152,
			yOfs = 80,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border]],
			texCoord = { 0.1796875, 0.8203125, 0.0, 1.0 },
		},
		[17] = {	--Border above micro buttons
			layer = "ARTWORK",
			height = 16,
			width = 116,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -219,
			yOfs = 80,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border]],
			texCoord = { 0.0, 1.8125, 0.0, 1.0 },
		},
		[18] = {	--Left border
			layer = "ARTWORK",
			height = 50,
			width = 24,
			point = "BOTTOMLEFT",
			xOfs = 128,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap]],
			texCoord = { 0.70703125, 0.80078125, 0.48828125, 0.68359375 },
			pitchHidden = 2,
		},
	},
	["Natural"] = {
		["Overall"] = {
			yesPitchWidth = 942,
			noPitchWidth = 869,
			yesPitchHeight = 53,
			noPitchHeight = 53,
		},
		["PitchUpButton"] = {	--Pitch up button
			height = 35,
			width = 34,
			point = "BOTTOMLEFT",
			xOfs = 166,
			yOfs = 41,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-Pitch-Up]],
			normalTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-Pitch-Down]],
			pushedTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pitchHidden = 1,
		},
		["PitchDownButton"] = {	--Pitch up button
			height = 35,
			width = 34,
			point = "BOTTOMLEFT",
			xOfs = 166,
			yOfs = 3,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-PitchDown-Up]],
			normalTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-PitchDown-Down]],
			pushedTexCoord = { 0.21875, 0.765625, 0.234375, 0.78125 },
			pitchHidden = 1,
		},
		["LeaveButton"] = {	--Leave button
			height = 47,
			width = 50,
			point = "BOTTOMRIGHT",
			xOfs = -177,
			yOfs = 15,
			normalTexture = [[Interface\Vehicles\UI-Vehicles-Button-Exit-Up]],
			normalTexCoord = { 0.140625, 0.859375, 0.140625, 0.859375 },
			pushedTexture = [[Interface\Vehicles\UI-Vehicles-Button-Exit-Down]],
			pushedTexCoord = { 0.140625, 0.859375, 0.140625, 0.859375 },
		},
		["ActionButtonFrame"] = {
			point = "BOTTOMLEFT",
			relativePoint = "BOTTOMRIGHT",
			xOfs = -820,
			yOfs = 26,
			scale = 0.85,
		},
		["PitchSlider"] = {
			height = 82,
			width = 31,
			point = "BOTTOMLEFT",
			xOfs = 204,
			yOfs = 0,
			pitchHidden = 1,
		},
		["PitchSliderBG"] = {
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.46875, 0.50390625, 0.31640625, 0.62109375 },
		},
		["PitchSliderOverlayThing"] = {
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.38671875, 0.46484375, 0.31640625, 0.62109375 },
		},
		["PitchSliderMarker"] = {
			height = 15,
			width = 30,
			point = "CENTER",
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.46875, 0.50390625, 0.45, 0.55 },
		},
		[1] = {	--Left end cap
			layer = "OVERLAY",
			height = 128,
			width = 170,
			point = "BOTTOMLEFT",
			xOfs = 0,
			yOfs = -15,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap-Organic]],
			texCoord = { 0.0, 0.6640625, 0.0, 1.0 },
		},
		[2] = {	--Right end cap
			layer = "OVERLAY",
			height = 128,
			width = 170,
			point = "BOTTOMRIGHT",
			xOfs = 0,
			yOfs = -15,
			texture = [[Interface\Vehicles\UI-Vehicles-Endcap-Organic]],
			texCoord = { 0.6640625, 0.0, 0.0, 1.0 },
		},
		[3] = {	--Top right buckle
			layer = "ARTWORK",
			height = 26,
			width = 92,
			point = "BOTTOMRIGHT",
			xOfs = -159,
			yOfs = 73,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.640625, 1.0, 0.0546875, 0.15625 },
		},
		[4] = {	--Leave Seat Buckle
			layer = "BORDER",
			height = 91,
			width = 76,
			point = "BOTTOMRIGHT",
			xOfs = -161,
			yOfs = -10,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.00390625, 0.30078125, 0.3203125, 0.67578125 },
		},
		[5] = {	--Action buttons background
			layer = "BACKGROUND",
			height = 85,
			width = 470,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -237,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.0, 1.8359375, 0.68359375, 1.0 },
		},
		[6] = {	--Top border
			layer = "BORDER",
			height = 16,
			width = 533,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -237,
			yOfs = 79,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border-Organic]],
			texCoord = { 0.0, 8.3125, 0.0, 1.0 },
		},
		[7] = {	--Border between micro buttons and action buttons
			layer = "BORDER",
			height = 84,
			width = 17,
			point = "BOTTOMRIGHT",
			xOfs = -363,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.93359375, 1.0, 0.3515625, 0.6796875 },
		},
		[8] = {	--Top left buckle
			layer = "ARTWORK",
			height = 25,
			width = 110,
			point = "BOTTOMLEFT",
			xOfs = 159,
			yOfs = 76,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.0, 0.4296875, 0.0390625, 0.13671875 },
		},
		[9] = {	--Pitch Slider right border
			layer = "BORDER",
			height = 84,
			width = 18,
			point = "BOTTOMLEFT",
			xOfs = 221,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.859375, 0.9296875, 0.3515625, 0.6796875 },
			pitchHidden = 1,
		},
		[10] = {	--Pitch Slider left border
			layer = "BORDER",
			height = 84,
			width = 18,
			point = "BOTTOMLEFT",
			xOfs = 200,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.859375, 0.9296875, 0.3515625, 0.6796875 },
			pitchHidden = 1,
		},
		[11] = { --Pitch buttons border
			layer = "BORDER",
			height = 87,
			width = 48,
			point = "BOTTOMLEFT",
			xOfs = 160,
			yOfs = -3,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.515625, 0.703125, 0.32421875, 0.6640625 },
			pitchHidden = 1,
		},
		[12] = {	--Bottom border
			layer = "BORDER",
			height = 16,
			width = 328,
			tile = true,
			point = "BOTTOMRIGHT",
			xOfs = -377,
			yOfs = 0,
			texture = [[Interface\Vehicles\UI-Vehicle-Frame-Border-Organic]],
			texCoord = { 0.0, 8.3125, 0.0, 1.0 },
		},
		[13] = {	--Bottom right buckle
			layer = "ARTWORK",
			height = 20,
			width = 77,
			point = "BOTTOMRIGHT",
			xOfs = -377,
			yOfs = -3,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.640625, 1.0, 0.0546875, 0.15625 },
		},
		[14] = {	--Bottom left buckle
			layer = "ARTWORK",
			height = 20,
			width = 77,
			point = "BOTTOMRIGHT",
			xOfs = -629,
			yOfs = -3,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 1.0, 0.640625, 0.0546875, 0.15625 },
		},
		[15] = {	--Top right buckle
			layer = "ARTWORK",
			height = 21,
			width = 31,
			point = "BOTTOMRIGHT",
			xOfs = -370,
			yOfs = 75,
			texture = [[Interface\Vehicles\UI-Vehicles-Elements-Organic]],
			texCoord = { 0.640625, 0.78125, 0.06640625, 0.15625 },
		},
	},
}

local frameCount = { BACKGROUND = 1, BORDER = 1, ARTWORK = 1, OVERLAY = 1};
function VehicleMenuBar_SetSkin(skinName, pitchVisible)
	local skinTable = SkinsData[skinName];
	if ( not skinTable ) then
		skinTable = SkinsData["Mechanical"];
		skinName = "Mechanical";
	end
	if ( VehicleMenuBar.currSkin == skinName and VehicleMenuBar.currPitchVisible == pitchVisible ) then
		return;
	else
		VehicleMenuBar_ReleaseSkins();
	end
	VehicleMenuBar.currSkin = skinName;
	VehicleMenuBar.currPitchVisible = pitchVisible;
	for frametype, count in pairs(frameCount) do
		frameCount[frametype] = 1;
	end
	local frame, framedata

	if ( pitchVisible ) then
		VehicleMenuBar:SetWidth(skinTable.Overall.yesPitchWidth or 970);
		VehicleMenuBar:SetHeight(skinTable.Overall.yesPitchHeight or 53);
	else
		VehicleMenuBar:SetWidth(skinTable.Overall.noPitchWidth or 970);
		VehicleMenuBar:SetHeight(skinTable.Overall.noPitchHeight or 53);
	end

	for _, framedata in ipairs(skinTable) do
		if ( bit.band((framedata.pitchHidden or 0),(pitchVisible or 0)+1) == 0 ) then	--0 = never hide. 1 = hide when no pitch slider 2 = hide when pitch slider
			frame = getglobal("VehicleMenuBarArtFrame"..framedata.layer..frameCount[framedata.layer]);
			if ( not frame ) then
				error("Not enough vehicle art frames of type "..framedata.layer);
			end

			frameCount[framedata.layer] = frameCount[framedata.layer] + 1;

			frame:SetTexture(framedata.texture, framedata.tile);
			frame:SetHeight(framedata.height);
			frame:SetWidth(framedata.width);

			frame:ClearAllPoints()
			frame:SetPoint(framedata.point, ( framedata.relativeFrame or frame:GetParent() ) , ( framedata.relativePoint or framedata.point ), ( framedata.xOfs or 0 ) , ( framedata.yOfs or 0 ));

			frame:SetTexCoord( unpack(framedata.texCoord) );
		end
	end

	for framename, framedata in pairs(skinTable) do	--For buttons
		if ( type(framename) == "string" and framename ~= "Overall") then
			frame = getglobal("VehicleMenuBar"..framename)

			if ( framedata.height ) then
				frame:SetHeight(framedata.height);
				frame:SetWidth(framedata.width);
			end

			if ( framedata.normalTexture ) then
				frame:GetNormalTexture():SetTexture(framedata.normalTexture);
				frame:GetNormalTexture():SetTexCoord( unpack(framedata.normalTexCoord) );
			end

			if ( framedata.pushedTexture ) then
				frame:GetPushedTexture():SetTexture(framedata.pushedTexture);
				frame:GetPushedTexture():SetTexCoord( unpack(framedata.pushedTexCoord) );
			end

			if ( framedata.texture ) then
				frame:SetTexture(framedata.texture);
				frame:SetTexCoord( unpack(framedata.texCoord) );
			end



			if ( framedata.point ) then
				frame:ClearAllPoints();
				frame:SetPoint(framedata.point, ( framedata.relativeFrame or frame:GetParent() ) , ( framedata.relativePoint or framedata.point ), ( framedata.xOfs or 0 ) , ( framedata.yOfs or 0 ));
			end

			if ( frame.SetScale ) then
				frame:SetScale(framedata.scale or 1);
			end

			if ( bit.band((framedata.pitchHidden or 0),(pitchVisible or 0)+1) ~= 0 ) then	--0 = never hide. 1 = hide when no pitch slider 2 = hide when pitch slider
				frame:Hide();
			else
				frame:Show();
			end
		end
	end

	VehicleMenuBar_MoveMicroButtons(skinName);
end

local MicroButtons = {
	CharacterMicroButton,
	SpellbookMicroButton,
	TalentMicroButton,
	AchievementMicroButton,
	QuestLogMicroButton,
	SocialsMicroButton,
	PVPMicroButton,
	LFGMicroButton,
	MainMenuMicroButton,
	HelpMicroButton,
	}
function VehicleMenuBar_MoveMicroButtons(skinName)
	if ( not skinName ) then

		for _, frame in pairs(MicroButtons) do
			frame:SetParent(MainMenuBarArtFrame);
			frame:Show();
		end

		CharacterMicroButton:ClearAllPoints();
		CharacterMicroButton:SetPoint("BOTTOMLEFT", 552, 2);
		SocialsMicroButton:ClearAllPoints();
		SocialsMicroButton:SetPoint("BOTTOMLEFT", QuestLogMicroButton, "BOTTOMRIGHT", -3, 0);

		UpdateTalentButton();

	elseif ( skinName == "Mechanical" ) then

		for _, frame in pairs(MicroButtons) do
			frame:SetParent(VehicleMenuBarArtFrame);
			frame:Show();
		end
		CharacterMicroButton:ClearAllPoints();
		CharacterMicroButton:SetPoint("BOTTOMLEFT", VehicleMenuBar, "BOTTOMRIGHT", -340, 41);
		SocialsMicroButton:ClearAllPoints();
		SocialsMicroButton:SetPoint("TOPLEFT", CharacterMicroButton, "BOTTOMLEFT", 0, 20);

		UpdateTalentButton();
	elseif ( skinName == "Natural" ) then

		for _, frame in pairs(MicroButtons) do
			frame:SetParent(VehicleMenuBarArtFrame);
			frame:Show();
		end
		CharacterMicroButton:ClearAllPoints();
		CharacterMicroButton:SetPoint("BOTTOMLEFT", VehicleMenuBar, "BOTTOMRIGHT", -365, 41);
		SocialsMicroButton:ClearAllPoints();
		SocialsMicroButton:SetPoint("TOPLEFT", CharacterMicroButton, "BOTTOMLEFT", 0, 20);

		UpdateTalentButton();
	end
end
function VehicleMenuBar_ReleaseSkins()
	VehicleMenuBar.currSkin = nil;
	for i=1, MAX_BACKGROUND do
		getglobal("VehicleMenuBarArtFrameBACKGROUND"..i):SetTexture(nil);
	end
	for i=1, MAX_BORDER do
		getglobal("VehicleMenuBarArtFrameBORDER"..i):SetTexture(nil);
	end
	for i=1, MAX_ARTWORK do
		getglobal("VehicleMenuBarArtFrameARTWORK"..i):SetTexture(nil);
	end
	for i=1, MAX_OVERLAY do
		getglobal("VehicleMenuBarArtFrameOVERLAY"..i):SetTexture(nil);
	end

	VehicleMenuBarPitchUpButton:GetNormalTexture():SetTexture(nil);
	VehicleMenuBarPitchUpButton:GetPushedTexture():SetTexture(nil);
	VehicleMenuBarPitchDownButton:GetNormalTexture():SetTexture(nil);
	VehicleMenuBarPitchDownButton:GetPushedTexture():SetTexture(nil);
	VehicleMenuBarLeaveButton:GetNormalTexture():SetTexture(nil);
	VehicleMenuBarLeaveButton:GetPushedTexture():SetTexture(nil);
	VehicleMenuBarPitchSliderBG:SetTexture(nil);
	VehicleMenuBarPitchSliderOverlayThing:SetTexture(nil);
	VehicleMenuBarPitchSliderMarker:SetTexture(nil);
end

function VehicleMenuBar_UpdateActionBars()
	local frame;
	for i=1, MAX_ACTIONBUTTONS do
		frame = getglobal("VehicleMenuBarActionButton"..i);
		frame:GetNormalTexture():SetHeight(105);
		frame:GetNormalTexture():SetWidth(105);
		frame = getglobal("VehicleMenuBarActionButton"..i.."HotKey");
		frame:SetPoint("TOPLEFT", -20, -4);
		frame.SetPoint = function() end;
	end
end

function VehicleMenuBar_OnLoad(self)
	VehicleMenuBar_UpdateActionBars();
end

function VehicleMenuBarPitch_OnLoad(self)
	VehicleMenuBarPitchSliderBG:SetVertexColor(0.0, 0.85, 0.99);
	VehicleMenuBarPitchSliderMarker:SetVertexColor(1.0, 0, 0);
	self:RegisterEvent("VEHICLE_ANGLE_UPDATE");

	self:RegisterForClicks("LeftButtonUp")
end

function VehicleMenuBarPitch_OnClick(self)
	local _, mouseY = GetCursorPosition();
	local pitch = (mouseY - self:GetBottom() - 8)/(self:GetHeight()-20);
	VehicleAimRequestNormAngle(pitch);
end

function VehicleMenuBarPitch_OnEvent(self, event, ...)
	arg1 = ...;
	if ( event == "VEHICLE_ANGLE_UPDATE" ) then
		VehicleMenuBarPitch_SetValue(arg1);

	end
end

function VehicleMenuBarPitch_SetValue(pitch)
	VehicleMenuBarPitchSliderMarker:SetPoint("CENTER",VehicleMenuBarPitchSlider, "BOTTOM", 0, pitch * (VehicleMenuBarPitchSlider:GetHeight() - 20) + 8 );
end

----------Seat Indicator--------------
local MAX_VEHICLE_INDICATOR_BUTTONS = 4;
local SeatIndicatorSkinsData = {
	["Demolisher"] = {
		Overall = {
			height = 128,
			width = 128,
			background = "Interface\\Vehicles\\SeatIndicator\\Vehicle-Demolisher",
		},
		[1] = {
			xPos = -49,
			yPos = -55,
		},
		[2] = {
			xPos = -26,
			yPos = -21,
		},
		[3] = {
			xPos = -73,
			yPos = -21,
		},
	},
	["Bomber"] = {
		Overall = {
			height = 128,
			width = 128,
			background = "Interface\\Vehicles\\SeatIndicator\\Vehicle-Bomber",
		},
		[1] = {
			xPos = -52,
			yPos = -30,
		},
		[2] = {
			xPos = -52,
			yPos = -60,
		},
	},
	["SiegeEngine"] = {
		Overall = {
			height = 128,
			width = 128,
			background = "Interface\\Vehicles\\SeatIndicator\\Vehicle-SiegeEngine",
		},
		[1] = {
			xPos = -52,
			yPos = -5,
		},
		[2] = {
			xPos = -27,
			yPos = -87,
		},
		[3] = {
			xPos = -76,
			yPos = -87,
		},
		[4] = {
			xPos = -51,
			yPos = -60,
		},
	},
}

function VehicleSeatIndicator_SetUpVehicle(vehicleName)
	if ( vehicleName == VehicleSeatIndicator.currSkin ) then
		return;
	end

	local vehicleData = SeatIndicatorSkinsData[vehicleName];

	if ( not vehicleData ) then
		VehicleSeatIndicator_UnloadTextures();
		return;
	end

	VehicleSeatIndicator.currSkin = vehicleName;

	VehicleSeatIndicator:SetHeight(vehicleData.Overall.height);
	VehicleSeatIndicator:SetWidth(vehicleData.Overall.width);

	VehicleSeatIndicatorBackgroundTexture:SetTexture(vehicleData.Overall.background);

	for i=1, MAX_VEHICLE_INDICATOR_BUTTONS do
		local seatData = vehicleData[i];
		local button = _G["VehicleSeatIndicatorButton"..i];

		if ( seatData ) then
			button:SetPoint("TOPRIGHT", (seatData.xPos or 0), (seatData.yPos or 0));
			button:Show()
		else
			button:Hide();
		end
	end

	VehicleSeatIndicator:Show();
	DurabilityFrame_SetAlerts();
	VehicleSeatIndicator_Update();

	UIParent_ManageFramePositions();
end

function VehicleSeatIndicator_UnloadTextures()
	VehicleSeatIndicatorBackgroundTexture:SetTexture(nil);
	VehicleSeatIndicator:Hide()
	VehicleSeatIndicator.currSkin = nil;
	DurabilityFrame_SetAlerts();

	UIParent_ManageFramePositions();
end
local SeatIndicator_PulseTable;

local function SeatIndicator_PulseFunc(self, elapsed)
	return abs(sin(elapsed*360));
end

function SeatIndicator_Pulse(self, isPlayer)
	self:Show();
	self:SetAlpha(0);
	SetUpAnimation(self, SeatIndicator_PulseTable, self.Hide);
end

function VehicleSeatIndicator_OnLoad(self)
	--VehicleSeatIndicator_SetUpVehicle("Demolisher");
	self:RegisterEvent("UNIT_ENTERED_VEHICLE");
	self:RegisterEvent("UNIT_ENTERING_VEHICLE");
	self:RegisterEvent("VEHICLE_PASSENGERS_CHANGED");
	self:RegisterEvent("UNIT_EXITED_VEHICLE");
	self:RegisterEvent("PLAYER_ENTERING_WORLD");

	SeatIndicator_PulseTable = {
	totalTime = 2,
	updateFunc = VehicleSeatIndicatorButton1PulseTexture.SetAlpha,
	getPosFunc = SeatIndicator_PulseFunc,
	}
end

function VehicleSeatIndicator_OnEvent(self, event, ...)
	local arg1, _, _, _, _, indicatorType = ...;
	if ( event == "UNIT_ENTERED_VEHICLE" and arg1 == "player" ) then
		VehicleSeatIndicator_SetUpVehicle(indicatorType);
	elseif ( event == "UNIT_ENTERING_VEHICLE" and arg1 == "player" ) then
		self.hasPulsedPlayer = false;
	elseif ( event == "VEHICLE_PASSENGERS_CHANGED" ) then
		VehicleSeatIndicator_Update();
	elseif ( (event == "UNIT_EXITED_VEHICLE" and arg1 == "player") or (event == "PLAYER_ENTERING_WORLD") ) then
		VehicleSeatIndicator_UnloadTextures();
	end
end
function VehicleSeatIndicator_Update()
	if ( not VehicleSeatIndicator.currSkin ) then
		return;
	end
	for i=1, MAX_VEHICLE_INDICATOR_BUTTONS do
		local controlType, occupantName = UnitVehicleSeatInfo("player", i);
		local button = _G["VehicleSeatIndicatorButton"..i];
		if ( occupantName ) then
			button.occupantName = occupantName;
			if ( occupantName == UnitName("player") ) then
				_G["VehicleSeatIndicatorButton"..i.."PlayerIcon"]:Show();
				_G["VehicleSeatIndicatorButton"..i.."AllyIcon"]:Hide();
				if ( not VehicleSeatIndicator.hasPulsedPlayer ) then
					SeatIndicator_Pulse(_G["VehicleSeatIndicatorButton"..i.."PulseTexture"], true);
					VehicleSeatIndicator.hasPulsedPlayer = true;
				end
			else
				_G["VehicleSeatIndicatorButton"..i.."PlayerIcon"]:Hide();
				_G["VehicleSeatIndicatorButton"..i.."AllyIcon"]:Show();
			end
		else
			_G["VehicleSeatIndicatorButton"..i.."PlayerIcon"]:Hide();
			_G["VehicleSeatIndicatorButton"..i.."AllyIcon"]:Hide();
		end
	end
end

function VehicleSeatIndicatorButton_OnClick(self)
	UnitSwitchToVehicleSeat("player", self:GetID());
end

function VehicleSeatIndicatorButton_OnEnter(self)
	if ( not self:IsEnabled() ) then
		return;
	end

	local controlType, occupantName = UnitVehicleSeatInfo("player", self:GetID());
	local highlight = _G[self:GetName().."Highlight"]
	if ( controlType == "None" ) then
		if ( occupantName ) then
			highlight:Hide();
			GameTooltip_SetDefaultAnchor(GameTooltip, self);
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(occupantName);
		else
			highlight:Show();
			SetCursor("Interface\\CURSOR\\vehichleCursor");
		end
	elseif ( controlType == "Root" ) then
		if ( occupantName ) then
			highlight:Hide();
			GameTooltip_SetDefaultAnchor(GameTooltip, self);
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(occupantName);
		else
			highlight:Show();
			SetCursor("Interface\\CURSOR\\Driver");
		end
	elseif ( controlType == "Child" ) then
		if ( occupantName ) then
			highlight:Hide();
			GameTooltip_SetDefaultAnchor(GameTooltip, self);
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(occupantName);
		else
			highlight:Show();
			SetCursor("Interface\\CURSOR\\Gunner");
		end
	end
end

function VehicleSeatIndicatorButton_OnLeave(self)
	GameTooltip:Hide();
	SetCursor(nil);
end
