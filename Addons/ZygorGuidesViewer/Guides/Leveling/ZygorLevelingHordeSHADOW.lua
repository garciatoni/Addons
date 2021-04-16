local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Nightborne Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('Nightborne') and not raceclass('DeathKnight') end,
condition_valid_msg="Nightborne only.",
condition_suggested=function() return raceclass('Nightborne') and level < 10.5 and not completedq(50303) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk First Arcanist Thalyssra##131326
accept For the Horde##49933 |goto Suramar/0 59.33,85.53
step
talk Ambassador Blackguard##133407
turnin For the Horde##49933 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50303 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 50303/1 |goto 49.67,76.47
step
talk Melitier Vahlouran##131328
turnin Stranger in a Strange Land##50303 |goto 49.79,76.41
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Highmountain Tauren Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('HighmountainTauren') and not raceclass('DeathKnight') end,
condition_valid_msg="Highmountain Tauren only.",
condition_suggested=function() return raceclass('HighmountainTauren') and level < 10.5 and not completedq(50319) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Mayla Highmountain##93826
|tip Downstairs inside the building.
accept For the Horde##49773 |goto Thunder Totem/6 54.81,63.23
step
talk Ambassador Blackguard##133407
turnin For the Horde##49773 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50319 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 50319/1 |goto 49.67,76.47
step
talk Halian Shlavahawk##131201
turnin Stranger in a Strange Land##50319 |goto 49.79,76.41
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Mag'har Orc Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('MagharOrc') and not raceclass('DeathKnight') end,
condition_valid_msg="Mag'har Orc only.",
condition_suggested=function() return raceclass('MagharOrc') and level < 10.5 and not completedq(53502) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Overlord Geya'rah##143845
accept For the Horde##51485 |goto Orgrimmar/1 70.45,44.52
step
talk Ambassador Blackguard##133407
turnin For the Horde##51485 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##53502 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 53502/1 |goto 49.67,76.47
step
talk Limbflayer Lasha##143979
turnin Stranger in a Strange Land##53502 |goto 49.79,76.41
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Zandalari Troll Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('ZandalariTroll') and not raceclass('DeathKnight') end,
condition_valid_msg="Zandalari Troll only.",
condition_suggested=function() return raceclass('ZandalariTroll') and level < 10.5 and not completedq(55138) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Queen Talanji##146335
accept For the Horde##55137 |goto Dazar'alor/0 49.93,46.60
step
click Portal to Orgrimmar
Take the Portal to Orgrimmar |q 55137/1 |goto 49.94,43.85
step
talk Ambassador Blackguard##133407
turnin For the Horde##55137 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##55138 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 55138/1 |goto 49.67,76.47
step
talk Natal'hakata##150909
turnin Stranger in a Strange Land##55138 |goto 49.79,76.41
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Vulpera Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('Vulpera') and not raceclass('DeathKnight') end,
condition_valid_msg="Vulpera only.",
condition_suggested=function() return raceclass('Vulpera') and level == 10 and not completedq(58124) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Nilsa##160452
accept For the Horde##58122 |goto Orgrimmar/1 64.64,46.51
step
talk Ambassador Blackguard##133407
turnin For the Horde##58122 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##58124 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 58124/1 |goto 49.67,76.47
step
talk Nilsa##160452
turnin Stranger in a Strange Land##58124 |goto 64.64,46.51
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-50)\\Allied Race Death Knight Starter",{
author="support@zygorguides.com",
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return (raceclass('pandaren') or raceclass('highmountaintauren') or raceclass('zandalaritroll') or raceclass('nightborne') or raceclass('magharorc') or raceclass('vulpera')) and raceclass('DeathKnight') and level < 10.5 end,
condition_suggested_exclusive=true,
condition_valid=function() return (raceclass('pandaren') or raceclass('nightborne') or raceclass('highmountaintauren') or raceclass('magharorc') or raceclass('zandalaritroll') or raceclass('vulpera')) and raceclass('DeathKnight') and level < 10.5 end,
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58903) end,
},[[
step
talk The Lich King##163016
accept Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
step
Use the _"Swear Fealty"_ ability
|tip It appears as a button on the screen.
Swear Fealty |q 58877/1 |goto 49.51,90.71
step
talk The Lich King##163016
turnin Death's Power Grows##58877 |goto 49.51,90.71
accept Defender of Azeroth##58903 |goto 49.51,90.71
step
talk Highlord Darion Mograine##161709
Tell him _"Reporting for duty."_
Speak with Highlord Darion Mograine |q 58903/1 |goto 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58903/3 |goto 49.97,38.80
step
click Warchief's Command Board
Use the Warchief's Command Board |q 58903/4 |goto Orgrimmar/0 49.66,76.46
step
Click the Complete Quest Box:
turnin Defender of Azeroth##58903
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
