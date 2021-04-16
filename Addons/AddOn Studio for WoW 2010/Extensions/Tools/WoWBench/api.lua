
--
-- api.lua  - Copyright (c) 2006, the WoWBench developer community. All rights reserved. See LICENSE.TXT.
--
-- WoW API emulation
--
-- Most of it is quick-and-dirty. Flesh out as needed.
--

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- Constants
--

-- Pulled from http://wowprogramming.com/docs/cvars
local WOWB_CVarDefaults={
	AllowMultisampleFBO = "1",
	BlockTrades = "0",
	ChatAmbienceVolume = "0.3",
	ChatMusicVolume = "0.3",
	ChatSoundVolume = "0.4",
	CombatDamage = "1",
	CombatHealing = "1",
	CombatLogPeriodicSpells = "1",
	DesktopGamma = "0",
	DestructibleHealAnimSpeed = "4.0",
	DestructibleHealEffect = "3",
	ERRORS = "0",
	EnableMicrophone = "1",
	EnableVoiceChat = "0",
	ErrorFileLog = "0",
	ErrorFilter = "all",
	ErrorLevelMax = "3",
	ErrorLevelMin = "2",
	Errors = "0",
	FFXDeath = "1",
	FFXGlow = "1",
	FixVBOBug = "-1",
	FootstepSounds = "1",
	GLFaster = "1",
	Gamma = "1.0",
	InboundChatVolume = "1.0",
	Joystick = "0",
	MapWaterSounds = "1",
	MaxLights = "4",
	MovieRecordingAutoCompress = "1",
	MovieRecordingCompression = "1635148593",
	MovieRecordingCursor = "0",
	MovieRecordingForceEnable = "0",
	MovieRecordingFramerate = "29.97",
	MovieRecordingGUI = "1",
	MovieRecordingIcon = "1",
	MovieRecordingPath = "",
	MovieRecordingQuality = "2",
	MovieRecordingRecover = "1",
	MovieRecordingSound = "1",
	MovieRecordingWidth = "640",
	NvidiaViewportFix = "-1",
	ObjectSelectionCircle = "1",
	OutboundChatVolume = "1.0",
	PetMeleeDamage = "1",
	PetSpellDamage = "1",
	PushToTalkButton = "`",
	PushToTalkSound = "0",
	ShowAllSpellRanks = "1",
	ShowClassColorInNameplate = "0",
	ShowErrors = "1",
	SkyCloudLOD = "0",
	SoundMemoryCache = "4",
	Sound_AmbienceVolume = "0.6",
	Sound_DSPBufferSize = "0",
	Sound_EnableAllSound = "1",
	Sound_EnableAmbience = "1",
	Sound_EnableArmorFoleySoundForOthers = "1",
	Sound_EnableArmorFoleySoundForSelf = "1",
	Sound_EnableDSPEffects = "1",
	Sound_EnableEmoteSounds = "1",
	Sound_EnableErrorSpeech = "1",
	Sound_EnableHardware = "0",
	Sound_EnableMusic = "1",
	Sound_EnableReverb = "0",
	Sound_EnableSFX = "1",
	Sound_EnableSoftwareHRTF = "0",
	Sound_EnableSoundWhenGameIsInBG = "1",
	Sound_ListenerAtCharacter = "1",
	Sound_MasterVolume = "1.0",
	Sound_MaxCacheSizeInBytes = "5242880",
	Sound_MaxCacheableSizeInBytes = "524288",
	Sound_MusicVolume = "0.4",
	Sound_NumChannels = "32",
	Sound_OutputDriverIndex = "0",
	Sound_OutputDriverName = "Primary Sound Driver",
	Sound_OutputQuality = "1",
	Sound_SFXVolume = "1.0",
	Sound_VoiceChatInputDriverIndex = "0",
	Sound_VoiceChatInputDriverName = "Primary Sound Capture Driver",
	Sound_VoiceChatOutputDriverIndex = "0",
	Sound_VoiceChatOutputDriverName = "Primary Sound Driver",
	Sound_ZoneMusicNoDelay = "0",
	Specular = "0",
	SplineOpt = "1",
	StartTalkingDelay = "0.0",
	StartTalkingTime = "1.0",
	StopTalkingDelay = "0.0",
	StopTalkingTime = "2.0",
	UIFaster = "3",
	UberTooltips = "1",
	UnitNameCompanionName = "1",
	UnitNameEnemyCreationName = "1",
	UnitNameEnemyPetName = "1",
	UnitNameEnemyPlayerName = "1",
	UnitNameFriendlyCreationName = "1",
	UnitNameFriendlyPetName = "1",
	UnitNameFriendlyPlayerName = "1",
	UnitNameNPC = "0",
	UnitNameOwn = "0",
	UnitNamePlayerGuild = "1",
	UnitNamePlayerPVPTitle = "1",
	UsePboSubImage = "0",
	UsePboSubImageZeroOffset = "1",
	VehicleAngle = "0",
	VehiclePower = "0",
	VoiceActivationSensitivity = "0.4",
	VoiceChatMode = "0",
	VoiceChatSelfMute = "0",
	accountList = "",
	accountName = "",
	alwaysShowActionBars = "0",
	assistAttack = "0",
	asyncHandlerTimeout = "100",
	asyncThreadSleep = "0",
	auctionDisplayOnCharacter = "0",
	autoClearAFK = "1",
	autoDismount = "1",
	autoDismountFlying = "0",
	autoInteract = "0",
	autoLootDefault = "0",
	autoQuestWatch = "1",
	autoRangedCombat = "1",
	autoSelfCast = "0",
	autoStand = "1",
	autoUnshift = "1",
	autojoinBGVoice = "0",
	autojoinPartyVoice = "1",
	baseMip = "0",
	blockTrades = "0",
	bspcache = "1",
	buffDurations = "1",
	calendarShowBattlegrounds = "0",
	calendarShowDarkmoon = "1",
	calendarShowLockouts = "1",
	calendarShowResets = "0",
	calendarShowWeeklyHolidays = "1",
	cameraBobbing = "0",
	cameraBobbingSmoothSpeed = "0.8",
	cameraCustomViewSmoothing = "0",
	cameraDistanceMax = "15.0",
	cameraDistanceMaxFactor = "1.0",
	cameraDistanceMoveSpeed = "8.33",
	cameraDistanceSmoothSpeed = "8.33",
	cameraDive = "1",
	cameraFlyingMountHeightSmoothSpeed = "2.0",
	cameraFoVSmoothSpeed = "0.5",
	cameraGroundSmoothSpeed = "7.5",
	cameraHeightIgnoreStandState = "0",
	cameraHeightSmoothSpeed = "1.2",
	cameraPitchMoveSpeed = "90",
	cameraPitchSmoothMax = "30.0",
	cameraPitchSmoothMin = "0.0",
	cameraPitchSmoothSpeed = "45",
	cameraPivot = "1",
	cameraPivotDXMax = "0.05",
	cameraPivotDYMin = "0.00",
	cameraSavedDistance = "5.55",
	cameraSavedPitch = "10.0",
	cameraSavedVehicleDistance = "-1.0",
	cameraSmooth = "1",
	cameraSmoothPitch = "0",
	cameraSmoothStyle = "1",
	cameraSmoothTimeMax = "2.0",
	cameraSmoothTimeMin = "0.1",
	cameraSmoothTrackingStyle = "1",
	cameraSmoothYaw = "1",
	cameraSubmergeFinalPitch = "5.0",
	cameraSubmergePitch = "18.0",
	cameraSurfaceFinalPitch = "5.0",
	cameraSurfacePitch = "0.0",
	cameraTargetSmoothSpeed = "90",
	cameraTerrainTilt = "0",
	cameraTerrainTiltTimeMax = "10.0",
	cameraTerrainTiltTimeMin = "3.0",
	cameraView = "1",
	cameraViewBlendStyle = "1",
	cameraWaterCollision = "1",
	cameraYawMoveSpeed = "180",
	cameraYawSmoothMax = "0.0",
	cameraYawSmoothMin = "0.0",
	cameraYawSmoothSpeed = "180",
	camerasmooth = "1",
	chatBubbles = "1",
	chatBubblesParty = "1",
	chatLocked = "0",
	checkAddonVersion = "1",
	combatLogOn = "1",
	combatLogRetentionTime = "300",
	combatTextFloatMode = "1",
	coresDetected = "$default",
	dbCompress = "-1",
	decorateAccountName = "0",
	deselectOnClick = "1",
	displayFreeBagSlots = "0",
	displayWorldPVPObjectives = "1",
	enableCombatText = "0",
	enablePVPNotifyAFK = "1",
	environmentDetail = "1.0",
	errors = "0",
	expansionMovie = "1",
	extShadowQuality = "0",
	farClipOverride = "0",
	farclip = "350",
	fctAllSpellMechanics = "0",
	fctAuras = "0",
	fctCombatState = "0",
	fctComboPoints = "0",
	fctDamageReduction = "0",
	fctDodgeParryMiss = "0",
	fctEnergyGains = "0",
	fctFriendlyHealers = "0",
	fctHonorGains = "0",
	fctLowManaHealth = "0",
	fctPeriodicEnergyGains = "0",
	fctReactives = "0",
	fctRepChanges = "0",
	fctSpellMechanics = "0",
	fctSpellMechanicsOther = "0",
	ffxDeath = "1",
	ffxGlow = "1",
	ffxNetherWorld = "1",
	ffxRectangle = "1",
	ffxSpecial = "1",
	fixedFunction = "0",
	footstepBias = "0.125",
	forceEnglishNames = "0",
	gameTip = "0",
	gamma = "1.0",
	groundEffectDensity = "16",
	groundEffectDist = "70.0",
	guildMemberNotify = "0",
	guildRecruitmentChannel = "1",
	guildShowOffline = "1",
	gxApi = "direct3d",
	gxAspect = "1",
	gxColorBits = "16",
	gxCursor = "1",
	gxDepthBits = "16",
	gxFixLag = "1",
	gxMaximize = "0",
	gxMultisample = "1",
	gxMultisampleQuality = "0.0",
	gxOverride = "",
	gxRefresh = "75",
	gxResolution = "640x480",
	gxTripleBuffer = "0",
	gxVSync = "1",
	gxWindow = "0",
	gxoverride = "",
	heapAllocTracking = "1",
	hidePartyInRaid = "0",
	horizonfarclip = "2112",
	hwDetect = "1",
	hwPCF = "1",
	hwdetect = "1",
	iTunesRemoteFeedback = "1",
	iTunesTrackDisplay = "0",
	lastCharacterIndex = "0",
	lfgAutoFill = "0",
	lfgAutoJoin = "0",
	locale = "en_US",
	lockActionBars = "0",
	lootUnderMouse = "0",
	mapObjLightLOD = "0",
	mapShadows = "1",
	maxFPS = "0",
	maxFPSBk = "30",
	minimapInsideZoom = "3",
	minimapPortalMax = "99",
	minimapZoom = "3",
	mouseInvertPitch = "0",
	mouseInvertYaw = "0",
	mouseSpeed = "0.8",
	movie = "1",
	movieSubtitle = "0",
	movierecordingrecover = "1",
	nameplateShowEnemies = "0",
	nameplateShowFriends = "0",
	nearclip = "0.2",
	objectFade = "1",
	objectFadeZFill = "0",
	occlusion = "1",
	particleDensity = "1.0",
	partyBackgroundOpacity = "0.5",
	partyStatusText = "0",
	pathDistTol = "1",
	petStatusText = "0",
	playerStatLeftDropdown = "",
	playerStatRightDropdown = "",
	playerStatusText = "0",
	playerTextureLevels = "8",
	portal = "public-test",
	predictedHealth = "1",
	predictedPower = "1",
	preferredFullscreenMode = "0",
	processAffinityMask = "0",
	profanityFilter = "1",
	questFadingDisable = "0",
	readContest = "0",
	readEULA = "0",
	readScanning = "0",
	readTOS = "0",
	readTerminationWithoutNotice = "0",
	realmList = "us.logon.worldofwarcraft.com:3724",
	realmListbn = "",
	realmName = "",
	removeChatDelay = "0",
	rotateMinimap = "0",
	screenEdgeFlash = "1",
	screenshotFormat = "jpeg",
	screenshotQuality = "3",
	scriptErrors = "0",
	scriptProfile = "0",
	secureAbilityToggle = "1",
	serverAlert = "SERVER_ALERT_URL",
	serviceTypeFilter = "3",
	shadowBias = "0.4",
	shadowLOD = "1",
	shadowLevel = "1",
	showBattlefieldMinimap = "0",
	showCastableBuffs = "0",
	showChatIcons = "0",
	showClock = "1",
	showDispelDebuffs = "0",
	showGameTips = "1",
	showKeyring = "0",
	showLootSpam = "1",
	showNewbieTips = "1",
	showPartyBackground = "0",
	showPartyPets = "1",
	showQuestBag = "0",
	showRaidRange = "0",
	showTargetCastbar = "0",
	showTargetOfTarget = "0",
	showTokenFrame = "0",
	showTokenFrameHonor = "0",
	showToolsUI = "-1",
	showVKeyCastbar = "0",
	showfootprintparticles = "1",
	showfootprints = "1",
	spamFilter = "1",
	specular = "0",
	spellEffectLevel = "9",
	statusTextPercentage = "0",
	stopAutoAttackOnTargetChange = "0",
	synchronizeBindings = "1",
	synchronizeConfig = "1",
	synchronizeMacros = "1",
	synchronizeSettings = "1",
	taintLog = "0",
	talentFrameShown = "0",
	targetOfTargetMode = "5",
	targetStatusText = "0",
	terrainAlphaBitDepth = "8",
	texLodBias = "0.0",
	textureFilteringMode = "1",
	threatShowNumeric = "0",
	threatWarning = "1",
	threatWorldText = "1",
	timeMgrAlarmEnabled = "0",
	timeMgrAlarmMessage = "",
	timeMgrAlarmTime = "0",
	timeMgrUseLocalTime = "0",
	timeMgrUseMilitaryTime = "1",
	uiScale = "1.0",
	unitHighlights = "1",
	useDesktopMouseSpeed = "0",
	useSimpleChat = "0",
	useUiScale = "0",
	useWeatherShaders = "1",
	videoOptionsVersion = "0",
	violenceLevel = "2",
	waterLOD = "0",
	weatherDensity = "2",
	widescreen = "1",
	windowResizeLock = "0",
	worldPoolUsage = "Dynamic",
	xpBarText = "0",
};

