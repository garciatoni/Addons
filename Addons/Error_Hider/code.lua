local f = CreateFrame("Frame");
verbose = false;
enabled = true;
local errorEncountered = false;

f:RegisterEvent("PLAYER_ENTERING_WORLD");
f:SetScript("OnEvent",function()
	SetCVar( "ScriptErrors", 1 ); --This is to make sure that when the user turns this addon off, errors are actually displayed again.
	ScriptErrorsFrame:SetScript("OnShow",function(self)
		if enabled then
			self:Hide();
			if (verbose and not errorEncountered) then
				errorEncountered = true;
				print("|cffff7f50[Error Hider]|r has encountered an error and will now suppress all errors you encounter.");
			end
		end
	end)
end);
StaticPopup1:SetScript("OnShow",function(self)
	if enabled then
		if (self.which == "TOO_MANY_LUA_ERRORS") then
			self.button2:Click("LeftButton");
			if (verbose) then print("|cffff7f50[Error Hider]|r has encountered popup "..self.which.." and has hidden it."); end
		end
	end
end);
StaticPopup2:SetScript("OnShow",function(self)
	if enabled then
		if (self.which == "TOO_MANY_LUA_ERRORS") then
			self.button2:Click("LeftButton");
		end
	end
end)
StaticPopup3:SetScript("OnShow",function(self)
	if enabled then
		if (self.which == "TOO_MANY_LUA_ERRORS") then
			self.button2:Click("LeftButton");
		end
	end
end)

SLASH_ERRORHIDER1 = "/errorhider"
SlashCmdList["ERRORHIDER"] = function(msg)
   if msg == "on" then
	enabled = true;
	print("|cff00ff00[Error Hider]|r has been enabled.");
   elseif msg == "off" then
	enabled = false;
	print("|cff00ff00[Error Hider]|r has been disabled on this character. Use /errorhider on to re-enable error hider!");
   elseif msg == "verbose on" then
	verbose = true;
	print("|cff00ff00[Error Hider]|r Verbose mode enabled.");
   elseif msg == "verbose off" then
	verbose = false;
	print("|cff00ff00[Error Hider]|r Verbose mode disabled.");
   elseif msg == "help" then
	print("|cffffff00[Error Hider]|r /errorhider on - enable Error Hider.");
	print("|cffffff00[Error Hider]|r /errorhider off - disable Error Hider.");
	print("|cffffff00[Error Hider]|r /errorhider verbose on - turn on verbose mode (makes Error Hider tell you when it hides an error frame or popup");
	print("|cffffff00[Error Hider]|r /errorhider verbose off - turn off verbose mode.");
   else
	print("|cffff0000[Error Hider]|r Invalid chat command. Try /errorhider help for a list of commands");
   end
end 