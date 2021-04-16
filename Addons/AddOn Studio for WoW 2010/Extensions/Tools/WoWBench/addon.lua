--
-- wowbench.lua  - Copyright (c) 2008 the WoWBench developer community. All rights reserved. See LICENSE.TXT.
--
--

---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
--
-- TOC file handling
--
--

WOWB_SavedVariablesGlobal = {};
WOWB_SavedVariables = {};
WOWB_SavedVariablesPerCharacter = {};
WOWB_TOCInfo = {};

-- These three get reset per TOC file parsed:
WOWB_AllFilesForTOC = {}    -- All files referenced by the TOC + included files (gets filled in by parsers)
WOWB_ScriptsToRunForTOC = {}  -- All <OnLoad>s and <Script>s encountered during parsing go in here


---------------------------------------------------------------------
-- function WOWB_ParseTOCData(filename)
--
-- - Parse header information from file
-- - Returns list of files and table of TOC metadata

local function WOWB_ParseTOCData(filename)
	local TOCmetadata = {};
	local aFiles = {};

	local fil,msg = io.open(filename);
	if(not fil) then
		print(msg);
		WOWB_Bail();
	end
	local lin = fil:read("*l");
	local nLine=0;
	while lin do
		nLine = nLine +1;
		if(nLine==1) then lin=string.gsub(lin, "^\239\187\191", ""); end

		-- strip leading and trailing whitespace
		_,_,lin = string.find(lin, "^ *([^%s].-) *$");
		if(not lin) then
			lin = lin;
		elseif(string.find(lin ,"^#")) then
			_,_,key,value=string.find(lin,"## *(.-): *(.-) *$");
			if (key) then
				TOCmetadata[key] = value;
			end
		elseif(string.find(lin,"%.lua$")) then
			tinsert(aFiles, (string.gsub(lin, "[\\/]+", "/")));
		elseif(string.find(lin,".xml$")) then
			tinsert(aFiles, (string.gsub(lin, "[\\/]+", "/")));
		else
			WOWB_AddStackInfo(filename,nLine);
			error("Unknown .toc argument: " .. lin);
		end
		lin = fil:read("*l");
	end
	return TOCmetadata, aFiles;
end

local function ParseTOCFieldToTable(TOCstring)
	local rv = {};
	for v in string.gmatch(TOCstring or "","[%a_][%a%d_]*") do
		table.insert(rv,v);
	end
	return rv;
end

local _COMMA_DELIMITED_TOC_FIELDS = {
	"SavedVariables",
	"SavedVariablesPerCharacter",
	"Dependencies",
	"OptionalDependencies",
	};

local function fillTOCData ( table, key )
	local aFiles;
	table[key], aFiles = WOWB_ParseTOCData(key);
	table[key]._files = aFiles;

	for _, v in ipairs(_COMMA_DELIMITED_TOC_FIELDS) do
		if (table[key][v]) then
			table[key][v] = ParseTOCFieldToTable(table[key][v]);
		end
	end
	return table[key];
end

setmetatable(WOWB_TOCInfo, {__index = fillTOCData });


---------------------------------------------------------------------
-- function WOWB_CanUseCompiledAddon(orgfilename)
--
-- - Determine whether or not we can use a compiled version of this addon

local function WOWB_CanUseCompiledAddon(cwd, orgfilename)
	local filename = cwd..orgfilename;
	local luacdepfile = filename..".luac.dep";
	local b = true;
	fil,msg = io.open(luacdepfile);
	if(not fil) then
		b=false;
		DP("TOC",2, "Forcing recompile -- ",msg);
	elseif(not WOWB_IsFileNewerThan(cwd, orgfilename..".luac", orgfilename)) then
		b=false;
		DP("TOC",2, "Modified: ",orgfilename);
	else
		for lin in fil:lines() do
			if(WOWB_IsFileNewerThan(cwd, orgfilename..".luac", lin)) then
				-- all good so far
			else
				b=false;
				DP("TOC",2, "Modified: ",lin);
				break; --bleh
			end
		end
	end
	if(fil) then
		io.close(fil);
	end

	return b;

end

---------------------------------------------------------------------
-- function WOWB_ProcessTOCFiles(files)
--
-- - Process/run the files in the TOC