local _CLASSUSESRELICS = { ["DRUID"]=true, ["PALADIN"]=true, ["SHAMAN"]=true }

local _INVENTORYSLOTS = {
	"HeadSlot","NeckSlot","ShoulderSlot","BackSlot","ChestSlot","ShirtSlot","TabardSlot","WristSlot",
	"HandsSlot","WaistSlot","LegsSlot","FeetSlot","Finger0Slot","Finger1Slot",
	"Trinket0Slot","Trinket1Slot","MainHandSlot","SecondaryHandSlot",
	"RangedSlot","AmmoSlot","Bag0Slot","Bag1Slot","Bag2Slot","Bag3Slot"
}

local _WHOTOUI = 0; -- not constant



local _CHATWINDOWINFO = {	-- This table is compatible with the return from GetChatWindowInfo(). Do not alter the format.
	-- 1		     2			3  4  5    6    7      8       9
	-- name,  fontSize,			r, g, b,   a,   shown, locked, docked
	{ "General",	12,			1, 1, 1,   0.9, 1,     1,      1 },
	{ "",			12,			1, 1, 1,   0.9, 0,     1,      1 },
	{ "",   		12,			1, 1, 1,   0.9, 0,     1,      1 },
	{ "",			12,			1, 1, 1,   0.9, 0,     1,      1 },
	{ "",			12,			1, 1, 1,   0.9, 0,     1,      1 },
	{ "",			12,			1, 1, 1,   0.9, 0,     1,      1 },
	{ "",			12,			1, 1, 1,   0.9, 0,     1,      1 },
}

local _CHATWINDOWMESSAGES = {
	{ "SYSTEM", "SAY", "YELL", "WHISPER", "PARTY", "GUILD", "CREATURE", "CHANNEL", "SKILL", "LOOT" },
	{ },	{ },	{ },
	{ },	{ },	{ },
}


-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- WoWified LUA Functions
--

-- time() [FULL] --
--time=os.time;
---- date() [FULL] --
--date=os.date;


-- abs() [FULL] --
--abs = math.abs;
-- acos() [FULL] --
function acos(v) return math.acos(v)/math.pi/2*360; end;
-- asin() [FULL] --
function asin(v) return math.asin(v)/math.pi/2*360; end;
-- atan() [FULL] --
function atan(v) return math.atan(v)/math.pi/2*360; end;
-- atan2() [FULL] --
function atan2(v1,v2) return math.atan2(v1,v2)/math.pi/2*360; end;
-- ceil() [FULL] --
--ceil = math.ceil;
-- cos() [FULL] --
function cos(deg) return math.cos(deg/360*math.pi*2); end
-- deg() [FULL] --
--deg = math.deg;
-- exp() [FULL] --
--exp = math.exp;
---- floor() [FULL] --
--floor = math.floor;
---- log() [FULL] --
--log = math.log;
---- log10() [FULL] --
--log10 = math.log10;
---- max() [FULL] --
--max = math.max;
---- min() [FULL] --
--min = math.min;
-- mod() [FULL] --
mod = mod or assert(math.mod);
-- pow() [FULL] --
pow = math.pow;
-- rad() [FULL] --
--rad = math.rad;
-- sin() [FULL] --
function sin(deg) return math.sin(deg/360*math.pi*2); end
-- sqrt() [FULL] --
--sqrt = math.sqrt;
-- tan() [FULL] --
function tan(deg) return math.tan(deg/360*math.pi*2); end
-- frexp() [FULL] --
--frexp = math.frexp;
---- ldexp() [FULL] --
--ldexp = math.ldexp;
-- random() [FULL] --
--random = math.random;
-- randomseed() [FULL] --
--randomseed = math.randomseed;
-- strmatch() [FULL] --
--strmatch = string.match;


-- These are just to make http://www.wowwiki.com/WoWBench/Progress report correct stats:
-- assert() [FULL] --
-- error() [FULL] --
-- foreach() [FULL] --
-- foreachi() [FULL] --
-- getfenv() [FULL] --
-- getmetatable() [FULL] --
-- getn() [FULL] --
-- gsub() [FULL] --
-- ipairs() [FULL] --
-- next() [FULL] --
-- pairs() [FULL] --
-- pcall() [FULL] --
-- __pow() [FULL] --
-- rawequal() [FULL] --
-- rawget() [FULL] --
-- rawset() [FULL] --
-- setfenv() [FULL] --
-- setmetatable() [FULL] --
-- sort() [FULL] --
-- strbyte() [FULL] --
-- strchar() [FULL] --
-- strfind() [FULL] --
-- strlen() [FULL] --
-- strlower() [FULL] --
-- strrep() [FULL] --
-- strreplace() [FULL] --
-- strsub() [FULL] --
-- strupper () [FULL] --
-- tinsert() [FULL] --
-- tonumber() [FULL] --
-- tostring() [FULL] --
-- tremove() [FULL] --
-- type() [FULL] --
-- unpack() [FULL] --
-- xpcall() [FULL] --


-- gfind() [FULL] --
--gmatch = string.gmatch;

local WOWB_Orig_Format = string.format;

-- string.format(formatstring, ...) [HALF] --
-- FIXME: this does *not* properly handle some special cases.
--function string.format(formatstring, ...)
--	-- WoW still allows and uses the deprecated argument selection mechanism, which is no longer available in Lua 5.
--	local curarg = 1;
--	local newargs = {};
--	local numnewargs=0
--	for formatspec in string.gmatch(formatstring, "%%[^cdEefgGiouXxqs]*[cdEefgGiouXxqs]") do
--		local _, _, num = string.find(formatspec, "^%%(%d)%$")
--		numnewargs=numnewargs+1
--		if (num) then
--			-- This is an argument selector
--			newargs[numnewargs]=select(num,...)
--		else
--			newargs[numnewargs]=select(curarg,...)
--		end
--		curarg = curarg + 1; -- CHECKME should selected args increment curarg?
--	end
--	local newformatstring = string.gsub(formatstring, "%%%d%$", "%");
--	return WOWB_Orig_Format(newformatstring, unpack(newargs))
--end

--format = string.format;

-- strtrim(str[, chars]) [FULL]
--function string.trim(str, chars)
--		chars = chars or " \t\r\n";

--		chars = chars:gsub("[(^%w)]", "%%%1");
--		local trimchars = { string.gmatch(chars, ".") };
--		chars = "[" .. chars .. "]";
--		str = str:gsub("^"..chars, "");
--		str = str:gsub(chars.."$", "");
--		return str;
--end


--strtrim = string.trim;


--PI = 3.14159 -- Should this be defined elsewhere?

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- Internal WoWBench Functions
--


local bChatUpdatedDPCQueued = false;

local function chatupdateddpc()
	bChatUpdatedDPCQueued = false;
	WOWB_FireEvent("UPDATE_CHAT_WINDOWS");
end

