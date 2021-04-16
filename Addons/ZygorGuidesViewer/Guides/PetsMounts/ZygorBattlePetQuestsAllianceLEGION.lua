local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Deadmines",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Deadmines pet battle dungeon.",
keywords={"Pet", "Battle", "DM", "Westfall", "Defias", "Eastern", "Kingdoms"},
condition_suggested=function() return level >= 45 and completedq(45423) and not completedq(46291) end,
condition_valid=function() return level >= 45 and completedq(45423) end,
condition_valid_msg="You have not unlocked the Deadmines pet battle dungeon!\n"..
"Complete the quest \"Wailing Critters\" in the "..
"\"Wailing Caverns\" pet battle guide.",
startlevel=45.0,
},[[
step
talk Breanni##96479
accept Deadmines, Part Three?##46293 |goto Dalaran L/10 58.42,39.22
|only if not completedq(46293)
step
talk Marcus "Bagman" Brown##119390
|tip He is behind the barn, outside, before you go into the mines.
turnin Deadmines, Part Three?##46293 |goto Westfall/0 41.56,71.13 |only if not completedq(46291)
accept The Deadmines Strike Back##46291 |goto Westfall/0 41.56,71.13 |only if not completedq(46291)
accept Pet Battle Challenge: Deadmines##46292 |goto Westfall/0 41.56,71.13 |only if completedq(46291)
|tip This is a weekly quest! |only if completedq(46291)
step
This is a weekly account wide quest
|tip There are 9 pet battles in which you need to defeat to complete this dungeon. Get as many level 25 pets as you can before attempting this.
|tip While doing this weekly quest, you will not be able to heal your pets while inside.
confirm
|only if completedq(46291)
step
talk Marcus "Bagman" Brown##119390
Tell him: _"Take me into the Deadmines."_ |goto Westfall/0 41.48,71.13
Ask Marcus Brown to take you into the Deadmines |q 46291/1 |goto Westfall/0 41.48,71.13 |only if not completedq(46291)
|confirm |or
step
Start the scenario |goto Westfall/0 41.48,71.13 |scenariostart
step
Enter the Deadmines |goto Deadmines Scenario/1 62.09,70.82 |walk
Follow the path down |goto Deadmines Scenario/1 66.02,64.19 |walk
Defeat Foe Reaper 50 |goto Deadmines Scenario/2 9.64,81.67 |scenariogoal 1/35577
|tip Foe Reaper 50 is a Mechanical boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Elemental pets are good counters to Foe Reaper 50.
step
Defeat Unfortunate Defias |scenariogoal 2/35591 |goto Deadmines Scenario/2 13.23,59.95
|tip This is an Uncommon quality Undead pet with 2 Flying pets after.
|tip Although the first pet is Uncommon quality, it is considered Elite and takes 50 percent reduced damage.
step
Defeat Angry Geode |scenariogoal 2/35594 |goto Deadmines Scenario/2 22.82,59.14
|tip This is an Uncommon quality Elemental pet with 2 Flying pets after.
|tip Although the first pet is Uncommon quality, it is considered Elite and takes 50 percent reduced damage.
step
Defeat Mining Monkey |scenariogoal 3/35587 |goto Deadmines Scenario/2 27.41,50.75
|tip This is a Rare quality Beast pet with 2 Critter pets after.
|tip The first pet is considered Elite and takes 50 percent reduced damage.
|tip Strong damaging Mechanical pets are good counters to Mining Monkey.
step
map Deadmines Scenario/2
path follow smart; loop off; ants curved; dist 15
path	29.31,50.39	41.05,48.35	42.85,36.60
path	46.98,20.86
Follow the path avoiding the cannon shots |goto 46.98,20.86
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat "Captain" Klutz |scenariogoal 4/35612 |goto Deadmines Scenario/2 52.79,20.23
|tip "Captain" Klutz is a Humanoid boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Undead pets are good counters to "Captain" Klutz.
step
map Deadmines Scenario/2
path follow smart; loop off; ants curved; dist 15
path	56.01,26.24	53.29,36.24	54.91,50.84
Follow the path |goto 54.91,50.84
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Defeat Klutz's Battle Rat |scenariogoal 5/35613 |goto Deadmines Scenario/2 55.03,57.27
|tip This is an Uncommon quality Critter pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Defeat Klutz's Battle Monkey |scenariogoal 5/35615 |goto Deadmines Scenario/2 52.53,44.54
|tip This is an Uncommon quality Beast pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Defeat Klutz's Battle Bird |scenariogoal 5/35614 |goto Deadmines Scenario/2 54.67,38.02
|tip This is an Uncommon quality Flying pet with 2 random pets after.
|tip Although the first pet is Uncommon quality it is considered Elite and takes 50 percent reduced damage.
step
Get onto the ship |goto Deadmines Scenario/2 58.37,38.89
|tip Wait for the dialogue to complete.
Confront the Shadowy Figure |scenariogoal 6/35617
step
Defeat Cookie's Leftovers |scenariogoal 7/35616 |goto Deadmines Scenario/2 60.38,39.19
|tip Cookie's Leftovers is a Legendary Magic boss pet and its damage taken is reduced by 50 percent.
|tip Strong damaging Dragonkin pets are good counters to Cookie's Leftovers.
step
Right click your portrait and click "Leave Instance Group"
talk Marcus "Bagman" Brown##119390
turnin The Deadmines Strike Back##46291 |goto Westfall/0 41.48,71.13 |only if not completedq(46291)
turnin Pet Battle Challenge: Deadmines##46292 |goto Westfall/0 41.48,71.13 |only if completedq(46291)
step
Congratulations you have compelted the Pet Dungeon Deadmines!
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Wailing Caverns",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Wailing Caverns pet battle dungeon.",
keywords={"Pet", "Battle", "WC", "Barrens", "Deviate", "Kalimdor"},
condition_suggested=function() return level >= 45 and not completedq(45423) end,
startlevel=45.0,
},[[
step
talk Lio the Lioness##98725
accept A Call from the Caverns##45540 |goto Dalaran L/10 59.32,39.53
step
talk Muyani##116781
|tip Inside the cave just above the main cave entrance.
turnin A Call from the Caverns##45540 |goto Northern Barrens/20 23.51,81.33
step
label "Accept_Challenge_Quest"
talk Muyani##116781
|tip Inside the cave just above the main cave entrance.
accept Wailing Critters##45423 |goto Northern Barrens/20 23.51,81.33 |only if not completedq(45423)
accept Pet Battle Challenge: Wailing Caverns##45539 |goto Northern Barrens/20 23.28,81.58 |only if completedq(45423)
|tip This is a weekly quest. |only if completedq(45423)
step
talk Muyani##116781
|tip Inside the cave above the entrance to the Wailing Caverns.
Tell her _"Take me into the Wailing Caverns."_
Enter the Wailing Caverns Pet Battle Dungeon |scenariostart |goto 23.51,81.33 |q 45539
step
clicknpc Deviate Smallclaw##116786
|tip It walks around this area.
Defeat Deviate Smallclaw |scenariogoal 1/34860 |goto WC Pet Battle/0 62.04,67.16 |q 45539
step
clicknpc Deviate Chomper##116788
|tip It walks around this area.
Defeat Deviate Chomper |scenariogoal 1/34862 |goto 60.90,70.17 |q 45539
step
clicknpc Deviate Flapper##116787
|tip It flies around this area.
Defeat Deviate Flapper |scenariogoal 1/34861 |goto 62.16,74.58 |q 45539
step
clicknpc Son of Skum##116789
Defeat Son of Skum |scenariogoal 2/34863 |goto 61.31,79.37 |q 45539
step
clicknpc Phyxia##116792
|tip It crawls around this area.
Defeat Phyxia |scenariogoal 3/34868 |goto 56.55,89.07 |q 45539
step
clicknpc Dreadcoil##116791
|tip It crawls up and down the path leading up.
Defeat Dreadcoil |scenariogoal 3/34867 |goto 56.39,78.53 |q 45539
step
clicknpc Vilefang##116790
Defeat Vilefang |scenariogoal 3/34866 |goto 55.43,72.10 |q 45539
step
Follow the path up |goto 50.79,63.86 < 20 |walk
clicknpc Hiss##116793
|tip It crawls around this area.
Defeat Hiss |scenariogoal 4/34865 |goto 63.53,59.18 |q 45539
step
Follow the path up |goto 72.41,66.27 < 20 |walk
Continue following the path |goto 69.32,83.37 < 20 |walk
clicknpc Growing Ectoplasm##116794
Defeat Growing Ectoplasm |scenariogoal 5/34864 |goto 60.68,81.67 |count 1 |q 45539
step
Follow the path up |goto 57.66,78.52 < 20 |walk
|tip Jump over the gap.
clicknpc Growing Ectoplasm##116794
Defeat Growing Ectoplasm |scenariogoal 5/34864 |goto 54.35,64.42 |count 2 |q 45539
step
Watch the Dialogue
Confront the Shadowy Figure |scenariogoal 6/34939 |goto 54.39,60.64 |q 45539
step
Follow the path up |goto 54.39,60.64 < 10 |walk
clicknpc Budding Everliving Spore##116795
Defeat Budding Everliving Spore |scenariogoal 7/34869 |goto 57.88,49.76 |q 45539
step
Leave Wailing Caverns |goto Northern Barrens/20 23.28,81.58 < 1000 |c |noway |q 45539 |future
|tip Right-click your character portrait and select "Leave Instance Group."
step
talk Muyani##116781
turnin Wailing Critters##45423 |goto Northern Barrens/20 23.51,81.33 |only if not completedq(45423)
turnin Pet Battle Challenge: Wailing Caverns##45539 |goto Northern Barrens/20 23.51,81.33 |only if completedq(45423)
step
_Congratulations!_
You Compelted the "Wailing Caverns" Pet Battle Dungeon.
|tip The challenge quest can be completed once per week.
|tip This guide will reset when you can complete it again.
'|condition not completedq(45539) |next "Accept_Challenge_Quest"
]])