local function WOWB_ProcessTOCFiles(files)
	local prevCWD = _CWD

	for _,file in ipairs(files) do
		local filename = WOWB_ProcessFilename(file, false);

		if not filename then
			print("Warning: "..tocfilename..": Cannot locate \""..file.."\". Skipping file.");

		elseif(string.find(filename,"%.lua$")) then
			if _VERBOSE then print("LUA: "..WOWB_SimpleFilename(filename)); end
			dofile(filename);
			tinsert(WOWB_AllFilesForTOC, filename);

		else
			local prevCWD = _CWD;
			local b,msg = WOWB_Pcall(WOWB_ParseXML, nil, filename);

			_CWD = prevCWD;
			if not b then
				if WOWB_ParseXML_CurrentOutputFile then
					io.close(WOWB_ParseXML_CurrentOutputFile);
					WOWB_ParseXML_CurrentOutputFile = nil;
				end
				WOWB_RemoveFile(filename..".lua");
				if msg == "JUSTBAILPLEASE" then
					WOWB_Bail();
				end
				print("ERROR: " .. msg);
				if(string.find(msg, " XML: ")) then
					print("  Skipping this XML file.");
				else
					WOWB_Bail();
				end
			else
				tinsert(WOWB_AllFilesForTOC, filename);
			end
		end
	end
	_CWD = prevCWD;

	return WOWB_AllFilesForTOC;
end

---------------------------------------------------------------------
-- function WOWB_ParseTOC(orgfilename)
--
-- - Call WOWB_ParseXML()
-- - Execute plain .LUA files
-- - Compile all of the above into TocFile.toc.luac
--
--

--function WOWB_ParseTOC(orgfilename)
--	local filename = _CWD..orgfilename;
--	local tocfilename = filename;
--	local luacfile = filename..".luac";
--	local luacdepfile = filename..".luac.dep";
--	local aFiles = {}

--	DP("TOC",1, "Begin ",filename);

--	if(_FORCEREPARSE) then
--		WOWB_RemoveFile(luacfile);
--		WOWB_RemoveFile(luacdepfile);
--	end

function WOWB_ParseTOC(orgfilename)

	local filename = orgfilename;
	if not WOWB_IsPathRooted(filename) then
		filename = _CWD..filename;
	end
	local tocfilename = filename;

	local luacfile = filename..".luac";
	local luacdepfile = filename..".luac.dep";
	local aFiles = {}

	DP("TOC",1, "Begin ",filename);

	if(_FORCEREPARSE) then
		WOWB_RemoveFile(luacfile);
		WOWB_RemoveFile(luacdepfile);
	end


	----------------------------------------------
	-- Parse the .toc file contents

	--WOWB_TOCInfo[filename] = WOWB_ParseTOCData(filename);
	aFiles = WOWB_TOCInfo[filename]._files;

	if (WOWB_TOCInfo[filename].SavedVariables) then
		for _, v in ipairs(WOWB_TOCInfo[filename].SavedVariables) do
			table.insert(WOWB_SavedVariables, v);
		end
	end

	if (WOWB_TOCInfo[filename].SavedVariablesPerCharacter) then
		for _, v in ipairs(WOWB_TOCInfo[filename].SavedVariablesPerCharacter) do
			table.insert(WOWB_SavedVariablesPerCharacter, v);
		end
	end

	-----------------------------------------------
	-- Use our .toc.luac file if it is up to date!

	if(not _FORCEREPARSE and not _SYNTAXONLY) then
		local b = WOWB_CanUseCompiledAddon(_CWD, orgfilename);

		if(b) then
			if(_VERBOSE) then print("LUA: "..WOWB_SimpleFilename(luacfile)); end
			DP("TOC",2, "Directly executing compiled ",luacfile);
			WOWB_EXECCOMPILED = true; -- setting this flag makes the compiled lua code skip dofile() and WOWB_ParseXML() calls; those files will have been run already
			dofile(luacfile);
			WOWB_EXECCOMPILED = nil;
			DP("TOC",1, "End ",filename);
			return;
		end
	end


	-----------------------------------------------
	-- Parse XML, Execute LUA

	DP("TOC",2, "Parsing contents");

	local allFilesForTOC = WOWB_ProcessTOCFiles(aFiles)

	---------------------------------------------------------
	-- Compile all the files above, including files that have
	-- gotten inserted in WOWB_AllFilesForTOC during parsing
	-- into finished path/to/addon.toc.luac

	if(not _SYNTAXONLY) then
		if(_VERBOSE) then print("Compiling "..WOWB_SimpleFilename(luacfile)); end;
		DP("TOC",2, "Compiling ",luacfile);

		local str = "";
		local nCompilerTmp=0;

		for _,lin in ipairs(allFilesForTOC) do
			if(string.find(lin,"%.lua$")) then
				str = str .. " \"" ..lin.."\"";
			else
				str = str .. " \"" ..lin..".lua".."\"";
			end
			if(strlen(str)>900) then
				nCompilerTmp = nCompilerTmp + 1;
				os.execute(_LUAC.." -o tmp/luac"..nCompilerTmp..str);
				str="";
			end
		end

		if(nCompilerTmp>0) then
			if(str~="") then
				nCompilerTmp = nCompilerTmp + 1;
				os.execute(_LUAC.." -o tmp/luac"..nCompilerTmp..str);
				str="";
			end
			for i=1,nCompilerTmp do
				str = str .. " tmp/luac"..i;
			end
		end

		fil = assert(io.open(luacdepfile, "w"));
		fil:write(table.concat(allFilesForTOC, "\n"));
		io.close(fil);

		os.execute(_LUAC.." -o \""..luacfile.."\" "..str);
	end

	DP("TOC",1, "End ",filename);