local function chatupdated()
	if(not bChatUpdatedDPCQueued) then
		bChatUpdatedDPCQueued = true;
		WOWB_QueueDPC(chatupdateddpc);
	end
end


--local function _getaddonindexbyname(name)
--	for k,v in ipairs(_CFG_ADDONS) do
--		if(string.lower(v)==string.lower(name)) then
--			return k;
--		end
--	end
--end


function WOWB_OriginateChatMessage(srcPlayerName,  msg,system,language,channel)
	if(not system) then system="SAY"; end
	if(not language) then language = GetDefaultLanguage("player"); end
	if(not channel) then channel = ""; end
	if(system=="WHISPER") then
		-- Whisper message, some special handling needed...
		local bFound = false;
		for v,_ in pairs(World[0].children) do
			if(v:IsObjectType("Player") and string.lower(v:GetName())==string.lower(channel) and v[0].faction==Me[0].faction) then
				if(v[0].sessionIndex) then
					local ses=WOWB_SessCtl[v[0].sessionIndex];
					-- print("Queued in session "..v[0].sessionIndex);
					ses.WOWB_QueueDPC(ses.WOWB_FireEvent, "CHAT_MSG_WHISPER", msg, srcPlayerName, language, "", "", "", 0, 0, "", 0, 0);
				end
				if(srcPlayerName == _CHARACTER) then
					WOWB_QueueDPC(WOWB_FireEvent, "CHAT_MSG_WHISPER_INFORM", msg, channel, language, "", "", "", 0, 0, "", 0, 0);
				else
					print("Emulated whisper from '" .. srcPlayerName .. "' to '" .. channel .."'");
				end
				bFound = true;
				break;
			end
		end
		if(not bFound) then
			if(srcPlayerName == _CHARACTER) then
				WOWB_QueueDPC(WOWB_FireEvent, "CHAT_MSG_SYSTEM", format(ERR_CHAT_PLAYER_NOT_FOUND_S,channel), "", "", "", "", "", 0, 0, "", 0, 0);
			else
				print("Couldn't send whisper from '" .. srcPlayerName .. "': could not locate player '" .. channel .."'");
			end
		end
	else
		-- Other message. Just dump it in all sessions. (Assume everyone is in /say range etc..)
		for v,_ in pairs(World[0].children) do
			if(v:IsObjectType("Player") and v[0].sessionIndex) then
				local ses=WOWB_SessCtl[v[0].sessionIndex];
				ses.WOWB_QueueDPC(ses.WOWB_FireEvent, "CHAT_MSG_"..system, msg, srcPlayerName, language, channel, "", "", 0, 0, channel, 0, 0);
			end
		end
	end
end

-----------------------------------------------------------
-- function WOWB_GetUnit(who)
--
-- Resolve e.g. "player", "mouseover", "party1" etc to a unit object
--

function WOWB_GetUnit(who)
	if(who=="player") then return Me; end
	if(who=="mouseover") then
		if(WOWB_CurrentMouseTarget and WOWB_CurrentMouseTarget:IsObjectType("Unit")) then
			return WOWB_CurrentMouseTarget;
		end
		return nil;
	end
	if(who=="target") then return _TARGET; end
	local _,_,n = string.find(who,"^party([1-4])$");
	n=tonumber(n);
	if(n and _PARTY[n]) then return WOWB_AllObjectsByName[strlower(_PARTY[n])]; end
end





-----------------------------------------------------------
-- function WOWB_CreateObject(strType, strName, oParent, strInherits)
--
--

function WOWB_CreateObject(strType, strName, oParent, strInherits)
	local oType = WBClass[strType]

	if not oType then
		local n = strlower(strType)
		for k,v in pairs(WBClass) do
			if n==strlower(k) then
				strType=k
				oType=v
			end
		end
	end
	if(not oType) then error("No such object type: "..strType); end

	local o = {
		[0] = {
			name=strName,
			xmltag=strType,
			xmlfile="",
			xmlfilelinenum=-1,
			children = {},
			parentobj = oParent,
		}
	}

	if(oParent) then
		oParent[0].children[o] = true;
	end

	WOWB_InheritType(o, oType);

	if(strInherits) then
		WOWB_ParseXML_InheritObj(WOWB_XMLFileParserContext:None(), o, strInherits, false);

		function doOnLoads(o)
			if(o[0].Frames) then
				for _,oChild in ipairs(o[0].Frames[0]) do
					doOnLoads(oChild);
				end
			end
						if (o[0].ScrollChild) then
				for _,oChild in ipairs(o[0].Frames[0]) do
					doOnLoads(oChild);
				end
						end
			if(o[0].Scripts and o[0].Scripts[0].OnLoad) then
				WOWB_DoScript({this=o, scriptnode=o[0].Scripts[0].OnLoad});
			end
		end
		doOnLoads(o);

	end

	WOWB_RunObjConstructors(o, oType);

	return o;
end





-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- WoW API Functions
--
-- [FULL] - Full Implementation
-- [HALF] - Partial Implementation
-- [DUD]  - Placeholder
--


-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- WoW Achievement API
--
-----------------------------------------------------------------------
dofile('api_achievement.lua')
--
-----------------------------------------------------------------------
-----------------------------------------------------------------------

-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- WoW Action API
--
-----------------------------------------------------------------------
dofile('api_action.lua')			--	action API not done yet
--
-----------------------------------------------------------------------
-----------------------------------------------------------------------





-- AddChatWindowMessages(n, ...) [FULL]
function AddChatWindowMessages(n, ...)
	local t = {}
	for _,chattype in ipairs(_CHATWINDOWMESSAGES[n]) do
		t[chattype]=true;
	end
	for i=1,select("#",...) do
		t[select(i,...)]=true;
	end
	_CHATWINDOWMESSAGES[n] = {}
	for chattype,_ in pairs(t) do
		tinsert(_CHATWINDOWMESSAGES, chattype);
	end
end

-- ArenaTeamRoster(team) [DUD] --
function ArenaTeamRoster(team)
		-- Ideally would kick off a team roster update event.
		return nil;
end

-- CalculateAuctionDeposit(minutes) [DUD]
function CalculateAuctionDeposit(minutes)
		return 20;
end
-- CalendarCanSendInvite() [DUD]
function CalendarCanSendInvite()
		return 1;
end
-- CalendarDefaultGuildFilter() [HALF]
function CalendarDefaultGuildFilter()
		return 1, 80;
end
-- CalendarEventGetRepeatOptions() [DUD]
function CalendarEventGetRepeatOptions()
		return "hourly"
end
-- CalendarEventGetTypes() [DUD] --
function CalendarEventGetTypes()
		return "Dungeon", "Raid";
end
-- CalendarGetDate() [FULL] --
function CalendarGetDate()
		local curdate = os.date("*t");
		return curdate.wday, curdate.month, curdate.day, curdate.year;
end

-- CalendarGetNumPendingInvites() [DUD] --
function CalendarGetNumPendingInvites()
		return 0;
end

-- CanEditMOTD() [DUD] --
function CanEditMOTD()
	return nil;
end
-- CanGuildInvite() [DUD] --
function CanGuildInvite()
	return nil;
end
-- CanHearthAndRessurectFromArea() [DUD] --
function CanHearthAndResurrectFromArea()
		return true;
end
-- CanJoinBattlefieldAsGroup() [DUD] --
function CanJoinBattlefieldAsGroup()
	return false;
end

-- CanShowResetInstances() [DUD] --
function CanShowResetInstances()
	return false;
end
-- CheckReadyCheckTime() [DUD] --
function CheckReadyCheckTime()
end -- have no idea what this does
-- ClearLFMAutofill() [DUD] --
function ClearLFMAutofill()
end
-- CloseAuctionHouse() [DUD] --
function CloseAuctionHouse()
end
-- CombatLogAddFilter() [DUD] --
function CombatLogAddFilter()
end
-- CombatLogGetCurrentEntry(ignoreFilter) [DUD] --
function CombatLogGetCurrentEntry(ignoreFilter)
		return nil
end
-- CombatLogGetNumEntries(ignoreFilter) [DUD] --
function CombatLogGetNumEntries(ignoreFilter)
		return 0;
end
-- CombatLog_Object_IsA(flags, what) [HALF] --
function CombatLog_Object_IsA(flags, what)
		-- what's special here?
		if (bit.band(flags, what)) then
				return 1;
		else
				return 0;
		end
end
-- CombatLogSetCurrentEntry(index [,ignoreFilter]) [DUD] --
function CombatLogSetCurrentEntry(index, ignoreFilter)
end
-- CombatLogResetFilter() [DUD] --
function CombatLogResetFilter()
end
-- CreateFrame(strType, strName, oParent, strInherits) [FULL] --
function CreateFrame(strType, strName, oParent, strInherits)
	local o = WOWB_CreateObject(strType, strName, oParent, strInherits);
	o:SetParent(oParent);
	if strName and strName~="" then
		if not _G[strName] then
			_G[strName] = o
		end
		if not WOWB_AllObjectsByName[string.lower(strName)] then
			WOWB_AllObjectsByName[string.lower(strName)] = o;
		end
	end
	if((o[0].hidden or "false")=="false") then
		o:Show();
	end
	return o;
end
-- CreateMiniWorldMapArrowFrame(parent) [HALF] --
function CreateMiniWorldMapArrowFrame(parent)
		local o = CreateFrame("Frame", "PlayerMiniArrowEffectFrame", parent, nil);
		o:SetParent(parent);
		return o;
end
-- CreateWorldMapArrowFrame(onFrame) [DUD] --
function CreateWorldMapArrowFrame(onFrame)
end
-- CursorCanGoInSlot(slot) [DUD] --
function CursorCanGoInSlot(slot)
	return nil;
end
-- CursorHasMoney() [DUD] --
function CursorHasMoney()
	return false;
end
-- debuginfo() [DUD] --
function debuginfo()
end
-- debugstack() [HALF] --
function debugstack(skip,upper,lower)
	skip = skip or 1;
	upper = upper or 10;
	lower = lower or 10;
	ret = {}
	for i=2,999 do
		local n=WOWB_OffsetStackPos(i);
		if(not n) then break; end
		local tab = debug.getinfo(n);
		if(tab.name=="WOWB_DoScript" or tab.name=="WOWB_FireEvent" or tab.name=="WOWB_CommandLine") then
			break;
		end
		if(string.find(tab.source, "^[@=]")) then
			tab.source = string.sub(tab.source, 2);
		else
			tab.source = "[string "..string.gsub(tab.source, "\n.*", "").."]";
		end
		tinsert(ret, tab.source..":"..tab.currentline..": in "..tab.namewhat.." `"..(tab.name or "(unnamed)").."'");
	end
	ret = table.concat(ret, "\n");
	return gsub(ret, "/", "\\");
