local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

	{"section", text=[[|cffffcc00Events|r.]]},
	{"list", text=[[ **In Game events**]], folder="EVENTS\\"},

	{"section", text=[[|cffffcc00General|r.]]},
	{"list", text=[[ **Shadowlands Leveling Guides**]], folder="LEVELING\\Shadowlands (50-60)"},
	{"list", text=[[ **Shadowlands Dungeon Guides**]], folder="DUNGEONS\\Shadowlands Dungeons"},
	{"list", text=[[ **Shadowlands Dailies Guides**]], folder="DAILIES\\Shadowlands (50-60)"},
	{"list", text=[[ **Shadowlands Professions Guides**]], folder="PROFESSIONS\\"},


}


-- faction="Alliance" {"separator"},