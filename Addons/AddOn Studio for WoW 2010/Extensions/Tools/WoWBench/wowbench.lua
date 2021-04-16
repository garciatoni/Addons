-- wowbench.lua
-- Copyright (c) 2006, the WoWBench developer community. All rights reserved. See LICENSE.TXT.

-------------------------------------------------------------
-- normalize command line

args = table.concat(arg, " ")							-- build string of 'args'
--print("--" .. args)

for i,_ in pairs(arg) do								-- keep table but remove 'args'
	if type(i) == "number" and i > 0 then
		arg[i] = nil
	end
end

for s in (" " .. args .. "'"):gmatch("(\'?[^']-)\'") do	-- rebuild 'args' to keep single-quoted together
	if s:byte(1) == 32 then
		for s2 in s:gmatch("([^ ]+)") do
			arg[#arg + 1] = s2
			--print(s2)
		end
	else
		arg[#arg + 1] = s
		--print(s)
	end
end

-------------------------------------------------------------
-- startup environment

WOWB_VER = "3.0.3.a2"
WOWB_PHASE = ""  -- "LOAD" -> "STARTEVENTS" -> "LIVE"

libs = ""

print("[WoWBench v"..WOWB_VER..libs.."]")
print("")

-- Necessary dofile() and loadstring() hacks for multisession
if not WOWB_ORIG_loadfile then
	WOWB_ORIG_loadfile = loadfile
end
function loadfile(filenamee)
	local chunk,msg=WOWB_ORIG_loadfile(filenamee)
	if chunk then setfenv(chunk, getfenv()) end
	return chunk,msg
end
function dofile(filenam)
	local chunk,msg = loadfile(filenam)
	if not chunk then error(msg, 0) else chunk() end
end
if not WOWB_ORIG_loadstring then
	WOWB_ORIG_loadstring = loadstring
end
function loadstring(str)
	local chunk,msg = WOWB_ORIG_loadstring(str)
	if chunk then setfenv(chunk, getfenv()) end
	return chunk,msg
end

-- Make a copy of the base environment to use in additional sessions. Shallow copy should be ok at this point.
-- (If this _IS_ an additional session, WOWB_BaseEnv will already be set)
if not WOWB_SessCtl then
	local baseenv = {}
	for k,v in pairs(_G) do
		baseenv[k]=v
	end
	WOWB_SessCtl = { BaseEnv = baseenv }
	table.insert(WOWB_SessCtl, _G) -- we're the first environment
end

function help()
print("Usage: " .. tostring(arg[-1]) .." " .. tostring(arg[0]) .. " [<parameters>] addon1 [addon2 ...]")
print([[

Parameters:
  -q  Quick mode (Use framexml-lite.toc)
  -x  Syntax checker mode (load LUAs, verify XML syntax, run nothing)
  -d  Enable debug output according to WOWB_DEBUGCAT in config.lua
  -v  Verbose
  -f  Forced reparse of all files, don't use compiled files
  -w  Alternate WoW Path
  -t  Alternate ToolKit path, to replace embedded FrameXML files
  -c  Alternate Character name
]])
	return
end

if not arg[1] then
	help()
	return
end

-------------------------------------------------------------
-- configuration

_VERBOSE = false
_CFG_ADDONS = {}		-- config requested addons IV pair with V as relative or full path, these will end up in _ADDONS after other addons
_QUICK = false
_SYNTAXONLY = false
_DEBUG = false
_FORCEREPARSE = false
_CWD = "./"
_TOOLKIT = nil

-- runtime
_ADDONS = {}			-- user addons, index with V as formal name (think: addons user sees at addons page)
_ADDON_PATHS = {}		-- all addons, cased formal name and path: Bob = Bob, Fred = c:\my\path\Addons\Fred
_LOADED_ADDONS = {}	-- loaded addons, cased name indexed: table 1 = Bob, 2 = Fred
_VARS_LOADED = false	-- to emulate the server async vars loaded call.  no VARS LOADED event shoudl be fired until this is set

-- Pull in configuration (and fill out defaults)
dofile("config.lua")

_WOWDIR = _WOWDIR or "C:/Program Files/World of Warcraft"
_FRAMEXMLDIR = _FRAMEXMLDIR or "./BlizzardToolkit/Interface/FrameXML"
_EDITOR = _EDITOR or "start notepad.exe"
_LUAC = _LUAC or "luac.exe"
_MINDELAY = _MINDELAY or 0.2

_EDITDUMPDEPTH = _EDITDUMPDEPTH or 20
_DUMPDEPTH = _DUMPDEPTH or 2
_ERRORDUMPDEPTH = _ERRORDUMPDEPTH or 3
_DUMPDONTFOLLOW = _DUMPDONTFOLLOW or {
	["previous"]=1, ["parent"]=1, ["prev"]=1, ["parentobj"]=1
}
_EDITDUMPONERROR = _EDITDUMPONERROR or false
_DEBUGONERROR = _DEBUGONERROR or true

WOWB_DEBUGCAT = WOWB_DEBUGCAT or {  -- if run with "-d" switch, debugging will be shown according to:
	["XML"] = 3,	   -- XML Parser: 1,2: Per file,  3: Per object,  4: Inherited objects
	["SCRIPT"] = 2,  -- <On...> event firing:  1: global sets of events 2: everything
	["FILESYS"] = 2, -- 1: Changing cwd, executing Lua files, 2: tests
	["WIDGET"] = 2,  -- 2: everything
	["TOC"] = 2,     -- 1: begin/end tocfiles,  2: everything else
	["FRAMES"] = 3,  -- 1: explicit :Show()/:Hide() calls.  2: ... including FrameXML frames
					 -- 3: all frames showing/hiding  4: ... including FrameXML frames
	["EVENT"] = 2,   -- 1: show registering/unregistering   2: Show all events being fired   3: ... and to which frames
}

--_ACCOUNT = _ACCOUNT or "MyAccountName";	-- Can be left out if saved in login screen
--_REALM = _REALM or "My Realm";   		-- Leave out to use your last realm name
_CHARACTER = "Playername";

_PARTY = _PARTY or {
	[0]=_CHARACTER,
	"Alice", "Bob", n=2,
	leader=0,
	lootmethod="master", masterlooter=0,   -- 0=me
	lootthreshold=2,
}

_TARGET = _TARGET or nil;

if _FORCECHARACTER then        -- gets set in additional sessions'
	_PARTY[0] = _FORCECHARACTER
	_CHARACTER = _FORCECHARACTER
end

-- .toc files that always get parsed
_TOCFILES = {
	"world.toc",
	"blizzardui.toc",
}

_FRAMEXML_TOC = "BlizzardToolkit/Interface/FrameXML/FrameXML.toc"

do
	local fil,msg = io.open("wowbench.lua")
	if not fil then
		print "Run WoWBench with current directory set to where WoWBench lives."
		print "i.e. > cd c:\wowbench"
		print "     > lua50 wowbench.lua"
		print("("..msg..")")
		return
	end
	io.close(fil)
end

dofile("utils.lua")

-- things to get executed on the prompt
if not _FORCECHARACTER then -- only in first session
	_INFILES = {
		cur=1
	}
end

-- returns i,string
function _ProcessStringArg(i, arg, default)
	i = i + 1
	local a = arg[i]
	if a and strlen(a) > 0 then
		if string.sub(a,1,1) == "-" then
			i = i - 1
		else
			default = WOWB_NormalizeDir(a)
		end
	end
	return i,default
end

for i = 1,#arg do
	local a = arg[i]
	if a=="-h" then
		help()
		return
	elseif a=="-v" then
		_VERBOSE = true
	elseif a=="-d" then
		_DEBUG = true
	elseif a=="-q" then
		_QUICK = true
		_FRAMEXML_TOC = "BlizzardToolKit/Interface/FrameXML/FrameXML-lite.toc"
	elseif a=="-x" then
		_SYNTAXONLY = true
		_TOCFILES = { "blizzardui.toc", }
	elseif a=="-w" then	-- wow location
		print("... requested alternate wow path")
		i,_WOWDIR = _ProcessStringArg(i, arg, _WOWDIR)
	elseif a=="-t" then	-- alternate toolkit location
		print("... requested alternate toolkit path")
		i,_TOOLKIT = _ProcessStringArg(i, arg, _TOOLKIT)
	elseif a=="-c" then	-- alternate toolkit location
		print("... requested alternate character")
		i,_CHARACTER = _ProcessStringArg(i, arg, _CHARACTER)
	elseif a=="-f" then
		if not _FORCECHARACTER then _FORCEREPARSE = true end   -- only in first session
	elseif string.find(a, "%.[tT][xX][tT]$") then
		if not _FORCECHARACTER then -- only in first session
			local fil,msg = io.open(a, "rt")
			if not fil then error(msg) end
			table.insert(_INFILES, fil)
			io.close(fil)
		end
	else
		table.insert(_CFG_ADDONS, WOWB_NormalizeDir(a))
	end
end

print("Startup Config: ")
print("  WoW: " .. (_WOWDIR or "(nil)"))
print("  ToolKit: " .. (_TOOLKIT or "(nil)"))
print("  Character: " .. (_CHARACTER or "(nil)"))

if not _FORCECHARACTER then -- only in first session
	table.insert(_INFILES, io.input())
end

if not _DEBUG then
	for k,v in pairs(WOWB_DEBUGCAT) do
		WOWB_DEBUGCAT[k]=0
	end
end

do
	--check for windows versions of wow.exe
	local fil,msg = io.open(_WOWDIR.."/wow.exe")
	if not fil then
		fil,msg = io.open(_WOWDIR.."/WoW.exe")
	end

	--check for mac version of wow ((a .app is a 'bundle', kinda like a self running zip, that mac uses for programs))
	if not fil then
		fil,msg = io.open(_WOWDIR.."/World of Warcraft.app/Contents/MacOS/World of Warcraft")
	end

	if not fil then
		print "ERROR: Make certain that _WOWDIR is set correctly in config.lua."
		print("("..msg..")")
		return
	end
	io.close(fil)

	fil,msg = io.open("tmp/exists","w")
	if not fil then
		os.execute("mkdir tmp")    -- should work evvvvverrrywhere
	else
		io.close(fil)
	end
end

dofile("debugger.lua")
dofile("api.lua")
dofile("xmlparse.lua")
dofile("cmdline.lua")
dofile("classops.lua")
dofile("addon.lua")

do
	if not _ACCOUNT or _ACCOUNT=="" then
		_ACCOUNT = GetCVar("accountName")
	end
	if not _REALM or _REALM=="" then
		_REALM = GetCVar("realmName")
	end

	local list = GetCVar("accountList")
	if list then
		--SET accountList "!NAME|Name|Name|"
		local _,_,list = string.find(list,"^\!(.-)|")
		if list then
			_ACCOUNT = list
		end
	end
	if _ACCOUNT and _ACCOUNT~="" then
		_ACCOUNT = strupper(_ACCOUNT)
	end

	local lastChar = GetCVar("lastCharacterIndex")
end

if not _ACCOUNT or _ACCOUNT=="" then print("Please specify _ACCOUNT in your config.lua") return end
if not _REALM or _REALM=="" then print("Please specify _REALM in your config.lua") return end
if not _CHARACTER or _CHARACTER=="" then print("Please specify _CHARACTER in your config.lua") return end

do
	local fil,msg = io.open(_WOWDIR.."/WTF/Account/".._ACCOUNT.."/".._REALM.."/".._CHARACTER.."/AddOns.txt")
	if not fil then
		print "ERROR: Make certain that _ACCOUNT, _REALM and _CHARACTER is set correctly in config.lua!"
		print("("..msg..")")
		return
	end
	io.close(fil)
end




-----------------------------------------------------------
-- function WOWB_FireEvent(name, ...)
--
-- Fire the given event with the given parameters.
--
-- Note that you probably do not want to call this from inside
-- API calls that'll result in recursive calls into the addon,
-- something which it might not be prepared to handle.
-- (WoW doesn't recurse back into addons I don't think.. haven't tested though)
--
-- Rather use WOWB_QueueDPC(WOWB_FireEvent, name, ...)
--


WOWB_RegisteredEventsByEvent = { -- Used when firing events
	-- ["EVENT_NAME"][frameptr]=1
}

WOWB_RegisteredEventsByFrame = { -- Used in UnregisterAllEvents
	-- [frameptr]["EVENT_NAME"]=1
}

function WOWB_FireEvent(name, ...)

	DP("EVENT", 2, "Firing '",name,"'")

	if not WOWB_RegisteredEventsByEvent[name] then
		return 0
	end

	WOWB_AddStackInfo(nil,nil,name)

	local prevevent=event

	local nFired=0
	for frame,_ in pairs(WOWB_RegisteredEventsByEvent[name]) do
		if frame[0].Scripts and frame[0].Scripts[0].OnEvent then
			event = name
			if (WOWB_DEBUGCAT["EVENT"] or 0)>=3 then
				DP("EVENT", 3, "  ... to ",frame:GetName() or ("(unnamed)"..frame))
			end
			WOWB_DoScript({this=frame, script="OnEvent", args={...}})
			nFired=nFired+1
		end
	end

	event=prevevent

	WOWB_RemoveStackInfo()

	return nFired
end


---------------------------------------------------------------------
-- function WOWB_DoScript({scriptnode=|script="", [this=,] args={}, [suppresserrors=true])
--
-- Execute [0].chunk stored in a script node
-- Also assign this=(this or scriptnode), arg1=args[1], arg2=args[2]....
-- (Remember what they were for previous recursion levels and restore when done)
--
--

WOWB_PrevScripts = {}  -- kept global for debugging purposes could easily have been kept locally in WOWB_DoScript recursively

function WOWB_DoScript(params)
	assert((params.scriptnode and params.scriptnode[0]) or
		   (params.this and params.this[0] and params.script)
	)

	local o = (params.this or params.scriptnode)
	local oScript = params.scriptnode
	if not oScript then
		assert(type(params.script)=="string")
		if not o[0].Scripts then return end
		oScript = o[0].Scripts[0][params.script]
	end

	if oScript and oScript[0].chunk then
		if (WOWB_DEBUGCAT["SCRIPT"] or 0)>=2 then
			DP("SCRIPT", 2, "Firing ",(o[0].name or (o[0].xmlfile..":"..o[0].xmlfilelinenum))," <",oScript[0].xmltag,">")
		end

		tinsert(WOWB_PrevScripts, {
			this = this,
			self = self,
			event = event,
			arg1=arg1, arg2=arg2, arg3=arg3, arg4=arg4, arg5=arg5, arg6=arg6, arg7=arg7, arg8=arg8, arg9=arg9
		})

		this = o
		self = o

		local args = (params.args or {})
		arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9 = unpack(args)
		local funcargs = {}
		tinsert(funcargs, o)
		for k,v in ipairs(args) do
			tinsert(funcargs, v)
		end

		if o ~= oScript then
			extraline=o[0].xmlfile..":"..o[0].xmlfilelinenum..":"..o[0].xmltag.." "..(o[0].name or "")
		end

		local bPrevSuppressErrors = WOWB_SuppressingErrors
		if params.suppresserrors then
			WOWB_SuppressingErrors = true
		end

		if WOWB_SuppressingErrors then
			if not WOWB_Pcall(oScript[0].chunk, WOWB_ErrHandler_JustLog, unpack(args)) then
				WOWB_NumSuppressedErrors = WOWB_NumSuppressedErrors + 1
			end
		else
			local b,msg = WOWB_Pcall(oScript[0].chunk, nil, unpack(args))
			if not b then
				print("SCRIPT ERROR: "..msg)
			end
		end

		WOWB_SuppressingErrors = bPrevSuppressErrors

		local p = WOWB_PrevScripts[getn(WOWB_PrevScripts)]
		this = p.this
		self = p.self
		event = p.event
		arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9 =
			p.arg1, p.arg2, p.arg3, p.arg4, p.arg5, p.arg6, p.arg7, p.arg8, p.arg9

		tremove(WOWB_PrevScripts)
	end

end


-----------------------------------------------------------
-- function WOWB_FireOnUpdate()
--
-- Execute <OnUpdate> in all visible frames
-- (return number of frames that received it)
--
--

local LastOnUpdate = GetTime()
local function FireOnUpdate_Fly(o)
	if not o:IsVisible() then return 0 end
	local n=0
	if o[0].Scripts and o[0].Scripts[0].OnUpdate then
		n=1
		WOWB_DoScript({this=o, scriptnode=o[0].Scripts[0].OnUpdate, args={GetTime()-LastOnUpdate}})
	end
	for c,_ in ipairs(o[0].children) do
		n = n + FireOnUpdate_Fly(c)
	end
	return n
end

function WOWB_FireOnUpdate()
	local n = FireOnUpdate_Fly(WOWB_RootFrame)
	LastOnUpdate = GetTime()
	return n
end



-----------------------------------------------------------
-- function WOWB_ShowFirstFrames()
--
-- Loop through all base frames that should be shown and
-- call their :Show() member.  They will recursively call
-- their own children.
--

function WOWB_ShowFirstFrames()
	WOWB_RootFrame[0].shown = true
	for k,v in pairs(WOWB_RootFrame[0].children) do
		if k:IsShown() then
			k:Show()
		end
	end
end




-----------------------------------------------------------
-- function WOWB_QueueDPC(func, ...)
--
-- Register a "Deferred Procedure Call", i.e. something that you
-- want called very soon, but not immediately.
--
-- The DPC queue gets processed before WoWBench returns to the
-- command prompt.
--

WOWB_DPCQueue = {}

function WOWB_QueueDPC(func, ...)
	tinsert(WOWB_DPCQueue, {
		func = func,
		args = {...}
	})
end


-----------------------------------------------------------
-- function WOWB_PumpDPCs()
--
-- Run queued DPCs. Gets called from WOWB_Main.
--

function WOWB_PumpDPCs()
	local i=getn(WOWB_DPCQueue)*5		-- Allow up to 5 times the number of registered DPCs to run (for DPCs resulting in more DPCs)
	i = max(20, i)
	local j=0
	while getn(WOWB_DPCQueue)>0 do
		j=j+1
		if j>=i then
			error("WOWB_PumpDPCs ran more than "..i.." DPCs. Something may be re-registering DPCs infinitely. Examine WOWB_PumpDPCs")
		end
		local dpc = WOWB_DPCQueue[1]
		tremove(WOWB_DPCQueue, 1)
		dpc.func(unpack(dpc.args))
	end
end



---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
--
-- Let's make stuff happen!
--



local function _message(msg)
	print("message(): " ..msg)
end

local function header(str)
	str = "-------- ["..str.."] "
	str = str .. string.rep("-", 79-string.len(str))
	print("\n"..str)
end


---------------------------------------------------------------------
-- function WOWB_Main()
--
-- Gets executed at the end of this script inside a custom error handler
--
--

function WOWB_Main()

	WOWB_PHASE="LOAD"

	---------------------------------------------------------------------
	-- Append .toc files of our AddOns to _TOCFILES list

	---------------------------------------------------------------------
	-- Run through .toc file names, extract their paths, and get
	-- relative file ages of files in their directories (we want to
	-- know this to determine if we need to reparse .xml into .xml.lua)

	for _,tocfile in pairs(_TOCFILES) do
		WOWB_CacheFileAges(WOWB_GetFileDir(tocfile))
	end

	---------------------------------------------------------------------
	-- Parse all registered .toc files in _TOCFILES

	header("Parsing .TOC files")

	for k,tocfile in pairs(_TOCFILES) do
		WOWB_ParseTocFile(tocfile)
	end

	-- load the base
	if (not _SYNTAXONLY) then
		WOWB_LoadAddon("FrameXML", _FRAMEXML_TOC, true)
	end

	header("Loading User Addons and firing ADDON_LOADED for each addon")

	-- load the config addons as user addons
	--  this will populate _ADDONS and fire ADDON_LOADED
	--FIXME: add option to load *all* of the wow addons in AddOns, as the wow addon loader would
	--FIXME: compile the list of user addons seperately before loading
	for i,v in ipairs(_CFG_ADDONS) do
		WOWB_LoadAddon(v, nil, _SYNTAXONLY, true)
	end

	---------------------------------------------------------------------
	-- Pull in saved variables and fire ADDON_LOADED

	if not _SYNTAXONLY then
		header("Loading saved variables for account " .. _ACCOUNT .. "")

		dofile(_WOWDIR .. "/WTF/Account/" .. _ACCOUNT .. "/SavedVariables.lua")

		-- set flag that we have now loaded all "addon" "system" and "user" variables
		--   even though for now we are doing nothing but loading user ones
		_VARS_LOADED = true
	end

	---------------------------------------------------------------------
	-- Fire startup events

	if not _SYNTAXONLY then

		WOWB_PHASE = "STARTEVENTS"

		-- the event part shoudl be done here as real wow will fire this late
		header("Firing VARIABLES_LOADED")
		WOWB_FireEvent("VARIABLES_LOADED")

		header("Startup events, showing frames, first OnUpdates, etc")

		print("Firing SPELLS_CHANGED...")
		WOWB_FireEvent("SPELLS_CHANGED")

		print("Showing frames initially shown...")
		WOWB_ShowFirstFrames()

		print("Firing PLAYER_LOGIN...")
		WOWB_FireEvent("PLAYER_LOGIN")

		WOWB_FireEvent("UPDATE_CHAT_WINDOWS")  -- Tell chat windows to "read their configuration"

		print("Firing MEETINGSTONE_CHANGED...")
		WOWB_FireEvent("MEETINGSTONE_CHANGED")

		print("Firing PLAYER_ENTERING_WORLD...")
		WOWB_FireEvent("PLAYER_ENTERING_WORLD")
		print("")

		WOWB_FireOnUpdate()		-- Give all frames their first <OnUpdate>
		WOWB_PumpDPCs()
		WOWB_FireOnUpdate()		-- .. and again
		WOWB_PumpDPCs()
		WOWB_FireOnUpdate()		-- .. and again
		WOWB_PumpDPCs()
	end

	---------------------------------------------------------------------
	-- We're live!

	header("I am alive!")

	WOWB_PHASE = "LIVE"

	if WOWB_SessCtl.NextSes then
		return -- This a newly started session. The parent session is already running a command handler. Just bail.
	end

	print("Use \"help\" for help")

	while true do
		local prompt = "\ncmd> "
		local nSes = WOWB_SessCtl.NextSes or 1
		WOWB_SessCtl.NextSes = nil
		local ses = WOWB_SessCtl[nSes]
		if table.getn(WOWB_SessCtl)>1 then
			prompt = "\n["..nSes.."] "..ses._CHARACTER.."> "
		end
		ses.WOWB_CommandLine{prompt=prompt, infiles=_INFILES, ses.WOWB_Cmds, ses.WOWB_WorldCmds}
		if not WOWB_SessCtl.NextSes then
			break
		end
	end

	print("\n[Exiting WoWBench v"..WOWB_VER.."]")

end


-----------------------------------------------------------
-- Finally: Run WOWB_Main encapsulated in our cool error handler

WOWB_Debug_RegisterGlobalFunctionNames()

local b,err = WOWB_Pcall(WOWB_Main)
if not b then
	if not string.find(err, "JUSTBAILPLEASE") then
		print("ERROR: " .. err)
	end
	return 1
end

return 0