end
-- debugprofilestart() [FULL] --
local debugprofile_LastStartTime;
function debugprofilestart()
	debugprofile_LastStartTime = os.clock();
end
-- debugprofilestop() [FULL] --
function debugprofilestop()
	return os.clock() - debugprofile_LastStartTime;
end
-- DisableAddOn() [DUD] --
function DisableAddOn(addon)
end
-- DoEmote(strToken, strTarget) [DUD] --
function DoEmote(strToken, strTarget)
	print("DoEmote: "..strToken.." @ "..strTarget);
end;
-- DropCursorMoney() [DUD] --
function DropCursorMoney()
end
-- EnableAddOn() [DUD] --
function EnableAddOn(addon)
end
-- GetAccountExpansionLevel() [DUD] --
function GetAccountExpansionLevel()
		return 1;
end
-- gets an addon formal name for a name or index
-- doesnt need to be a loaded addon, just a known addon
function _GetAddonForNoI(addon)
	local name;
	if type(addon) == "number" then
		name = _ADDONS[addon];				-- use user addons
	elseif not (type(addon) == "nil") then
		local lcname = string.lower(addon);
		for k,v in pairs(_ADDON_PATHS) do	-- use all addons
			if(string.lower(k)==lcname) then
				name = k;
			end
		end
	end
	return name;
end

-- GetAddOnMetadata(addon, var) [FULL] --
function GetAddOnMetadata(addon, var)
	addon = _GetAddonForNoI(addon);
	if not addon or not var then
		error('Usage: GetAddOnMetadata(index or "name", "variable")')
	end

	local _f = _OpenAddOnMetadata(addon);
	local val = _GetAddOnMetadata(_f, var);
	_CloseAddOnMetadata(_f);

	return val;
end

-- GetAddOnInfo(which) [HALF] --
--FIXME: we have the ability to get the info now
--name, title, notes, enabled, loadable, reason, security = GetAddOnInfo(index or "name")
function GetAddOnInfo(which)
	local addon = _GetAddonForNoI(which);
	if not addon then return end

	local _f = _OpenAddOnMetadata(addon);
	if not _f then return end

	local title = _GetAddOnMetadata(_f, "Title");
	local notes = _GetAddOnMetadata(_f, "Notes");

	_CloseAddOnMetadata(_f);
	
	return addon, title, notes, true, true, nil, "INSECURE";
end


-- GetAddOnDependencies() [DUD] --
function GetAddOnDependencies()
	return nil;
end

-- GetAdjustedSkillPoints() [DUD] --
function GetAdjustedSkillPoints()
	return 0;
end
-- GetArenaCurrency() [DUD] --
function GetArenaCurrency()
		return 0;
end
-- GetArenaTeam(index) [DUD] --
function GetArenaTeam(index)
		return nil;
end
-- GetAttackPowerForStat(statIndex, effectiveStat) [DUD] --
function GetAttackPowerForStat(statIndex, effectiveStat)
		return 0;
end
-- GetAuctionItemClasses() [HALF] --
function GetAuctionItemClasses()
		return "Weapon","Armor","Container","Consumable","Trade Goods","Projectile","Quiver","Recipe","Reagent","Gem","Miscallaneous"
end
-- GetBattlefieldInfo() [DUD] --
function GetBattlefieldInfo()
	return "";
end
-- GetBattlefieldStatus() [DUD] --
function GetBattlefieldStatus()
	return "none";
end
-- GetBattlefieldWinner() [DUD] --
function GetBattlefieldWinner()
	return nil;
end
-- GetBidderAuctionItems([page]) [DUD] --
function GetBidderAuctionItems(page)
		return nil;
end
-- GetBindingKey(strCommand) [DUD] --
function GetBindingKey(strCommand)
	return nil;
end

-- GetBuildInfo() [FULL] --
function GetBuildInfo()
	--version, build, date, tocversion = GetBuildInfo()
	--better way?????
	--default returning "3.0.3","9183","November 1 2008","30000"
	return "3.0.3","9183","November 1 2008","30000";
end
-- GetChannelDisplayInfo(i) [DUD] --
function GetChannelDisplayInfo(i)
	  return "group", 1, 1;
end
-- GetChannelList() [DUD] --
function GetChannelList()
		return nil;
end
-- GetChatTypeIndex(str) [HALF] --
function GetChatTypeIndex(str)
	local n=1;
	for k,v in pairs(ChatTypeInfo) do
		if(k==str) then
			return n;
		end
		n=n+1;
	end
	return 0;
end
-- GetChatWindowChannels(n) [DUD] --
function GetChatWindowChannels(n)
	if(n==1) then
		return "General - "..GetZoneText(), 1, "Wowbench", 0;
	end
end
-- GetChatWindowInfo(nIndex) [FULL] --
function GetChatWindowInfo(nIndex)
		return unpack(_CHATWINDOWINFO[nIndex]);
end
-- GetChatWindowMessages(n) [FULL] --
function GetChatWindowMessages(n)
	return unpack(_CHATWINDOWMESSAGES[n]);
end
-- GetCombatRating(ratingIndex) [DUD] --
function GetCombatRating(ratingIndex)
		return 0;
end
-- GetCombatRatingBonus(ratingIndex) [DUD] --
function GetCombatRatingBonus(ratingIndex)
		return 0;
end
-- GetComboPoints() [DUD] --
function GetComboPoints()
	return 0;
end
-- GetCompanionInfo(strType, slotid) [DUD] --
function GetCompanionInfo(strType, slotid)
		assert(strType == "CRITTER" or strType == "MOUNT");
		return 1, "Some ".. strType, 42, "DUMMY_ICON_TEXTURE_PATH", nil;
end
-- GetContainerNumFreeSlots(containerID) [DUD] --
function GetContainerNumFreeSlots(containerID)
		return 8;
end
-- GetCritChanceFromAgility() [DUD] --
function GetCritChanceFromAgility(unitStr)
		return 0;
end
-- GetCurrentArenaSeason() [DUD] --
function GetCurrentArenaSeason()
		return 0; -- off season
end
-- GetCurrentDungeonDifficulty() [DUD] --
function GetCurrentDungeonDifficulty()
		return 1;
end
-- GetCurrentGuildBankTab() [DUD] --
function GetCurrentGuildBankTab()
		return 0;
end
-- GetCurrentMapContinent() [DUD] --
function GetCurrentMapContinent()
	return 2;
end
-- GetCurrentMapDungeonLevel() [DUD] --
function GetCurrentMapDungeonLevel()
		return 0;
end
-- GetCurrentMultisampleFormat() [DUD] --
function GetCurrentMultisampleFormat()
	return 1;
end
-- GetCurrentResolution() [DUD] --
function GetCurrentResolution()
	return 2;
end
-- GetCurrentTitle() [DUD] --
function GetCurrentTitle()
		return -1;
end
-- GetCursorMoney() [DUD] --
function GetCursorMoney()
	return 0;
end
-- GetCursorPosition() [HALF] --
function GetCursorPosition()
	return mod(GetTime()*10,700), 100;
end
-- GetCVarDefault(varname) [FULL] --
function GetCVarDefault(varname)
	for k,v in pairs(WOWB_CVarDefaults) do
		if(string.lower(k) == string.lower(varname)) then
			return v;
		end
	end
	error("Couldn't find CVar named '"..varname.."'");
end
-- GetCVar(varname) [FULL] --
function GetCVar(varname)
	if not __CVars then
		__CVars = {};
		for lin in io.lines(_WOWDIR.."/WTF/Config.wtf") do
			local _,_,name,val = string.find(lin, "^SET +([%a%d_]+) +\"(.*)\"");
			if(name) then
				__CVars[string.lower(name)]=val;
			else
				print("config.wtf: ???: " .. lin);
			end
		end
	end
	if(GetCVarDefault(varname)) then
		return __CVars[string.lower(varname)] or GetCVarDefault(varname);
	end
end
-- GetCVarBool(varname) [FULL] --
function GetCVarBool(varname)
	local cvar = GetCVar(varname);
	if (cvar == "0") then
		return nil;
	else
		return 1;
	end
end
-- GetDefaultLanguage(who) [FULL] --
function GetDefaultLanguage(who)
	local u = WOWB_GetUnit(who or "player");
	if(not u) then return nil; end
	if(u[0].faction=="Alliance") then return "Common"; end
	if(u[0].faction=="Horde") then return "Orcish"; end
	return "";
end
-- GetExistingLocales() [DUD] --
function GetExistingLocales()
		return "en_US"
end
-- GetFacialHairCustomization() [DUD] --
function GetFacialHairCustomization()
		return "HAIR";
end
-- GetFactionInfo(n) [DUD] --
function GetFactionInfo(n)
	if(n==1) then
			 -- name,				description,	standingId,	bottomValue,	topValue,	earnedValue,	atWarWith,	canToggleAtWar,	isHeader,	isCollapsed,	isWatched
		return "Ironforge", "",         	4,					0,						3000,			1500,					nil,				nil,						nil,			nil,					1
	elseif(n==2) then
			 -- name,				description,	standingId,	bottomValue,	topValue,	earnedValue,	atWarWith,	canToggleAtWar,	isHeader,	isCollapsed,	isWatched
		return "Stormwind", "",         	5,					3000,					6000,			4500,					nil,				nil,						nil,			nil,					nil
	end
end
-- GetFriendInfo(nIndex) [DUD] --
function GetFriendInfo(nIndex)
	--      name, level, class, area, connected, status
	return  nil;
end
-- GetGameTime() [FULL] --
function GetGameTime()
	local t = os.date("*t");
	return t.hour, t.min;
end
-- getglobal(name) [FULL] --
function getglobal(name)
	if(not name or name=="") then
		return nil;
	end
	return _G[name];
end
-- GetGMTicket() [DUD] --
function GetGMTicket()
end
-- GetGMTicketCategories() [HALF] --
function GetGMTicketCategories()
	return "Automated replies", "Different automated replies";
end
-- GetGuildBankMoney() [DUD] --
function GetGuildBankMoney()
		return 0;
end
-- GetGuildBankTabInfo() [DUD]
function GetGuildBankTabInfo(tab)
		return "A tab", "PATH_TO_ICON", nil, nil, 0, 0;
end
-- GetGuildBankWithdrawMoney() [DUD] --
function GetGuildBankWithdrawMoney()
		return -1;
end
-- GetGuildInfo(strUnitId) [DUD] --
function GetGuildInfo(strUnitId)
	return nil;
end
-- GetGuildRosterInfo() [DUD] --
function GetGuildRosterInfo()
	return nil;
end
-- GetGuildRosterMOTD() [DUD] --
function GetGuildRosterMOTD()
	return "";
end
-- GetGuildRosterSelection() [DUD] --
function GetGuildRosterSelection()
	return 0;