end

-----------------------------------------------------------
-- function WOWB_RunOnLoadsAndScripts(aObjects)
--
-- Execute contents of <Script> and <OnLoad> tags
-- Called on a per-mod basis.
--
--

function WOWB_RunOnLoadsAndScripts(aObjects, bSuppressErrors)
	DP("SCRIPT", 1, "Begin");

	local nObjects=0;
	local nObjScripts=0;
	local nObjOnLoads=0;
	local nScripts=0;

	for _,o in ipairs(aObjects) do
		if(o[0].xmltag == "Script") then
			nScripts = nScripts+1;
			if(not string.find(o[0].content, "^[\\r\\n%s%c]*$")) then
				WOWB_DoScript({scriptnode=o, suppresserrors=bSuppressErrors});
			end
			-- file="..." has already been registered with the .toc loader (and will have been run already)
		else
			nObjects=nObjects+1;
			if(o[0].Scripts) then
				nObjScripts=nObjScripts+1;
				if(o[0].Scripts[0].OnLoad) then
					nObjOnLoads=nObjOnLoads+1
					WOWB_DoScript({this=o, scriptnode=o[0].Scripts[0].OnLoad, suppresserrors=bSuppressErrors});
				end
			end
		end
	end

	DP("SCRIPT", 1, "End. <Script>:",nScripts,"   Objects:",nObjects," <Scripts>:",nObjScripts," <OnLoad>:",nObjOnLoads);
end

local function WOWB_AddonIsLoaded(addon)
	assert(type(addon) == "string");

	for _, loadedAddon in pairs(_LOADED_ADDONS) do
		if (loadedAddon == addon) then
			return true;
		end
	end
	return false;
end

