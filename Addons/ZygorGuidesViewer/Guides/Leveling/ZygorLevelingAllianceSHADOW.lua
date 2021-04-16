local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Void Elf Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('VoidElf') and not raceclass('DeathKnight') end,
condition_valid_msg="Void Elf only.",
condition_suggested=function() return raceclass('VoidElf') and level < 10.5 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Alleria Windrunner##131345
accept For the Alliance##49788 |goto Telogrus Rift/0 28.54,22.27
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49788 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50305 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 50305/1 |goto 62.25,29.94
step
talk Keira Onyxraven##131347
turnin Stranger in a Strange Land##50305 |goto 62.49,29.73
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Lightforged Draenei Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('LightforgedDraenei') and not raceclass('DeathKnight') end,
condition_valid_msg="Lightforged Draenei only.",
condition_suggested=function() return raceclass('LightforgedDraenei') and level < 10.5 and not completedq(50313) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Captain Fareeya##130993
accept For the Alliance##49772 |goto Vindicaar Scenario/1 49.22,43.80
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49772 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50313 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 50313/1 |goto 62.25,29.94
step
talk Vindicator Minkey##131334
turnin Stranger in a Strange Land##50313 |goto 62.49,29.73
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dark Iron Dwarf Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('DarkIronDwarf') and not raceclass('DeathKnight') end,
condition_valid_msg="Dark Iron Dwarf only.",
condition_suggested=function() return raceclass('DarkIronDwarf') and level < 10.5 and not completedq(53500) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Moira Thaurissan##144152
accept Fer the Alliance##51486 |goto Shadowforge City/0 56.43,31.84
step
talk Ambassador Moorgard##133362
turnin Fer the Alliance##51486 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##53500 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 53500/1 |goto 62.25,29.94
step
talk Mudrik Leger##143978
turnin Stranger in a Strange Land##53500 |goto 62.49,29.73
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Kul Tiran Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('KulTiran') and not raceclass('DeathKnight') end,
condition_valid_msg="Kul Tiran only.",
condition_suggested=function() return raceclass('KulTiran') and level < 10.5 and not completedq(55146) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Katherine Proudmoore##150941
|tip Inside the building.
accept For the Alliance##55142 |goto Boralus/0 67.71,21.78
step
Enter the building |goto 70.38,17.72 < 7 |walk
click Portal to Stormwind
|tip Inside the building.
Take the Portal to Stormwind |q 55142/1 |goto 70.11,16.79
step
talk Ambassador Moorgard##133362
turnin For the Alliance##55142 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##55146 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 55146/1 |goto 62.25,29.94
step
talk Provisioner Fray##150947
turnin Stranger in a Strange Land##55146 |goto 62.49,29.73
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Mechagnome Starter",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_valid=function() return raceclass('Mechagnome') and not raceclass('DeathKnight') end,
condition_valid_msg="Mechagnome only.",
condition_suggested=function() return raceclass('Mechagnome') and level < 10.5 and not completedq(58147) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Shadowlands (50-60)\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Gelbin Mekkatorque##159587
accept For the Alliance##58146 |goto Mechagon City/1 18.65,67.50
step
Teleport to Stormwind |q 58146/1 |goto 20.44,59.96
|tip Walk onto the Stormwind Teleportation Unit.
step
talk Ambassador Moorgard##133362
turnin For the Alliance##58146 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##58147 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 58147/1 |goto 62.25,29.94
step
talk Lulana##160600
turnin Stranger in a Strange Land##58147 |goto 62.49,29.73
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-50)\\Allied Race Death Knight Starter",{
author="support@zygorguides.com",
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return (raceclass('pandaren') or raceclass('voidelf') or raceclass('lightforgeddraenei') or raceclass('darkirondwarf') or raceclass('kultiran') or raceclass('mechagnome')) and raceclass('DeathKnight') and level < 10.5 end,
condition_suggested_exclusive=true,
condition_valid=function() return (raceclass('pandaren') or raceclass('voidelf') or raceclass('lightforgeddraenei') or raceclass('darkirondwarf') or raceclass('kultiran') or raceclass('mechagnome')) and raceclass('DeathKnight') and level < 10.5 end,
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58902) end,
startlevel=10,
endlevel=11,
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
accept Defender of Azeroth##58902 |goto 49.51,90.71
step
talk Highlord Darion Mograine##161709
Tell him _"Reporting for duty."_
Speak with Highlord Darion Mograine |q 58902/1 |goto 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58902/3 |goto 49.97,38.80
step
click Hero's Call Board
Use the Hero's Call Board |q 58902/4 |goto Stormwind City/0 62.91,71.54
step
Click the Complete Quest Box:
turnin Defender of Azeroth##58902
|next Leveling Guides\\Shadowlands (50-60)\\Chromie Time
]])