end
-- GetGuildTabardFileNames() [DUD]
function GetGuildTabardFileNames()
		return "tabardUpperBackgroundPath", "tabardLowerBackgroundPath", "tabardUpperEmblemPath", "tabardLowerEmblemPath", "tabardUpperBorderPath", "tabardLowerBorderPath";
end
-- GetHairCustomization() [DUD] --
function GetHairCustomization()
		return "NORMAL";
end
-- GetHonorCurrency() [DUD] --
function GetHonorCurrency()
		return 0;
end
-- GetItemInfo() [DUD] --
function GetItemInfo(code)
	return "Some Item", string.format("item:%d:0:0:0", code), 1
end
-- GetItemQualityColor() [HALF] --
function GetItemQualityColor()
	return 1,1,1,"ffffffff";
end;
-- GetIgnoreName(nIndex) [DUD] --
function GetIgnoreName(nIndex)
	return nil;
end
-- GetInventoryAlertStatus(n) [DUD] --
function GetInventoryAlertStatus(n)
	return 0;
end  -- this slot isn't broken
-- GetInventoryItemBroken(who, slotid) [DUD] --
function GetInventoryItemBroken(who, slotid)
	return nil;
end
-- GetInventoryItemCooldown(who, slotid) [DUD] --
function GetInventoryItemCooldown(who, slotid)
	return 0,0,0;
end
-- GetInventoryItemCount(who, slotid) [DUD] --
function GetInventoryItemCount(who, slotid)
	return 1;
end -- should return ammo count for ammo slot if >1
-- GetInventoryItemTexture(who, slotid) [DUD] --
function GetInventoryItemTexture(who, slotid)
	return "FAKED TEXTURE FOR ".._INVENTORYSLOTS[slotid];
end
-- GetInventorySlotInfo(name) [HALF] --
function GetInventorySlotInfo(name)
	for k,v in pairs(_INVENTORYSLOTS) do
		if(string.lower(name)==string.lower(v)) then
			local relic;
			if(string.lower(name)=="rangedslot") then
				relic = _CLASSUSESRELICS[Me[0].class];
			end
			return k,"",relic;
		end
	end
end
-- GetLanguageByIndex(n) [HALF] --
function GetLanguageByIndex(n)
	if(n~=1) then return nil; end
	if(Me[0].faction=="Alliance") then return "Common" else return "Orcish"; end
end
-- GetLFGTypeEntries(n) [FULLDUD] --
function GetLFGTypeEntries(n)
		assert(n)
end
-- GetLFGTypes() [FULLDUD] --
function GetLFGTypes()
end
-- GetLocale() [HALF] --
function GetLocale()
	return "enUS";
end
-- GetLookingForGroup() [DUD] --
function GetLookingForGroup()
		return nil;
end
-- GetLootMethod() [FULL] --
function GetLootMethod()
	return _PARTY.lootmethod, _PARTY.masterlooter;
end
-- GetLootThreshold() [FULL] --
function GetLootThreshold()
	return _PARTY.lootthreshold;
end
-- GetManaRegen() [DUD] --
function GetManaRegen()
		return 10, 5;
end
-- GetMapContinents() [FULL] --
function GetMapContinents()
	return "Kalimdor", "Eastern Kingdoms";
end
-- GetMapInfo() [DUD] --
function GetMapInfo()
	return "Ironforge", 100, 100;
end
-- GetMapZones(n) [HALF] --
function GetMapZones(n)
	if(n==1) then
		return "Orgrimmar";
	elseif(n==2)
		then return "Ironforge";
	else
		error("GetMapZones "..n);
	end
end
-- GetMasterLootCandidate(i) [FULL] --
function GetMasterLootCandidate(i)
	return _PARTY[i-1];
end
-- GetMinimapZoneText() [DUD] --
function GetMinimapZoneText()
	return "Ironforge";
end
-- GetMirrorTimerInfo(index) [DUD] --
function GetMirrorTimerInfo(index)
		return "EXHAUSTION", 0, 0, 1, 0, "Exhausted";
end
-- GetMirrorTimerProgress(timer) [DUD] --
function GetMirrorTimerProgress(timer)
		return 0;
end
-- GetModifiedClick(name) [DUD] --
function GetModifiedClick(name)
		return "NONE";
end
-- GetMoney() [FULL] --
function GetMoney()
	return tonumber(Me[0].money) or 0;
end
-- GetMouseFocus() [FULL] --
function GetMouseFocus()
	if(not WOWB_CurrentMouseTarget) then
		return WorldFrame;
	end
	if(not WOWB_CurrentMouseTarget:IsObjectType("UIObject")) then
		return WorldFrame;
	end
end
-- GetMultisampleFormats() [DUD] --
function GetMultisampleFormats()
	return 24,8,1;
end
-- GetMuteStatus(id) [DUD] --
function GetMuteStatus(id)
		return nil
end
-- GetNetStats() [DUD] --
function GetNetStats()
	return 0,0,100;
end
-- GetNumAddOns() [FULL] --
function GetNumAddOns()
	return table.getn(_ADDONS);
end
-- GetNumBattlefields() [DUD] --
function GetNumBattlefields()
	return 0;
end
-- GetNumBattlefieldScores() [DUD] --
function GetNumBattlefieldScores()
	return 0;
end
-- GetNumBattlefieldStats() [DUD] --
function GetNumBattlefieldStats()
	return 0;
end
-- GetNumCompanions(typename) [DUD] --
function GetNumCompanions(typename)
		assert(typename == "CRITTER" or typename == "MOUNT");
		return 0;
end
-- GetNumDisplayChannels() [DUD] --
function GetNumDisplayChannels()
		return 7;
end
-- GetNumDungeonMapLevels() [DUD] --
function GetNumDungeonMapLevels()
		return 0;
end
-- GetNumFactions() [DUD] --
function GetNumFactions()
	return 2;
end
-- GetNumFriends() [DUD] --
function GetNumFriends()
	return 0;
end
-- GetNumGuildBankTabs() [DUD] --
function GetNumGuildBankTabs()
		return 0;
end
-- GetNumGuildMembers() [DUD] --
function GetNumGuildMembers()
	return 0;
end
-- GetNumIgnores() [DUD] --
function GetNumIgnores()
	return 0;
end
-- GetNumLanguages() [DUD] --
function GetNumLanguages()
	return 1;
end
-- GetNumLFGResults(typeid, index) [DUD] --
function GetNumLFGResults(typeid, index)
		return 0, 0;
end
-- GetNumLootItems() [DUD] --
function GetNumLootItems()
	return 0;
end
-- GetNumMacros() [DUD] --
function GetNumMacros()
		return 0,0;
end
-- GetNumMapDebugObjects() [DUD] --
function GetNumMapDebugObjects()
		return 0;
end
-- GetNumMapLandmarks() [DUD] --
function GetNumMapLandmarks()
	return 0;
end
-- GetNumMapOverlays() [DUD] --
function GetNumMapOverlays()
	return 0;
end
-- GetNumPartyMembers() [FULL] --
function GetNumPartyMembers()
	return table.getn(_PARTY);
end
-- GetNumQuestLogEntries() [DUD] --
function GetNumQuestLogEntries()
	return 0,0;  -- numEntries (including headers), numQuests
end
-- GetNumRaidMembers() [DUD] --
function GetNumRaidMembers()
	return 0;
end
-- GetNumShapeshiftForms() [DUD] --
function GetNumShapeshiftForms()
	return 0;
end
-- GetNumSkillLines() [DUD] --
function GetNumSkillLines()
	return 0;
end
-- GetNumSpellTabs() [DUD] --
function GetNumSpellTabs()
	return 0;
end
-- GetNumStationeries() [DUD] --
function GetNumStationeries()
	return 1;
end
-- GetNumTalents(tabIndex [, isInspect]) [DUD] --
function GetNumTalents(tabIndex, isInspect)
		return 2;
end
-- GetNumTalentTabs(inspect) [DUD] --
function GetNumTalentTabs(inspect)
		return 3;
end
-- GetNumTrackingTypes() [DUD] --
function GetNumTrackingTypes()
		return 4;
end
-- GetNumTitles() [DUD] --
function GetNumTitles()
		return 0;
end
-- GetNumVoiceSessionMembersBySessionID(id) [DUD] --
function GetNumVoiceSessionMembersBySessionID(id)
		return 0;
end
-- GetNumVoiceSessions() [DUD] --
function GetNumVoiceSessions()
		return 0;
end
-- GetNumWhoResults() [DUD] --
function GetNumWhoResults() return 0,0; --[[ totalCount, numWhos ]] end
-- GetNumWorldStateUI() [DUD] --
function GetNumWorldStateUI()
	return 0;
end  -- no battlefield crap showing
-- GetOptOutOfLoot() [DUD] --
function GetOptOutOfLoot()
		return nil;
end
-- GetOwnerAuctionItems([page]) [DUD] --
function GetOwnerAuctionItems(page)
		return nil;
end
-- GetPartyLeaderIndex() [FULL] --
function GetPartyLeaderIndex()
	return (_PARTY.leader>=1) and _PARTY.leader;
end
-- GetPartyMember(n) [FULL] --
function GetPartyMember(n)
	if(n>=1 and _PARTY[n]) then
		return "party"..n;
	end
end
-- GetPetActionCooldown(n) [DUD] --
function GetPetActionCooldown(n)
	return 0,0,0;
end
-- GetPetActionInfo(n) [DUD] --
function GetPetActionInfo(n)
end
-- GetPetActionsUsable() [DUD] --
function GetPetActionsUsable()
	return false;
end
-- GetPlayerBuff(nIndex, strFilter) [DUD] --
function GetPlayerBuff(nIndex, strFilter)
	return -1;
end -- we don't have that buff
-- GetPlayerBuffApplications(id_or_name, [rank]) [DUD] --
function GetPlayerBuffApplications(id_or_name, rank)
		return 0;
end
-- GetPlayerBuffDispelType(id_or_name, rank) [DUD] --
function GetPlayerBuffDispelType(id_or_name, rank)
		return nil;
end
-- GetPlayerBuffTexture(buffIndex) [DUD] --
function GetPlayerBuffTexture(buffindex)
		return nil;
end
-- GetPlayerTradeMoney() [DUD] --
function GetPlayerTradeMoney()
	return 0;
end
-- GetPossessInfo(i) [DUD] --
function GetPossessInfo(i)
		return nil;
end
-- GetPreviousArenaSeason() [DUD] --
function GetPreviousArenaSeason()
		return 0;
end
-- GetPVPLastWeekStats() [DUD] --
function GetPVPLastWeekStats()
	return 0,0,0,"";
end
-- GetPVPLifetimeStats() [DUD] --
function GetPVPLifetimeStats()
	return 0,0,0;