function WOWB_ParseTocFile(tocfile)
	local filename;
	print("\n---["..WOWB_SimpleFilename(tocfile).."]");
	-- make _CWD contain the base path of the .toc; it gets used all over the place after this point
	-- TODO repair this coupling
	_,_,_CWD,filename = string.find(tocfile, "^(.*[\\/])([-%a%d_]+%.toc)");
	if(not _CWD) then
		filename = tocfile;
		_CWD = "";
	end

	local prev_WOWB_AllFilesForTOC = WOWB_AllFilesForTOC;
	local prev_WOWB_ScriptsToRunForTOC = WOWB_ScriptsToRunForTOC;
	WOWB_AllFilesForTOC = {}
	WOWB_ScriptsToRunForTOC = {}

	WOWB_ParseTOC(filename);
	message = _message; -- have to set this after framexml is parsed since it defines its own that we don't like

	if(not _SYNTAXONLY) then
		print("Running <OnLoad>s and <Scripts>s...");

		WOWB_Debug_RegisterGlobalFunctionNames();   -- we'll have loaded lots of new functions now so scan again

		local n = WOWB_NumSuppressedErrors;
		WOWB_RunOnLoadsAndScripts(WOWB_ScriptsToRunForTOC, false--[[don't suppress errors]]);

		if(WOWB_NumSuppressedErrors>n) then
			print("(tmp/errorlog.txt: added details of "..(WOWB_NumSuppressedErrors-n).." suppressed errors.)");
		end
	end

	WOWB_AllFilesForTOC = prev_WOWB_AllFilesForTOC or {};
	WOWB_ScriptsToRunForTOC = prev_WOWB_ScriptsToRunForTOC or {};
end

function WOWB_LoadAddonSavedVariables(addon)
	-- Read in saved variables
	local files = {
		_WOWDIR .. "/WTF/Account/" .. _ACCOUNT .. "/SavedVariables/" .. addon .. ".lua",
		_WOWDIR .. "/WTF/Account/" .. _ACCOUNT .. "/" .. _REALM .. "/" .. _CHARACTER .. "/SavedVariables/" .. addon .. ".lua"
	}
	for _,filename in pairs(files) do
		local fil = io.open(filename);
		if fil then
			io.close(fil);
			local chunk,msg;
			if(_VERBOSE) then print("LUA Vars: "..WOWB_SimpleFilename(filename)); end
			dofile(filename);
		else
			if(_VERBOSE) then print("Did not exist: "..WOWB_SimpleFilename(filename)); end
		end
	end
end

-----------------------------------------------------------
-- function WOWB_LoadAddon(addon)
--
-- Load an addon. :-)
-- This function takes a raw addon name, path or toc path and normalizes it into
-- the _ADDON_PATHS

function WOWB_LoadAddon(addon, tocfilename, noSavedVariables, isUser)
	assert(type(addon) == "string");

	local oldCWD = _CWD;
	local orig_tocfilename = tocfilename;
	local basePath = nil;
	local canonPath = nil;
	local canonName = WOWB_GetPathFileName(addon);

	if not tocfilename then
		tocfilename = addon;
		if not WOWB_IsPathRooted(tocfilename) then
			tocfilename = _WOWDIR.."/Interface/AddOns/"..tocfilename;
		else
			basePath = tocfilename;
			canonName = WOWB_GetPathFileName(addon);
		end
		tocfilename = tocfilename.."/"..canonName..".toc";
	end
	canonPath = WOWB_GetPathDirectory(tocfilename);

	if (WOWB_AddonIsLoaded(canonName)) then
		print("Addon ".. addon .. " is already loaded.");
	end

	print("Loading Addon: ");
	print("  Requested name and toc: \"" .. (addon or "(nil)") .. "\" | \"".. (orig_tocfilename or "(nil)") .. "\"");
	print("    Name: " .. (canonName or "(nil)"));
	print("    Path: " .. (canonPath or "(nil)"));
	print("    Toc: " .. (tocfilename or "(nil)"));

	if isUser then
		table.insert(_ADDONS, canonName);						-- add name to user addons
	end

	-- remember the real addon name and its real path (canonical form)
	_ADDON_PATHS[canonName] = canonPath;

	 -- read in TOC and files
	local dependencies = WOWB_TOCInfo[tocfilename].Dependencies;
	if (dependencies) then
		for _, v in ipairs(dependencies) do
			if basePath then
				v = basePath.."/"..v;
			end
			v = WOWB_NormalizeDir(v);
			print ("Loading dependency ".. v.. " of "..addon);
			WOWB_LoadAddon(v, nil, noSavedVariables, isUser);	-- assuming dependencies will always follow user or not for its parent
		end
	end

	-- TODO: Optional dependencies

	tocdir = WOWB_GetFileDir(tocfilename);

	WOWB_CacheFileAges(tocdir);

	WOWB_ParseTocFile(tocfilename);

	if (oldCWD) then
		_CWD = oldCWD;
	end

	-- do not fire variables loaded here
	--   wow will delay firing this event until all forms of loading occur
	--   including user account vars, and server cached vars
	-- once that threshhold is met all loaded will get a loaded event
	if not noSavedVariables then
		print("Loading saved variables for "..canonName.."...");
		WOWB_LoadAddonSavedVariables(canonName);
	end

	WOWB_FireEvent("ADDON_LOADED", canonName);
	table.insert(_LOADED_ADDONS, canonName);

	return canonName;
end


-- LOOKUP AND META UTILITY FUNCS


-- get the addon meta open file for an toc name
function _OpenAddOnMetadata(addon)
	if not addon then return end

	local fn;
	local addonPath = _ADDON_PATHS[addon];
	if addonPath then
		fn = addonPath.."/"..addon..".toc";
	else
		fn = string.format("%s/Interface/AddOns/%s/%s.toc", _WOWDIR, addon, addon)
	end
	local f = io.open(fn, "r") or io.open(string.gsub(fn, "/", "\\"), "r");

	return f;
end

-- get the addon data for an open file and info name
function _GetAddOnMetadata(_f, var)
	if not _f or not var then return end
	for line in _f:lines() do
		local _, _, key, val = string.find(line, '^## (.-): *(.*)$')
		if key == var then
			return val
		end
	end
end

-- close the addon metadata
function _CloseAddOnMetadata(_f)
	if _f then
		io.close(_f);
	end
end