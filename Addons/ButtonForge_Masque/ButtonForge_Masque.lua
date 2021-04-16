-- Button Forge - Masque Compatibility
-- An add-on that makes Button Forge more compatible
-- with Masque button skins.
--
-- (C) The Binary Fox, 2015
--
-- DISCLAIMER:
-- This add-on and the creator of it is not affiliated
-- with Button Forge and Masque in any way, shape, or form.
--

--
-- Variables
local BFAPI           = nil;
local BFUtil          = nil;
local BFButton        = nil;
local MasqueCache     = nil;
local EventFrame      = nil;
local TimeToReskin    = 1;

--
-- Functions

--
-- Attempt to load the ButtonForge API and Util classes.
-- @returns the success of loading.
--
local TryLoad = function()
	BFAPI           = _G.ButtonForge_API1;
	BFUtil          = _G.BFUtil;
	BFButton        = _G.BFButton;
	
	return BFAPI ~= nil and BFUtil ~= nil and BFButton ~= nil;
end

--
-- Get the Masque group entry for ButtonForge.
-- @returns the Masque group entry, or nil.
--
local GetMasqueGroup = function()
	if (MasqueCache ~= nil) then
		return MasqueCache;
	end
	
	-- Find group.
	if (BFUtil.LBFMasterGroup ~= nil) then
		MasqueCache = BFUtil.LBFMasterGroup;
		return MasqueCache;
	end

	if (BFUtil.LBF ~= nil) then
		MasqueCache = BFUtil.LBF:Group("Button Forge");
		return MasqueCache;
	end
	
	-- Can't find the group.
	return nil;
end

--
-- Re-skin the button forge buttons using Masque's ReSkin function.
-- @param button - The button to reskin, or nil for all.
-- @returns whether or not ButtonForge could be re-skinned.
--
local ReSkin = function(button)
	local Group = GetMasqueGroup();
	if (Group == nil) then
		return false;
	end
	
	-- Button
	if (button ~= nil) then
		-- No way of getting SkinButton, it seems.
		--if (not Group.db.Disabled) then
		--	local db = Group.db;
		--	local SkinButton = LibStub("Masque", true).SkinButton;
		--	SkinButton(button, Group.Buttons[button], db.SkinID, db.Gloss, db.Backdrop, db.Colors);
		--end
		Group:ReSkin();
		return true;
	end
	
	-- All
	Group:ReSkin();
	return true;
end

--
-- A ButtonForge hack to replace all SetEnv* functions to update Masque after textures.
--
local Hack_ButtonForge = function()
	for k, v in pairs(BFButton) do
		-- Is it a SetEnv* function?
		if (string.sub(k, 1, 6) == "SetEnv") then
			local Original = v;
			BFButton[k] = function(self, ...)
				Original(self, unpack({...}));
				
				local Original_UT = self.UpdateTexture;
				self.UpdateTexture = function(self, ...)
					Original_UT(self, unpack({...}));
					
					if (InCombatLockdown()) then
						-- This ends up lagging out in combat, so it needs to be delayed.
						if (TimeToReskin < 1) then
							TimeToReskin = 5;
						end
					else
						ReSkin(self);
					end
				end
			end
		end
	end
end

--
-- The OnUpdate handler.
--
local Handler_Update = function()
	if (TimeToReskin < 1) then
		return;
	end
	
	TimeToReskin = TimeToReskin - 1;
	if (TimeToReskin == 0) then
		ReSkin(nil);
	end
end

--
-- The ButtonForge API callback handler.
--
local Handler_ButtonForge = function(self, event, ...)
	-- Initialized or allocated.
	if (event == "INITIALISED" or event == "BUTTON_ALLOCATED") then
		TimeToReskin = 1;
		return;
	end
	
	-- Unknown.
end

--
-- The PLAYER_ENTERING_WORLD event handler.
--
local Handler_Load = function()
	if (not TryLoad()) then
		-- No ButtonForge detected.
		return;
	end
	
	-- Prevent future calls.
	EventFrame:SetScript("OnEvent", nil);
	
	-- Setup.
	Hack_ButtonForge();
	EventFrame:SetScript("OnUpdate", Handler_Update);
	BFAPI.RegisterCallback(Handler_ButtonForge, nil);
end
--
-- Load
EventFrame = CreateFrame("Frame", nil);
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
EventFrame:SetScript("OnEvent", Handler_Load);