end
-- GetPVPRankInfo(rank) [DUD] --
function GetPVPRankInfo(rank)
	return nil, 1;
end
-- GetPVPRankProgress() [DUD] --
function GetPVPRankProgress()
	return 0;
end
-- GetPVPSessionStats() [DUD] --
function GetPVPSessionStats()
	return 0,0;
end
-- GetPVPThisWeekStats() [DUD] --
function GetPVPThisWeekStats()
	return 0,0;
end
-- GetPVPYesterdayStats() [DUD] --
function GetPVPYesterdayStats()
	return 0,0,0;
end
-- GetQuestGreenRange() [HALF] --
function GetQuestGreenRange()	-- roughly correct, but not entirely. will return 12 at 60 though.
	return 5 + math.floor(Me[0].level/8);
end
-- GetQuestLogSelection() [DUD] --
function GetQuestLogSelection()
	return 0;
end
-- GetQuestTimers() [DUD] --
function GetQuestTimers()
end
-- GetRaidTargetIndex() [DUD] --
function GetRaidTargetIndex()
	return 0;
end
-- GetReadyCheckStatus() [DUD] --
function GetReadyCheckStatus()
		return nil;
end
-- GetRealmName() [FULL] --
function GetRealmName()
	return _REALM;
end
-- GetRealNumPartyMembers() [HALF] --
function GetRealNumPartyMembers()
		-- FIXME handle battleground case
		return GetNumPartyMembers();
end
-- GetRealZoneText() [DUD] --
function GetRealZoneText()
	return GetZoneText();
end
-- GetRefreshRates() [DUD] --
function GetRefreshRates()
	return 20;
end
-- GetRepairAllCost() [DUD] --
function GetRepairAllCost()
	return 0,nil;
end -- repairAllCost, canRepair
-- GetRestState() [DUD] --
function GetRestState()
	return 1,"Normal",1;
end
-- GetRuneType(id) [DUD] --
function GetRuneType(id)
		return 1;
end
-- GetScreenHeight() [DUD] --
function GetScreenHeight()
	return 768;
end
-- GetScreenResolutions() [HALF] --
function GetScreenResolutions()
	return "800x600", "1024x768";
end
-- GetScreenWidth() [DUD] --
function GetScreenWidth()
	return 1024;
end
-- GetSelectedBattlefield() [DUD] --
function GetSelectedBattlefield()
	return 0;
end
-- GetSelectedDisplayChannel() [DUD] --
function GetSelectedDisplayChannel()
		return 0;
end
-- GetSelectedFaction() [DUD] --
function GetSelectedFaction()
	return 0;
end
-- GetSelectedFriend() [DUD] --
function GetSelectedFriend()
	return 0;
end
-- GetSelectedIgnore() [DUD] --
function GetSelectedIgnore()
	return 0;
end
-- GetSelectedSkill() [DUD] --
function GetSelectedSkill()
	return 0;
end
-- GetSendMailPrice() [HALF] --
function GetSendMailPrice()
	return 70;
end
-- GetSkillLineInfo() [HALF] --
function GetSkillLineInfo()
	-- skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription
	return "",    false,  false,      1,         0,             0,             0,            false,         1,        1,        1,        1,             ""
end
-- GetSpellBonusDamage(school) [DUD] --
function GetSpellBonusDamage(school)
		return 10;
end
-- GetSpellBonusHealing() [DUD] --
function GetSpellBonusHealing()
		return 0;
end
-- GetSpellPenetration() [DUD] --
function GetSpellPenetration()
		return 0;
end
-- GetSpellCritChance(school) [DUD] --
function GetSpellCritChance(school)
		return 0;
end
-- GetSpellCritChanceFromIntellect(unit) [DUD]
function GetSpellCritChanceFromIntellect(unit)
		return 0;
end
-- GetSpellName(id, strBook) [DUD] --
function GetSpellName(id, strBook)
	return nil;
end
-- GetSpellTabInfo(tabnum) [DUD] --
function GetSpellTabInfo(tabnum)
	-- name, texture, offset, numSpells
	return "",nil,0,0;
end
-- GetStationeryInfo(n) [HALF] --
function GetStationeryInfo(n)
	if n==1 then return "Default Stationery";
	end
end
-- GetSubZoneText() [DUD] --
function GetSubZoneText()
	return "Ironforge";
end
-- GetTabardCreationCost() [FULL] --
function GetTabardCreationCost()
	return 100000;
end
-- GetTalentInfo(tabIndex, talentIndex [, isInspect]) [DUD] --
function GetTalentInfo(tabIndex, talentIndex, isInspect)
		return "TALENT"..talentIndex, "ICONTEXTURE", talentIndex%5+1, talentIndex+1, 0, nil, nil;
end
-- GetTalentPrereqs(tabIndex, talentIndex) [DUD] --
function GetTalentPrereqs(tabIndex, talentIndex)
		return 1,1,1;
end
-- GetTalentTabInfo(index [, isInspect]) [DUD]
function GetTalentTabInfo(index, isInspect)
		return "Fury", "FURY_TEXTURE", 37, "FURY_BACKGROUND_FILENAME";
end
-- GetTargetTradeMoney() [DUD] --
function GetTargetTradeMoney()
	return 0;
end
-- GetText(tokenstr [, suffix] [, ordinal]) [HALF] (maybe full?)--
function GetText(tokenstr, suffix, ordinal)
		token = _G[tokenstr];
		if (suffix) then
				token = token .. suffix;
		end
		return format(token, ordinal);
end
-- GetTime() [FULL] --
function GetTime()
	return os.clock();
end
-- GetTotemInfo(slot) [DUD] --
function GetTotemInfo(slot)
		return nil;
end

-- GetTrackingInfo(n) [DUD] --
function GetTrackingInfo(n)
		return "Find Minerals", "FIXME TEXTURE PATH", nil, "other";
end
-- GetTrackingTexture() [DUD]--
function GetTrackingTexture()
		return "FIXME TEXTURE PATH";
end
-- GetTradeSkillInvSlotFilter(index) [DUD]
function GetTradeSkillInvSlotFilter(index)
		return nil;
end
-- GetTradeSkillInvSlots() [DUD]
function GetTradeSkillInvSlots()
		return "head";
end
-- GetTradeSkillSubClasses() [DUD]
function GetTradeSkillSubClasses()
		return "head";
end
-- GetTradeSkillSubClassFilter(index) [DUD]
function GetTradeSkillSubClassFilter(index)
		return nil;
end
-- GetTrainerServiceTypeFilter(strtype)
function GetTrainerServiceTypeFilter(strtype)
		return nil;
end
-- GetUnitHealthRegenRateFromSpirit(unit) [DUD] --
function GetUnitHealthRegenRateFromSpirit(unit)
		return 10;
end
-- GetUnitManaRegenRateFromSpirit(unit) [DUD] --
function GetUnitManaRegenRateFromSpirit(unit)
		return 10;
end
-- GetUnitMaxHealthModifier(unit) [DUD] --
function GetUnitMaxHealthModifier(unit)
		return 10;
end
-- GetVoiceCurrentSessionID() [DUD] --
function GetVoiceCurrentSessionID()
end
-- GetVoiceStatus() [DUD] --
function GetVoiceStatus(id)
		return nil;
end
-- GetVoiceSessionInfo() [DUD] --
function GetVoiceSessionInfo(id)
		return "DUD Channel" .. id, nil
end
-- GetVideoCaps() [DUD] --
function GetVideoCaps()
	return nil;
end -- no shaders, filtering, ... no nothing
-- GetWeaponEnchantInfo() [DUD] --
function GetWeaponEnchantInfo()
end;  -- hasMainHandEnchant, mainHandExpiration, mainHandCharges, hasOffHandEnchant, offHandExpiration, offHandCharges
-- GetWhoInfo(nIndex) [DUD] --
function GetWhoInfo(nIndex)
	--     name, guild, level, race, class, zone
	return nil;
end
-- GetXPExhaustion() [DUD] --
function GetXPExhaustion()
	return 0;
end  -- no rested xp
-- GetZonePVPInfo() [DUD] --
function GetZonePVPInfo()
	return "friendly", "Ironforge", "Alliance";
end
-- GetZoneText() [DUD] --
function GetZoneText()
	return "Ironforge";
end
-- GuildControlGetNumRanks() [DUD] --
function GuildControlGetNumRanks()
	return 0;
end
-- GuildControlGetRankFlags() [DUD] --
function GuildControlGetRankFlags()
	return nil;
end

-- HasDebugZoneMap() [DUD] --
function HasDebugZoneMap()
		return nil;
end
-- HasKey() [DUD] --
function HasKey()
	return false;
end
-- HasPetSpells() [DUD] --
function HasPetSpells()
	return nil;
end
-- HasPetUI() [DUD] --
function HasPetUI()
	return nil;
end
-- HideFriendNameplates() [DUD] --
function HideFriendNameplates()
end
-- HideNameplates() [DUD] --
function HideNameplates()
end

-- hooksecurefunc([table, ]funcname,hook) [HALF] --
local allsecurehooks = {}
function hooksecurefunc(...)
	local tab, funcname, hook
	if type(...)=="table" then
		tab,funcname,hook = ...
	else
		funcname,hook = ...
		tab = _G
	end

	if type(funcname)~="string" or type(hook)~="function" then
		error([[Usage: hooksecurefunc([table,] "function", hookfunc]], 1)
	end

	local hookedFunc = tab[funcname]

	if type(hookedFunc)~="function" then
		error("hooksecurefunc(): "..funcname.." is not a function", 1)
	end

	if not allsecurehooks[hookedFunc] then
		local hooks = { }
		local func = function(...)
			local ret = {hookedFunc(...)}
			for i,h in ipairs(hooks) do
				WOWB_Pcall(h, nil, ...)
			end
			return unpack(ret)
		end
		tab[funcname] = func
		allsecurehooks[func] = hooks
		tinsert(allsecurehooks[func], hook)
	else
		tinsert(allsecurehooks[hookedFunc], hook)
	end
end


-- InCinematic() [HALF] --
function InCinematic()
	return nil;
end
-- InitWorldMapPing() [FULL] --
function InitWorldMapPing()
		--this function does nothing for normal clients
end
-- IsActiveBattlefieldArena() [DUD] --
function IsActiveBattlefieldArena()
		return nil, nil;
end
-- IsAddOnLoaded(which) [FULL] --
function IsAddOnLoaded(which)
	return _GetAddonForNoI(which) and 1;
	--if(type(which)~="number") then
	--	which=_getaddonindexbyname(which);
	--end
	--if(not which or not _LOADED_ADDONS[which]) then return false; end
	--return true;
end
-- IsAddOnLoadOnDemand(which) [DUD] --
function IsAddOnLoadOnDemand(which)
	return nil;
end
-- IsAltKeyDown() [DUD] --
function IsAltKeyDown()
	return nil;
end

-- IsControlKeyDown() [DUD] --
function IsControlKeyDown()
	return nil;
end

-- IsGuildLeader() [DUD] --
function IsGuildLeader()
	return nil;
end
-- IsInGuild() [DUD] --
function IsInGuild()
	return false;
end
-- IsInInstance() [DUD] --
function IsInInstance()
	return false;
end
-- IsInLFGQueue() [DUD] --
function IsInLFGQueue()
		return 0;
end
-- IsInMeetingStoneQueue() [DUD] --
function IsInMeetingStoneQueue()
	return false
end
-- IsInventoryItemLocked(slotid) [DUD] --
function IsInventoryItemLocked(slotid)
	return nil;
end

-- IsMuted(unit) [DUD] --
function IsMuted(unit)
	return false
end

-- MovieRecording_GetAspectRatio() [DUD] --
function MovieRecording_GetAspectRatio()
	--return GetCVar("MovieRecordingWidth") ?
	return 0
end

-- MovieRecording_GetAspectRatio() [PART] --
function MovieRecording_GetViewportWidth()
	--add error check
	return GetCVar("MovieRecordingWidth")
end

-- MovieRecording_IsCodecSupported() [DUD] --
function MovieRecording_IsCodecSupported()
	return true
end

-- IsMacClient() [FULL] --
function IsMacClient()
	fil,msg = io.open(_WOWDIR.."/World of Warcraft.app/Contents/MacOS/World of Warcraft");
	if fil then
		io.close(fil);
		return true
	end
	return false
end
-- IsModifierKeyDown() [FULL] --
function IsModifierKeyDown()
		return (IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown())
end
-- IsPartyLeader() [FULL] --
function IsPartyLeader()
	return _PARTY.leader == 0;
end
-- IsPossessBarVisible() [DUD] --
function IsPossessBarVisible()
		return nil;
end
-- IsPVPTimerRunning() [DUD] --
function IsPVPTimerRunning()
		return nil;
end
-- IsRaidOfficer() [DUD] --
function IsRaidOfficer()
	return false;
end
-- IsRealPartyLeader() [HALF] --
function IsRealPartyLeader()
		-- FIXME battleground
		return IsPartyLeader();
end
-- IsReferAFriendLinked() [DUD] --
function IsReferAFriendLinked()
		return nil;
end
-- IsResting() [DUD] --
function IsResting()
	return true;
end
-- issecure() [DUD] --
function issecure()
		return false;
end
-- IsShiftKeyDown() [DUD] --
function IsShiftKeyDown()
		return nil;
end
-- IsStackableAction(slot) [DUD] --
function IsStackableAction(slot)
		return nil;
end
-- IsThreatWarningEnabled() [DUD] --
function IsThreatWarningEnabled()
		return nil;
end
-- IsVoiceChatAllowedByServer() [DUD] --
function IsVoiceChatAllowedByServer()
		return 1;
end
-- IsVoiceChatEnabled() [FULL] --
function IsVoiceChatEnabled()
	return GetCVar("EnableVoiceChat") and 1
	--if GetCVar("EnableVoiceChat") ~= "0") then
	--		return 1;
	--else
	--		return nil;
	--end
end
-- LoadAddOn() [HALF] --
function LoadAddOn(addon)
	-- attempt to reconcile names and indexes
	local name = _GetAddonForNoI(addon);
	if name then
		addon = name;
	end
	-- dont fail unless was index issue
	if (type(addon) ~= "string") then
		print("load failed \""..addon.."\" MISSING");
		return nil, "MISSING";
	end

	local b,msg = pcall(WOWB_LoadAddon, addon);
	if not b then
		print("load failed \""..addon.."\" MISSING");
		return nil, "MISSING";
	end

	print ("loaded " .. addon);
	return 1;
end
-- MouseIsOver(frame, offsTop, offsBottom, offsLeft, offsRight) [FULL] --
function MouseIsOver(frame, offsTop, offsBottom, offsLeft, offsRight)
	if(not frame) then return nil; end
	return frame==WOWB_CurrentMouseTarget;
end
-- NoPlayTime() [DUD] --
function NoPlayTime()
	return false;
end
-- OffhandHasWeapon() [DUD] --
function OffhandHasWeapon()
end -- nope
-- PartialPlayTime() [DUD] --
function PartialPlayTime()
	return false;
end

-- PlaySound(str) [DUD] --
function PlaySound(str)
end
-- RegisterCVar(cvar {, default}) [FULL] --
function RegisterCVar(cvar, default)
	if(default == nil) then
		default="0";
	end
	WOWB_CVarDefaults[cvar]=default;
end
-- RegisterForSave(varname) [FULL] --
function RegisterForSave(varname)
	assert(type(varname)=="string");
	table.insert(WOWB_SavedVariablesGlobal, varname);
end
-- RegisterForSavePerCharacter(varname) [FULL] --
function RegisterForSavePerCharacter(varname)
	assert(type(varname)=="string");
	table.insert(WOWB_SavedVariablesPerCharacter, varname);
end
-- RemoveChatWindowMessages(index, messagegroup) [DUD] --
function RemoveChatWindowMessages(index, messagegroup)
		assert(type(messagegroup) == "string");
end
-- RequestBattlefieldPositions() [DUD] --
function RequestBattlefieldPositions()
end
-- RequestRaidInfo() [DUD] --
function RequestRaidInfo()
end
-- RequestTimePlayed() [HALF] --
function RequestTimePlayed()
	WOWB_QueueDPC(WOWB_FireEvent, "TIME_PLAYED_MSG", 2,1);
end

-- RunScript(str) [FULL] --
function RunScript(s)
	assert(loadstring(s))();
end

-- SecureCmdOptionParse(parse) [DUD] --
function SecureCmdOptionParse()
	--returns a string or nil
	return nil
end

-- securecall(func, args) [HALF] --
function securecall(func, ...)
		if (type(func) == "string") then
				return _G[func](...);
		elseif (type(func) == "function") then
				return func(...);
		else
				error("Unrecognized securecall first arg type " .. func, 1);
		end
end
-- SendAddonMessage() [HALF] -- Will always send to all logged-in-players regardless of system
function SendAddonMessage(prefix,message,system)
	if(not (prefix and message and (system=="PARTY" or system=="RAID" or system=="GUILD" or system=="BATTLEGROUND") ) ) then
		error('Usage: SendAddonMessage("prefix", "text", "PARTY|RAID|GUILD|BATTLEGROUND")', 2);
	end
	-- Just dump it in all sessions. (Assume everyone is in /say range etc..)
	for v,_ in pairs(World[0].children) do
		if(v:IsObjectType("Player") and v[0].sessionIndex --[[and v:GetName()~=_CHARACTER]]) then
			local ses=WOWB_SessCtl[v[0].sessionIndex];
			ses.WOWB_QueueDPC(ses.WOWB_FireEvent, "CHAT_MSG_ADDON", prefix, message, system, Me:GetName(),  "", "", "", "", "");
		end
	end

end

-- SendChatMessage() [HALF] --
function SendChatMessage(msg,system,language,channel)
	WOWB_OriginateChatMessage(_CHARACTER,  msg,system,language,channel);
end

-- SetAutoLootDefault() [DUD] --
function SetAutoLootDefault()
end

-- SetChatWindowAlpha(nIndex, a) [FULL] --
function SetChatWindowAlpha(nIndex, a)
		if (_CHATWINDOWINFO[nIndex][6] ~= a) then
				_CHATWINDOWINFO[nIndex][6] = a;
				chatupdated();
		end
end
-- SetChatWindowDocked(nIndex, flag) [FULL] --
function SetChatWindowDocked(nIndex, flag)
		if (_CHATWINDOWINFO[nIndex][9] ~= flag) then
				_CHATWINDOWINFO[nIndex][9] = flag;
				chatupdated();
		end
end
-- SetChatWindowLocked(nIndex, flag) [FULL] --
function SetChatWindowLocked(nIndex, flag)
		if (_CHATWINDOWINFO[nIndex][8] ~= flag) then
				_CHATWINDOWINFO[nIndex][8] = flag;
				chatupdated();
		end
end
-- SetChatWindowName(nIndex, name) [FULL] --
function SetChatWindowName(nIndex, name)
		name = name or "";
		if (_CHATWINDOWINFO[nIndex][1] ~= name) then
				_CHATWINDOWINFO[nIndex][1] = name or "";
				chatupdated();
		end
end
-- SetChatWindowSize(nIndex, size) [HALF] --
function SetChatWindowSize(nIndex, size)
	chatupdated();
end
-- SetChatWindowShown(nIndex. flag) [FULL] --
function SetChatWindowShown(nIndex, flag)
		if (_CHATWINDOWINFO[nIndex][7] ~= flag) then
				_CHATWINDOWINFO[nIndex][7] = flag;
				chatupdated();
		end
end;
-- seterrorhandler() [DUD] --
function seterrorhandler()
	return nil;
end
-- SetCVar(cvar,value{,"scriptCVar"}) [HALF] --
function SetCVar(cvar,value,scriptCVar)
	-- force loading config.wtf and check if CVar is registered by calling GetCVar
	if(GetCVar(cvar)) then
		__CVars[string.lower(cvar)]=value;
	end
	-- if scriptCVar is not nil, should fire CVAR_UPDATE at this point, appropriately setting arg1 etc. based on scriptCVar
end
-- setglobal(name,value) [FULL] --
function setglobal(name,value)
	if(not string.find(name,"^[%a_][.%[%]\"'%a%d_]*$")) then
		error("setglobal(): invalid variable name \"" .. name .. "\"");
	end
	_G[name] = value;
end
-- SetGuildRecruitmentMode() [DUD] --
function SetGuildRecruitmentMode()
end
-- SetGuildRosterSelection() [DUD] --
function SetGuildRosterSelection()
end
-- SetLFGAutojoin() [DUD] --
function SetLFGAutojoin()
end
-- SetLFMAutofill() [DUD] --
function SetLFMAutofill()
end
-- SetLFMType(id) [DUD] --
function SetLFMType(id)
end
-- SetMapToCurrentZone() [DUD] --
function SetMapToCurrentZone()
end
-- SetPortraitTexture() [DUD] --
function SetPortraitTexture()
end;
-- SetSelectedSkill(n) [DUD] --
function SetSelectedSkill(n)
end;
-- SetTracking(n) [DUD] --
function SetTracking(n)
end
-- SetTradeSkillInvSlotFilter(index [, enable, exclusive]) [DUD]
function SetTradeSkillInvSlotFilter(index, enable, exclusive)
end
-- SetTradeSkillSubClassFilter(index [, enable, exclusive]) [DUD]
function SetTradeSkillSubClassFilter(index, enable, exclusive)
end
-- SetWhoToUI(n) [FULL] --
function SetWhoToUI(n)
	_WHOTOUI=n;
end;
-- ShowFriendNameplates() [DUD] --
function ShowFriendNameplates()
end
-- ShowNameplates() [DUD] --
function ShowNameplates()
end
-- ShowingCloak() [DUD] --
function ShowingCloak()
		return 1;
end
function ShowingHelm()
		return 1;
end
-- SortAuctionClearSort(sorttype) [DUD] --
function SortAuctionClearSort(sorttype)
end
-- SortAuctionSetSort(sorttype) [DUD] --
function SortAuctionSetSort(auctiontype, sorttype, reversed)
end
-- Sound_ChatSystem_GetNumInputDrivers() [DUD] --
function Sound_ChatSystem_GetNumInputDrivers()
		return 1;
end
-- Sound_ChatSystem_GetInputDriverNameByIndex() [DUD] --
function Sound_ChatSystem_GetInputDriverNameByIndex()
		return "Default fake WoWBench Mic";
end
-- Sound_ChatSystem_GetNumOutputDrivers() [DUD] --
function Sound_ChatSystem_GetNumOutputDrivers()
		return 1;
end
-- Sound_ChatSystem_GetOutputDriverNameByIndex(n) [DUD] --
function Sound_ChatSystem_GetOutputDriverNameByIndex(n)
		return "Default fake WoWBench Audio"
end
-- Sound_GameSystem_GetNumOutputDrivers() [DUD] --
function Sound_GameSystem_GetNumOutputDrivers()
		return 1;
end
-- Sound_GameSystem_GetOutputDriverNameByIndex(n) [DUD] --
function Sound_GameSystem_GetOutputDriverNameByIndex(n)
		return "Default fake WoWBench Audio"
end
-- TargetByName() [FULL] --
local last_target
function TargetByName(name,exact)
	u = WOWB_World_FindUnitByname(name);
	if(u and exact and strlower(u:GetName())~=strlower(name)) then
		u = nil;
	end
	if(u) then
		WOWB_TargetUnit(u);
		last_target = u
	else
		WOWB_QueueDPC(WOWB_FireEvent, "UI_ERROR_MESSAGE", ERR_UNIT_NOT_FOUND);
	end
end
-- TargetLastTarget() [FULL] --
function TargetLastTarget()
	if (last_target) then
		WOWB_TargetUnit(u)
	else
		WOWB_QueueDPC(WOWB_FireEvent, "UI_ERROR_MESSAGE", ERR_UNIT_NOT_FOUND);
	end
end
-- TEXT(str) [FULL] --
function TEXT(str)
	return str;
end
-- UnitArmor(id_or_name) [DUD] --
function UnitArmor(id_or_name)
		-- base armor,  effective armor,        armor,  posBuff,        negBuff
		return 1000,    1100,                   1100,   0,              0;
end
-- UnitAura(who, index, filter) [DUD] --
function UnitAura(who, index, filter)
		return nil; -- noone has any buffs
end
-- UnitBuff(who) [DUD] --
function UnitBuff(who)
	return nil;		-- noone has any buffs
end
-- UnitCanAttack(attacker, attacked) [FULL] --
function UnitCanAttack(attacker, attacked)
	local u1 = WOWB_GetUnit(attacker);
	local u2 = WOWB_GetUnit(attacked);
	if(not u1 or not u2) then return nil; end
	return (u1[0].faction or "") ~= (u2[0].faction or "");  -- Alliance vs Horde and vice versas. Either vs nonfaction NPCs. And those can't attack eachother. Simplistic.
end
-- UnitCanCooperate(who1,who2) [HALF] --
function UnitCanCooperate(who1,who2)
	return not UnitCanAttack(who1,who2);	-- bit simplistic
end
-- UnitCastingInfo(unit) [DUD] --
function UnitCastingInfo(unit)
		return nil;
end
-- UnitChannelInfo(who) [DUD] --
function UnitChannelInfo(who)
		return nil;
end
-- UnitCharacterPoints(who) [HALF] --
function UnitCharacterPoints(who)
	if(who=="player") then
		return 0;
	end
	return nil;
end  -- no talent points unused
-- UnitClass(who) [HALF] --
function UnitClass(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].class, u and u[0].class;
end
-- UnitClassification(who) [DUD] --
function UnitClassification(who)
	return "normal";
end
-- UnitDebuff(who) [DUD] --
function UnitDebuff(who)
	return nil;	-- noone has any nasty debuffs
end
-- UnitExists(who) [FULL] --
function UnitExists(who)
		if (who) then
				return WOWB_GetUnit(who)~=nil;
		end
end
-- UnitFactionGroup(who) [FULL] --
function UnitFactionGroup(who)
	local u = WOWB_GetUnit(who);
	if(u) then
		return u[0].faction,u[0].faction;  -- not sure about this one
	end
end
-- UnitHasVehicleUI(who) [DUD] --
function UnitHasVehicleUI(who)
		return nil;
end
-- UnitHealth(who) [FULL] --
function UnitHealth(who)
	local u = WOWB_GetUnit(who);
	if(u) then
		if(u:IsObjectType("NPC")) then
			return ceil((u.health or u.maxhealth or 100)/(u.maxhealth or 100)* 100);
		else
			return u[0].health;
		end
	end
end
-- UnitHealthMax(who) [FULL] --
function UnitHealthMax(who)
	local u = WOWB_GetUnit(who);
	if(u) then
		if(u:IsObjectType("NPC")) then
			return 100;
		else
			return u[0].healthmax;
		end
	end
end
-- UnitInBattleground(who) [DUD] --
function UnitInBattleground(who)
		return nil;
end
-- UnitInRaid(who) [DUD] --
function UnitInRaid(who)
	return nil;
end
-- UnitIsCharmed(who) [DUD] --
function UnitIsCharmed(who)
	return nil;
end
-- UnitIsCivilian(who) [DUD] --
function UnitIsCivilian(who)
	return nil;
end
-- UnitIsConnected(who) [FULL] --
function UnitIsConnected(who)
	local u = WOWB_GetUnit(who);
	return u and u.connected; -- not a typo; there's a bool directly under u
end
-- UnitIsCorpse(who) [DUD] --
function UnitIsCorpse(who)
	return nil;
end
-- UnitIsDead(who) [DUD] --
function UnitIsDead(who)
	return nil;
end
-- UnitIsDeadOrGhost(who) [DUD] --
function UnitIsDeadOrGhost(who)
	return nil;
end
-- UnitIsEnemy(who) [HALF] --
function UnitIsEnemy(who)
	return UnitCanAttack("player", who);	-- bit simplistic
end
-- UnitIsFriend(who) [HALF] --
function UnitIsFriend(who)
	return not UnitIsEnemy(who);	-- bit simplistic
end
-- UnitIsGhost(who) [DUD] --
function UnitIsGhost(who)
	return nil;
end
-- UnitIsPartyLeader(who)  [FULL] --
function UnitIsPartyLeader(who)
	local u = WOWB_GetUnit(who);
	return u and u:IsObjectType("Player") and u:GetName()==_PARTY[_PARTY.leader];
end
-- UnitIsPlayer(who) [FULL] --
function UnitIsPlayer(who)
	local u = WOWB_GetUnit(who);
	return u and u:IsObjectType("Player");
end
-- UnitIsPossessed(who) [DUD] --
function UnitIsPossessed(who)
		return nil
end
-- UnitIsPVP(who) [HALF] --
function UnitIsPVP(who)
	return UnitIsPlayer(who);
end
-- UnitIsPVPFreeForAll(who) [DUD] --
function UnitIsPVPFreeForAll(who)
	return false;
end
-- UnitIsUnit(who1,who2) [FULL] --
function UnitIsUnit(who1,who2)
	local u = WOWB_GetUnit(who1);
	return u and u == WOWB_GetUnit(who2);
end
-- UnitIsTalking(who) [DUD] --
function UnitIsTalking(who)
		return nil;
end
function UnitIsTapped(who)
	return nil;	-- nothing is tapped
end
-- UnitIsVisible(who) [HALF] --
function UnitIsVisible(who)
	return WOWB_GetUnit(who)~=nil;
end
-- UnitLevel(who) [FULL] --
function UnitLevel(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].level;
end
-- UnitMana(who) [FULL] --
function UnitMana(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].mana;
end
-- UnitManaMax(who) [FULL] --
function UnitManaMax(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].manamax;
end
-- UnitName(who) [FULL] --
function UnitName(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].name;
end
-- UnitPlayerControlled(who) [HALF] --
function UnitPlayerControlled(who)
	local u = WOWB_GetUnit(who);
	return u and u:IsObjectType("Player");
end  -- should likely include mind controlled units and pets too but we don't have those
-- UnitPower(who[, typename]) [DUD] --
function UnitPower(who, typename)
		return 0;
end
-- UnitPowerMax(who[, typename]) [DUD] --
function UnitPowerMax(who, typename)
		return 100;
end
-- UnitPowerType(who) [FULL] --
function UnitPowerType(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].powertype;
end
-- UnitPVPRank(who) [DUD] --
function UnitPVPRank(who)
	return 0;
end
-- UnitRace(who) [FULL] --
function UnitRace(who)
	local u = WOWB_GetUnit(who);
	return u and u[0].race, u and u[0].race;
end
-- UnitReaction(attacker,attacked) [HALF] --
function UnitReaction(attacker,attacked)
	if(UnitCanAttack(attacker,attacked)) then return 2; end		-- bit simplistic yes =)
	return 5;
end
-- UnitSex(who) [FULL] --
function UnitSex(who)
	local u = WOWB_GetUnit(who);
	return u and (u[0].sex or 1);
end
-- UnitStat(who) [DUD] --
function UnitStat(who)
		return 10, 10, 0, 0;
end
-- UnitThreatSituation(who, mob) [DUD] --
function UnitThreatSituation(who, mob)
		return 3;
end
-- UnitXP(who) [FULL] --
function UnitXP(who)
	if(who=="player") then
		return Me[0].xp;
	end
	return nil;
end
-- UnitXPMax(who) [FULL] --
function UnitXPMax(who)
	if(who=="player") then
		return Me[0].xpmax;
	end
	return nil;
end
-- VoiceEnumerateCaptureDevices(deviceIndex) [DUD] --
function VoiceEnumerateCaptureDevices(deviceIndex)
		return "Default fake WoWBench Mic";
end
-- VoiceEnumerateOutputDevices(deviceIndex) [DUD] --
function VoiceEnumerateOutputDevices(deviceIndex)
		return "Default fake WoWBench Audio";
end
