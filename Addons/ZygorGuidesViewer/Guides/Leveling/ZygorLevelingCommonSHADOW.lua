local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the introductory questline for the Shadowlands expansion.\n\n",
image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsIntro",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
accept A Chilling Summons##60545 |goto Stormwind City/0 76.71,42.75
|tip You will automatically accept this quest.
|only if Alliance
step
talk High Inquisitor Whitemane##171789
Tell her _"Tell me what happened."_
Learn About Your Leaders' Fate |q 60545/1 |goto Stormwind City/0 76.71,42.75
|only if Alliance
step
Watch the dialogue
click Death Gate to Acherus
Take the Death Gate to Acherus |q 60545/2 |goto 77.07,42.10
|only if Alliance
step
Take the Telporter to the Frozen Throne |q 60545/3 |goto Icecrown Citadel Intro/0 59.83,21.14
|tip Walk onto the teleport pad nearby this location.
|only if Alliance
step
talk Highlord Bolvar Fordragon##169076
turnin A Chilling Summons##60545 |goto Icecrown Citadel Intro/2 50.78,53.71
accept Through the Shattered Sky##59751 |goto Icecrown Citadel Intro/2 50.78,53.71
|only if Alliance
step
accept A Chilling Summons##61874 |goto Orgrimmar/1 51.64,81.09
|tip You will automatically accept this quest.
|only if Horde
step
talk Nazgrim##171791
Tell him _"Tell me what happened."_
Learn About Your Leaders' Fate |q 61874/1 |goto 50.39,76.57
|only if Horde
step
Watch the dialogue
click Death Gate to Acherus
Take the Death Gate to Acherus |q 61874/2 |goto 48.45,77.25
|only if Horde
step
Take the Telporter to the Frozen Throne |q 61874/3 |goto Icecrown Citadel Intro/0 59.83,21.14
|tip Walk onto the teleport pad nearby this location.
|only if Horde
step
talk Highlord Bolvar Fordragon##169076
turnin A Chilling Summons##61874 |goto Icecrown Citadel Intro/2 50.78,53.71
accept Through the Shattered Sky##59751 |goto Icecrown Citadel Intro/2 50.78,53.71
|only if Horde
step
Watch the dialogue
Hear Bolvar's Instructions |q 59751/1 |goto 50.78,53.71
step
click Shard of Domination
Carry the First Shard |havebuff 968649 |goto 49.79,51.71 |q 59751
step
click Place Shard
Place the First Shard |q 59751/2 |goto 54.90,44.70
step
click Shard of Domination
Carry the Second Shard |havebuff 968649 |goto 49.79,51.71 |q 59751
step
click Place Shard
Place the Second Shard |q 59751/3 |goto 54.87,59.64
step
click Shard of Domination
Carry the Third Shard |havebuff 968649 |goto 49.79,51.71 |q 59751
step
click Place Shard
Place the Third Shard |q 59751/4 |goto 44.88,59.79
step
click Shard of Domination
Carry the Fourth Shard |havebuff 968649 |goto 49.79,51.71 |q 59751
step
click Place Shard
Place the Fourth Shard |q 59751/5 |goto 44.74,44.91
step
click Shard of Domination
Watch the dialogue
Complete the Ritual |q 59751/6 |goto 49.79,51.71
step
Enter the Maw |goto The Maw Intro/0 19.19,57.51 < 10 |noway |c |q 59751
step
talk Highlord Darion Mograine##165918
turnin Through the Shattered Sky##59751 |goto 19.31,57.22
accept A Fractured Blade##59752 |goto 19.31,57.22
step
_Next to you:_
talk Highlord Darion Mograine
accept Mawsworn Menace##59907
stickystart "Rally_Death_Knights"
stickystart "Slay_Mawsworn_Forces"
step
talk Wilona Thorne##170624
accept Ruiner's End##59753 |goto 22.96,51.90
step
label "Rally_Death_Knights"
talk Knight of the Ebon Blade##166963+
|tip They look like friendly Death Knight NPC's on the ground around this area.
|tip If they are fighting, kill the enemies they are fighting to rally them.
Rally #10# Death Knights |q 59752/1 |goto 22.37,51.41
step
label "Slay_Mawsworn_Forces"
Kill enemies around this area
Say #8# Mawsworn Forces |q 59907/1 |goto 22.37,51.41
step
_Next to you:_
talk Highlord Darion Mograine
turnin A Fractured Blade##59752
turnin Mawsworn Menace##59907
step
kill Ruiner Maroth##166714 |q 59753/1 |goto 19.32,46.08
|tip Use the "Ebon Clarion" ability to summon allies to help you fight.
|tip It appears as a button on the screen.
step
Regroup with Mograine |q 59753/2 |goto 21.50,41.96
step
talk Highlord Darion Mograine##165918
turnin Ruiner's End##59753 |goto 21.50,41.96
accept Fear to Tread##59914 |goto 21.50,41.96
step
Find the First Clue |q 59914/1 |goto 22.21,43.12
step
Find the Second Clue |q 59914/2 |goto 20.90,38.90
step
Find the Third Clue |q 59914/3 |goto 21.70,35.69
step
Watch the dialogue
Find Jaina |q 59914/4 |goto 22.30,32.94
step
talk Lady Jaina Proudmoore##166980
turnin Fear to Tread##59914 |goto 22.30,32.94
accept On Blackened Wings##59754 |goto 22.30,32.94
step
Watch the dialogue
Follow Jaina |q 59754/1 |goto 22.30,32.94
step
kill 6 Mawsworn Kyrian##165983 |q 59754/2 |goto 22.30,32.94
step
talk Lady Jaina Proudmoore##166980
turnin On Blackened Wings##59754 |goto 23.16,31.72
accept A Flight from Darkness##59755 |goto 23.16,31.72
step
talk Lady Jaina Proudmoore##166980
Tell her _"I am ready."_
Begin Following Lady Jaina Proudmoore |goto 23.16,31.72 > 15 |c |q 59755
step
Watch the dialogue
|tip Follow Lady Jaina Proudmoore and protect her as she walks.
|tip She eventually walks to this location inside the cave.
Escort Jaina to Forlorn Respite |q 59755/1 |goto 24.46,36.23
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin A Flight from Darkness##59755 |goto 24.46,36.23
accept A Moment's Respite##59756 |goto 24.46,36.23
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Tell her _"Tell me about this place."_
Watch the dialogue
Speak to Jaina |q 59756/1 |goto 24.46,36.23
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Tell her _"Tell me more of the Jailer."_
Watch the dialogue
Ask About the Jailer |q 59756/2 |goto 24.85,36.27
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
Ask her _"What about the others who were taken?"_
Watch the dialogue
Ask About the Other Captives |q 59756/3 |goto 24.88,36.01
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin A Moment's Respite##59756 |goto 24.46,36.23
step
talk Highlord Darion Mograine##165918
|tip Inside the cave.
accept Field Seance##59757 |goto 24.54,36.04
step
Leave the cave |goto 25.49,32.58 < 15 |walk
kill Malice Shadow##165909+
|tip They will become weakened and unattackable.
use the Shattered Helm of Domination##178495
|tip Use it on weakened Malice Shadows.
Command #5# Malice Shadows |q 59757/1 |goto 27.59,32.11
step
_Next to you:_
talk Highlord Darion Mograine
turnin Field Seance##59757
accept Speaking to the Dead##59758
step
kill Tormented Amalgamation##165976
|tip It will become weakened and unattackable.
use the Shattered Helm of Domination##184313
|tip Use it on the weakened Tormented Amalgamation.
Command the Tormented Amalgamation |q 59758/1 |goto 27.95,30.86
step
_Next to you:_
talk Highlord Darion Mograine
turnin Speaking to the Dead##59758
accept Soul in Hand##59915
step
Enter the cave |goto 25.50,32.56 < 15 |walk
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
turnin Soul in Hand##59915 |goto 24.46,36.23
accept The Lion's Cage##59759 |goto 24.46,36.23
step
Leave the cave |goto 25.49,32.58 < 15 |walk
Cross the bridge |goto 24.05,25.87 < 20 |only if walking
Reach the Upper Tremaculum |q 59759/1 |goto 27.61,17.47
|tip Walk onto the teleport pad.
step
Watch the dialogue
Find Anduin |q 59759/2 |goto 25.85,14.98
step
talk Lady Jaina Proudmoore##166980
Choose _<Lie low and observe.>_
Speak to Jaina |q 59759/3 |goto 25.85,14.98
step
talk Anduin Wrynn##167833
turnin The Lion's Cage##59759 |goto 25.05,13.41
accept The Afflictor's Key##59760 |goto 25.05,13.41
accept An Undeserved Fate##59761 |goto 25.05,13.41
stickystart "Release_Shackled_Souls"
step
Locate the Teleport Pad |goto 28.26,19.02 < 20 |c |q 59761
step
Use the Teleport Pad |goto 28.26,19.02
|tip Walk onto the teleport pad.
Teleport to the Ground |goto 27.54,17.32 < 10 |noway |c |q 59761
step
Run up the stairs |goto 27.49,14.45 < 15 |only if walking
kill Phael the Afflictor##167834
collect Afflictor's Key##178558 |q 59760/1 |goto 28.62,11.95
step
label "Release_Shackled_Souls"
Kill Mawsworn enemies around this area
collect Mawsworn Key##178553+ |n
click Mawsteel Cage+
|tip They look like silver cages on the ground around this area.
Release #15# Shackled Souls |q 59761/1 |goto 29.37,15.33
step
Use the Teleport Pad |goto 27.63,17.41
|tip Walk onto the teleport pad.
Teleport Back Up to Anduin |goto 28.20,18.90 < 10 |noway |c |q 59760
step
click Mawforged Lock
Open the Mawforged Lock |q 59760/2 |goto 24.95,13.52 |count 1
step
click Mawforged Lock
Open the Mawforged Lock |q 59760/2 |goto 25.15,13.28 |count 2
step
talk Anduin Wrynn##167833
turnin The Afflictor's Key##59760 |goto 25.05,13.41
turnin An Undeserved Fate##59761 |goto 25.05,13.41
accept From the Mouths of Madness##59776 |goto 25.05,13.41
step
Watch the dialogue
click Portal to Forlorn Respite
Take the Portal to Forlorn Respite |q 59776/1 |goto 25.36,13.91
step
talk Highlord Darion Mograine##165918
|tip Inside the cave.
Tell him _"Make it talk."_
Watch the dialogue
Speak to Darion Mograine |q 59776/2 |goto 24.31,37.18
step
Watch the dialogue
|tip Inside the cave.
talk Highlord Darion Mograine##165918
turnin From the Mouths of Madness##59776 |goto 24.31,37.18
step
talk Lady Jaina Proudmoore##166980
|tip Inside the cave.
accept By and Down the River##59762 |goto 24.28,37.04
step
Leave the cave |goto 25.52,32.58 < 15 |walk
Cross the bridge |goto 29.03,36.11 < 20 |only if walking
Watch the dialogue
Cross the River of Souls |q 59762/1 |goto 30.02,36.60
step
Escape the River |q 59762/2 |goto 29.45,41.41
step
talk Lady Jaina Proudmoore##166980
turnin By and Down the River##59762 |goto 29.78,42.44
step
talk Thrall##166981
accept Wounds Beyond Flesh##59765 |goto 29.50,43.80
step
_Next to you:_
talk Thrall
accept A Good Axe##59766
stickystart "Find_A_Suitable_Weapon"
step
kill Mawsworn Soulrender##169687+
collect Wither Blade##180050 |q 59765/1 |goto 31.84,41.78
step
label "Find_A_Suitable_Weapon"
click Mawsworn Armaments+
|tip They look like weapon racks on the ground around this area.
Find a Suitable Weapon |q 59766/1 |goto 31.84,41.78
step
_Next to you:_
talk Thrall
turnin Wounds Beyond Flesh##59765
turnin A Good Axe##59766
accept Draw Out the Darkness##60644
step
click Place Blade
Watch the dialogue
kill Withering Presence##169759 |q 60644/2 |goto 29.51,43.88
step
Watch the dialogue
talk Baine Bloodhoof##168162
turnin Draw Out the Darkness##60644 |goto 29.46,43.88
step
talk Lady Jaina Proudmoore##166980
accept The Path to Salvation##59767 |goto 29.47,44.02
step
Watch the dialogue
talk Lady Jaina Proudmoore##166980
|tip She walks to this location.
Tell her _"I am ready."_
Speak to Jaina |q 59767/1 |goto 31.83,44.41
step
Watch the dialogue
Become Invisible |havebuff spell:327876 |goto 31.83,44.41 |q 59767
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip They eventually walk to this location.
|tip Avoid the enemies with blue circles beneath them.
Reach the Eroded Waygate |q 59767/2 |goto 42.49,42.36
step
talk Anduin Wrynn##167833
turnin The Path to Salvation##59767 |goto 42.49,42.18
accept Stand as One##59770 |goto 42.49,42.18
step
click Eroded Waystone
Touch the Eroded Waystone |q 59770/1 |goto 42.38,42.16
step
Kill the enemies that attack in waves
|tip Fill the blue bar at the bottom of the screen.
|tip The bar will not fill up completely.
Survive the Jailer's Onslaught |q 59770/2 |goto 42.57,42.17
step
click Eroded Waystone
turnin Stand as One##59770 |goto 42.37,42.16
step
Leave the Maw |goto Oribos/0 19.24,50.31 < 10 |noway |c |q 60129 |future
step
_Detecting Threads of Fate Eligibility:_
Threads of Fate Unlocked	|havebuff spell:343980		|q 62704	|future		|or	|next "Threads_Of_Fate_Choice"
Threads of Fate Not Unlocked	|nobuff spell:343980						|or	|next "Main_Character_Or_Replay_Storyline"	|only if not havequest(62704) and not completedq(62704)
step
label "Threads_Of_Fate_Choice"
Watch the dialogue
talk Fatescribe Roh-Tahl##174871
|tip He floats to this location.
accept The Threads of Fate##62704 |goto Oribos/0 20.41,50.28
step
talk Fatescribe Roh-Tahl##174871
Tell him _"I am ready to choose my fate in the Shadowlands."_
|tip You can level normally with story quests, or with the Threads of Fate.
|tip To unlock the Threads of Fate, you must complete the Shadowlands story campaign, and the first chapter of your covenant on at least one previous character.
|tip For your first character that enters the Shadowlands, you cannot level with the Threads of Fate.
|tip Leveling by doing only story quests is faster than with the Threads of Fate.
|tip However, Threads of Fate lets you get a little head start on the endgame, so it's a tradeoff, and mostly preference.
|tip Choosing "The Threads of Fate" will allow you to choose your covenant immediately, skip normal story questing, and instead level up by completing world quests, dungeons, and side quest.
|tip Choosing "Replay Storyline" will allow you to quest as you normally would through the zones in the Shadowlands, completing story quest, and choosing your covenant at level 60.
Choose Your Shadowlands Experience |q 62704/1 |goto 20.41,50.28
step
talk Fatescribe Roh-Tahl##174871
turnin The Threads of Fate##62704 |goto 20.41,50.28
step
talk Fatescribe Roh-Tahl##174871
|tip You will only be able to accept one of these quests.
accept Re-Introductions##62716				|goto 19.61,50.27	|or	|next "Alt_Skip_Normal_Questing"
accept Stranger in an Even Stranger Land##60129		|goto 19.61,50.27	|or	|next "Main_Character_Or_Replay_Storyline"
step
label "Alt_Skip_Normal_Questing"
talk Tal-Inara##159478
turnin Re-Introductions##62716 |goto Oribos/0 38.88,70.00
accept Choosing Your Purpose##62000 |goto Oribos/0 38.88,70.00
step
click Shadowlands Covenant Map
|tip Join the Covenant you like the best.
|tip Before choosing, you can talk to them all nearby, if you want to refresh yourself on what each of them offers.
Choose Your Covenant |q 62000/1 |goto 39.51,69.24
step
talk Tal-Inara##159478
turnin Choosing Your Purpose##62000 |goto 38.88,70.00
accept Aiding the Shadowlands##62159 |goto 38.88,70.00
step
talk Tal-Inara##159478
Tell her _"Show me how I can help the Shadowlands."_
|tip Accept the quest for Bastion.
accept Bastion##62275 |goto 38.88,70.00
Speak with Tal-Inara to Choose Where to Go |q 62159/1 |goto 38.88,70.00
step
talk Tal-Inara##159478
turnin Aiding the Shadowlands##62159 |goto 38.88,70.00
turnin Bastion##62275 |goto 38.88,70.00
accept The Elysian Fields##62707 |goto 38.88,70.00
step
talk Pathscribe Roh-Avonavi##162666
fpath Oribos |goto Oribos/1 60.90,68.69
step
talk Kalisthene##163427
turnin The Elysian Fields##62707 |goto Bastion/0 51.12,46.79 |region heros_rest
accept Bolstering Bastion##62723 |goto Bastion/0 51.12,46.79 |region heros_rest
step
_Complete Objectives in Bastion:_
|tip Complete side quests, bonus objectives, world quests, dungeons, and kill rare enemies in Bastion.
|tip Use the "Bastion (Threads of Fate)" leveling guide to complete side quests and discover flight paths.
|tip Click world quests and use their guides to complete them.
|tip Use the dungeon guides to complete dungeons.
|tip Fill up the blue bar in the quest tracker area.
Aid the Kyrian |q 62723/1
step
talk Kalisthene##163427
turnin Bolstering Bastion##62723 |goto Bastion/0 51.12,46.79 |region heros_rest
accept Return to Oribos##62729 |goto Bastion/0 51.12,46.79 |region heros_rest
step
talk Tal-Inara##159478
turnin Return to Oribos##62729 |goto Oribos/0 38.89,69.99
accept The Next Step##63208 |goto Oribos/0 38.89,69.99
step
talk Tal-Inara##159478
Tell her _"Show me how I can help the Shadowlands."_
|tip Accept the quest for Maldraxxus.
accept Maldraxxus##62278 |goto 38.88,70.00
Speak with Tal-Inara to Choose Where to Go |q 63208/1 |goto 38.88,70.00
step
talk Tal-Inara##159478
turnin The Next Step##63208 |goto 38.88,70.00
turnin Maldraxxus##62278 |goto 38.88,70.00
accept A Fresh Blade##62738 |goto 38.88,70.00
step
talk Secutor Mevix##175008
turnin A Fresh Blade##62738 |goto Maldraxxus/0 52.85,68.27
accept Rallying Maldraxxus##62748 |goto Maldraxxus/0 52.85,68.27
step
_Complete Objectives in Maldraxxus:_
|tip Complete side quests, bonus objectives, world quests, dungeons, and kill rare enemies in Maldraxxus.
|tip Use the "Maldraxxus (Threads of Fate)" leveling guide to complete side quests and discover flight paths.
|tip Click world quests and use their guides to complete them.
|tip Use the dungeon guides to complete dungeons.
|tip Fill up the blue bar in the quest tracker area.
Aid the Necrolords |q 62748/1
step
talk Secutor Mevix##175008
turnin Rallying Maldraxxus##62748 |goto Maldraxxus/0 52.85,68.28
accept Return to Oribos##62761 |goto Maldraxxus/0 52.85,68.28
step
talk Tal-Inara##159478
turnin Return to Oribos##62761 |goto Oribos/0 38.89,69.99
accept Furthering the Purpose##63209 |goto Oribos/0 38.89,69.99
step
talk Tal-Inara##159478
Tell her _"Show me how I can help the Shadowlands."_
|tip Accept the quest for Ardenweald.
accept Ardenweald##62277 |goto 38.88,70.00
Speak with Tal-Inara to Choose Where to Go |q 63209/1 |goto 38.88,70.00
step
talk Tal-Inara##159478
turnin Furthering the Purpose##63209 |goto 38.88,70.00
turnin Ardenweald##62277 |goto 38.88,70.00
accept Restoring Balance##62739 |goto 38.88,70.00
step
talk Lady Moonberry##172431
turnin Restoring Balance##62739 |goto Ardenweald/0 49.34,52.36
accept Support the Court##62763 |goto Ardenweald/0 49.34,52.36
step
_Complete Objectives in Ardenweald:_
|tip Complete side quests, bonus objectives, world quests, dungeons, and kill rare enemies in Ardenweald.
|tip Use the "Ardenweald (Threads of Fate)" leveling guide to complete side quests and discover flight paths.
|tip Click world quests and use their guides to complete them.
|tip Use the dungeon guides to complete dungeons.
|tip Fill up the blue bar in the quest tracker area.
Aid the Night Fae |q 62763/1
step
talk Lady Moonberry##172431
turnin Support the Court##62763 |goto Ardenweald/0 49.34,52.36
accept Return to Oribos##62776 |goto Ardenweald/0 49.34,52.36
step
talk Tal-Inara##159478
turnin Return to Oribos##62776 |goto Oribos/0 38.89,69.99
accept The Last Step##63210 |goto Oribos/0 38.89,69.99
step
talk Tal-Inara##159478
Tell her _"Show me how I can help the Shadowlands."_
|tip Accept the quest for Revendreth.
accept Revendreth##62279 |goto Oribos/0 38.88,70.00
Speak with Tal-Inara to Choose Where to Go |q 63210/1 |goto 38.88,70.00
step
talk Tal-Inara##159478
turnin The Last Step##63210 |goto 38.88,70.00
turnin Revendreth##62279 |goto 38.88,70.00
step
talk Tal-Inara##159478
accept Dark Aspirations##63037 |goto 38.88,70.00
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Dark Aspirations##63037 |goto Sinfall/0 51.83,37.56
accept Reinforcing Revendreth##62778 |goto Sinfall/0 51.83,37.56
step
_Complete Objectives in Revendreth:_
|tip Complete side quests, bonus objectives, world quests, dungeons, and kill rare enemies in Revendreth.
|tip Use the "Revendreth (Threads of Fate)" leveling guide to complete side quests and discover flight paths.
|tip Click world quests and use their guides to complete them.
|tip Use the dungeon guides to complete dungeons.
|tip Fill up the blue bar in the quest tracker area.
Aid the Venthyr |q 62778/1
Enter the building |goto 61.31,59.76 < 7 |walk
talk Prince Renathal##175056
|tip Downstairs inside the building.
turnin Reinforcing Revendreth##62778 |goto 61.47,60.43
step
Reach Level 60 |ding 60
|tip Complete world quests, dungeons, and kill rare enemies in Shadowlands.
|tip Click world quests and use their guides to complete them.
|tip Use the dungeon guides to complete dungeons.
|next "Which_Covenant_Did_You_Choose"
step
label "Main_Character_Or_Replay_Storyline"
talk Attendant Protector##168252
Ask him _"Where am I? Have I escaped the Maw?"_
Try to Communicate |q 60129/1 |goto Oribos/0 23.80,49.66
step
Watch the dialogue
|tip Follow the Protector Captain as he walks.
|tip He eventually walks to this location.
Follow the Guards into Oribos |q 60129/2 |goto 40.37,65.26
step
talk Overseer Kah-Delen##167425
Ask him _"Are you in charge here? Where am I?"_
Speak to Kah-Delen |q 60129/3 |goto 39.89,66.48
step
talk Overseer Kah-Delen##167425
turnin Stranger in an Even Stranger Land##60129 |goto 39.89,66.48
accept No Place for the Living##60148 |goto 39.89,66.48
step
talk Overseer Kah-Delen##167425
Tell him _"Yes, I escaped the Maw."_
Speak to the Overseers |q 60148/1 |goto 39.89,66.48
step
Watch the dialogue
Listen to the Overseers |q 60148/2 |goto 39.89,66.48
step
talk Tal-Inara##167486
turnin No Place for the Living##60148 |goto 40.84,65.82
accept Audience with the Arbiter##60149 |goto 40.84,65.82
step
talk Tal-Inara##167486
Tell her _"I will join you."_
Accompany Tal-Inara to Visit the Arbiter |q 60149/1 |goto 40.84,65.82
step
Watch the dialogue
|tip You will be teleported automatically.
Enter the Crucible |goto Oribos/3 48.75,48.71 < 10 |noway |c |q 60149
step
talk Tal-Inara##167486
Ask her _"What is this place?"_
Watch the dialogue
Ask About the Arbiter |q 60149/2 |goto Oribos/3 50.85,51.43
step
Watch the dailogue
Listen to Tal-Inara |q 60149/3 |goto 50.85,51.43
step
talk Tal-Inara##167486
Tell her _"I am ready to return."_
Watch the dialogue
Talk to Tal-Inara to Retun |q 60149/4 |goto 50.85,51.43
step
Return to the Ring of Fates |goto Oribos/0 40.02,65.59 < 10 |noway |c |q 60149
step
talk Overseer Kah-Delen##167425
turnin Audience with the Arbiter##60149 |goto Oribos/0 39.90,66.46
accept Tether to Home##60150 |goto Oribos/0 39.90,66.46
step
click Shadowlands Map
Affix the Helm of Domination |q 60150/1 |goto 39.83,68.70
step
Watch the dialogue
See if it Works |q 60150/2 |goto 39.83,68.70
step
talk Highlord Bolvar Fordragon##164079
turnin Tether to Home##60150 |goto 40.27,64.73
accept A Doorway Through the Veil##60151 |goto 40.27,64.73
step
talk Ebon Blade Acolyte##172378
Tell him _"Let's head outside."_
Speak to the Acolyte |q 60151/1 |goto 40.01,63.90
step
Watch the dialogue
|tip Follow the Ebon Blade Acolyte as he walks.
|tip He eventually walks to this location.
Head to the Landing |q 60151/2 |goto 21.83,50.50
step
talk Ebon Blade Acolyte##167682
Tell him _"Summon the portals here."_
Watch the dialogue
Establish Portals Back to Azeroth |q 60151/3 |goto 21.83,50.50
step
Return to the Overseers |q 60151/4 |goto 40.34,66.63
step
talk Overseer Kah-Sher##167424
turnin A Doorway Through the Veil##60151 |goto 40.34,66.63
accept The Eternal City##60152 |goto 40.34,66.63
step
talk Foreman Au'brak##167738
Ask him _"What is available here?"_
Visit the Hall of Shapes |q 60152/3 |goto 40.31,32.65
step
talk Caretaker Kah-Toll##166307
Ask him _"What is this Hall of Holding?"_
Visit the Hall of Holding |q 60152/4 |goto 60.53,31.28
step
talk Overseer Ta'readon##156768
Ask him _"What is this bazaar?"_
Visit the Hall of Curiosities |q 60152/1 |goto 64.38,68.33
step
talk Host Ta'rela##156688
Tell him _"Tahnk you for the kind welcome to your Inn."_
Visit the Innkeeper |q 60152/5 |goto 67.46,50.33
step
talk Fatescribe Roh-Tahl##164173
Ask him _"What is this place?"_
Speak to the Fatescribe |q 60152/2 |goto 79.00,49.13
step
talk Fatescribe Roh-Tahl##164173
turnin The Call of Fate##62801 |goto 79.00,49.13
|only if havequest(62801) or completedq(62801)
step
Return to the Enclave |q 60152/6 |goto 39.88,66.41
step
talk Overseer Kah-Delen##167425
turnin The Eternal City##60152 |goto 39.88,66.41
step
talk Highlord Bolvar Fordragon##164079
accept Understanding the Shadowlands##60154 |goto 40.27,64.74
step
talk Tal-Inara##167486
Ask her _"Can you help us find answers?"_
Watch the dialogue
Speak to Tal-Inara |q 60154/1 |goto 40.84,65.85
step
Watch the dialogue
Listen to Tal-Inara |q 60154/2 |goto 40.84,65.85
step
talk Overseer Kah-Sher##167424
Tell him _"I will go with you."_
Speak to Kah-Sher |q 60154/3 |goto 40.31,66.63
step
Watch the dialogue
|tip Follow Overseer Kah-Sher as he walks.
|tip He eventually walks to this location.
Follow Kah-Sher |q 60154/4 |goto 52.06,57.87
step
click To Ring of Transference
Take the Transport Pad to the Ring of Transference |q 60154/5 |goto 52.06,57.87
step
talk Overseer Kah-Sher##167424
turnin Understanding the Shadowlands##60154 |goto Oribos/1 50.48,62.52
accept The Path to Bastion##60156 |goto Oribos/1 50.48,62.52
step
Watch the dialogue
|tip Follow Overseer Kah-Sher as he walks.
|tip He eventually walks to this location.
Follow Kah-Sher to the Gate |q 60156/1 |goto 64.48,53.52
step
click Ancient Focus
Activate the Gateway to Bastion |q 60156/2 |goto 63.89,51.60
step
talk Overseer Kah-Sher##172416
turnin The Path to Bastion##60156 |goto 64.48,53.52
step
talk Pathscribe Roh-Avonavi##175133
accept Seek the Ascended##59773 |goto 64.20,49.58
step
talk Pathscribe Roh-Avonavi##175133
Tell him _"I am ready. Send me to Bastion."_
Speak to Roh-Avonavi to Travel to Bastion |q 59773/1 |goto 64.20,49.58
step
Travel to Bastion |goto Bastion/0 36.97,76.23 < 10 |c |q 59773 |notravel
step
Complete the Bastion Story Questline |q 60056 |future
|tip Use the "Bastion" or "Bastion (Story Only)" leveling guide to accomplish this.
step
talk Tal-Inara##159478
accept The Arbiter's Will##61096 |goto Oribos/0 38.89,70.02
step
click To Ring of Transference
Use the Transport Portal |q 61096/1 |goto 52.06,57.87
step
talk Overseer Kah-Sher##171338
turnin The Arbiter's Will##61096 |goto Oribos/1 61.02,36.99
accept A Land of Strife##61107 |goto Oribos/1 61.02,36.99
step
click Ancient Focus
Watch the dialogue
Open the Maldraxxus Gateway |q 61107/1 |goto 59.66,36.36
step
talk Overseer Kah-Sher##171338
turnin A Land of Strife##61107 |goto 61.05,36.99
accept If You Want Peace...##57386 |goto 61.05,36.99
step
talk Pathscribe Roh-Avonavi##175132
Tell him _"I am ready. Send me to Maldraxxus."_
Speak to Roh-Avonavi to Travel to Maldraxxus |q 57386/1 |goto 59.23,34.19
step
Travel to Maldraxxus |goto Maldraxxus/0 50.04,43.06 < 10 |c |q 57386 |notravel
step
Complete the Maldraxxus Story Questline |q 59206 |future
|tip Use the "Maldraxxus" or "Maldraxxus (Story Only)" leveling guide to accomplish this.
step
talk Tal-Inara##173383
accept Request of the Highlord##61715 |goto Oribos/0 54.49,54.23
step
talk Highlord Bolvar Fordragon##173384
turnin Request of the Highlord##61715 |goto 40.29,68.71
accept A Glimpse into Darkness##61716 |goto 40.29,68.71
step
click Helm of Domination
Focus on the Helm of Domination |q 61716/1 |goto 39.49,69.28
step
Watch the dialogue
Behold Bolvar's Vision |q 61716/2 |goto 39.49,69.28
step
Watch the dialogue
Discuss the Vision |q 61716/3 |goto 39.49,69.28
step
Watch the dialogue
talk Highlord Bolvar Fordragon##164079
turnin A Glimpse into Darkness##61716 |goto 39.94,68.58
step
talk Tal-Inara##159478
accept Journey to Ardenweald##60338 |goto 38.89,70.00
step
click Ancient Focus
Activate the Gateway to Ardenweald |q 60338/1 |goto Oribos/1 49.55,73.10
step
talk Pathscribe Roh-Avonavi##175131
Tell him _"I am ready. Send me to Ardenweald."_
Speak to Roh-Avonavi |q 60338/2 |goto 50.79,74.17
step
Travel to Ardenweald |goto Ardenweald/0 68.52,17.61 < 10 |c |q 60338 |notravel
step
Complete the Ardenweald Story Questline |q 58724 |future
|tip Use the "Ardenweald" or "Ardenweald (Story Only)" leveling guide to accomplish this.
step
talk Tal-Inara##159478
accept A Plea to Revendreth##57025 |goto Oribos/1 49.03,60.01
step
click Ancient Focus
Watch the dialogue
Activate the Gateway to Revendreth |q 57025/1 |goto 35.24,51.58
step
talk Pathscribe Roh-Avonavi##175134
Tell him _"I am ready. Send me to Revendreth."_
Speak to Roh-Avonavi to Travel to Revendreth |q 57025/2 |goto 34.27,53.21
step
Travel to Revendreth |offtaxi |goto Revendreth/0 70.75,84.09 |q 57025 |notravel
step
Complete the Revendreth Story Questline |q 57876 |future
|tip Use the "Revendreth" or "Revendreth (Story Only)" leveling guide to accomplish this.
step
talk Tal-Inara##159478
accept The Looming Dark##57877 |goto Oribos/0 38.87,70.01
step
Watch the dialogue
Listen to Tal-Inara |q 57877/1 |goto 38.87,70.01
step
talk Tal-Inara##159478
turnin The Looming Dark##57877 |goto 38.90,70.00
accept Choosing Your Purpose##57878 |goto 38.90,70.00
step
talk Draka##171821
Ask her _"What are the strengths of the Necrolords?"_
Speak with the Necrolords |q 57878/4 |goto 42.97,74.19
step
talk General Draven##171589
Ask him _"How could the Venthyr benefit me?"_
Speak with the Venthyr |q 57878/2 |goto 44.87,68.87
step
talk Lady Moonberry##171795
Tell her _"Remind me of the Night Fae."_
Speak with the Night Fae |q 57878/3 |goto 39.76,60.87
step
talk Polemarch Adrestes##171787
Tell him _"Tell me again of the virtues of the Kyrian."_
Speak with the Kyrian |q 57878/1 |goto 36.13,64.20
step
click Shadowlands Covenant Map
|tip Join whichever Covenant you like the best.
|tip Before choosing, you can talk to them all again nearby, if you want to see what they offer again.
Choose Your Covenant |q 57878/5 |goto 39.51,69.24
step
talk Tal-Inara##159478
turnin Choosing Your Purpose##57878 |goto 38.88,70.00
step
label "Which_Covenant_Did_You_Choose"
_Which Covenant Did You Choose?_
|tip Click the line below for the covenant you chose to join.
Kyrian		|condition completedq(62023)	|or	|next Leveling Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Questline
Necrolords	|condition completedq(62017)	|or	|next Leveling Guides\\Shadowlands (50-60)\\Covenants\\Necrolord Questline
Night Fae	|condition completedq(62019)	|or	|next Leveling Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Questline
Venthyr		|condition completedq(62020)	|or	|next Leveling Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Bastion",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Bastion\n"..
"\nzone quests and storyline.\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
image=ZGV.DIR.."\\Guides\\Images\\Bastion",
},[[
step
Watch the dialogue
talk Kleia##166227
turnin Seek the Ascended##59773 |goto Bastion/0 37.52,76.45
accept Welcome to Eternity##59774 |goto Bastion/0 37.52,76.45
step
talk Kleia##166227
Tell her _"Lead on, Kleia."_
Speak to Kleia |q 59774/1 |goto 37.52,76.45
step
Watch the dialogue
|tip Follow Kleia as she walks.
|tip She eventually walks to this location.
Follow Kleia |q 59774/2 |goto 42.09,78.31
step
talk Kleia##165107
turnin Welcome to Eternity##59774 |goto 42.09,78.31
accept Pardon Our Dust##57102 |goto 42.09,78.31
step
click Anima Canister
Pick Up an Anima Canister |q 57102/1 |goto 42.51,78.42
step
click Goliath Watcher
Recover the Anima |q 57102/2 |goto 42.52,78.86 |count 20
step
click Kyrian Colossus
Recover the Anima |q 57102/2 |goto 42.80,78.53 |count 70
step
click Goliath Watcher
Recover the Anima |q 57102/2 |goto 42.70,78.00 |count 100
step
talk Greeter Mnemis##158281
turnin Pardon Our Dust##57102 |goto 42.13,78.25
step
Watch the dialogue
talk Greeter Mnemis##158281
accept Remember: This is Forever##57584 |goto 42.13,78.25
step
talk Greeter Mnemis##158281
Tell him _"I think there might have been a mistake."_
Tell him _"I am not dead."_
Tell him _"I come from Azeroth."_
Watch the dialogue
Speak to Greeter Mnemis |q 57584/1 |goto 42.13,78.25
step
click Pure Thought Vesper
Visit the Southwest Station |q 57584/5 |goto 41.25,79.70
step
click Compendium of Arrival
Visit the Southeast Station |q 57584/4 |goto 42.55,80.27
step
Use the _"Ritual Cleansing"_ ability
|tip It appears as a button on the screen.
Visit the Northeast Station |q 57584/3 |goto 43.29,76.95
step
click Bench
Visit the Northwest Station |q 57584/2 |goto 41.87,76.47
step
talk Kleia##165107
turnin Remember: This is Forever##57584 |goto 42.09,78.31
accept Trouble in Paradise##60735 |goto 42.09,78.31
step
talk Kleia##165107
Choose _<Tell Kleia what you saw in the Maw.>_
Speak to Kleia |q 60735/1 |goto 42.09,78.31
step
Watch the dialogue
Let Kleia Handle This |q 60735/2 |goto 42.25,78.30
step
talk Kalisthene##166306
turnin Trouble in Paradise##60735 |goto 42.33,78.34
accept Walk the Path, Aspirant##57261 |goto 42.33,78.34
step
Watch the dialogue
Travel with Kleia |q 57261/1 |goto 46.31,79.00
step
Use the _"Kleia's Perspective"_ ability
|tip It appears as a button on the screen.
See Bastion Through Kleia's Eyes |q 57261/2 |goto 46.31,79.00
step
talk Torgolius##159127
fpath Aspirant's Rest |goto 48.10,74.25
step
Travel to Aspirant's Rest |q 57261/3 |goto 48.10,72.97
step
talk Caretaker Mirene##160601
home Aspirant's Rest |goto 48.10,72.97
step
talk Kleia##165107
turnin Walk the Path, Aspirant##57261 |goto 48.20,72.60
accept A Soulbind In Need##57677 |goto 48.20,72.60
accept The Things That Haunt Us##57676 |goto 48.20,72.60
stickystart "Slay_Memories"
step
Enter the building |goto 47.70,71.64 < 7 |walk
Find Pelagos |q 57677/1 |goto Bastion/1 23.04,58.78
|tip Inside the building.
step
kill Excruciating Memory##158630 |q 57677/2 |goto 16.84,60.18
|tip Inside the building.
step
label "Slay_Memories"
Kill enemies around this area
|tip Inside the building.
Slay #12# Memories |q 57676/1 |goto 44.65,71.51
step
Leave the building |goto Bastion/0 47.69,71.61 < 7 |walk |notravel
talk Pelagos##165112
turnin A Soulbind In Need##57677 |goto Bastion/0 48.16,72.53
step
talk Kleia##165107
turnin The Things That Haunt Us##57676 |goto 48.20,72.60
accept The Aspirant's Crucible##57709 |goto 48.20,72.60
step
talk Klystere##160598
accept The Old Ways##60466 |goto 47.88,73.51
step
talk Caretaker Mirene##160601
buy Elysian Thread##178891 |q 60466/1 |goto 48.10,72.96
stickystart "Collect_Cloudstrider_Pelts"
step
kill Larion Sire##157761+
|tip You can find more on the plateau to the north.
|tip They also fly in the air around this area.
collect 15 Larion Plume##178890 |q 60466/3 |goto 50.28,73.26
step
label "Collect_Cloudstrider_Pelts"
kill Cloudstrider Grazer##168442+
collect 8 Cloudstrider Pelt##178885 |q 60466/2 |goto 50.28,73.26
step
talk Klystere##160598
turnin The Old Ways##60466 |goto 47.88,73.50
accept A Gift for An Acolyte##62714 |goto 47.88,73.50
step
clicknpc Theonara##158686
Ride Theonara |q 57709/1 |goto 47.97,74.09
step
Fly to the Aspirant's Crucible |goto 55.76,81.93 < 10 |c |q 57709 |notravel
step
talk Forgelite Sophone##158807
turnin The Aspirant's Crucible##57709 |goto 56.14,81.73
accept A Life of Service##57710 |goto 56.14,81.73
step
click The Eternal Flame
Commune with the Eternal Flame |q 57710/1 |goto 57.03,81.27
step
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 1
step
click The Eternal Flame
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 2
step
click The Eternal Flame
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 3
step
talk Forgelite Sophone##158807
turnin A Life of Service##57710 |goto 56.41,81.60
accept A Forge Gone Cold##57711 |goto 56.41,81.60
step
talk Sika##166577
turnin A Forge Gone Cold##57711 |goto 52.66,82.60
accept The Cycle of Anima: Etherwyrms##57263 |goto 52.66,82.60
accept The Cycle of Anima: Flower Power##57267 |goto 52.66,82.60
step
talk Forgelite Sophone##158807
|tip She walks to this location.
accept The Cycle of Anima: Drought Conditions##57265 |goto 52.67,82.78
step
talk Aspirant Akimos##157138
accept Suggested Reading##57712 |goto 55.39,83.43
step
talk Aspirant Leda##159277
Ask her _"Do you have 'Worlds Beyond Counting'?"_
collect Worlds Beyond Counting##173024 |q 57712/2 |goto 56.09,82.79
step
click Anima Extractor
Activate the Anima Extractor |q 57265/1 |goto 54.89,79.47
step
kill Ravenous Etherwyrm##158771
|tip It flies down to you.
Defend the Anima Extractor |q 57265/2 |goto 54.84,79.59
step
click Anima Canister
collect Condensed Anima Mote##177954 |q 57265/3 |goto 54.97,79.32
stickystart "Collect_Glowing_Visceras"
stickystart "Collect_Bear_Witness_The_Watchers_Code"
step
click Adrima's Lily+
|tip They look like purple plants on the ground around this area.
collect 6 Adrima's Lily##172518 |q 57267/1 |goto 54.96,77.61
step
label "Collect_Glowing_Visceras"
Kill enemies around this area
|tip They are flying in the air.
collect 25 Glowing Viscera##172516 |q 57263/1 |goto 54.96,77.61
step
label "Collect_Bear_Witness_The_Watchers_Code"
Kill enemies around this area
collect Bear Witness: The Watcher's Code##173023 |q 57712/3 |goto 52.77,79.31
step
talk Aspirant Ikaran##159278
Ask him _"Do you have 'The Infinite Treatises'?"_
collect The Infinite Treatises##173025 |q 57712/1 |goto 52.94,82.37
step
talk Sika##166577
turnin The Cycle of Anima: Etherwyrms##57263 |goto 52.66,82.59
turnin The Cycle of Anima: Flower Power##57267 |goto 52.66,82.59
step
talk Forgelite Sophone##158807
turnin The Cycle of Anima: Drought Conditions##57265 |goto 52.67,82.78
accept Light the Forge, Forgelite##59920 |goto 52.67,82.78
step
click Raw Materials
Gather the Raw Materials |havebuff spell:324930 |goto 52.63,82.69 |q 59920
step
Enter the building |goto 53.07,83.14 < 7 |walk
click Basin
|tip Inside the building.
Carry the Raw Materials |q 59920/1 |goto 52.80,83.47
step
click Anima Forge Vent
|tip Inside the building.
Clear the Vent |q 59920/2 |goto 52.74,83.56 |count 1
step
click Anima Forge Vent
|tip Inside the building.
Clear the Vent |q 59920/2 |goto 52.67,83.37 |count 2
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.71,83.21 |count 1
step
click Broken Barrel
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.71,83.15 |count 2
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.81,83.38 |count 3
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.82,83.66 |count 4
step
click Unfinished Weapon
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.97,83.50 |count 5
step
talk Forgelite Sophone##158807
|tip She walks to this location.
|tip Inside the building.
turnin Light the Forge, Forgelite##59920 |goto 52.94,83.50
accept The Work of One's Hands##57713 |goto 52.94,83.50
step
talk Sika##166742
|tip Inside the building.
Tell her _"Show me what to do, Sika."_
Speak to Sika |q 57713/1 |goto 52.72,83.37
step
click Raw Materials
|tip Click it repeatedly.
|tip Inside the building.
Add #5# Fuel to the Forge |q 57713/2 |goto 52.79,83.49
step
click Anima Forge Vent
|tip Inside the building.
Open a Vent |q 57713/3 |goto 52.74,83.55
step
Watch the dialogue
|tip Follow Sika's instructions to either add fuel or open the vents.
|tip Click Raw Materials to add fuel.
|tip Click Anima Forge Vents to open the vents.
Hold the Heat Steady |q 57713/4 |goto 52.76,83.51
|tip Watch the bar that appears above the forge.
|tip Try to keep the marker in the middle blue section.
step
Watch the dialogue
|tip Inside the building.
click Incomplete Armor
Hold the Armor Steady |q 57713/5 |goto 52.85,83.33
step
Watch the dialogue
|tip Inside the building.
talk Forgelite Sophone##158807
turnin The Work of One's Hands##57713 |goto 52.94,83.48
accept The True Crucible Awaits##57908 |goto 52.94,83.48
step
talk Aspirant Akimos##157138
turnin Suggested Reading##57712 |goto 55.39,83.43
step
talk Kleia##158862
turnin The True Crucible Awaits##57908 |goto 51.72,81.03
accept Assessing Your Strength##57288 |goto 51.72,81.03
step
talk Pelagos##158861
accept Assessing Your Stamina##57909 |goto 51.74,80.99
stickystart "Complete_Combat_Meditations"
step
kill Archilon##158867
Defeat Archilon |q 57288/1 |goto 50.52,82.20
step
kill Straticus##158870
Defeat Straticus |q 57288/3 |goto 50.07,80.52
step
kill Epilon##158869
Defeat Epilon |q 57288/2 |goto 50.52,78.82
step
label "Complete_Combat_Meditations"
talk Sparring Aspirant##159505+
|tip Challenge them to spar with you.
|tip The dialogue options vary.
kill Sparring Aspirant##159505+
|tip They will eventually surrender.
Complete #8# Combat Meditations |q 57909/1 |goto 50.64,80.48
step
talk Pelagos##158861
turnin Assessing Your Stamina##57909 |goto 51.67,80.86
step
talk Kleia##158862
turnin Assessing Your Strength##57288 |goto 51.63,80.94
accept Assessing Your Spirit##57714 |goto 51.63,80.94
step
kill Athanos##158891
|tip You won't die.
Challenge Athanos |q 57714/1 |goto 51.25,80.49
step
talk Kleia##158862
turnin Assessing Your Spirit##57714 |goto 51.63,80.94
step
talk Forgelite Sophone##158807
accept Aspirant's Reflection##57291 |goto 51.64,80.90
step
Enter Aspirant's Reflection |q 57291/1 |goto 55.97,86.45
|tip Enter the doorway of the building.
step
talk Kleia##159583
|tip Inside the building.
turnin Aspirant's Reflection##57291 |goto 57.22,86.58
accept The First Cleansing##57266 |goto 57.22,86.58
step
Use the _"Bathe"_ ability.
|tip It appears as a button on the screen.
|tip Inside the building.
Bathe in the Pool |q 57266/2 |goto 57.71,85.45
step
click Crate of Ritual Vestments
|tip Inside the building.
Don the Vestments |q 57266/1 |goto 58.09,85.72
step
click Vespers of Clarity
|tip Inside the building.
Ring the Vespers of Clarity |q 57266/3 |goto 58.05,85.33
step
talk Kleia##159583
|tip Inside the building.
Tell her _"I am ready to begin."_
Speak to Kleia |q 57266/4 |goto 57.22,86.58
step
click Soul Mirror
|tip You will be attacked.
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 58.64,88.87 |count 1
step
click Soul Mirror
|tip You will be attacked.
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 59.31,88.35 |count 2
step
click Soul Mirror
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 59.13,87.53 |count 3
step
kill Anguished Memory##159665
|tip Inside the building.
Complete the First Cleansing |q 57266/6 |goto 58.87,88.17
step
Leave the building |goto 55.98,86.46 < 7 |walk
talk Kleia##158862
|tip She runs to this location.
turnin The First Cleansing##57266 |goto 55.65,86.43
accept The Archon's Answer##60219 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60225 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60226 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60222 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60224 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60220 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60221 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60217 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60218 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60223 |goto 55.65,86.43 |or
'|accept The Archon's Answer##57715 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60229 |goto 55.65,86.43 |or
step
talk Kalisthene##156217
|tip She is flying nearby.
Tell her _"I wish to speak to the Archon."_
Watch the dialogue
Speak to Kalisthene |q 60219/1 |goto 53.51,87.13 |only if havequest(60219) or completedq(60219)
Speak to Kalisthene |q 60225/1 |goto 53.51,87.13 |only if havequest(60225) or completedq(60225)
Speak to Kalisthene |q 60226/1 |goto 53.51,87.13 |only if havequest(60226) or completedq(60226)
Speak to Kalisthene |q 60222/1 |goto 53.51,87.13 |only if havequest(60222) or completedq(60222)
Speak to Kalisthene |q 60224/1 |goto 53.51,87.13 |only if havequest(60224) or completedq(60224)
Speak to Kalisthene |q 60220/1 |goto 53.51,87.13 |only if havequest(60220) or completedq(60220)
Speak to Kalisthene |q 60221/1 |goto 53.51,87.13 |only if havequest(60221) or completedq(60221)
Speak to Kalisthene |q 60217/1 |goto 53.51,87.13 |only if havequest(60217) or completedq(60217)
Speak to Kalisthene |q 60218/1 |goto 53.51,87.13 |only if havequest(60218) or completedq(60218)
Speak to Kalisthene |q 60223/1 |goto 53.51,87.13 |only if havequest(60223) or completedq(60223)
Speak to Kalisthene |q 57715/1 |goto 53.51,87.13 |only if havequest(57715) or completedq(57715)
Speak to Kalisthene |q 60229/1 |goto 53.51,87.13 |only if havequest(60229) or completedq(60229)
step
Use the _"Kalisthene's Grace"_ ability
|tip It appears as a button on the screen.
Accept Kalisthene's Gift |q 60219/2 |goto 53.51,87.13 |only if havequest(60219) or completedq(60219)
Accept Kalisthene's Gift |q 60225/2 |goto 53.51,87.13 |only if havequest(60225) or completedq(60225)
Accept Kalisthene's Gift |q 60226/2 |goto 53.51,87.13 |only if havequest(60226) or completedq(60226)
Accept Kalisthene's Gift |q 60222/2 |goto 53.51,87.13 |only if havequest(60222) or completedq(60222)
Accept Kalisthene's Gift |q 60224/2 |goto 53.51,87.13 |only if havequest(60224) or completedq(60224)
Accept Kalisthene's Gift |q 60220/2 |goto 53.51,87.13 |only if havequest(60220) or completedq(60220)
Accept Kalisthene's Gift |q 60221/2 |goto 53.51,87.13 |only if havequest(60221) or completedq(60221)
Accept Kalisthene's Gift |q 60217/2 |goto 53.51,87.13 |only if havequest(60217) or completedq(60217)
Accept Kalisthene's Gift |q 60218/2 |goto 53.51,87.13 |only if havequest(60218) or completedq(60218)
Accept Kalisthene's Gift |q 60223/2 |goto 53.51,87.13 |only if havequest(60223) or completedq(60223)
Accept Kalisthene's Gift |q 57715/2 |goto 53.51,87.13 |only if havequest(57715) or completedq(57715)
Accept Kalisthene's Gift |q 60229/2 |goto 53.51,87.13 |only if havequest(60229) or completedq(60229)
step
talk Kalisthene##156217
|tip She is flying nearby.
turnin The Archon's Answer##60219 |goto 53.51,87.12 |only if havequest(60219) or completedq(60219)
turnin The Archon's Answer##60225 |goto 53.51,87.12 |only if havequest(60225) or completedq(60225)
turnin The Archon's Answer##60226 |goto 53.51,87.12 |only if havequest(60226) or completedq(60226)
turnin The Archon's Answer##60222 |goto 53.51,87.12 |only if havequest(60222) or completedq(60222)
turnin The Archon's Answer##60224 |goto 53.51,87.12 |only if havequest(60224) or completedq(60224)
turnin The Archon's Answer##60220 |goto 53.51,87.12 |only if havequest(60220) or completedq(60220)
turnin The Archon's Answer##60221 |goto 53.51,87.12 |only if havequest(60221) or completedq(60221)
turnin The Archon's Answer##60217 |goto 53.51,87.12 |only if havequest(60217) or completedq(60217)
turnin The Archon's Answer##60218 |goto 53.51,87.12 |only if havequest(60218) or completedq(60218)
turnin The Archon's Answer##60223 |goto 53.51,87.12 |only if havequest(60223) or completedq(60223)
turnin The Archon's Answer##57715 |goto 53.51,87.12 |only if havequest(57715) or completedq(57715)
turnin The Archon's Answer##60229 |goto 53.51,87.12 |only if havequest(60229) or completedq(60229)
step
talk Kleia##158862
accept All An Aspirant Can Do##58174 |goto 53.51,87.27
step
talk Kleia##158471
turnin All An Aspirant Can Do##58174 |goto 48.28,72.86
step
talk Disciple Kosmas##157673
accept The Temple of Purity##57270 |goto 48.36,72.80
step
click Elysian Decree
accept Hero's Rest##62718 |goto 48.75,73.22
step
talk Acolyte Amalthina##174900
turnin A Gift for An Acolyte##62714 |goto 53.88,73.96
accept More Than A Gift##62715 |goto 53.88,73.96
step
talk Eridia##159762
turnin The Temple of Purity##57270 |goto 54.10,73.62
accept A Temple in Need##57977 |goto 54.10,73.62
step
talk Disciple Kosmas##157673
accept On The Edge of a Revelation##57264 |goto 56.72,74.46
stickystart "Inspire_Aspirants_To_Action"
step
talk Disciple Fotima##159840
Tell her _"I will help you."_
Watch the dialogue
kill Danysia's Burden##160654
Aid Disciple Fotima |q 57977/1 |goto 57.36,71.45
step
talk Disciple Helene##160636
Tell her _"Tell me how I can help."_
Watch the dialogue
clicknpc Galistos' Burden##160698+
|tip They look like various spirits that appear nearby.
|tip You will need to do this several times.
Aid Disciple Helene |q 57977/2 |goto 57.95,75.88
step
talk Disciple Lykaste##159841
Tell her _"Begin the cleansing. I am ready."_
Watch the dialogue
kill Fallen Acolyte Erisne##160646
Aid Disciple Lykaste |q 57977/3 |goto 60.01,73.66
step
label "Inspire_Aspirants_To_Action"
talk Vulnerable Aspirant##157242+
|tip Try to choose the most positive dialogue option available, otherwise enemies may attack you.
|tip Some of them may attack you, or other enemies may appear and attack you.
Inspire #11# Aspirants to Action |q 57264/1 |goto 58.40,75.27
step
talk Eridia##159762
|tip Inside the building.
turnin A Temple in Need##57977 |goto 59.40,78.00
turnin On The Edge of a Revelation##57264 |goto 59.40,78.00
accept A Wayward Disciple?##57716 |goto 59.40,78.00
step
Follow the path up |goto 59.13,71.56 < 30 |only if walking
talk Disciple Nikolon##159896
Tell him _"Eridia asked me to find you."_
Find the Missing Disciple |q 57716/1 |goto 59.94,69.11
step
Watch the dialogue
|tip Follow Disciple Nikolon and protect him as he walks.
|tip He eventually walks to this location inside the building.
Escort Disciple Nikolon to Eridia |q 57716/2 |goto 59.45,77.89
step
talk Eridia##159762
|tip Inside the building.
turnin A Wayward Disciple?##57716 |goto 59.40,78.01
accept Step Back From That Ledge, My Friend##57717 |goto 59.40,78.01
step
Watch the dialogue
|tip Follow Eridia as she walks.
talk Eridia##159906
Tell her _"Yes, Eridia."_
Kill the enemies that attack in waves
kill Nikolon's Despair##159911
Assist Eridia |q 57717/1 |goto 60.17,78.06
step
Watch the dialogue
talk Fallen Disciple Nikolon##159900
Ask him _"Are you well?"_
Speak to Fallen Disciple Nikolon |q 57717/2 |goto 60.02,77.88
step
Watch the dialogue
talk Eridia##159906
Ask her _"What is it? What is wrong?"_
Speak to Eridia |q 57717/3 |goto 60.17,78.06
step
talk Eridia##159762
turnin Step Back From That Ledge, My Friend##57717 |goto 59.32,77.05
accept A Once Sweet Sound##57037 |goto 59.32,77.05
accept The Hand of Purification##59147 |goto 59.32,77.05
stickystart "Cleanse_The_Temple"
step
talk Acolyte Galistos##160647
accept An Inspired Moral Inventory##57444 |goto 57.97,75.88
stickystart "Kill_Forsworn_Ascendeds"
step
click Vesper of Purity
Cleanse the Vesper of Purity |q 57037/1 |goto 57.35,71.10
step
click Dark Sermon
accept Dangerous Discourse##57719 |goto 60.07,73.71
step
click Vesper of Harmony
Cleanse the Vesper of Harmony |q 57037/2 |goto 60.25,73.47
step
click Dark Sermon
collect 2 Dark Sermon##171215 |q 57719/1 |goto 59.86,72.79
step
click Dark Sermon##343603
collect 3 Dark Sermon##171215 |q 57719/1 |goto 60.69,74.01
step
click Dark Sermon##343603
collect 4 Dark Sermon##171215 |q 57719/1 |goto 59.82,74.91
step
click Dark Sermon##343603
collect 5 Dark Sermon##171215 |q 57719/1 |goto 60.56,76.35
step
click Dark Sermon##343603
collect 6 Dark Sermon##171215 |q 57719/1 |goto 60.89,74.69
step
label "Kill_Forsworn_Ascendeds"
Use the _"Introspection"_ ability
|tip Use it on Forsworn Ascendeds around this area.
|tip They look like dark colored angels either on the ground or flying around this area.
|tip This will make them easier to kill.
kill 3 Forsworn Ascended##157660 |q 57444/1 |goto 58.54,75.26
step
label "Cleanse_The_Temple"
Kill enemies around this area
talk Terrified Steward##168119+
|tip They look like scared owl NPC's on the ground around this area.
"Cleanse" the Temple |q 59147/1 |goto 58.54,75.26
|tip Fill up the blue bar in the quest tracker area.
step
talk Acolyte Galistos##160647
|tip On the bridge.
turnin An Inspired Moral Inventory##57444 |goto 61.14,74.41
step
talk Eridia##159762
|tip On the bridge.
turnin A Once Sweet Sound##57037 |goto 61.27,74.36
turnin Dangerous Discourse##57719 |goto 61.27,74.36
turnin The Hand of Purification##59147 |goto 61.27,74.36
accept The Enemy You Know##57446 |goto 61.27,74.36
step
Watch the dialogue
|tip Follow Eridia as she flies.
Follow Eridia |q 57446/1 |goto 63.69,72.19
step
talk Disciple Kosmas##164378
|tip He flies to this location.
Tell him _"I am ready."_
Speak to Kosmas |q 57446/2 |goto 63.49,72.06
step
Watch the dialogue
Fly with Kosmas |invehicle |goto 63.49,72.06 |q 57446
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 65.06,74.98 |count 1
|tip Use the ability on you action bar.
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 62.61,68.86 |count 2
|tip Use the ability on you action bar.
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 64.21,71.36 |count 3
|tip Use the ability on you action bar.
step
Watch the dialogue
Fly Up to the Platform |goto 64.20,71.55 < 10 |c |q 57446 |notravel
step
Watch the dialogue
talk Disciple Kosmas##157673
turnin The Enemy You Know##57446 |goto 64.23,71.45
accept The Hand of Doubt##57269 |goto 64.23,71.45
step
talk Disciple Kosmas##157673
Tell him _"I will stand with you."_
Speak to Disciple Kosmas |q 57269/1 |goto 64.23,71.45
step
kill Lysonia##168299
|tip Disciple Kosmas will help you fight.
|tip She will eventually escape.
Defeat Lysonia |q 57269/2 |goto 64.53,71.17
step
Watch the dialogue
Witness Lysonia's Fate |q 57269/3 |goto 64.48,71.21
step
talk Vesiphone##157687
turnin The Hand of Doubt##57269 |goto 64.63,71.07
accept Purity's Prerogative##57447 |goto 64.63,71.07
step
talk Vesiphone##157687
Tell her _"I will fly with you."_
Fly with Vesiphone |q 57447/1 |goto 64.63,71.07
step
Begin Flying with Vesiphone |invehicle |goto 64.63,71.07 |q 57447
step
Watch the dialogue
Return to Kleia |outvehicle |goto 53.96,73.62 |q 57447 |notravel
step
talk Kleia##156238
turnin Purity's Prerogative##57447 |goto 53.83,73.66
accept Chasing a Memory##58976 |goto 53.83,73.66
step
Watch the dialogue
talk Mikanikos##167034
turnin Chasing a Memory##58976 |goto 54.74,64.12
accept Directions Not Included##58771 |goto 54.74,64.12
accept The Prime's Directive##58799 |goto 54.74,64.12
stickystart "Collect_Centurion_Cores"
step
click Scroll+
|tip They look like single or small piles of rolled up white paper on the ground around this area.
|tip They have various names.
collect Locus Manual##178046 |q 58771/1 |goto 56.41,62.66
step
label "Collect_Centurion_Cores"
Kill enemies around this area
collect 12 Centurion Core##178094 |q 58799/1 |goto 56.41,62.66
step
talk Mikanikos##167034
turnin Directions Not Included##58771 |goto 57.17,61.69
turnin The Prime's Directive##58799 |goto 57.17,61.69
accept The Mnemonic Locus##58800 |goto 57.17,61.69
step
Use the _"Empower Extractor"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Activate the Mnemonic Locus |q 58800/1 |goto 57.12,61.67
step
talk Mikanikos##167034
turnin The Mnemonic Locus##58800 |goto 57.54,61.82
accept What's In a Memory?##58977 |goto 57.54,61.82
step
talk Mikanikos##167034
Tell him _"I am ready."_
Speak to Mikanikos |q 58977/1 |goto 57.54,61.82
step
kill Forsworn Memory Fragment##162492+
|tip They appear around this area.
collect 10 Memory of the Forsworn##183802 |q 58977/2 |goto 57.38,61.93
step
clicknpc Essence of Lysonia##167551
Imbue the Fragment of Lysonia |q 58977/3 |goto 57.62,61.69
step
Watch the dialogue
talk Kleia##167038
turnin What's In a Memory?##58977 |goto 57.51,61.73
accept Lysonia's Truth##58978 |goto 57.51,61.73
step
accept Hostile Recollection##59015 |goto 58.11,64.52
|tip You will automatically accept this quest.
|only if level < 60
stickystart "Repel_The_Forsworn_Threat"
step
click Soul Mirror
Witness the First Memory |q 58978/1 |goto 58.11,64.52
step
click Soul Mirror
Witness the Second Memory |q 58978/2 |goto 58.97,62.69
step
click Soul Mirror
Witness the Third Memory |q 58978/3 |goto 59.55,59.63
step
label "Repel_The_Forsworn_Threat"
Kill enemies around this area
collect Centurion Anima Core##178149+ |n
|tip You need these to be able to click the Depleted Clawguards.
clicknpc Depleted Clawguard##167387+
|tip They look like robot lions on the ground around this area.
Repel the Felsworn Threat |q 59015/1 |goto 57.92,59.73
|tip Fill up the blue bar in the quest tracker area.
|only if havequest(59015) or completedq(59015)
step
Enter the building |goto 57.35,56.60 < 10 |walk
click Soul Mirror
|tip Inside the building.
Witness the Final Memory |q 58978/4 |goto 57.17,54.43
step
talk Mikanikos##167034
|tip He runs to this location.
|tip Inside the building.
turnin Lysonia's Truth##58978 |goto 57.25,55.37
accept I MADE You!##58979 |goto 57.25,55.37
step
talk Mikanikos##167034
|tip Inside the building.
Tell him _"I am ready."_
Speak to Mikanikos |q 58979/1 |goto 57.25,55.37
step
kill Locus-Keeper Mnemis##167036
|tip Inside the building.
Defeat Locus-Keeper Mnemis |q 58979/2 |goto 57.21,54.96
step
Watch the dialogue
|tip Inside the building.
talk Locus-Keeper Mnemis##167035
turnin I MADE You!##58979 |goto 57.26,55.27
accept Mnemis, At Your Service##58980 |goto 57.26,55.27
step
Follow the path down |goto 58.54,58.89 < 20 |only if walking
Watch the dialogue
Kill the enemy that attacks
Locate the First Offering |q 58980/1 |goto 59.90,58.18
step
click Cache of the Paragons
Obtain the First Offering |q 58980/2 |goto 59.90,58.18
step
Watch the dialogue
Kill the enemy that attacks
Locate the Second Offering |q 58980/3 |goto 60.59,61.87
step
click Cache of the Paragons
Obtain the Second Offering |q 58980/4 |goto 60.59,61.87
step
talk Locus-Keeper Mnemis##167035
turnin Mnemis, At Your Service##58980 |goto 58.85,65.29
accept The Vault of the Archon##58843 |goto 58.85,65.29
step
talk Vault Guardian##167374
Click Here to Continue |confirm |goto 58.82,65.03 |q 58843
step
talk Vault Guardian##167374
Gain Entry to the Vault of the Archon |q 58843/1 |goto 59.02,65.31
step
Enter the building |goto 58.70,65.54 < 7 |walk
Watch the dialogue
|tip Follow Mikanikos as he walks.
|tip He eventually walks to this location inside the building.
talk Mikanikos##167498
|tip Inside the building.
Ask him _"What do we do now?"_
Follow Mikanikos |q 58843/2 |goto 57.94,68.60
step
Kill the enemies that attack in waves
|tip Inside the building.
Help Kleia |q 58843/3 |goto 57.93,66.75
step
Enter the Inner Vault |q 58843/4 |goto 56.15,67.65
|tip Inside the building.
step
talk Vault-Keeper Mnemis##167504
|tip Inside the building.
turnin The Vault of the Archon##58843 |goto 56.15,67.65
accept A Paragon's Reflection##60180 |goto 56.15,67.65
step
click Eye of Purity
|tip Inside the building.
Click Here to Continue |confirm |goto 56.28,68.13 |q 60180
step
click Eye of Humility
|tip Inside the building.
Click Here to Continue |confirm |goto 56.17,68.34 |q 60180
step
click Eye of Loyalty
|tip Inside the building.
Click Here to Continue |confirm |goto 56.01,68.44 |q 60180
step
click Eye of the Archon
|tip Inside the building.
Reveal the Final Memory |q 60180/1 |goto 55.71,68.14
step
talk Vault-Keeper Mnemis##167504
|tip Inside the building.
turnin A Paragon's Reflection##60180 |goto 56.14,67.66
accept Leave it to Mnemis##60013 |goto 56.14,67.66
step
click Transport Pad
|tip Inside the building.
Use the Anima Gateway |q 60013/1 |goto 57.70,67.16
step
Return to Kleia |offtaxi |goto 54.36,64.15 |q 60013 |notravel
step
talk Kleia##167038
turnin Leave it to Mnemis##60013 |goto 54.43,64.28
accept Go in Service##59196 |goto 54.43,64.28
step
talk Tamesis##158005
accept Garden in Turmoil##57529 |goto 52.32,61.35
step
talk Zosime##158004
turnin Garden in Turmoil##57529 |goto 51.33,59.54
accept Disturbing the Peace##57538 |goto 51.33,59.54
accept Distractions for Kala##57545 |goto 51.33,59.54
stickystart "Slay_Anima_Starved_Creatures"
step
click Mister Mikanikos
collect Mister Mikanikos##172037 |q 57545/2 |goto 49.62,60.02
step
click Kala's Slobber Ball
collect Kala's Slobber Ball##172036 |q 57545/1 |goto 51.11,58.75
step
click Comfy Comfort Pillow
collect Comfy Comfort Pillow##172039 |q 57545/3 |goto 52.87,58.17
step
label "Slay_Anima_Starved_Creatures"
Kill Anima-Starved enemies around this area
Slay #10# Anima-Starved Creatures |q 57538/1 |goto 50.68,58.39
step
talk Zosime##158004
turnin Disturbing the Peace##57538 |goto 51.33,59.54
turnin Distractions for Kala##57545 |goto 51.33,59.54
accept A Test of Courage##57547 |goto 51.33,59.54
step
Enter the building |goto 51.22,56.35 < 10 |walk
click Vesper of Remembrance
|tip Inside the building.
Ring the Bell of Remembrance |q 57547/1 |goto 51.84,54.69
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack in waves
kill Vyrm the Ravenous##158179
Retrieve Korinna's Allaying Crook |q 57547/2 |goto 51.93,54.85
step
talk Zosime##158004
turnin A Test of Courage##57547 |goto 51.21,56.80
accept Tough Love##57568 |goto 51.21,56.80
step
Enter the building |goto 48.89,57.94 < 7 |walk
kill Kala##158254
|tip She will eventually escape when she gets to about 50% health.
|tip Inside the building.
Use the _"Throw Slobber Ball"_ ability
|tip Use it repeatedly as you fight Kala.
|tip This will distract and stun her for a few seconds each time you use it.
click Korinna's Allaying Crook
|tip It appears on the ground nearby when Kala escapes.
collect Korinna's Allaying Crook##172141 |q 57568/1 |goto 45.90,56.72
step
Leave the building |goto 48.89,57.94 < 7 |walk
talk Zosime##158004
turnin Tough Love##57568 |goto 51.33,59.54
step
Cross the bridge |goto 53.69,59.21 < 20 |only if walking
talk Pelodis##158765
accept A Friendly Rivalry##59674 |goto 57.44,54.26
step
click Anima Gateway
Take the Gateway to Hero's Rest |q 59196/1 |goto 55.98,52.76
step
Travel to Hero's Rest |offtaxi |goto 53.26,48.52 |q 59196 |notravel |region heros_rest
step
talk Kleia##165042
turnin Go in Service##59196 |goto 52.88,48.03 |region heros_rest
step
talk Kalisthene##165045
turnin Hero's Rest##62718 |goto 52.83,47.88 |region heros_rest
accept Your Personal Assistant##59426 |goto 52.83,47.88 |region heros_rest
step
talk Ipa##167796
|tip There are many others around this area.
|tip It doesn't matter which one you pick.
|tip Just pick the one with the name and appearance you like the best.
Tell them _"I need assistance."_
Select Your Steward Companion |q 59426/1 |goto 52.75,47.14 |region heros_rest
step
talk Kalisthene##165045
turnin Your Personal Assistant##59426 |goto 52.83,47.87 |region heros_rest
accept Steward at Work##59197 |goto 52.83,47.87 |region heros_rest
step
click Notice
accept A Fine Journey##59554 |goto 51.93,47.70 |region heros_rest
step
talk Navarros##159423
fpath Hero's Rest |goto 51.37,46.80 |region heros_rest
step
cast Summon Steward##324739
Summon Your Steward |q 59197/1 |goto 51.74,46.81 |region heros_rest
step
_Next to you:_
talk Your Steward
Tell them _"I need you to fix the Beacon of Invocation."_
Watch the dialogue
|tip Follow your Steward as it walks.
Fix the Beacon of Invocation |q 59197/2 |region heros_rest
step
click Beacon of Invocation
Activate the Beacon of Invocation |q 59197/3 |goto 53.30,46.80 |region heros_rest
step
talk Inkiep##160173
home Hero's Rest |goto 53.21,46.86 |region heros_rest
step
Watch the dialogue
talk Polemarch Adrestes##165048
|tip He flies to this location.
turnin Steward at Work##59197 |goto 52.87,45.64 |region heros_rest
accept On Swift Wings##59198 |goto 52.87,45.64 |region heros_rest
step
talk Polemarch Adrestes##165048
Tell him _"I am ready to go to Elysian Hold."_
Speak to Adrestes |q 59198/1 |goto 52.87,45.65 |region heros_rest
step
Begin Flying with Adrestes |invehicle |goto 52.87,45.65 |q 59198 |region heros_rest
step
Watch the dialogue
Fly to Elysian Hold |outvehicle |goto Elysian Hold/0 39.92,65.63 |q 59198 |notravel
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin On Swift Wings##59198 |goto 55.65,41.95
accept Kyrestia, the Firstborne##59199 |goto 55.65,41.95
step
talk Polemarch Adrestes##160037
|tip Upstairs.
Tell him _"I am ready to speak to the Archon."_
Speak to Adrestes |q 59199/1 |goto 55.65,41.95
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin Kyrestia, the Firstborne##59199 |goto 55.65,41.95
accept The Wards of Bastion##59200 |goto 55.65,41.95
step
click Ward of Purity
Check the Ward of Purity |q 59200/1 |goto 52.04,78.87
step
click Ward of Loyalty
Check the Ward of Loyalty |q 59200/4 |goto 54.23,75.30
step
click Ward of Humility
Check the Ward of Humility |q 59200/2 |goto 58.58,88.46
step
click Ward of Wisdom
Check the Ward of Wisdom |q 59200/3 |goto 59.13,89.43
step
click Ward of Courage
Watch the dialogue
Check the Ward of Courage |q 59200/5 |goto 61.09,85.81
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin The Wards of Bastion##59200 |goto 55.65,41.95
accept Imminent Danger##60005 |goto 55.65,41.95
step
talk Cassius##159421
|tip Upstairs.
Tell him _"I need to go to the Temple of Courage."_
Fly to the Temple of Courage |q 60005/1 |goto 50.93,49.04
step
Begin Flying to the Temple of Courage |invehicle |goto 50.93,49.04 |q 60005
step
Watch the dialogue
Reach the Temple of Courage |outvehicle |goto Bastion/0 41.96,55.21 |q 60005 |notravel
step
talk Thanikos##167873
turnin Imminent Danger##60005 |goto Bastion/0 41.76,55.18
accept Now or Never##60006 |goto Bastion/0 41.76,55.18
step
talk Thanikos##167873
Tell him _"I am with you."_
Speak to Thanikos |q 60006/1 |goto 41.76,55.18
step
Kill the enemies that attack
Watch the dialogue
|tip Follow Thanikos as he walks.
Reclaim Xandria's Vigil |q 60006/2 |goto 41.76,55.18
step
talk Thanikos##167873
turnin Now or Never##60006 |goto 40.59,55.21
accept Rip and Tear##60008 |goto 40.59,55.21
step
talk Mikanikos##167135
accept Stay Scrappy##60007 |goto 40.72,55.50
step
talk Disciple Apolon##167269
accept Fight Another Day##60009 |goto 41.27,54.35
stickystart "Slay_House_Of_Constructs_Forces"
step
click Anima Conflux
collect Anima Conflux##178043 |q 60007/1 |goto 40.78,52.25
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 41.47,52.52 |count 1
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 40.35,50.76 |count 2
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 40.10,49.17 |count 3
step
click Archonic Resonator
collect Archonic Resonator##178041 |q 60007/3 |goto 39.48,48.89
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 39.59,50.40 |count 4
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 38.69,51.53 |count 5
step
Enter the building |goto 39.40,52.54 < 10 |only if walking
click Eternity Plating
|tip Inside the building.
collect Eternity Plating##178042 |q 60007/2 |goto 39.69,52.66
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 39.25,53.02 |count 6
step
label "Slay_House_Of_Constructs_Forces"
Kill enemies around this area
Slay the House of Constructs Forces |q 60008/1 |goto 39.05,52.11
step
_Next to you:_
talk Thanikos
turnin Rip and Tear##60008
step
Run up the stairs |goto 39.69,53.45 < 15 |only if walking
talk Disciple Apolon##167269
|tip He fights around this area.
turnin Fight Another Day##60009 |goto 41.27,54.35
step
talk Mikanikos##167135
turnin Stay Scrappy##60007 |goto 40.72,55.50
accept Clear as Crystal##60053 |goto 40.72,55.50
step
_Next to you:_
talk Thanikos
accept Double Tap##60052
stickystart "Sunder_House_Of_Rituals_Corpses"
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 40.95,58.43 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 40.14,57.31 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 39.25,56.73 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 38.98,57.97 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 38.52,58.70 |q 60053
step
click Necrotic Extractor
|tip Inside the building.
Empower the Anima Conflux |q 60053/1 |goto 39.75,59.07
step
label "Sunder_House_Of_Rituals_Corpses"
Kill enemies around this area
use the Archonic Resonator##178140
|tip Use it near their corpses
Sunder #12# House of Rituals Corpses |q 60052/1 |goto 39.17,58.81
step
talk Thanikos##167423
turnin Double Tap##60052 |goto 39.46,55.24
step
talk Mikanikos##167428
turnin Clear as Crystal##60053 |goto 39.80,55.17
step
talk Thanikos##167423
accept The Final Countdown##60054 |goto 39.46,55.24
step
talk Thanikos##167423
Tell him _"I am ready."_
Speak to Thanikos |q 60054/1 |goto 39.46,55.24
step
Watch the dialogue
Kill the enemies that attack in waves
kill Marrowmaw##167433
Delay Amarth |q 60054/2 |goto 39.46,55.24
step
clicknpc Centurion Colossus##167121
Clear the Blockade |q 60054/3 |goto 39.83,55.23
|tip Use the ability on your action bar.
step
talk Thanikos##167460
turnin The Final Countdown##60054 |goto 38.93,55.23
accept A Time for Courage##60055 |goto 38.93,55.23
step
talk Thanikos##167460
Tell him _"I am ready."_
Speak to Thanikos |q 60055/1 |goto 38.93,55.23
step
Begin Flying with Thanikos |invehicle |goto 38.93,55.23 |q 60055
step
Watch the dialogue
Fly with Thanikos |outvehicle |goto 35.10,55.21 |q 60055 |notravel
step
Watch the dialogue
kill Thanikos Spinerender##167484
|tip Xandria will help you fight.
Confront Amarth |q 60055/2 |goto 34.24,55.22
step
Watch the dialogue
talk Disciple Apolon##167559
|tip He flies to this location.
Escape the Necrotic Wake |q 60055/3 |goto 34.63,55.09
step
Begin Flying with Disciple Apolon |invehicle |goto 34.63,55.09 |q 60055
step
Return to Safety |outvehicle |goto 40.84,55.11 |q 60055 |notravel
step
talk Disciple Apolon##167583
turnin A Time for Courage##60055 |goto 40.90,55.10
accept Follow the Path##60056 |goto 40.90,55.10
step
talk Disciple Artemede##167584
accept Necrotic Wake: A Paragon's Plight##60057 |goto 40.93,55.34
step
click Cultivated Windblossom
collect Cultivated Windblossom##183967 |q 62715/1 |goto 45.52,59.71
step
talk Keeper Mnemis##158078
turnin A Fine Journey##59554 |goto 46.99,63.45
accept In Agthia's Memory##57549 |goto 46.99,63.45
step
click Scroll of Remembrance
|tip You will be attacked.
Meditate on the First Scroll |q 57549/1 |goto 47.45,66.05
step
click Scroll of Remembrance
Meditate on the Second Scroll |q 57549/2 |goto 44.82,68.75
step
click Scroll of Remembrance
|tip You will be attacked.
Meditate on the Third Scroll |q 57549/3 |goto 44.66,64.34
step
talk Keeper Mnemis##158078
turnin In Agthia's Memory##57549 |goto 46.99,63.45
accept Agthia's Path##57551 |goto 46.99,63.45
step
click Vesper of History
Ring the Vesper of History |q 57551/1 |goto 47.02,63.39
step
talk Agthia##158181
turnin Agthia's Path##57551 |goto 46.54,63.43
accept Warriors of the Void##57552 |goto 46.54,63.43
accept Wicked Gateways##57554 |goto 46.54,63.43
stickystart "Slay_Void_Forces"
step
talk Agthian Defender##158178
|tip They won't talk to you if they are in combat.
accept On Wounded Wings##57553 |goto 46.42,63.63
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.94,63.07 |count 1
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.85,64.99 |count 2
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 46.55,64.98 |count 1
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 46.64,65.76 |count 3
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 46.91,66.92 |count 2
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.34,66.26 |count 4
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.22,65.58 |count 5
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 44.22,65.07 |count 3
step
label "Slay_Void_Forces"
Kill enemies around this area
Slay #15# Void Forces |q 57552/1 |goto 46.10,64.91
step
talk Agthia##158181
turnin Warriors of the Void##57552 |goto 46.54,63.43
turnin Wicked Gateways##57554 |goto 46.54,63.43
turnin On Wounded Wings##57553 |goto 46.54,63.43
accept Shadow's Fall##57555 |goto 46.54,63.43
step
Follow the path up |goto 46.32,67.22 < 20 |only if walking
kill Tezulat the Annihilator##158290 |q 57555/1 |goto 44.90,68.72
|tip Agthia will help you fight.
step
talk Keeper Mnemis##158078
turnin Shadow's Fall##57555 |goto 46.99,63.45
step
talk Acolyte Amalthina##174900
turnin More Than A Gift##62715 |goto 53.87,73.95
step
Follow the path up |goto 54.65,37.35 < 20 |only if walking
talk Pelodis##158765
turnin A Friendly Rivalry##59674 |goto 54.78,41.16
accept Phalynx Malfunction##57931 |goto 54.78,41.16
step
talk Hopo##159609
accept Resource Drain##57932 |goto 54.79,41.25
step
talk Nemea##157696
accept Part of the Pride##58037 |goto 57.26,39.21
step
talk Tamed Larion##158767+
|tip They look like lions with wings on the ground around this area.
Meet #5# Tamed Larions |q 58037/1 |goto 57.11,40.10
step
talk Nemea##157696
turnin Part of the Pride##58037 |goto 57.27,39.21
accept All Natural Chews##58038 |goto 57.27,39.21
accept Larion at Large##58039 |goto 57.27,39.21
stickystart "Drain_Cloudstrider_Anima"
stickystart "Collect_Cloudstrider_Antlers"
step
talk Andira##160189
|tip She runs away from you.
|tip Keep chasing her until you can click her.
Retrieve Andira |q 58039/1 |goto 56.04,44.13
step
label "Drain_Cloudstrider_Anima"
use the Anima Drainer##173691
|tip Use it on Gilded Cloudstriders.
|tip They will attack you.
Drain #5# Cloudstrider Anima |q 57932/1 |goto 57.24,44.61
step
label "Collect_Cloudstrider_Antlers"
kill Gilded Cloudstrider##159298+
collect 5 Cloudstrider Antler##173690 |q 58038/1 |goto 57.24,44.61
step
clicknpc Gatamatos##159641
Find Gatamatos |q 57931/1 |goto 54.86,43.54
stickystart "Return_Gatamatos"
step
Follow the path up |goto 57.04,44.18 < 20 |only if walking
Return Andira |q 58039/2 |goto 57.27,39.21
step
talk Nemea##157696
turnin All Natural Chews##58038 |goto 57.26,39.21
turnin Larion at Large##58039 |goto 57.26,39.21
accept With Lance and Larion##58040 |goto 57.26,39.21
accept Providing for the Pack##58041 |goto 57.26,39.21
step
label "Return_Gatamatos"
clicknpc Gatamatos##159675
|tip He will follow you.
|tip Click him when you see a message telling you to reactivate him.
|tip Make sure he stays with you.
Return Gatamatos |q 57931/2 |goto 55.40,42.06
step
talk Hopo##159609
turnin Resource Drain##57932 |goto 54.79,41.24
step
talk Pelodis##158765
turnin Phalynx Malfunction##57931 |goto 54.78,41.17
accept We Can Rebuild Him##57933 |goto 54.78,41.17
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57933/1 |goto 55.39,42.06
step
clicknpc Gatamatos##159835
Bring Gatamatos to the Build Rig |q 57933/2 |goto 54.60,40.36
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.42,40.97 |count 1
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.38,40.88 |count 2
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.36,41.16 |count 3
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.63,41.63 |count 4
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.50,41.77 |count 5
step
talk Forgefire Engineer##159410+
|tip They look like small owl people on the ground around this area.
|tip Make sure 3 of them are following you.
Click Here to Continue |confirm |goto 54.59,41.41 |q 57933
step
click Anima Barrel
Carry the Anima Barrel |havebuff 132620 |goto 54.46,41.37 |q 57933
step
Escort #3# Forgefire Engineers |q 57933/3 |goto 54.63,40.55
step
click Anima Barrel
Bring Over the Anima Barrel |q 57933/4 |goto 54.63,40.55
step
click Reinforced Armor+
|tip They look like yellow floating plates around this area.
|tip There are 5 of them.
Place #5# Reinforced Armor |q 57933/6 |goto 54.53,40.34
step
talk Pelodis##158765
Tell him _"Everything is in place for the repair."_
Watch the dialogue
Talk to Pelodis to Finish Repair |q 57933/7 |goto 54.72,40.40
step
talk Pelodis##158765
|tip He walks to this location.
turnin We Can Rebuild Him##57933 |goto 54.78,41.16
accept Combat Drills##57934 |goto 54.78,41.16
accept Laser Location##57935 |goto 54.78,41.16
step
talk Hopo##159609
accept Superior Programming##57936 |goto 54.79,41.25
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57935/1 |goto 55.39,42.06
Retrieve Gatamatos |q 57934/1 |goto 55.39,42.06 |only if not havequest(57935)
stickystart "Collect_Training_Gems"
stickystart "Slay_Agitated_Etherwyrms_With_Gatamatos"
step
Enter the building |goto 55.70,42.83 < 7 |walk
kill Leonid##159612 |q 57936/1 |goto 55.93,39.88
|tip Inside the building.
step
label "Collect_Training_Gems"
Use the _"Order Search"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
collect 6 Training Gem##173269 |q 57935/2 |goto 56.37,40.73
step
label "Slay_Agitated_Etherwyrms_With_Gatamatos"
kill Agitated Etherwyrm##159610
|tip Inside the building.
Slay #8# Agitated Etherwyrms with Gatamatos |q 57934/2 |goto 56.37,40.73
stickystart "Collect_Cloudfeather_Essences"
step
Leave the building |goto 55.70,42.83 < 7 |walk
Follow the path up |goto 55.50,45.57 < 20 |only if walking
use Nemea's Javelin##173692
|tip Use it on Cloudfeather Greatwings that are flying too high to reach.
|tip They look like large white birds flying around this area.
kill 5 Cloudfeather Greatwing##159192 |q 58040/1 |goto 56.07,47.27
step
label "Collect_Cloudfeather_Essences"
kill Juvenile Cloudfeather##159289+
collect 10 Cloudfeather Essence##173702 |q 58041/1 |goto 56.07,47.27
step
Follow the path up |goto 57.05,44.23 < 20 |only if walking
talk Nemea##157696
turnin With Lance and Larion##58040 |goto 57.27,39.21
turnin Providing for the Pack##58041 |goto 57.27,39.21
accept On Larion Wings##58042 |goto 57.27,39.21
step
talk Andira##160255
Mount Andira |q 58042/1 |goto 56.88,39.35
step
_As You Fly:_
Fly Through the Rings |q 58042/2 |goto 57.18,39.31
|tip They look like rings of smoke with blue spirals inside them in the air around this area.
|tip Fly through them to fill up the blue bar in the quest tracker area.
step
Return to Nemea |goto 57.23,39.32 < 10 |c |q 58042 |notravel
step
talk Nemea##157696
turnin On Larion Wings##58042 |goto 57.26,39.21
step
talk Pelodis##158765
turnin Combat Drills##57934 |goto 54.78,41.16
turnin Laser Location##57935 |goto 54.78,41.16
step
talk Hopo##159609
turnin Superior Programming##57936 |goto 54.79,41.24
step
talk Pelodis##158765
accept Tactical Formation##57937 |goto 54.78,41.17
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57937/1 |goto 55.40,42.07
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the Line Formation |q 57937/2 |goto 55.06,41.57
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the V Formation |q 57937/3 |goto 55.04,41.65
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the Cross Formation |q 57937/4 |goto 55.20,41.54
step
clicknpc Gatamatos##159675
Return Gatamatos |q 57937/5 |goto 55.39,42.05
step
talk Pelodis##158765
|tip He walks to this location.
turnin Tactical Formation##57937 |goto 54.78,41.17
accept Pride or Unit##58103 |goto 54.78,41.17
step
Meet with Pelodis and Nemea |q 58103/1 |goto 55.77,39.41
step
_Make Your Choice:_
|tip You now have to make a choice of which companion you want.
|tip There is speculation that you will be able to get whichever you choose as a mount in the future, but this isn't confirmed.
|tip The Phalynx is the mechanical lion.
|tip The Larion is the lion with wings.
Choose Phalynx |q 60293 |future |goto 55.77,39.41 |or |next "Phalynx"
Choose Larion |q 60294 |future |goto 55.77,39.41 |or |next "Larion"
step
label "Phalynx"
talk Pelodis##158765
Tell him _"I choose the phalynx."_
Choose the Phalynx |q 58103/4 |goto 55.72,39.49
step
talk Pelodis##158765
turnin Pride or Unit##58103 |goto 55.72,39.49
|next "Continue_After_Phalynx_Larion_Choice"
step
label "Larion"
talk Nemea##157696
Tell her _"I choose the larion."_
Choose the Larion |q 58103/4 |goto 55.82,39.36
step
talk Pelodis##158765
turnin Pride or Unit##58103 |goto 55.72,39.49
|next "Continue_After_Phalynx_Larion_Choice"
step
label "Continue_After_Phalynx_Larion_Choice"
Cross the bridge |goto 44.80,47.61 < 15 |only if walking
Cross the bridge |goto 44.46,36.76 < 15 |only if walking
talk Klassia##159125
fpath Sagehaven |goto 44.08,32.45
step
Follow the road |goto 41.43,23.95 < 30 |only if walking
talk Adrina##175457
fpath Terrace of the Collectors |goto 35.80,21.07
step
talk Tal-Inara##159478
Tell her _"Maldraxxus has attacked Bastion."_
Watch the dialogue
Inform Tal-Inara of Maldraxxus's Attack |q 60056/2 |goto Oribos/0 38.91,69.97
step
talk Tal-Inara##159478
turnin Follow the Path##60056 |goto 38.91,69.97
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Maldraxxus",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Maldraxxus:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Maldraxxus",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Grandmaster Vole##164244
|tip He walks around this area.
|tip Inside the building.
turnin If You Want Peace...##57386 |goto Maldraxxus/0 50.46,41.20 |only if havequest(57386) or completedq(57386)
accept To Die By the Sword##57390 |goto Maldraxxus/0 50.46,41.20
step
Kill enemies around this area
|tip Click the Arena Gate and walk through it.
|tip Outside the building.
Defeat #30# Competitors |q 57390/1 |goto 50.36,46.27
step
talk Grandmaster Vole##164244
turnin To Die By the Sword##57390 |goto 50.36,44.29
accept An Opportunistic Strike##60020 |goto 50.36,44.29
step
Kill enemies around this area
|tip Only elite enemies will count toward this quest goal.
Defeat #10# Elite Combatants |q 60020/1 |goto 50.36,46.27
step
talk Grandmaster Vole##164244
turnin An Opportunistic Strike##60020 |goto 50.36,44.29
accept Champion the Cause##60021 |goto 50.36,44.29
step
kill Champion Rin'mar##166649 |q 60021/2 |goto 51.72,46.63
|tip He fights around this area.
step
kill Champion Gutrend##166658 |q 60021/1 |goto 49.10,47.55
|tip He fights around this area.
step
talk Grandmaster Vole##164244
turnin Champion the Cause##60021 |goto 50.36,44.29
accept Land of Opportunity##57425 |goto 50.36,44.29
step
kill High Champion Meskal##166975 |q 57425/1 |goto 50.37,48.10
step
Watch the dialogue
|tip You will fly automatically.
Make Your Escape |invehicle |q 57425
step
Watch the dialogue
Escape the Theater of Pain |outvehicle |goto 48.34,57.05 |q 57425 |notravel
step
talk Baroness Draka##162069
turnin Land of Opportunity##57425 |goto 48.38,57.16
accept Arms for the Poor##57511 |goto 48.38,57.16
step
_Next to you:_
talk Baroness Draka
accept Walk Among Death##57512
step
click Faded Epitaph
accept Memory of Honor##60179 |goto 48.33,57.76
stickystart "Arm_Displaced_Scavengers"
stickystart "Kill_Unbound_Deathwalkers"
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 44.83,58.30 |count 1
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 44.00,61.48 |count 2
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 45.86,61.75 |count 3
step
_Next to you:_
talk Baroness Draka
turnin Memory of Honor##60179
step
label "Arm_Displaced_Scavengers"
click Battered Weapon+
|tip They look like axes and swords stuck in the ground around this area.
collect Battered Weapon##172020+ |n
use the Battered Weapon##172020+
|tip Use them on Displaced Scavengers.
|tip They look like skeletons walking and mining on the ground around this area.
Arm #8# Displaced Scavengers |q 57511/1 |goto 46.93,58.96
step
label "Kill_Unbound_Deathwalkers"
kill 8 Unbound Deathwalker##158040 |q 57512/1 |goto 46.93,58.96
step
_Next to you:_
talk Baroness Draka
turnin Arms for the Poor##57511
turnin Walk Among Death##57512
accept Trench Warfare##60181
step
use Baron's Warhorn##178496
|tip Use it on Malifis.
|tip He looks like a large green spirit that walks around this area.
|tip This will summon allies to help you fight.
kill Malifis##166908 |q 60181/1 |goto 45.73,60.71
step
_Next to you:_
talk Baroness Draka
turnin Trench Warfare##60181
accept The House of the Chosen##57515
step
Follow the path up |goto 44.40,59.68 < 30 |only if walking
Enter the building |goto 40.92,61.34 < 15 |walk
Enter the House of the Chosen |q 57515/1 |goto 38.90,65.19
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Baroness Draka##159065
Tell her _"Tell me your story."_
Speak with Draka |q 57515/2 |goto 38.90,65.19
step
talk Baroness Draka##159065
|tip Inside the building.
turnin The House of the Chosen##57515 |goto 38.90,65.19
accept The First Act of War##57514 |goto 38.90,65.19
step
Enter the building |goto 36.43,60.83 < 10 |walk
talk Baron Vyraz##157895
|tip Inside the building.
Tell him _"Reporting for duty. I'm to prepare for war against the other houses."_
Report to Baron Vyraz |q 57514/1 |goto 36.33,60.20
step
Watch the dialogue
|tip Inside the building.
talk Baron Vyraz##157895
turnin The First Act of War##57514 |goto 36.33,60.20
accept The Hills Have Eyes##58351 |goto 36.33,60.20
accept Maintaining Order##58617 |goto 36.33,60.20
stickystart "Slay_Masked_Infiltrators"
step
talk Head Summoner Perex##168491
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Head Summoner Perex |q 58617/1 |goto 32.59,67.19
step
talk Drill Sergeant Telice##168463
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Drill Sergeant Telice |q 58617/2 |goto 36.74,75.90
step
talk Secutor Mevix##168288
|tip He walks around this area.
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Secutor Mevix |q 58617/3 |goto 41.01,70.87
step
label "Slay_Masked_Infiltrators"
talk Chosen Protector##169376+
|tip They look like friendly NPC's all around the House of the Chosen.
|tip Walk around this area with the Chosen Corpsehound next to you.
|tip It will sense infiltrators, and run to them.
|tip You will be able to talk to them after the Chosen Corpsehound senses them.
Tell them _"You're acting suspicious."_
Slay #6# Masked Infiltrators |q 58351/1 |goto 36.66,72.49
step
Enter the building |goto 36.43,60.84 < 10 |walk
talk Baron Vyraz##157895
|tip Inside the building.
turnin The Hills Have Eyes##58351 |goto 36.33,60.20
turnin Maintaining Order##58617 |goto 36.33,60.20
accept Never Enough##60451 |goto 36.33,60.20
step
talk Baroness Draka##159065
|tip Inside the building.
turnin Never Enough##60451 |goto 38.90,65.19
accept Through the Fire and Flames##57516 |goto 38.90,65.19
step
click Standing Rock
|tip You won't die swimming through the lava.
Watch the dialogue
Reach the Standing Stone |q 57516/1 |goto 37.12,68.50
step
click Unfinished Blade
collect Unfinished Blade##178662 |q 57516/2 |goto 37.12,68.50
step
click Orb of Teleportation |goto 37.18,68.39
Return to Draka |goto 37.99,66.97 < 10 |noway |c |q 57516
step
talk Baroness Draka##159065
turnin Through the Fire and Flames##57516 |goto 38.22,66.53
step
Watch the dialogue
talk Baroness Draka##159065
accept Forging a Champion##58616 |goto 38.22,66.53
step
Follow the path up |goto 36.54,64.17 < 30 |only if walking
Continue up the path |goto 34.09,69.16 < 30 |only if walking
talk Bonesmith Heirmir##157676
Ask him _"What do you know about this blade?"_
Speak with Bonesmith Heirmir About Your Runeblade |q 58616/1 |goto 36.35,70.50
step
Use the _"Listen Up!"_ ability
|tip It appears as a button on the screen.
Convince Bonesmith Heirmir to Speak with You |q 58616/2 |goto 36.35,70.50
step
Watch the dialogue
talk Bonesmith Heirmir##157676
|tip He walks to this location.
turnin Forging a Champion##58616 |goto 36.29,71.08
accept Ossein Enchantment##58618 |goto 36.29,71.08
accept Thick Skin##58726 |goto 36.29,71.08
stickystart "Collect_Pulsating_Hides"
step
Follow the path |goto 40.15,70.70 < 20 |only if walking
kill Marrowjaw##168036
collect Empowered Bones##174499 |q 58618/1 |goto 41.44,67.20
step
label "Collect_Pulsating_Hides"
click Overgrown Mass+
|tip They look like large red blisters on the ground around this area.
|tip They will appear on your minimap as yellow dots.
kill Animated Flesh##168234+
collect 40 Pulsating Hide##178676 |q 58726/1 |goto 40.21,70.66
step
talk Bonesmith Heirmir##157676
turnin Ossein Enchantment##58618 |goto 36.29,71.08
turnin Thick Skin##58726 |goto 36.29,71.08
accept The Blade of the Primus##60428 |goto 36.29,71.08
step
talk Bonesmith Heirmir##157676
Tell him _"I am ready to start forging a rune weapon."_
Speak with Bonesmith Heirmir |q 60428/1 |goto 36.29,71.08
step
Watch the dialogue
Kill the enemies that attack in waves
kill Guardian of the Blade##168562
Protect Heirmir |q 60428/2 |goto 36.35,70.49
step
click Glowing Runeblade
Retrieve the Glowing Runeblade |q 60428/3 |goto 36.33,70.58
step
talk Bonesmith Heirmir##157676
turnin The Blade of the Primus##60428 |goto 36.29,71.08
accept The Path to Glory##60453 |goto 36.29,71.08
step
talk Baroness Draka##159065
|tip Inside the building.
turnin The Path to Glory##60453 |goto 38.90,65.19
accept Meet the Margrave##60461 |goto 38.90,65.19
step
talk Margrave Krexus##158007
|tip Inside the building.
turnin Meet the Margrave##60461 |goto 36.93,68.43 |region vortrexxis
step
Watch the dialogue
|tip Inside the building.
talk Margrave Krexus##158007
accept The Seat of the Primus##60886 |goto 36.93,68.43 |region vortrexxis
step
talk Baroness Draka##163536
|tip Inside the building.
Tell her _"I'm ready. Let's fly to the Seat of the Primus."_
Begin Flying with Draka |invehicle |goto 37.12,68.37 |q 60886 |region vortrexxis
step
Watch the dialogue
Fly with Draka to the Seat of the Primus |q 60886/1 |goto 50.38,67.56 |notravel
step
Use the _"Resonate"_ ability
|tip It appears as a button on the screen.
Empower the Rune of Ambition |q 60886/2 |goto 50.39,67.75
step
Watch the dialogue
talk Baroness Draka##168381
turnin The Seat of the Primus##60886 |goto 50.31,67.72
accept A Common Peril##58751 |goto 50.31,67.72
accept The House of Plagues##59130 |goto 50.31,67.72
accept Baron of the Chosen##57912 |goto 50.31,67.72
step
talk Wing Guard Buurkin##157514
fpath Bleak Redoubt |goto 52.47,67.65
step
talk Wing Guard Buurkin##157514
|tip Open the flight taxi map.
|tip This is to allow the guide to learn the flight paths you have.
fpath Theater of Pain |goto 52.47,67.65
step
talk Slumbar Valorum##161702
home Theater of Pain |goto 50.95,53.17
step
talk Anzio The Infallible##161733
accept I Could Be A Contender##62785 |goto 50.58,51.62
step
Run up the stairs |goto 51.89,46.50 < 15 |only if walking
Leave the building |goto 54.91,45.04 < 15 |only if walking
talk Louison##161559
turnin I Could Be A Contender##62785 |goto 54.48,48.59
accept The Last Guy##59781 |goto 54.48,48.59
accept How To Get A Head##59750 |goto 54.48,48.59
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
accept ...Even The Most Ridiculous Request!##58068 |goto 54.14,50.60
step
talk Gunn Gorgebone##159824
Ask him _"Is there anything you need?"_
Speak with Gunn Gorgebone |q 58068/1 |goto 53.79,51.18
step
Watch the dialogue
Use the _"Cheer!"_ ability
|tip It appears as a button on the screen.
Watch the Gunn Show |q 58068/2 |goto 53.79,51.18
step
talk Scrapper Minoire##159827
Ask her _"Is there anything you need?"_
Speak with Scrapper Minoire |q 58068/3 |goto 53.81,50.53
step
talk Rencissa the Dynamo##159696
Ask her _"Is there anything you need?"_
Speak with Rencissa the Dynamo |q 58068/4 |goto 54.08,51.68
step
click The Biggest Rock You Can Find
Carry the Rock |havebuff spell:344657 |goto 54.21,51.19 |q 58068
step
talk Rencissa the Dynamo##159696
Tell her _"Here. This is the biggest rock I could find."_
Bring Rencissa the Biggest Rock You Can Find |q 58068/5 |goto 54.08,51.69
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
turnin ...Even The Most Ridiculous Request!##58068 |goto 54.14,50.60
step
talk Scrapper Minoire##159827
accept Juicing Up##58088 |goto 53.81,50.53
step
talk So'narynar##159833
turnin Juicing Up##58088 |goto 53.70,47.92
accept Side Effects##58090 |goto 53.70,47.92
step
talk Au'larrynar##166640
buy Necessary Enhancers##177957 |n
Purchase the Necessary Enchancers from Au'larrynar |q 58090/1 |goto 53.63,47.93
step
talk Scrapper Minoire##159827
Tell her _"Here's the enhancers you wanted."_
Deliver the Enhancers to Scrapper Minoire |q 58090/2 |goto 53.81,50.53
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
turnin Side Effects##58090 |goto 54.03,50.86
step
kill Predatory Bloodtusk##158752+
use Louison's Gristle Cutter##177835
|tip Use it near their corpses.
collect 12 Bloodtusk Skull##177837 |q 59750/1 |goto 57.24,47.07
step
talk Marcel Mullby##161710
Tell him _"I have some bloodtusk skulls for you."_
Deliver the Skulls to Marcel Mullby |q 59750/2 |goto 54.49,49.54
step
talk Louison##161559
turnin How To Get A Head##59750 |goto 54.48,48.59
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 54.60,33.51 |count 1
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.04,33.02 |count 2
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.69,33.86 |count 3
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.64,34.52 |count 4
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 56.28,34.06 |count 5
step
kill Deadeye##165566 |q 59781/2 |goto 55.57,32.51
step
Follow the path up |goto 54.70,32.68 < 15 |only if walking
talk Fly-eyed Eliera##157517
fpath Keres' Rest |goto 53.82,30.69
step
Follow the path |goto 56.00,46.28 < 50 |only if walking
talk Louison##161559
turnin The Last Guy##59781 |goto 54.48,48.59
accept Stuff We All Get##58575 |goto 54.48,48.59
accept Team Spirit##59800 |goto 54.48,48.59
stickystart "Collect_Weapons_Of_The_Fallen"
step
Enter the building |goto 54.92,45.03 < 15 |only if walking
use the Flask of Team Spirit##177877
|tip Use it on Arena Challengers.
|tip They look like neutral NPC's on the ground around this area.
Splash #15# Arena Challengers with the Flask of Team Spirit |q 59800/1 |goto 50.88,47.06
step
label "Collect_Weapons_Of_The_Fallen"
click Discarded Weapon+
|tip They look like various shaped weapons on the ground around this area.
collect 12 Weapons of the Fallen##174324 |q 58575/1 |goto 50.88,47.06
step
Run up the stairs |goto 51.89,46.50 < 15 |only if walking
Leave the building |goto 54.91,45.04 < 15 |only if walking
talk Louison##161559
turnin Stuff We All Get##58575 |goto 54.48,48.59
turnin Team Spirit##59800 |goto 54.48,48.59
accept Test Your Mettle##58947 |goto 54.48,48.59
step
talk Valuator Malus##163083
Tell him _"Very well. Let us fight."_
kill Valuator Malus##163083
Defeat Valuator Malus |q 58947/1 |goto 53.69,49.33
step
talk Tester Sahaari##163084
Tell her _"Very well. Let us fight."_
kill Tester Sahaari##163084
Defeat Tester Saharri |q 58947/2 |goto 55.11,46.67
step
talk Louison##161559
turnin Test Your Mettle##58947 |goto 54.48,48.59
accept This Thing Of Ours##59879 |goto 54.48,48.59
step
talk Au'narim##159830
turnin This Thing Of Ours##59879 |goto 53.60,47.51
accept Leave Me a Loan##59203 |goto 53.60,47.51
step
talk Arena Spectator##164507+
|tip They look like various highlighted neutral NPC's on the ground around this area.
Tell them _"Au'narim claims you owe her anima."_
|tip Some of them may attack you.
collect 6 Anima Vial##175413 |q 59203/1 |goto 54.05,49.97
step
talk Au'narim##159830
turnin Leave Me a Loan##59203 |goto 53.60,47.51
accept Working For The Living##59837 |goto 53.60,47.51
step
click Broker Portal
Use the Broker Portal |q 59837/1 |goto 53.70,47.22
step
Kill enemies around this area
click Broker Cagetrap+
|tip They look like large yellow cylinder portals on the ground around this area.
Secure the Shattered Grove |q 59837/2 |goto Shattered Grove/0 40.38,55.82
|tip Fill up the blue bar in the quest tracker area.
step
kill Khogov The Expunger##166382 |q 59837/3 |goto 67.39,56.30
|tip He walks around this area.
step
click Broker Portal
Use the Broker Portal |q 59837/4 |goto 14.80,39.05
step
talk Au'narim##159830
turnin Working For The Living##59837 |goto Maldraxxus/0 53.60,47.51
step
talk Louison##161559
accept A Sure Bet##58900 |goto 54.48,48.59
step
talk Anzio The Infallible##161733
turnin A Sure Bet##58900 |goto 50.58,51.62
step
talk Plague Deviser Marileth##159930
turnin The House of Plagues##59130 |goto 56.47,57.29
accept Bug Bites##58011 |goto 56.47,57.29
accept Spores Galore##58016 |goto 56.47,57.29
stickystart "Collect_Bloated_Venom_Sacs"
step
click Stringy Spore+
|tip They look like small dark dead trees growing out of the ground around this area.
|tip Run away from them after clicking them, to pull them out of the ground.
|tip They will appear on your minimap as yellow dots.
collect 8 Stringy Spore##180271 |q 58016/1 |goto 54.05,58.60
step
label "Collect_Bloated_Venom_Sacs"
kill Virulent Pest##159856+
collect 6 Bloated Venom Sac##173368 |q 58011/1 |goto 54.05,58.60
step
talk Plague Deviser Marileth##159930
turnin Bug Bites##58011 |goto 56.47,57.29
turnin Spores Galore##58016 |goto 56.47,57.29
accept Slime, Anyone?##58027 |goto 56.47,57.29
step
click Jar of Venom
Imbue the Venom |q 58027/2 |goto 56.54,57.18
step
click Pile of Spores
Incorporate the Spores |q 58027/1 |goto 56.53,57.07
step
click Cauldron of Creation
Stir the Cauldron |q 58027/3 |goto 56.44,57.20
step
click Cauldron of Creation
Mix the Concoction |q 58027/4 |goto 56.44,57.20
step
talk Plague Deviser Marileth##159930
turnin Slime, Anyone?##58027 |goto 56.47,57.29
accept Hazardous Waste Collection##58036 |goto 56.47,57.29
accept Plague is Thicker Than Water##58045 |goto 56.47,57.29
step
click Marileth's Journal
accept Applied Science##58031 |goto 56.53,57.21
stickystart "Collect_Laboratory_Equipment"
stickystart "Find_Marileths_Journal_Page_One"
stickystart "Find_Marileths_Journal_Page_Two"
stickystart "Find_Marileths_Journal_Page_Three"
stickystart "Find_Marileths_Journal_Page_Four"
step
kill Korrim the Cunning##161613 |q 58045/1 |goto 62.08,63.07
step
label "Collect_Laboratory_Equipment"
click Plague Refuse+
|tip They look like green steaming piles of slime on the ground around this area.
clicknpc Laboratory Equipment##160062+
|tip They appear on the Plagueborn Slime that follows you around.
collect 6 Laboratory Equipment##173536 |q 58036/1 |goto 58.81,61.73
step
label "Find_Marileths_Journal_Page_One"
Kill Remnant enemies around this area
Find Marileth's Journal - Page One |q 58031/1 |goto 58.81,61.73
step
label "Find_Marileths_Journal_Page_Two"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Two |q 58031/2 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=1})
step
label "Find_Marileths_Journal_Page_Three"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Three |q 58031/3 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=2})
step
label "Find_Marileths_Journal_Page_Four"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Four |q 58031/4 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=3})
step
Run up the stairs |goto 57.83,66.73 < 15 |only if walking
talk Plague Deviser Marileth##159930
turnin Hazardous Waste Collection##58036 |goto 58.31,71.66
turnin Plague is Thicker Than Water##58045 |goto 58.31,71.66
turnin Applied Science##58031 |goto 58.31,71.66
accept By Any Other Name##59223 |goto 58.31,71.66
step
talk Judas Sneap##165049
accept Plagues Aid##59430 |goto 58.06,72.11
step
talk Vradira Livid##157515
fpath Plague Watch |goto 58.14,72.45
step
talk Vial Master Lurgy##165052
Ask him _"Is there any way I can help?"_
Speak with Vial Master Lurgy |q 59430/1 |goto 59.45,72.98
step
talk Foul-Tongue Cyrlix##157313
Ask him _"Is there any way I can help?"_
Speak with Foul-Tongue Cyrlix |q 59430/2 |goto 58.53,73.45
step
talk Boil Master Yetch##157945
Ask him _"Is there any way I can help?"_
Speak with Boil Master Yetch |q 59430/3 |goto 59.10,73.87
step
talk Boil Master Yetch##157945
turnin Plagues Aid##59430 |goto 59.10,73.87
accept Pool of Potions##58431 |goto 59.10,73.87
step
Enter the building |goto 58.47,79.30 < 10 |walk
kill Blossoming Deathshade##164759
|tip Inside the building.
collect Solanum Cerinthe##175410 |q 59223/1 |goto 57.90,80.45
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 1
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 2
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 3
step
talk Boil Master Yetch##157945
turnin Pool of Potions##58431 |goto 59.10,73.88
step
talk Plague Deviser Marileth##159930
turnin By Any Other Name##59223 |goto 60.49,71.66
accept Fit For a Margrave##60831 |goto 60.49,71.66
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.56,71.81 |count 1
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.41,71.18 |count 2
step
click Potion Chamber
Form the Potion |q 60831/2 |goto 60.66,71.40
step
Watch the dialogue
click Rune of Insight
Collect the Rune of Insight |q 60831/3 |goto 60.66,71.40
step
talk Plague Deviser Marileth##159930
turnin Fit For a Margrave##60831 |goto 60.49,71.65
accept Fathomless Power##59231 |goto 60.49,71.65
step
talk Vial Master Lurgy##165052
accept Plaguefall: Knee Deep In It##59520 |goto 59.45,72.98
step
Follow the path |goto 58.22,70.94 < 30 |only if walking
Follow the road |goto 58.19,60.43 < 30 |only if walking
Follow the path |goto 65.79,54.25 < 15 |only if walking
Watch the dialogue
talk Baroness Vashj##162487
Tell her _"I have a summons from Draka."_
Deliver the Summons to the Lost Bannerman |q 58751/1 |goto 67.67,45.92
step
talk Baroness Vashj##162487
turnin A Common Peril##58751 |goto 67.67,45.92
accept Glorious Pursuits##58821 |goto 67.67,45.92
accept Prey Upon Them##59171 |goto 67.67,45.92
step
talk Felsen Wingclip##157516
fpath Renounced Bastille |goto 67.93,45.84
stickystart "Collect_Anima_Charged_Maldracites"
step
kill Mephiles the Loyal##164128
|tip Don't kill him, just weaken him.
use Vashj's Signal##178940
|tip Use it on Mephiles the Loyal when he is weakened.
Capture Mephiles the Loyal |q 58821/1 |goto 62.65,52.80
stickystart "Kill_Morbid_Disciples"
step
label "Collect_Anima_Charged_Maldracites"
click Anima-charged Maldracite##342099+
|tip They look like large floating bone structures with large green gems inside them around this area.
|tip They will appear on your minimap as yellow dots.
collect 3 Anima-charged Maldracite##174934 |q 59171/1 |goto 63.16,50.85
step
label "Kill_Morbid_Disciples"
kill 6 Morbid Disciple##163414 |q 58821/2 |goto 63.16,50.85
step
Follow the path up |goto 62.03,46.94 < 15 |only if walking
Follow the path |goto 64.74,48.16 < 30 |only if walking
Return Mephiles |q 58821/3 |goto 67.67,45.92
step
talk Baroness Vashj##162487
turnin Glorious Pursuits##58821 |goto 67.67,45.92
turnin Prey Upon Them##59171 |goto 67.67,45.92
accept War is Deception##59172 |goto 67.67,45.92
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.45,45.97 |count 1
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.68,45.69 |count 2
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.87,46.04 |count 3
step
talk Baroness Vashj##162487
Tell her _"I'm ready. Begin the ritual."_
Trigger the Ritual |q 59172/2 |goto 67.67,45.92
step
Watch the dialogue
Witness the Ritual |q 59172/3 |goto 67.67,45.92
step
Watch the dialogue
talk Baroness Vashj##162487
turnin War is Deception##59172 |goto 67.67,45.92
accept Entangling Web##59185 |goto 67.67,45.92
accept Tainted Cores##59210 |goto 67.67,45.92
step
talk Khaliiq##164297
accept Vaunted Vengeance##59188 |goto 67.71,45.61
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.68,45.69 |count 1
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.87,46.04 |count 2
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.45,45.97 |count 3
stickystart "Collect_Maldracite_Dust"
stickystart "Siphon_Corpses_Of_Anima"
step
kill Architect Halen##165008
collect Halen's Ritual Drafts##178657 |q 59188/2 |goto 69.84,52.74
step
kill Architect Xeeli##165007
collect Xeeli's Ritual Drafts##178656 |q 59188/1 |goto 72.16,47.93
step
kill Architect Lye##165009
collect Lye's Ritual Drafts##178655 |q 59188/3 |goto 72.79,53.16
step
label "Collect_Maldracite_Dust"
click Jar of Ground Maldracite+
|tip They look like small stone bottles on the ground around this area.
collect 8 Maldracite Dust##178684 |q 59185/1 |goto 72.12,50.60
step
label "Siphon_Corpses_Of_Anima"
Kill enemies around this area
use the Fractured Anima Crystal##175409
|tip Use it near their corpses.
Siphon #12# Corpses of Anima |q 59210/2 |goto 72.12,50.60
step
Follow the path up |goto 74.55,47.43 < 30 |only if walking
talk Baroness Vashj##164326
turnin Entangling Web##59185 |goto 73.54,44.51
turnin Tainted Cores##59210 |goto 73.54,44.51
step
talk Khaliiq##164297
turnin Vaunted Vengeance##59188 |goto 73.39,44.52
step
talk Baroness Vashj##164326
accept Seek Your Mark##59190 |goto 73.54,44.51
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 73.17,44.46 |count 1
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 73.03,43.02 |count 2
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 74.43,43.81 |count 3
step
click Ritual Focus
Draw the Binding Sigil |q 59190/2 |goto 73.82,43.94
step
talk Baroness Vashj##164326
turnin Seek Your Mark##59190 |goto 73.55,44.51
accept Straight to the Heart##59025 |goto 73.55,44.51
step
click Ritual Focus
Trigger the Ritual |q 59025/1 |goto 73.78,43.97
step
kill Mor'Bitan##163431 |q 59025/2 |goto 73.73,44.11
|tip Baroness Vashj will help you fight.
step
click Rune of Guile
Collect the Rune of Guile |q 59025/3 |goto 73.73,44.11
step
Watch the dialogue
talk Baroness Vashj##164326
turnin Straight to the Heart##59025 |goto 73.55,44.51
accept Her Rightful Place##59009 |goto 73.55,44.51
step
Follow the road |goto 46.65,53.35 < 40 |only if walking
talk Caleesy##162615
accept Smack And Grab##58785 |goto 47.00,49.04
step
talk Dundae##162474
accept Take The Bull By The Horns##58750 |goto 46.88,48.58
stickystart "Capture_Neonate_Bonetooths"
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 1
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 2
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 3
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 4
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 5
step
talk Dundae##162474
turnin Take The Bull By The Horns##58750 |goto 46.88,48.58
step
label "Capture_Neonate_Bonetooths"
kill Neonate Bonetooth##162589+
|tip They will eventually become stunned.
click Neonate Bonetooth##162589+
|tip Click them when they become stunned.
Capture #10# Neonate Bonetooths |q 58785/1 |goto 44.61,50.30
step
talk Caleesy##162615
turnin Smack And Grab##58785 |goto 47.00,49.04
step
talk Dundae##162474
accept Stabbing Wasteward##58794 |goto 46.88,48.58
step
kill Satiated Sawtooth##164587 |q 58794/1 |goto 42.41,48.60
step
talk Dundae##162474
turnin Stabbing Wasteward##58794 |goto 46.88,48.58
step
Follow the road |goto 42.66,58.17 < 50 |only if walking
talk Baron Vyraz##159894
turnin Baron of the Chosen##57912 |goto 39.27,55.88
accept Lead By Example##57976 |goto 39.27,55.88
accept First Time? You Have to Fight!##60557 |goto 39.27,55.88
step
talk Secutor Mevix##169359
accept Take the High Ground##58268 |goto 39.44,55.55
step
talk Wing Guard Aela##157519
fpath The Spearhead |goto 39.03,55.24
stickystart "Rally_Hesitant_Soldiers"
stickystart "Slay_Steelskin_Constructs"
step
click First Charge
Place the First Charge |q 58268/1 |goto 35.77,50.34
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the First Charge |q 58268/2 |goto 35.77,50.34
step
click First Charge
Place the Second Charge |q 58268/3 |goto 36.07,48.41
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the Second Charge |q 58268/4 |goto 36.07,48.41
step
click First Charge
Place the Third Charge |q 58268/5 |goto 36.11,46.42
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the Third Charge |q 58268/6 |goto 36.11,46.42
step
label "Rally_Hesitant_Soldiers"
Use the _"Signal to Advance"_ ability
|tip Use it near Soldier NPC's.
|tip They look like armored NPC's with various names kneeling on the ground around this area.
|tip It appears as a button on the screen when you get near them.
Rally #8# Hesitant Soldiers |q 60557/1 |goto 37.76,50.66
step
label "Slay_Steelskin_Constructs"
Kill enemies around this area
Slay #12# Steelskin Constructs |q 57976/1 |goto 37.76,50.66
step
talk Secutor Mevix##169226
turnin Lead By Example##57976 |goto 39.44,46.71
turnin First Time? You Have to Fight!##60557 |goto 39.44,46.71
turnin Take the High Ground##58268 |goto 39.44,46.71
accept Offensive Behavior##57979 |goto 39.44,46.71
step
Use the _"Signal the Attack"_ ability
|tip Use it on General Alver.
|tip It appears as a button on the screen.
|tip It will summon allies to help you fight.
kill General Alver##160095 |q 57979/1 |goto 37.21,43.47
step
talk Secutor Mevix##169226
turnin Offensive Behavior##57979 |goto 39.45,46.71
step
Watch the dialogue
talk Baron Vyraz##169462
|tip He walks to this location.
accept Army of One##59616 |goto 39.73,46.72
step
Follow the road |goto 40.34,40.82 < 30 |only if walking
talk Secutor Mevix##165362
Meet Secutor Mevix at the House of Constructs |q 59616/1 |goto 36.05,34.93
step
click Corpse Pile
|tip Click it repeatedly.
Escape the Corpse Pile |q 59616/2 |goto 33.85,31.41
step
Watch the dialogue
talk Aspirant Thales##160211
|tip He walks to this location.
turnin Army of One##59616 |goto 33.89,31.05
accept Archon Save Us##57983 |goto 33.89,31.05
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Hipokos |q 57983/2 |goto 34.93,30.50
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Kou and Koa |q 57983/1 |goto 36.21,30.63
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Orb of Power
Save Kynthia |q 57983/3 |goto 35.27,28.94
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Secutor Mevix |q 57983/4 |goto 35.64,28.13
step
_Next to you:_
talk Aspirant Thales
turnin Archon Save Us##57983
accept The Ones in Charge##57984
step
kill Tabulator Hymeris##169312 |q 57984/2 |goto 35.39,23.02
|tip He walks around this area.
step
Enter the building |goto 33.66,22.93 < 10 |walk
kill Doctor Hivvil##159707 |q 57984/1 |goto 33.77,22.29
|tip He walks around this area inside the building.
step
kill Leacher Cvan##169315 |q 57984/3 |goto 31.81,22.65
|tip He walks around this area.
step
Run up the stairs |goto 32.62,25.87 < 15 |only if walking
talk Secutor Mevix##165397
turnin The Ones in Charge##57984 |goto 31.99,27.37
accept Give Them a Hand##57985 |goto 31.99,27.37
accept A Deadly Distraction##57987 |goto 31.99,27.37
step
talk Aspirant Thales##160211
accept A Burden Worth Bearing##57986 |goto 32.07,27.46
step
clicknpc Vestigial Animate##165084+
|tip They look like hands reaching out of the ground around this area.
kill Vestigial Animate##165084+
Destroy #10# Vestigial Animates |q 57985/1 |goto 31.09,28.33
stickystart "Slay_Warstitched_Forces"
step
click Gurney
Locate the Kyrian Equipment |q 57986/1 |goto 32.77,28.17
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 32.86,27.59 |count 1
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 32.17,29.61 |count 2
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 31.21,31.72 |count 3
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 30.11,32.27 |count 4
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 29.97,31.03 |count 5
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 29.15,29.77 |count 6
step
label "Slay_Warstitched_Forces"
Kill Warstitched enemies around this area
Slay #15# Warstitched Forces |q 57987/1 |goto 28.60,28.16
step
Watch the dialogue
|tip Inside the building.
Bring Kou and Koa to Thales |q 57986/3 |goto 30.08,24.04
step
talk Aspirant Thales##169949
|tip Inside the building.
turnin A Burden Worth Bearing##57986 |goto 30.08,24.04
step
talk Secutor Mevix##165397
|tip Inside the building.
turnin Give Them a Hand##57985 |goto 30.19,23.77
turnin A Deadly Distraction##57987 |goto 30.19,23.77
accept Breaking Down Barriers##57982 |goto 30.19,23.77
step
talk Aspirant Thales##169949
|tip Inside the building.
Ask him _"How would you breach the barrier?"_
Speak with Thales |q 57982/1 |goto 30.08,24.04
step
talk Salvaged Praetor##169953
|tip Inside the building.
Tell him _"I need you to follow my directions."_
Direct the Salvaged Praetor |q 57982/2 |goto 30.03,23.95
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the barrier.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.96,23.52 |count 1
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the green spraying liquid.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.60,23.48 |count 2
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the green spraying liquid.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.53,22.70 |count 3
step
click Spewer Valve
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.54,22.63 |count 4
step
click Shielding Lattice
|tip Inside the building.
Disable the Shielding Lattice |q 57982/4 |goto 29.29,23.06
step
Return to Secutor Mevix |outvehicle |q 57982
|tip Inside the building.
step
talk Secutor Mevix##165397
|tip Inside the building.
turnin Breaking Down Barriers##57982 |goto 30.19,23.77
accept Two of Them, Two of Us##57993 |goto 30.19,23.77
step
kill Sharrex the Fleshcrafter##165478 |q 57993/1 |goto 29.00,22.27
kill First Apprentice Malkrex##165477 |q 57993/2 |goto 29.00,22.27
|tip Inside the building.
step
clicknpc Soulfused Construct##170020
|tip Inside the building.
Examine the Soulfused Construct |q 57993/3 |goto 28.87,21.97
step
Watch the dialogue
talk Aspirant Thales##165575
|tip He runs to this location.
|tip Inside the building.
turnin Two of Them, Two of Us##57993 |goto 28.89,22.15
accept In The Flesh##57994 |goto 28.89,22.15
step
clicknpc Soulfused Construct##165488
|tip Inside the building.
Take Control of the Soulfused Construct |q 57994/1 |goto 28.86,21.96
stickystart "Destroy_The_Construct_House_Forces"
step
kill Baron Halis##170082 |q 57994/3 |goto 30.82,28.76
|tip He walks around this area.
step
label "Destroy_The_Construct_House_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Fill up the blue bar in the quest tracker area.
Destroy the Construct House Forces |q 57994/2 |goto 30.82,28.76
step
Escape the House of Constructs |q 57994/4 |goto 34.15,33.79
step
Watch the dialogue
Reach Spider's Watch |goto 37.60,29.39 < 10 |c |q 57994 |notravel
|tip You will run there automatically.
step
click Rune of Might
Retrieve the Rune of Might |q 57994/5 |goto 37.65,29.20
step
talk Aspirant Thales##160211
turnin In The Flesh##57994 |goto 37.61,29.10
step
talk Flight Master Nudolva##157518
fpath Spider's Watch |goto 37.51,29.22
step
talk Secutor Mevix##170094
accept Front and Center##60733 |goto 37.70,29.13
step
click Forgotten Supplies
accept Broker Business##62605 |goto 38.20,31.30
step
Enter the tunnel |goto 38.63,32.88 < 15 |only if walking
talk Ta'eran##166657
turnin Broker Business##62605 |goto 40.66,33.07
accept Read Between the Lines##58619 |goto 40.66,33.07
step
talk Ta'eran##166657
Tell him _"Tell me about this opportunity."_
Begin Following Ta'eran |goto 40.66,33.07 > 15 |c |q 58619
step
Watch the dialogue
|tip Follow Ta'eran as he walks.
|tip He eventually walks to this location.
Listen to Ta'eran's Proposal |q 58619/1 |goto 43.08,25.11
step
talk Ta'eran##166664
turnin Read Between the Lines##58619 |goto 43.08,25.11
accept Repeat After Me##58621 |goto 43.08,25.11
accept Kill Them Of Course##59917 |goto 43.08,25.11
stickystart "Kill_Enraged_Gluttons"
step
Enter the cave |goto 41.61,28.34 < 10 |walk
Kneel Before the Runestone of Rituals |script DoEmote("KNEEL")
|tip Make sure you are targeting the Runestone of Rituals.
|tip Inside the cave.
kill Echo of the Magus##162401 |q 58621/4 |goto 41.13,27.90
|tip It appears after you kneel.
step
Bleed Before the Runestone of Plague |script DoEmote("BLEED")
|tip Make sure you are targeting the Runestone of Plague.
kill Echo of the Chemist##162402 |q 58621/3 |goto 40.70,31.10
|tip It appears after you bleed.
step
Enter the cave |goto 43.90,34.69 < 10 |walk
Salute the Runestone of Rituals |script DoEmote("SALUTE")
|tip Make sure you are targeting the Runestone of Chosen.
|tip Inside the cave.
kill Echo of the Hero##162400 |q 58621/1 |goto 44.11,35.49
|tip It appears after you salute.
step
Flex Before the Runestone of Constructs |script DoEmote("FLEX")
|tip Make sure you are targeting the Runestone of Constructs.
kill Echo of the Crafter##162403 |q 58621/5 |goto 47.26,35.67
|tip It appears after you flex.
step
Enter the cave |goto 45.73,28.63 < 10 |walk
Sneak Before the Runestone of Eyes |script DoEmote("SNEAK")
|tip Make sure you are targeting the Runestone of Eyes.
|tip Inside the cave.
kill Echo of the Spy##162399 |q 58621/2 |goto 46.23,28.69
|tip It appears after you sneak.
step
label "Kill_Enraged_Gluttons"
kill 8 Enraged Glutton##163415 |q 59917/1 |goto 43.69,28.81
step
talk Ta'eran##166664
turnin Repeat After Me##58621 |goto 43.08,25.11
turnin Kill Them Of Course##59917 |goto 43.08,25.11
accept Slaylines##58620 |goto 43.08,25.11
step
Locate the East Power Crystal |q 58620/1 |goto 45.89,29.88
step
click Power Crystal
|tip Click it twice.
|tip The blue line should be pointing west to the dark crystal.
Click Here to Continue |confirm |goto 45.89,29.88 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing north.
Click Here to Continue |confirm |goto 44.96,29.55 |q 58620
step
Locate the West Power Crystal |q 58620/2 |goto 42.14,31.10
step
click Power Crystal
|tip Click it once.
|tip The blue line should be pointing east to the dark crystal.
Click Here to Continue |confirm |goto 42.14,31.10 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing northeast.
Click Here to Continue |confirm |goto 43.18,30.83 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing north.
Click Here to Continue |confirm |goto 43.06,28.53 |q 58620
step
click Unlocking Obelisk
Activate the West Unlocking Obelisk |q 58620/3 |goto 42.73,27.22
step
click Unlocking Obelisk
Activate the East Unlocking Obelisk |q 58620/4 |goto 43.38,26.84
step
talk Ta'eran##166664
turnin Slaylines##58620 |goto 43.08,25.11
accept Secrets Among the Shelves##58622 |goto 43.08,25.11
step
Enter the building |goto 42.33,24.26 < 10 |walk
click Alver's Annals of Strategy
|tip Click the Tower Door and walk into the building.
|tip Inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 42.46,23.62 |count 1
step
click How Not To Lose
|tip Inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 42.05,23.01 |count 1
step
click World of Crafting War
|tip Inside the building.
Retrive the World of Crafting War |q 58622/3 |goto 42.02,23.02 |count 1
step
click Guide To Marching
|tip Inside the building.
Retrieve the Guide To Marching |q 58622/1 |goto 41.93,23.35
step
click Beginners Guide To Polearms
|tip Inside the building.
Retrieve the Beginners Guide To Polearms |q 58622/5 |goto 41.95,23.60 |count 1
step
click How Not To Lose
|tip Upstairs inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 41.59,23.27 |count 2
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.31,22.92 |count 1
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.32,23.37 |count 2
step
click World of Crafting War
|tip Upstairs inside the building.
Retrive the World of Crafting War |q 58622/3 |goto 42.33,23.30 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 42.05,23.03 |count 2
step
click War, is it art?
|tip Upstairs inside the building.
Retrieve War, is it art? |q 58622/4 |goto 42.02,23.04 |count 1
step
click War, is it art?
|tip Upstairs inside the building.
Retrieve War, is it art? |q 58622/4 |goto 41.90,23.39 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.89,23.56 |count 3
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.29,22.93 |count 3
step
click How Not To Lose
|tip Upstairs inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 42.16,23.55 |count 3
step
click Krexus's Guide To War
|tip Upstairs inside the building.
Retrive Krexus's Guide To War |q 58622/2 |goto 42.20,23.22
step
click Beginners Guide To Polearms
|tip Upstairs inside the building.
Retrieve the Beginners Guide To Polearms |q 58622/5 |goto 42.00,23.10 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.93,23.04 |count 4
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.77,22.89 |count 5
step
talk Ta'eran##170667
|tip Upstairs inside the building.
turnin Secrets Among the Shelves##58622 |goto 41.80,23.65
accept Archival Protection##60900 |goto 41.80,23.65
step
kill The Archivist##161896 |q 60900/1 |goto 42.16,23.46
|tip Upstairs inside the building.
step
_Next to you:_
talk Ta'eran
turnin Archival Protection##60900
accept Trust Fall##59994
step
Jump from the Tower |q 59994/1 |goto 42.31,24.16
|tip Try to jump into the green circle rune floating in the air nearby.
|tip You will not die.
step
Reach the Sepulcher of Knowledge |goto 45.31,32.05 < 10 |noway |c |q 59994
step
click Volumes of Victory: Vol 1
|tip Inside the building.
collect Volume of Victory: Vol 1##178020 |q 59994/2 |goto 45.50,32.08
step
talk Ta'eran##166806
|tip Inside the building.
turnin Trust Fall##59994 |goto 45.17,32.13
accept A Complete Set##58623 |goto 45.17,32.13
step
click Volumes of Victory+
|tip They look like highlighted books with various names around this area.
|tip Inside the building.
Collect #5# Several Volumes |q 58623/1 |goto 45.29,32.08
step
click Volumes of Victory+
|tip They look like highlighted books and paper pages with various names around this area.
|tip Inside the building.
Take #72# More Volumes |q 58623/2 |goto 45.29,32.08
step
talk Ta'eran##166806
|tip Inside the building.
turnin A Complete Set##58623 |goto 45.17,32.13
step
Use the _"Resonate"_ ability
|tip It appears as a button on the screen.
|tip Upstairs.
Empower the Rune of Guile |q 59009/1 |goto 50.40,67.75
Empower Rune of Insight |q 59231/1 |goto 50.40,67.75
Empower the Rune of Might |q 60733/1 |goto 50.40,67.75
step
talk Baroness Draka##168381
|tip Upstairs.
turnin Her Rightful Place##59009 |goto 50.31,67.72
turnin Fathomless Power##59231 |goto 50.31,67.72
turnin Front and Center##60733 |goto 50.31,67.72
accept Among the Chosen##59202 |goto 50.31,67.72
step
Follow the path up |goto 40.16,57.01 < 40 |only if walking
Enter the building |goto 40.91,61.34 < 15 |walk
Return to the House of the Chosen |q 59202/1 |goto 40.47,62.18
|tip Inside the building.
step
Find Krexus |q 59202/2 |goto 38.07,66.80
step
Watch the dialogue
talk Baron Vyraz##164843
|tip He walks to this location.
turnin Among the Chosen##59202 |goto 38.22,66.75
accept The Maw##59874 |goto 38.22,66.75
step
talk Highlord Bolvar Fordragon##164079
turnin The Maw##59874 |goto Oribos/0 39.93,68.56
step
Watch the dialogue
talk Highlord Bolvar Fordragon##164079
accept Seeking the Baron##59897 |goto 39.93,68.56
step
Jump into the Soul Pillar from the Ring of Transference |q 59897/1 |goto Oribos/1 49.53,56.85
|tip Jump into the huge pillar of light in the center of the room.
step
Travel to the Maw |goto The Maw/0 44.95,40.99 < 10 |noway |c |q 59897
step
_Click the Complete Quest Box:_
turnin Seeking the Baron##59897
accept The Hunt for the Baron##60972
step
Kill enemies around this area
Charge the Ebon Blade Amulet |q 60972/1 |goto 40.56,42.76
|tip Fill up the bar near the bottom of the screen.
You can find more around [37.05,36.82]
step
_Click the Complete Quest Box:_
turnin The Hunt for the Baron##60972
accept A Cooling Trail##59960
step
Find Darion Mograine |q 59960/1 |goto 37.90,48.88
|tip At the entrance to the cave.
step
click Cage
|tip Inside the cave.
turnin A Cooling Trail##59960 |goto 38.40,48.52
accept The Brand Holds the Key##59959 |goto 38.40,48.52
step
Run up the stairs |goto 33.49,44.88 < 15 |only if walking
kill Brethlun the Brand##166670
|tip He walks around this area.
collect The Brand's Key##178018 |n
Find "the Brand" and Claim the Key |q 59959/1 |goto 35.98,44.73
step
Enter the cave |goto 37.90,48.88 < 7 |walk
click Cage
|tip Inside the cave.
Free Darion Mograine |q 59959/2 |goto 38.39,48.51
step
Watch the dialogue
talk Ve'nari##171770
|tip She eventually walks to this location.
turnin The Brand Holds the Key##59959 |goto 36.54,50.76
accept Hope Never Dies##59962 |goto 36.54,50.76
step
click Orb of Teleportation
Use the Orb of Teleportation |q 59962/1 |goto 36.55,50.93
step
Travel with Ve'nari |goto 36.29,55.32 < 10 |c |q 59962 |notravel
step
talk Ve'nari##171770
turnin Hope Never Dies##59962 |goto 36.23,55.74
accept Delving Deeper##59966 |goto 36.23,55.74
step
talk Ve'nari##171770
Tell her _"Let's go."_
Speak with Ve'nari |q 59966/1 |goto 36.23,55.74
step
Watch the dialogue
|tip Follow Ve'nari as she walks.
|tip Stay within the circle surrounding Ve'nari to remain invisible to enemies.
|tip She eventually walks to this location.
Follow Ve'nari |q 59966/2 |goto 34.62,66.89
step
Watch the dialogue
talk Highlord Darion Mograine##172414
|tip He walks to this location.
turnin Delving Deeper##59966 |goto 32.92,66.40
accept A Bond Beyond Death##59973 |goto 32.92,66.40
step
clicknpc Alexandros Mograine##166776
Aid Alexandros |q 59973/1 |goto 32.86,66.41
step
Kill the enemies
Secure the Area |q 59973/2 |goto 33.05,66.53
step
kill Deslan the Torturer##166987 |q 59973/3 |goto 33.74,67.48
|tip She flies to this location.
step
talk Highlord Darion Mograine##172414
turnin A Bond Beyond Death##59973 |goto 32.92,66.40
accept Wake of Ashes##61190 |goto 32.92,66.40
step
click Ve'nari's Portal
Use Ve'nari's Portal |q 61190/1 |goto 33.06,66.16
step
Watch the dialogue
talk Ve'nari##162804
turnin Wake of Ashes##61190 |goto 46.91,41.70
accept Maw Walker##62654 |goto 46.91,41.70
step
click Waystone to Oribos
Attune to Alexandros and Darion at the Waygate |q 62654/1 |goto 42.38,42.16
step
click Waystone to Oribos
Escape the Maw |q 62654/2 |goto 42.38,42.16
step
talk Highlord Bolvar Fordragon##164079
turnin Maw Walker##62654 |goto Oribos/0 39.94,68.60
step
talk Baroness Draka##167903
accept A Soul Saved##59974 |goto 39.15,67.95
step
Follow the path up |goto Maldraxxus/0 40.16,57.01 < 40 |only if walking
talk Alexandros Mograine##162801
turnin A Soul Saved##59974 |goto Maldraxxus/0 41.34,60.58
accept In Death We Are Truly Tested##59011 |goto Maldraxxus/0 41.34,60.58
step
Watch the dialogue
Use the _"Claim Rune"_ ability
|tip It appears as a button on the screen.
Claim the Final Rune |q 59011/1 |goto 41.34,60.58
step
Watch the dialogue
kill Baron Vyraz##169901
|tip Kill the enemies that channel on him when they appear.
|tip He will eventually escape.
Confront Vyraz |q 59011/2 |goto 41.10,61.00
step
Watch the dialogue
|tip You will fly automatically.
Escape with Alexandros Mograine |invehicle |q 59011
step
Watch the dialogue
Escape to Safety |outvehicle |goto 50.39,67.70 |q 59011 |notravel
step
talk Baroness Draka##170309
turnin In Death We Are Truly Tested##59011 |goto 50.52,67.88
accept The Door to the Unknown##60737 |goto 50.52,67.88
step
Use the _"Unlock Door"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Open the Door to the Seat of the Primus |q 60737/1 |goto 50.39,67.42
step
Enter the building |goto 50.40,68.05 < 7 |walk
click Stone Altar
|tip Inside the building.
turnin The Door to the Unknown##60737 |goto Seat of the Primus/0 49.68,54.84
step
Watch the dialogue
|tip Inside the building.
talk Baroness Draka##164545
|tip She walks to this location.
accept Words of the Primus##59206 |goto 49.66,48.96
step
talk Tal-Inara##159478
turnin Words of the Primus##59206 |goto Oribos/0 54.49,54.23
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Ardenweald",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Ardenweald:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Ardenweald",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Lady Moonberry##168341
turnin Journey to Ardenweald##60338 |goto Ardenweald/0 68.27,18.37 |only if havequest(60338) or completedq(60338)
accept I Moustache You to Lend a Hand##60763 |goto Ardenweald/0 68.27,18.37
step
click Night Lily
collect Night Lily##178747 |q 60763/1 |goto 67.48,18.28
step
talk Featherlight##170175
Tell him _"I have the lily."_
Give the Night Lily to Featherlight |q 60763/2 |goto 68.35,18.42
step
talk Lady Moonberry##168341
Ask her _"Will you help me gain an audience with the Queen?"_
Speak with Lady Moonberry |q 60763/3 |goto 68.28,18.37
step
Watch the dialogue
|tip Follow Lady Moonberry as she flies.
|tip She eventually flies to this location.
Follow Lady Moonberry |q 60763/4 |goto 65.06,19.60
step
talk Lady Moonberry##157788
turnin I Moustache You to Lend a Hand##60763 |goto 65.06,19.60
accept First on the Agenda##60341 |goto 65.06,19.60
step
clicknpc Mothbane the Mighty##170889
|tip He flies low to the ground around this area.
kill Mothbane the Mighty##170889 |q 60341/1 |goto 64.81,19.96
step
talk Featherlight##170175
turnin First on the Agenda##60341 |goto 65.07,19.54
accept Wildseed Rescue##60778 |goto 65.07,19.54
step
Find Korenth |q 60778/1 |goto 66.73,21.03
step
talk Korenth##168422
|tip In the entrance of the cave.
Tell him _"I'm standing in for Lady Moonberry. What happened?"_
Speak with Korenth |q 60778/2 |goto 67.67,20.56
step
talk Featherlight##170324
|tip In the entrance of the cave.
Choose _<Hold still?>_
Speak with Featherlight |q 60778/3 |goto 67.69,20.61
step
Coax the Nesting Valeshrieker |q 60778/4 |goto Ardenweald/1 46.50,56.26
|tip Use the abilities on your action bar.
|tip Fill up the blue bar in the quest tracker area.
|tip It will attack you after you complete this quest goal.
|tip Inside the cave.
step
kill Nesting Valeshrieker##168475 |q 60778/5 |goto 46.50,56.26
|tip Inside the cave.
step
talk Featherlight##170324
|tip In the entrance of the cave.
turnin Wildseed Rescue##60778 |goto Ardenweald/0 67.69,20.61
accept We Can't Save Them All##60857 |goto Ardenweald/0 67.69,20.61
step
Continue Down the Road |q 60857/1 |goto 67.95,24.24
step
talk Droman Krelnor##168528
turnin We Can't Save Them All##60857 |goto 67.95,24.24
step
talk Te'zan##170537
|tip He runs to this location.
accept Souls of the Forest##60859 |goto 67.82,24.24
step
Find Wagonmaster Derawyn |q 60859/1 |goto 65.55,27.96
step
talk Wagonmaster Derawyn##168595
Tell her _"I will help you."_
Speak with Derawyn |q 60859/2 |goto 65.55,27.96
stickystart "Rescue_Nature_Spirits"
step
clicknpc Choofa##159740
Rescue Choofa |q 60859/3 |goto 64.65,28.45
step
label "Rescue_Nature_Spirits"
kill Starving Shadowstalker##168620+
Rescue #3# Nature Spirits |q 60859/4 |goto 65.40,28.69
step
talk Wagonmaster Derawyn##168595
Tell her _"You're welcome."_
Speak with Derawyn Again |q 60859/5 |goto 65.55,27.96
step
talk Featherlight##170533
turnin Souls of the Forest##60859 |goto 65.67,27.90
accept Keep to the Path##57787 |goto 65.67,27.90
step
Continue Further Down the Road |q 57787/1 |goto 65.37,30.84
step
talk Nelwyn##169328
Tell her _"I'm going that way too. I'll help."_
Speak with the Upset Sylvar |q 57787/2 |goto 65.37,30.84
step
Enter the cave |goto 67.51,29.44 < 10 |walk
talk "Granny"##169331
|tip Inside the cave.
Tell her _"My, what big teeth you have Granny."_
Check the Sick Elder |q 57787/3 |goto 67.76,28.97
|tip She will attack you.
step
kill "Granny"##169331 |q 57787/4 |goto 67.76,28.97
|tip Inside the cave.
step
talk Nelwyn##169328
|tip Inside the cave.
Tell her _"Hey! What's the big idea?"_
Confront Nelwyn |q 57787/5 |goto 67.76,28.90
|tip She will attack you.
step
Watch the dialogue
|tip Inside the cave.
kill 3 Mire Trickster##169381 |q 57787/6 |goto 67.76,28.90
step
Return to the Road |q 57787/7 |goto 65.29,30.78
step
Find Tirna Vaal |q 57787/8 |goto 63.59,36.28
step
talk Lady Moonberry##169031
Choose _<Express your appreciation for her help.>_
Speak with Lady Moonberry |q 57787/9 |goto 63.59,36.28
step
talk Lady Moonberry##169031
turnin Keep to the Path##57787 |goto 63.59,36.28
step
talk Droman Tashmur##158487
accept Spirits of the Glen##57947 |goto 63.50,36.28
accept Dreamweaver##57816 |goto 63.50,36.28
step
talk Nolon##162446
home Tirna Vaal |goto 62.56,35.31
step
talk Lanra##165164
fpath Tirna Vaal |goto 63.46,37.56
step
talk Dreamweaver##169116
turnin Dreamweaver##57816 |goto 64.27,41.27
accept Shooing Wildlife##60567 |goto 64.27,41.27
accept Tending to Wildseeds##60563 |goto 64.27,41.27
step
click Animacone Basket
Take the Basket of Animacones |q 60563/1 |goto 64.24,41.27
stickystart "Slay_Anima_Starved_Wildlife"
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 65.60,43.26 |count 1
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 63.97,42.99 |count 2
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 63.52,41.56 |count 3
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 62.18,40.08 |count 4
step
label "Slay_Anima_Starved_Wildlife"
Kill enemies around this area
Slay #8# Anima-starved Wildlife |q 60567/1 |goto 63.90,42.04
step
talk Dreamweaver##169202
turnin Shooing Wildlife##60567 |goto 61.40,40.97
turnin Tending to Wildseeds##60563 |goto 61.40,40.97
accept Belly Full of Fae##60575 |goto 61.40,40.97
accept Hungry for Animacones##60577 |goto 61.40,40.97
stickystart "Collect_Animacones_60577"
step
kill Devouring Hydra##169206+
use the Hydra Gutter##179921
|tip Use it on their corpses.
Free #16# Wildseed Tenders from Hydras |q 60575/1 |goto 61.43,39.48
step
label "Collect_Animacones_60577"
kill Gobbling Blossom##169205+
collect 25 Animacone##179922 |q 60577/1 |goto 61.09,39.39
step
talk Dreamweaver##169217
turnin Belly Full of Fae##60575 |goto 62.21,36.47
turnin Hungry for Animacones##60577 |goto 62.21,36.47
accept One Special Spirit##60594 |goto 62.21,36.47
step
Enter the cave |goto 64.40,36.47 < 10 |walk
Watch the dialogue
|tip Follow Dreamweaver as he flies.
talk Dreamweaver##169278
|tip Inside the cave.
Tell him _"I'll take the animacones and infuse this wildseed with their anima."_
Speak with Dreamweaver at the Young Wildseed |q 60594/1 |goto Ardenweald/2 48.04,49.15
step
use the Infused Animacones##179978
|tip Use them on the Young Wildseed.
|tip Inside the cave.
Use an Animacone on the Young Wildseed |q 60594/2 |goto 49.97,51.91
step
talk Droman Tashmur##158487
turnin One Special Spirit##60594 |goto Ardenweald/0 63.50,36.29
step
talk Choofa##159638
turnin Spirits of the Glen##57947 |goto 67.11,32.19
accept They Need to Calm Down##57949 |goto 67.11,32.19
accept Nothing Left to Give##57948 |goto 67.11,32.19
stickystart "Reclaim_Stolen_Anima"
step
Follow the path up |goto 67.10,34.63 < 15 |only if walking
talk Rury##159643
|tip He floats around this area.
Tell him _"The fuss is, it's time to leave."_
Restore Rury |q 57948/2 |goto 66.94,34.21
step
talk Awool##159644
|tip He floats around this area.
Tell him _"It's fine, you can leave with me now."_
Restore Awool |q 57948/3 |goto 67.78,36.35
step
talk Slanknen##159642
|tip He floats around this area.
Tell him _"Let's get you out of here."_
Restore Slanknen |q 57948/1 |goto 68.61,33.26
step
_Next to you:_
talk Choofa
turnin Nothing Left to Give##57948
step
label "Reclaim_Stolen_Anima"
Kill Spriggan enemies around this area
|tip They look like small blue imps on the ground around this area.
use the Soulweb##176445
|tip Use it near their corpses.
Reclaim #8# Stolen Anima |q 57949/1 |goto 68.12,35.00
step
_Next to you:_
talk Choofa
turnin They Need to Calm Down##57949
accept Mizik the Haughty##57950
step
kill Enthralled Gorm##159693
|tip It walks around this area.
kill Mizik the Haughty##165388 |q 57950/1 |goto 68.76,35.39
|tip He jumps off the Enthralled Gorm after you kill it.
step
talk Choofa##159638
turnin Mizik the Haughty##57950 |goto 67.11,32.19
accept Souls Come Home##57951 |goto 67.11,32.19
step
talk Droman Tashmur##158487
turnin Souls Come Home##57951 |goto 63.50,36.29
step
talk Lady Moonberry##169031
accept Preparing for the Winter Queen##60600 |goto 63.59,36.28
step
talk Lady Moonberry##169031
Tell her _"I'm ready to be properly prepared to meet the Winter Queen."_
Watch the dialogue
Receive Ardenweald's Essence from Lady Moonberry |q 60600/1 |goto 63.59,36.28
step
Watch the dialogue
talk Droman Tashmur##158487
turnin Preparing for the Winter Queen##60600 |goto 63.50,36.29
accept Ride to Heartwood Grove##60624 |goto 63.50,36.29
step
clicknpc Riding Stag##169577
Begin Riding the Stag |invehicle |goto 63.05,35.63 |q 60624
step
Watch the dialogue
Ride the Stag to Heartwood Grove |q 60624/1 |goto 66.94,26.55 |notravel
step
talk Niya##169686
turnin Ride to Heartwood Grove##60624 |goto 66.97,26.56
accept The End of Former Friends##60637 |goto 66.97,26.56
accept Recovering Wildseeds##60638 |goto 66.97,26.56
accept Heart of the Grove##60639 |goto 66.97,26.56
stickystart "Collect_Drained_Wildseeds"
stickystart "Slay_Possessed"
step
Find the Heart of the Grove |q 60639/1 |goto 69.24,26.77
step
clicknpc Korenth##169746
Inspect Korenth |q 60639/2 |goto 69.24,26.77
step
label "Collect_Drained_Wildseeds"
click Drained Wildseed+
|tip They look like large blue and grey bulbs on the ground around this area.
collect 6 Drained Wildseed##180126 |q 60638/1 |goto 67.99,27.06
step
label "Slay_Possessed"
Kill Possessed enemies around this area
Slay #8# Possessed |q 60637/1 |goto 67.99,27.06
step
talk Niya##169748
turnin The End of Former Friends##60637 |goto 68.43,24.37
turnin Recovering Wildseeds##60638 |goto 68.43,24.37
turnin Heart of the Grove##60639 |goto 68.43,24.37
step
Watch the dialogue
talk Niya##169748
accept Recovering the Animacones##60647 |goto 68.43,24.37
accept Survivors of Heartwood Grove##60648 |goto 68.43,24.37
stickystart "Collect_Animacones_60647"
step
talk Warden Casad##169802
Rescue Warden Casad |q 60648/1 |goto 69.80,24.50
step
Enter the cave |goto 69.01,22.72 < 10 |walk
talk Te'zan##169824
|tip Inside the cave.
Rescue Te'zan |q 60648/2 |goto 68.91,22.15
step
label "Collect_Animacones_60647"
Kill Turned enemies around this area
collect 25 Animacone##180172 |q 60647/1 |goto 69.45,24.46
step
_Next to you:_
talk Niya
turnin Recovering the Animacones##60647
step
talk Wagonmaster Derawyn##169817
Rescue Wagonmaster Derawyn |q 60648/3 |goto 67.52,23.15
step
_Next to you:_
talk Niya
turnin Survivors of Heartwood Grove##60648
accept The Sacrifices We Must Make##60671
step
talk Wagonmaster Derawyn##169938
Watch the dialogue
Save Wagonmaster Derawyn |q 60671/1 |goto 67.52,23.16
step
talk Niya##169985
|tip She runs to this location.
turnin The Sacrifices We Must Make##60671 |goto 66.29,23.71
step
talk Warden Casad##169956
accept Recovering the Heart##60709 |goto 66.27,23.80
step
talk Te'zan##169957
Tell him _"I need you to use some of your anima to destroy the droman's barrier."_
Watch the dialogue
Speak with Te'zan |q 60709/1 |goto 66.31,23.84
step
kill Droman Krelnor##169986
|tip Niya will help you fight.
Watch the dialogue
Thwart Droman Krelnor |q 60709/2 |goto 65.58,24.35
step
talk Niya##170012
|tip She runs to this location.
turnin Recovering the Heart##60709 |goto 65.39,26.67
accept Heartless##60724 |goto 65.39,26.67
step
talk Droman Tashmur##158487
turnin Heartless##60724 |goto 63.43,36.05
accept Audience with the Winter Queen##60519 |goto 63.43,36.05
step
talk Lady Moonberry##169031
Tell her _"I'm ready to meet the Winter Queen."_
Speak to Lady Moonberry |q 60519/1 |goto 63.50,36.08
step
talk Lady Moonberry##169031
turnin Audience with the Winter Queen##60519 |goto 63.59,36.27
accept Call of the Hunt##60521 |goto 63.59,36.27
step
talk Guardian Kota##158921
accept In Need of Gorm Gris##57952 |goto 62.61,36.09
step
talk Brigdin##160440
accept Forest Disappearances##58161 |goto 64.39,35.19
step
talk Partik##160439
turnin Forest Disappearances##58161 |goto 70.35,32.60
accept Cult of Personality##58164 |goto 70.35,32.60
accept Mysterious Masks##58162 |goto 70.35,32.60
stickystart "Free_Captives"
stickystart "Collect_Featureless_Masks"
step
click Battered Journal
accept A Desperate Solution##58163 |goto 72.19,33.86
step
click Torn Journal Page
collect Torn Journal Page##173872 |q 58163/3 |goto 73.48,33.80
step
Enter the cave |goto 72.43,34.20 < 7 |walk
click Stained Journal Page
|tip Inside the cave.
collect Stained Journal Page##155876 |q 58163/1 |goto 73.46,34.21
step
Leave the cave |goto 72.78,35.50 < 10 |walk
click Crumpled Journal Page
collect Crumpled Journal Page##173873 |q 58163/2 |goto 71.82,38.15
step
label "Free_Captives"
click Enchanted Cage+
|tip They look like wooden cages on the ground around this area.
Free #8# Captives |q 58164/1 |goto 72.64,35.99
step
label "Collect_Featureless_Masks"
Kill Masked enemies around this area
collect 15 Featureless Mask##173800 |q 58162/1 |goto 72.64,35.99
step
talk Partik##160439
turnin Cult of Personality##58164 |goto 70.35,32.60
turnin Mysterious Masks##58162 |goto 70.35,32.60
turnin A Desperate Solution##58163 |goto 70.35,32.60
accept The Crumbling Village##59802 |goto 70.35,32.60
step
talk Partik##160439
turnin The Crumbling Village##59802 |goto 74.32,32.35
accept Cut the Roots##58165 |goto 74.32,32.35
accept Take the Power##59801 |goto 74.32,32.35
stickystart "Collect_Animacones_59801"
step
Follow the path |goto 75.26,32.64 < 15 |only if walking
kill Fiona Bleakthorn##160445 |q 58165/1 |goto 75.61,34.20
step
Follow the path |goto 76.49,31.35 < 15 |only if walking
kill Wildtwister Lewor##160295 |q 58165/3 |goto 75.86,30.91
step
kill Bitterfly##160442 |q 58165/2 |goto 73.94,31.06
|tip He flies low to the ground around this area.
step
label "Collect_Animacones_59801"
click Animacone+
|tip They look like large white and blue acorns on the ground around this area.
collect 8 Animacone##177878 |q 59801/1 |goto 75.13,31.96
step
talk Partik##160439
turnin Cut the Roots##58165 |goto 74.32,32.35
turnin Take the Power##59801 |goto 74.32,32.35
accept Unknown Assailants##58166 |goto 74.32,32.35
step
talk Droman Tashmur##158487
turnin Unknown Assailants##58166 |goto 63.49,36.28
step
talk Master Sha'lor##158969
turnin In Need of Gorm Gris##57952 |goto 64.86,38.95
accept Nothing Goes to Waste##57818 |goto 64.86,38.95
step
click Depleted Wildseed
collect Depleted Wildseed##172953 |q 57818/1 |goto 65.00,38.96
step
click Depleted Wildseed
Place the Depleted Wildseed |q 57818/2 |goto 65.40,39.03
step
clicknpc Docile Gormling##158967+
|tip They will begin following you, but will lose interest along the way.
|tip Click them again when they lose interest.
|tip Lead them to the Depleted Wildseed nearby.
|tip It will appear on your minimap as a yellow dot.
|tip Fill up the blue bar in the quest tracker area.
Coax Gormlings to the Wildseed |q 57818/3 |goto 65.67,38.29
step
talk Master Sha'lor##158969
turnin Nothing Goes to Waste##57818 |goto 64.86,38.95
accept Collection Day##57824 |goto 64.86,38.95
step
use the Gormherd Branch##172955
|tip Use it on Gloober.
Use the Gormherd Branch on Gloober |q 57824/1 |goto 64.83,38.94
step
Watch the dialogue
click Gorm Gris
collect Fresh Gorm Gris##173268 |q 57824/2 |goto 64.85,38.88
step
use the Gormherd Branch##172955
|tip Use it on Gorged Gormlings around this area.
kill Agitated Gorm+
Test the Gormherd Branch on #4# Gorged Gormlings |q 57824/3 |goto 65.85,39.90
step
talk Master Sha'lor##158969
turnin Collection Day##57824 |goto 64.86,38.95
accept Delivery for Guardian Kota##57825 |goto 64.86,38.95
step
talk Guardian Kota##158921
turnin Delivery for Guardian Kota##57825 |goto 62.61,36.09
accept The Absent-Minded Artisan##61051 |goto 62.61,36.09
step
Follow the path up |goto 61.95,36.01 < 20 |only if walking
Investigate Autumnal Rise |q 61051/1 |goto 62.89,33.28
step
Watch the dialogue
talk Guardian Kota##171099
|tip He runs to this location.
turnin The Absent-Minded Artisan##61051 |goto 62.88,32.14
accept Finish What He Started##58022 |goto 62.88,32.14
accept One Big Problem##58023 |goto 62.88,32.14
stickystart "Collect_Wild_Gorm_Gris"
step
clicknpc Gloober##171148
Find Gloober |q 58023/1 |goto 63.21,30.76
step
clicknpc Gorm Burrow##171195
accept Burrows Away##58024 |goto 62.18,29.99
stickystart "Collapse_Gorm_Burrows"
step
Enter the cave |goto 62.19,28.87 < 7 |walk
kill Gorm Matriarch##160070
|tip Inside the cave.
|tip She will eventually escape once she reaches about 80% health.
Confront the Gorm Matriarch |q 58023/2 |goto 62.47,27.52
step
Enter the cave |goto 61.45,33.42 < 10 |walk
kill Gorm Matriarch##160070
|tip Inside the cave.
|tip She will eventually escape once she reaches about 60% health.
Confront the Gorm Matriarch |q 58023/3 |goto 62.30,33.69
step
label "Collapse_Gorm_Burrows"
clicknpc Gorm Burrow##171195+
|tip They look like cracked piles of dirt on the ground around this area.
Collapse #8# Gorm Burrows |q 58024/1 |goto 60.65,32.96
step
label "Collect_Wild_Gorm_Gris"
use the Gormherd Branch##173534
|tip Use it on Gorm enemies around this area.
|tip It will only work on the larger, hostile Gorm enemies.
Kill Gorm enemies around this area
collect 10 Wild Gorm Gris##180543 |q 58022/1 |goto 60.65,32.96
step
Enter the cave |goto 60.28,32.70 < 7 |walk
Locate the Gorm Matriarch's Den |q 58023/4 |goto Ardenweald/3 60.15,45.24
|tip Inside the cave.
step
talk Guardian Kota##160155
|tip Inside the cave.
turnin Finish What He Started##58022 |goto 60.15,45.24
turnin One Big Problem##58023 |goto 60.15,45.24
turnin Burrows Away##58024 |goto 60.15,45.24
accept Queen of the Underground##58025 |goto 60.15,45.24
step
use the Gormherd Branch##173534
|tip Use it repeatedly on the Gorm Matriarch.
|tip This will stun her briefly while you fight her.
|tip Inside the cave.
kill Gorm Matriarch##160145 |q 58025/1 |goto 34.36,28.25
|tip Guardian Kota will help you fight.
step
talk Guardian Kota##160155
|tip Inside the cave.
turnin Queen of the Underground##58025 |goto 60.15,45.24
accept When a Gorm Eats a God##58026 |goto 60.15,45.24
step
talk Droman Tashmur##158487
turnin When a Gorm Eats a God##58026 |goto Ardenweald/0 63.49,36.28
step
talk Master Sha'lor##160121
accept The Grove of Creation##57660 |goto 62.92,36.23
step
Follow the path up |goto 52.23,32.98 < 30 |only if walking
talk Lady of the Falls##158345
turnin The Grove of Creation##57660 |goto 51.11,33.87
step
talk Hunt-Captain Korayn##169584
turnin Call of the Hunt##60521 |goto 51.31,33.99
accept The Missing Hunters##60628 |goto 51.31,33.99
accept Extreme Recycling##60629 |goto 51.31,33.99
step
talk Dwyl'ir##167243
fpath Glitterfall Basin |goto 51.42,34.52
step
talk Lady of the Falls##158345
accept Trouble in the Banks##57651 |goto 51.11,33.87
step
talk Shelynn##163738
|tip Inside the building.
home Glitterfall Basin |goto 50.69,33.80
stickystart "Collect_Fae_Weapons"
step
Enter the cave |goto 53.82,33.13 < 15 |walk
clicknpc Rondar##169647
|tip Inside the cave.
Find Rondar |q 60628/3 |goto 53.65,32.64
step
clicknpc Jynkla##169642
Find Jynkla |q 60628/1 |goto 55.40,31.42
step
Enter the cave |goto 55.55,34.06 < 15 |walk
clicknpc Serinkai##169639
|tip Inside the cave.
Find Serinkei |q 60628/2 |goto 55.86,33.84
step
label "Collect_Fae_Weapons"
Kill Blighted enemies around this area
collect 10 Fae Weapon##180061 |q 60629/1 |goto 54.63,33.43
step
talk Ara'lon##169649
Tell him _"Hunt-Captain Korayn says to report back to the grove."_
Find Ara'lon |q 60628/4 |goto 54.80,36.54
step
Follow the path up |goto 52.23,32.98 < 30 |only if walking
talk Hunt-Captain Korayn##169584
turnin The Missing Hunters##60628 |goto 51.32,33.99
turnin Extreme Recycling##60629 |goto 51.32,33.99
accept Totem Eclipse##60630 |goto 51.32,33.99
accept Big Problem, Little Vorkai##60631 |goto 51.32,33.99
stickystart "Slay_The_Blighted"
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 52.37,35.46 |count 1
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 52.62,37.21 |count 2
step
Enter the cave |goto 54.25,37.50 < 10 |walk
clicknpc Foul Totem##169791
|tip Inside the cave.
Destroy the Foul Totem |q 60630/1 |goto 54.88,38.60 |count 3
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 50.62,37.36 |count 4
step
_Next to you:_
talk Hunt-Captain Korayn
turnin Totem Eclipse##60630
step
label "Slay_The_Blighted"
Use the _"Hunter's Strike"_ ability
|tip Use it repeatedly on Blighted Brutes around this area.
|tip Hunt-Captain Korayn will deal massive damage to them, making them easier to kill.
Kill Blighted enemies around this area
|tip Fill up the blue bar in the quest tracker area.
Slay the Blighted |q 60631/1 |goto 52.70,36.76
step
_Next to you:_
talk Hunt-Captain Korayn
turnin Big Problem, Little Vorkai##60631
accept I Know Your Face##60632
step
Use the _"Hunter's Strike"_ ability
|tip Use it repeatedly on the Blighted Monstrosity.
|tip Hunt-Captain Korayn will deal massive damage to it, making it easier to kill.
kill Blighted Monstrosity##169900
kill Lorkron the Hunter##169890 |q 60632/1 |goto 48.56,37.19
|tip He jumps down after you kill the Blighted Monstrosity.
|tip He will eventually escape.
step
talk Hunt-Captain Korayn##170121
Ask her _"Who was that? What now?"_
Speak to Korayn |q 60632/2 |goto 48.98,35.69
step
Follow the path up |goto 50.14,34.61 < 15 |only if walking
talk Ara'lon##169935
turnin I Know Your Face##60632 |goto 51.31,33.99
accept Return to Tirna Vaal##60522 |goto 51.31,33.99
step
talk Foreman Thorodir##158422
turnin Trouble in the Banks##57651 |goto 46.66,29.42
accept Breaking A Few Eggs##59621 |goto 46.66,29.42
accept Tending to the Tenders##59622 |goto 46.66,29.42
step
click Muddy Scroll
accept Supplies Needed: Amber Grease##57652 |goto 46.92,27.66
stickystart "Destroy_Gorm_Eggs"
stickystart "Collect_Giant_Gorm_Gris"
step
Enter the cave |goto 45.79,25.40 < 7 |walk
kill Egg-Tender Tiom##165398 |q 59622/1 |goto 45.53,25.44
|tip Inside the cave.
step
Enter the cave |goto 44.71,24.12 < 7 |walk
kill Egg-Tender Erys##165401 |q 59622/3 |goto 44.48,23.83
|tip Inside the cave.
step
Enter the cave |goto 45.54,23.23 < 7 |walk
kill Egg-Tender Bloome##165400 |q 59622/2 |goto 45.27,23.25
|tip Inside the cave.
step
label "Destroy_Gorm_Eggs"
click Gorm Egg+
|tip They look like large grey and blue eggs on the ground around this area.
Destroy #10# Gorm Eggs |q 59621/1 |goto 45.39,24.63
step
label "Collect_Giant_Gorm_Gris"
kill Gorm Ravener##158364+
collect 8 Giant Gorm Gris##172221	|q 57652/1 |goto 45.39,24.63
step
talk Foreman Thorodir##158422
turnin Breaking A Few Eggs##59621 |goto 46.66,29.42
turnin Tending to the Tenders##59622 |goto 46.66,29.42
accept Unsafe Workplace##57653 |goto 46.66,29.42
stickystart "Heal_Wounded_Fae"
step
click Discarded Scroll
accept Supplies Needed: More Husks!##57655 |goto 47.51,26.37
step
talk Fluttercatch##158489
accept Gifts of the Forest##57656 |goto 48.07,24.34
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.97,25.19 |count 1
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.17,26.14 |count 2
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 49.02,26.76 |count 1
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.99,23.79 |count 3
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 49.39,22.90 |count 4
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 49.11,22.73 |count 2
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.89,22.44 |count 5
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.74,21.60 |count 6
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 48.03,21.72 |count 3
step
label "Heal_Wounded_Fae"
use the Jar of Clay##172950
|tip Use it next to Wounded Sylvars.
|tip They look like goat people on the ground around this area.
Heal #10# Wounded Fae |q 57653/1 |goto 47.92,24.46
step
talk Fluttercatch##158489
turnin Gifts of the Forest##57656 |goto 48.07,24.34
step
Watch the dialogue
talk Fluttercatch##158489
accept Tied Totem Toter##57657 |goto 48.07,24.34
step
click Gormling Lure
Take the Gormling Lure |q 57657/1 |goto 48.01,24.26
Wield the Gormling Lure Totem |havebuff spell:309779 |goto 48.01,24.26 |q 57657
step
Gather #30# Gormlings |condition hasbuff("spell:309806",30) |goto 47.70,24.71 |q 57657
|tip Run around this area, near Gormling Nibblers.
|tip They look like small purple and blue grubs walking on the ground around this whole area.
|tip When you get near them, they will start to follow you.
|tip You can see how many you've gathered on the buff near your minimap.
step
Deliver #30# Gormlings to the Southern Wrangler |q 57657/2 |goto 47.06,28.68
step
talk Foreman Thorodir##158422
turnin Unsafe Workplace##57653 |goto 46.66,29.41
turnin Tied Totem Toter##57657 |goto 46.66,29.41
accept Well, Tell the Lady##59656 |goto 46.66,29.41
step
talk Lady of the Falls##158345
turnin Well, Tell the Lady##59656 |goto 51.11,33.88
accept Ages-Echoing Wisdom##57865 |goto 51.11,33.88
accept Idle Hands##57866 |goto 51.11,33.88
step
talk Gormsmith Cavina##165382
turnin Supplies Needed: More Husks!##57655 |goto 51.58,33.99
turnin Supplies Needed: Amber Grease##57652 |goto 51.58,33.99
accept What a Buzzkill##59623 |goto 51.58,33.99
step
Follow the path |goto 53.10,32.52 < 30 |only if walking
talk Helpful Faerie##160045
accept The Sweat of Our Brow##57867 |goto 53.80,27.58
stickystart "Slay_Brittlebark_Invaders"
step
talk Helpful Faerie##160045
accept The Sweat of Our Brow##57867 |goto 55.50,29.92
stickystart "Disarm_Booby_Trapped_Tools"
step
talk Groonoomcrooek##159428
Tell him _"The Lady of the Falls wanted to make sure you were safe."_
Find Groonoomcrooek |q 57865/1 |goto 56.44,29.27
step
talk Groonoomcrooek##159428
accept Spirit-Gathering Labor##57869 |goto 56.44,29.27
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 56.90,28.29 |count 1
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 56.19,27.12 |count 2
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 55.90,26.30 |count 3
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 55.25,26.58 |count 4
step
Run up the ramp |goto 56.04,28.02 < 15 |only if walking
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 57.49,28.57 |count 5
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 58.33,28.56 |count 6
step
Enter the building |goto 58.88,24.55 < 10 |walk
talk Elder Gwenna##159465
|tip Inside the building.
Tell her _"The Lady of the Falls wanted to make sure you were safe."_
Find Elder Gwenna |q 57865/3 |goto 59.08,24.35
step
talk Elder Gwenna##159465
|tip Inside the building.
accept The Games We Play##57870 |goto 59.08,24.35
stickystop "Disarm_Booby_Trapped_Tools"
step
click Giggling Basket
Watch the dialogue
|tip Target the Playful Trickster that appears nearby.
|tip He will tell you to perform random actions in the dialogue.
|tip Use the emotes below that match what he says.
Praise |script DoEmote("PRAISE")
|tip He says "Not so much as a word of praise! Hmph!"
Cheer |script DoEmote("CHEER")
|tip He says "The other spriggans were all cheering my name for days!"
Dance |script DoEmote("DANCE")
|tip He says "Dance with me!"
Introduce |script DoEmote("INTRODUCE")
|tip He says "Introductions were an important part of first impressions!"
Thank |script DoEmote("THANK")
|tip He says "Some ask permission, and always thank us for our trouble."
Flex |script DoEmote("FLEX")
|tip He says "How strong he must have been!"
Discover the Secret |q 57870/1 |goto 58.42,27.47
stickystart "Disarm_Booby_Trapped_Tools"
step
Enter the building |goto 58.88,24.55 < 10 |walk
talk Elder Gwenna##159465
|tip Inside the building.
turnin The Games We Play##57870 |goto 59.08,24.35
accept Outplayed##57871 |goto 59.08,24.35
step
use the Pouch of Puffpetal Powder##173355
kill Wicked Wort##159476 |q 57871/1 |goto 56.94,25.93
|tip He appears nearby.
step
Enter the building |goto 55.72,23.86 < 15 |walk
talk Elder Finnan##159427
|tip Inside the building.
Tell him _"The Lady of the Falls wanted to make sure you were safe."_
Find Elder Finnan |q 57865/2 |goto 55.82,23.42
step
talk Elder Finnan##159427
|tip Inside the building.
accept Craftsman Needs No Tools##57868 |goto 55.82,23.42
step
Kill Brittlebark enemies around this area
collect Finnan's Lucky Mallet##173150 |q 57868/1 |goto 55.45,24.62
step
Enter the building |goto 55.72,23.86 < 15 |walk
talk Elder Finnan##159427
|tip Inside the building.
turnin Craftsman Needs No Tools##57868 |goto 55.82,23.42
step
label "Disarm_Booby_Trapped_Tools"
Disarm #6# Booby Trapped Tools |q 57867/1 |goto 57.84,26.89
|tip You need specific buffs to disable certain traps. When you find the items that give buffs, before clicking them, plan out the item you want to click with the buff.
|tip The buffs last for 10 minutes.
|tip
|tip Click Gossamer Threads (small blue spools of thread) to get the Gossamer Laces buff.  Click Suspiciously Untouched Harps (light colored wooden statues with strings in them) while the buff is active.
|tip
|tip Click Shimmerdust Piles (purple piles of dirt) to get the Gossamer Laces buff.  Click Suspiciously Untouched Baskets (small grey wooden baskets) while the buff is active.
|tip
|tip Click Freshleaves (small green leafy plants) to get the Minty Fresh Breath buff.  Click Suspiciously Untouched Soulweb (small grey spirals) while the buff is active.
step
label "Slay_Brittlebark_Invaders"
Kill enemies around this area
Slay #12# Brittlebark Invaders |q 57866/1 |goto 57.84,26.89
step
talk Groonoomcrooek##159428
turnin Spirit-Gathering Labor##57869 |goto 56.45,29.27
step
kill Buzzkill##165404
|tip He flies low to the ground around this area.
collect Buzzkill's Stinger##176760 |q 59623/1 |goto 50.33,26.29
step
Follow the path up |goto 49.66,31.56 < 20 |only if walking
talk Lady of the Falls##158345
turnin Ages-Echoing Wisdom##57865 |goto 51.11,33.88
turnin The Sweat of Our Brow##57867 |goto 51.11,33.88
turnin Idle Hands##57866 |goto 51.11,33.88
turnin Outplayed##57871 |goto 51.11,33.88
step
talk Gormsmith Cavina##165382
turnin What a Buzzkill##59623 |goto 51.58,33.99
step
Return to Tirna Vaal |q 60522/1 |goto 63.39,37.51
step
Enter the cave |goto 64.38,36.47 < 10 |walk
talk Dreamweaver##169142
|tip Inside the cave.
turnin Return to Tirna Vaal##60522 |goto Ardenweald/2 50.70,46.97
accept Nightmares Manifest##60520 |goto Ardenweald/2 50.70,46.97
step
Kill enemies around this area
Confront the Nightmares |q 60520/1 |goto Ardenweald/0 63.46,36.26
step
Enter the cave |goto 64.37,36.46 < 10 |walk
clicknpc Distressed Wildseed##169144
|tip Inside the cave.
Soothe the Wildseed |q 60520/2 |goto Ardenweald/2 49.98,51.96
step
talk Dreamweaver##169142
|tip Inside the cave.
turnin Nightmares Manifest##60520 |goto Ardenweald/2 50.70,46.97
accept The Way to Hibernal Hollow##60738 |goto Ardenweald/2 50.70,46.97
step
talk Niya##170143
Tell her _"I'm taking the wildseed responsible for this to Hibernal Hollow. I could use your help bringing it there."_
Recruit Niya |q 60738/1 |goto Ardenweald/0 62.78,36.64
step
talk Niya##170171
|tip She runs to this location.
turnin The Way to Hibernal Hollow##60738 |goto 64.50,39.05
step
talk Dreamweaver##170172
accept Soothing Song##60764 |goto 64.58,39.08
step
talk Dreamweaver##170172
Tell him _"I'm ready to take this wildseed to Hibernal Hollow."_
Speak with Dreamweaver |q 60764/1 |goto 64.58,39.08
step
Watch the dialogue
|tip Follow Niya and protect her as she walks.
|tip She eventually walks to this location.
Escort the Wildseed to Tirna Glayn |q 60764/2 |goto 62.38,45.50
step
talk Ara'lon##170290
turnin Soothing Song##60764 |goto 62.33,45.55
accept Remnants of the Wild Hunt##60839 |goto 62.33,45.55
step
clicknpc Wounded Defender##170458+
|tip They look like dazed horse people on the ground around this area.
Rescue #5# Wounded Defenders |q 60839/1 |goto 63.96,47.29
step
Enter the building |goto 64.35,49.82 < 10 |walk
talk Ara'lon##170485
|tip Inside the building.
turnin Remnants of the Wild Hunt##60839 |goto 64.25,49.98
accept Toppling the Brute##60856 |goto 64.25,49.98
step
kill Blighted Brute##170087
|tip Ara'lon will help you fight.
click Wild Hunt Horn
|tip It looks like a small gray horn that appears on the ground nearby, when the Blighted Brute reaches about 50% health.
|tip Click it when Ara'lon yells for you the take up the horn.
Use the _"Call of the Hunt"_ ability
|tip It appears as a button on the screen.
Slay the Blighted Brute |q 60856/1 |goto 66.33,49.33
step
Enter the building |goto 64.35,49.82 < 10 |walk
talk Ara'lon##170485
|tip Inside the building.
turnin Toppling the Brute##60856 |goto 64.25,49.98
accept Ride of the Wild Hunt##60881 |goto 64.25,49.98
step
clicknpc Stranded Stag##170609
|tip Inside the building.
Watch the dialogue
Ride with the Wild Hunt |q 60881/1 |goto 64.15,49.87
step
Watch the dialogue
talk Ara'lon##170290
turnin Ride of the Wild Hunt##60881 |goto 62.32,45.55
accept Passage to Hibernal Hollow##60901 |goto 62.32,45.55
step
talk Ara'lon##170290
Tell him _"I'm ready to travel to the Hibernal Hollow."_
Begin Traveling with Ara'lon |goto 62.32,45.55 > 15 |c |q 60901
step
Watch the dialogue
|tip Follow Ara'lon as he walks.
|tip He eventually walks to this location.
Travel with Ara'lon |q 60901/1 |goto 59.92,52.58
step
talk Na'lor##165166
fpath Hibernal Hollow |goto 60.35,53.49
step
talk Droman Aliothe##160894
turnin Passage to Hibernal Hollow##60901 |goto 60.09,53.94
accept Infusing the Wildseed##60905 |goto 60.09,53.94
step
Cast _"Soulshape"_ |cast 310143
Enter Soulshape |havebuff spell:310143 |goto 60.09,53.94 |q 60905
step
Enter the cave |goto 60.32,54.00 < 5 |walk
talk Proglo##170709
|tip Inside the cave.
Tell him _"Droman Aliothe said you were storing the anima that we could use to help a wildseed."_
Recover the Anima from Proglo while in Soulshape |q 60905/1 |goto 59.95,53.97
step
talk Dreamweaver##160962
Tell him _"I'm ready to perform the ritual on the wildseed."_
Watch the dialogue
Speak with Dreamweaver to Perform the Ritual |q 60905/2 |goto 60.05,52.96
step
talk Ara'lon##160963
turnin Infusing the Wildseed##60905 |goto 60.11,52.83
accept Echoes of Tirna Noch##58473 |goto 60.11,52.83
step
talk Ara'lon##160963
Choose _<Listen to the tale of Tirna Noch.>_
Listen to Ara'lon's Tale |q 58473/1 |goto 60.11,52.83
step
talk Droman Aliothe##160894
accept Forest Refugees##62807 |goto 60.08,53.94
step
talk Taiba##162445
home Hibernal Hollow |goto 60.48,53.93
step
talk Ara'lon##161378
turnin Echoes of Tirna Noch##58473 |goto 68.47,57.44
accept Take What You Can##58484 |goto 68.47,57.44
accept Read the Roots##58480 |goto 68.47,57.44
step
_Next to you:_
talk Niya
accept Mementos##58483
stickystart "Take_Plundered_Anima"
stickystart "Recover_Stolen_Mementos"
step
clicknpc Depleted Soulweb##161478
Investigate the South |q 58480/1 |goto 70.95,57.11
step
Follow the path |goto 70.05,54.10 < 30 |only if walking
clicknpc Depleted Soulweb##161479
Investigate the Northeast |q 58480/3 |goto 70.54,53.51
step
label "Take_Plundered_Anima"
click Fae Basket+
|tip They look like various sized grey wooden buckets on the ground around this area.
Take #40# Plundered Anima |q 58484/1 |goto 70.58,55.46
step
label "Recover_Stolen_Mementos"
Kill enemies around this area
Recover #10# Stolen Mementos |q 58483/1 |goto 70.58,55.46
step
_Next to you:_
talk Niya
turnin Mementos##58483
step
_Next to you:_
talk Ara'lon
turnin Take What You Can##58484
step
clicknpc Depleted Soulweb##161477
Investigate the Northwest |q 58480/2 |goto 68.94,52.96
step
_Next to you:_
talk Ara'lon
turnin Read the Roots##58480
accept He's Drust in the Way##58486
step
Cross the bridge |goto 69.31,53.70 < 10 |only if walking
kill Vroth##161484
|tip Up on the platform.
Slay Vroth, Bulwark of Thros |q 58486/1 |goto 70.51,53.61
step
talk Ara'lon##161492
|tip Up on the platform.
turnin He's Drust in the Way##58486 |goto 71.44,54.64
accept Go for the Heart##58488 |goto 71.44,54.64
step
kill Barrier##166222
Destroy the Barrier |q 58488/1 |goto 71.70,54.68
step
click Heart of Tirna Noch
collect Heart of Tirna Noch##174269 |q 58488/2 |goto 71.76,54.69
step
talk Ara'lon##161492
turnin Go for the Heart##58488 |goto 71.44,54.64
step
talk Lady Moonberry##161494
accept Sparkles Rain from Above##58524 |goto 71.50,54.68
step
talk Lady Moonberry##161494
Tell her _"I'm ready to borrow some wings and rain sparkly terror."_
Speak with Lady Moonberry |q 58524/1 |goto 71.50,54.68
step
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Slay #50# Invaders |q 58524/2 |goto 69.37,55.03
step
Begin Returning to Hibernal Hollow |invehicle |q 58524
step
Watch the dialogue
Return to Hibernal Hollow |outvehicle |goto 60.05,53.07 |q 58524 |notravel
step
talk Droman Aliothe##160894
turnin Sparkles Rain from Above##58524 |goto 60.08,53.94
accept For the Sake of Spirit##60572 |goto 60.08,53.94
accept Despoilers##58591 |goto 60.08,53.94
step
talk Dreamweaver##160962
turnin For the Sake of Spirit##60572 |goto 60.05,52.96
accept The Restless Dreamer##58589 |goto 60.05,52.96
accept Caring for the Caretakers##58592 |goto 60.05,52.96
step
talk Guardian Molan##160929
accept Blooming Villains##58265 |goto 60.68,51.34
stickystart "Slay_Witherscorn_Or_Blighted"
step
Follow the path up |goto 61.39,54.38 < 15 |only if walking
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 61.19,55.37 |count 1
step
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 60.94,55.58 |count 2
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 60.32,56.26 |count 3
step
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 60.65,58.03 |count 4
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 61.33,57.36 |count 5
step
click Unattuned Dreamshrine
Attune the South Dreamshrine |q 58589/1 |goto 61.17,56.74
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.06,56.38 |count 6
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.11,56.39 |count 7
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.46,50.25 |count 8
step
Use the _"Anima Expulsion"_ ability
|tip Use it repeatedly on Skell the Despoiler, as you fight her.
|tip It appears as a button on the screen.
kill Skell the Despoiler##169175 |q 58591/2 |goto 61.24,49.52
step
click Unattuned Dreamshrine
|tip You will be attacked.
Attune the North Dreamshrine |q 58589/2 |goto 57.80,50.06
step
label "Slay_Witherscorn_Or_Blighted"
Kill enemies around this area
|tip Use the "Anima Expulsion" ability to kill the elite enemies easier.
|tip It appears as a button on the screen.
Slay #12# Witherscorn or Blighted |q 58591/1 |goto 59.98,48.99
step
click Dreamer's Wildseed
Bind the Heart to the Dreamer's Wildseed |q 58589/3 |goto 59.95,52.72
step
talk Dreamweaver##160962
turnin The Restless Dreamer##58589 |goto 60.06,52.96
turnin Caring for the Caretakers##58592 |goto 60.06,52.96
step
talk Droman Aliothe##160894
turnin Despoilers##58591 |goto 60.09,53.93
step
talk Dreamweaver##160962
accept Visions of the Dreamer: Origins##58590 |goto 60.05,52.96
accept Visions of the Dreamer: The Betrayal##60578 |goto 60.05,52.96
step
Follow the path |goto 60.20,50.74 < 20 |only if walking
clicknpc Dreamer's Vision##161823
Choose _<Face the Dreamer's great enemy in battle.>_
Enter the Dreamer's Vision |q 58590/1 |goto 57.81,50.05
step
kill Worldbreaker##161780
Defeat the Worldbreaker |q 60578/2 |goto 58.67,49.45
stickystart "Slay_Nightmares"
step
clicknpc Abandoned Whelp##161788+
|tip They look like small green dragons flying around this area.
Comfort #6# Abandoned Whelps |q 58590/3 |goto 61.79,50.35
step
label "Slay_Nightmares"
Kill enemies around this area
Slay #10# Nightmares |q 58590/2 |goto 61.79,50.35
You can find more around [62.32,54.11]
step
talk Dreamweaver##160962
turnin Visions of the Dreamer: Origins##58590 |goto 60.06,52.96
turnin Visions of the Dreamer: The Betrayal##60578 |goto 60.06,52.96
accept End of the Dream##58593 |goto 60.06,52.96
step
talk Dreamweaver##160962
Tell him _"I am ready to relive the Dreamer's nightmare."_
Speak to Dreamweaver |q 58593/1 |goto 60.06,52.96
step
Enter the Dreamer's Nightmare |scenariostart |q 58593
step
_As the Dreamer:_
Begin the Attack on the Temple
|tip Use the "Attack the Temple" ability on your action bar.
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Temple of Elune |scenarioend |q 58593
|tip You will die.
step
Return to Hibernal Hollow |goto Ardenweald/0 60.06,53.04 < 50 |noway |c |q 58593
step
talk Dreamweaver##160962
turnin End of the Dream##58593 |goto 60.06,52.97
step
Watch the dialogue
talk Lady Moonberry##161847
accept The Forest Has Eyes##58714 |goto 60.00,53.02
stickystart "Kill_Possessed_Spies"
step
talk Droman Aliothe##160894
accept The Droman's Call##58719 |goto 60.08,53.93
step
use Droman's Hunting Horn##174864
Sound the Horn at the West Road |q 58719/3 |goto 58.00,55.48
step
use Droman's Hunting Horn##174864
Sound the Horn at the North Road |q 58719/2 |goto 60.04,48.93
step
use Droman's Hunting Horn##174864
Sound the Horn at the East Road |q 58719/1 |goto 62.20,55.56
step
label "Kill_Possessed_Spies"
Use the _"Eyes of the Forest"_ ability
|tip Use it near the small spots of purple smoke on the ground around this area.
|tip It appears as a button on the screen when you are near a spot of purple smoke.
kill 6 Possessed Spy##162799 |q 58714/1 |goto 60.00,53.02
step
talk Droman Aliothe##160894
turnin The Forest Has Eyes##58714 |goto 60.08,53.94
turnin The Droman's Call##58719 |goto 60.08,53.94
accept Missing!##58720 |goto 60.08,53.94
step
talk Hunt-Captain Korayn##162541
turnin Missing!##58720 |goto 55.95,57.64
accept Enemies at the Gates##60621 |goto 55.95,57.64
step
talk Primrose##160749
accept Break It Down##58266 |goto 53.48,58.72
step
_Next to you:_
talk Primrose
accept Wake Up, Get Up, Get Out There##58264
stickystart "Aid_Subdued_Faeries"
stickystart "Slay_Ritualists"
step
click Faerie Belongings+
|tip They look like small baskets in hanging fae nests around this area.
|tip There are 2 at this location.
collect 2 Primrose's Pyrotechnic Powder##174078 |goto 51.80,59.38 |q 58266
step
click Basket of Enchanted Wings
Equip the Enchanted Wings |havebuff spell:323695 |goto 52.67,57.53 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 3 Primrose's Pyrotechnic Powder##174078 |goto 53.54,60.80 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 4 Primrose's Pyrotechnic Powder##174078 |goto 53.52,60.93 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 5 Primrose's Pyrotechnic Powder##174078 |goto 52.87,61.73 |q 58266
step
Follow the path up |goto 53.15,57.99 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 53.78,61.52 |count 1
step
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 53.28,62.68 |count 2
step
Follow the path up |goto 53.48,61.57 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 52.54,62.33 |count 3
step
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 52.08,63.26 |count 4
step
Follow the path up |goto 52.28,61.96 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 51.27,61.06 |count 5
step
_Next to you:_
talk Primrose
turnin Break It Down##58266
step
label "Aid_Subdued_Faeries"
clicknpc Subdued Faerie##161153+
|tip They look like small creatures with blue wings laying on the ground around this area.
|tip You can find more on the platforms up in the trees around this area. |notinsticky
Aid #10# Subdued Faeries |q 58264/1 |goto 52.65,60.18
step
_Next to you:_
talk Primrose
turnin Wake Up, Get Up, Get Out There##58264
accept Beneath the Mask##58267
step
Follow the path up |goto 53.13,57.99 < 10 |only if walking
Watch the dialogue
|tip Up on the platform.
|tip You will be attacked.
Confront Ingra Drif |q 58267/1 |goto 54.64,61.72
step
kill Primrose##160951
Slay the Mindwarped Faerie |q 58267/2 |goto 54.64,61.72
step
label "Slay_Ritualists"
Kill enemies around this area
|tip You can find more on the platforms up in the trees around this area. |notinsticky
Slay #15# Ritualists |q 58265/1 |goto 52.65,60.18
step
talk Droman Aliothe##169541
turnin Enemies at the Gates##60621 |goto 59.89,53.19
accept Battle for Hibernal Hollow##58869 |goto 59.89,53.19
stickystart "Slay_Attackers_58869"
step
Gain the Swift of Hoof Buff |havebuff spell:334829 |goto 59.54,53.24 |q 58869
|tip Walk onto the yellow circle.
step
Gain the Energized Spirit Buff |havebuff spell:317878 |goto 60.19,52.55 |q 58869
|tip Walk onto the green circle.
step
Gain the Hunter's Efficiency Buff |havebuff spell:334865 |goto 59.89,52.36 |q 58869
|tip Walk onto the red circle.
step
label "Slay_Attackers_58869"
Kill enemies around this area
Slay #20# Attackers |q 58869/1 |goto 59.70,52.77
step
talk Droman Aliothe##169541
Tell him _"I am ready to stand with you!"_
Speak to Droman Aliothe |q 58869/2 |goto 59.89,53.19
step
kill Fulyar the Destroyer##169540
|tip Walk onto the yellow, green, and red circles on the ground nearby to refresh your buffs.
|tip Kill whichever of these two enemies has the lowest health.
|tip You only need to kill one of them to end the battle.
kill Lorkron the Hunter##171556
Defeat Lorkron and Fulyar the Destroyer |q 58869/3 |goto 59.78,52.80
step
talk Droman Aliothe##160894
turnin Battle for Hibernal Hollow##58869 |goto 59.86,53.17
step
talk Lady Moonberry##161847
accept Dying Dreams##60661 |goto 60.00,53.02
step
talk Guardian Molan##160929
turnin Beneath the Mask##58267 |goto 60.68,51.34
turnin Blooming Villains##58265 |goto 60.68,51.34
step
talk Lady Moonberry##161847
Tell her _"I am ready to go."_
Speak with Moonberry |q 60661/1 |goto 60.00,53.02
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip They eventually walk to this location.
Escort Ysera's Wildseed |q 60661/2 |goto 48.00,53.77
step
Watch the dialogue
talk Lord Herne##169869
|tip He runs to this location.
turnin Dying Dreams##60661 |goto 47.93,53.81
accept Awaken the Dreamer##58721 |goto 47.93,53.81
step
talk Derwynnthlmn##167255
fpath Refugee Camp |goto 49.35,51.81
step
talk Flwngyrr##168032
turnin Forest Refugees##62807 |goto 48.38,50.46
accept Tirna Scithe: A Warning Silence##62371 |goto 48.38,50.46
step
Travel to the Grove of Awakening |q 58721/1 |goto 45.29,63.03
step
talk Winter Queen##162968
turnin Awaken the Dreamer##58721 |goto 45.29,63.03
step
Watch the dialogue
talk Winter Queen##162968
accept The Court of Winter##58723 |goto 45.29,63.03
step
talk Winter Queen##162968
Choose _<Deliver the Primus's Message.>_
Watch the dialogue
Deliver the Primus's Message |q 58723/1 |goto 45.29,63.03
step
Follow the path |goto 50.57,67.73 < 30 |only if walking
talk V'kerra##167247
fpath Claw's Edge |goto 51.30,71.31
step
Enter the tree |goto Heart of the Forest/0 62.02,43.39 < 10 |walk
Travel to the Heart of the Forest |q 58723/2 |goto Heart of the Forest/0 48.95,33.71
|tip Inside the tree.
step
talk Winter Queen##162968
|tip Inside the tree.
Ask her _"Yes, your majesty?"_
Watch the dialogue
Speak with Winter Queen |q 58723/3 |goto 48.95,33.71
step
talk Winter Queen##162968
|tip Inside the tree.
turnin The Court of Winter##58723 |goto 49.01,33.67
accept The Queen's Request##58724 |goto 49.01,33.67
step
Follow the road |goto Ardenweald/0 39.79,49.92 < 40 |only if walking
talk Tishereenelee##167265
fpath Root-Home |goto Ardenweald/0 35.13,51.71
step
talk Tal-Inara##159478
turnin The Queen's Request##58724 |goto Oribos/1 49.03,60.01
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Revendreth",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Revendreth:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Revendreth",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Rendle##155537
turnin A Plea to Revendreth##57025 |goto Revendreth/0 69.99,82.61 |only if havequest(57025) or completedq(57025)
accept The Sinstone##57026 |goto Revendreth/0 69.99,82.61
step
talk Courier Gevoraal##158526
fpath Pridefall Hamlet |goto 70.35,81.16
step
click Sinstone
Learn of the Sinstones |q 57026/1 |goto 70.27,79.95
step
click The Master
Learn about the Master |q 57026/2 |goto 68.99,81.43
step
talk Defiant Soul##156277
Learn about the Souls |q 57026/3 |goto 67.63,83.30
step
talk Lord Chamberlain##155533
turnin The Sinstone##57026 |goto 69.09,81.77
accept Invitation of the Master##57007 |goto 69.09,81.77
step
click Darkhaven Carriage
Begin Riding the Carriage |havebuff spell:304977 |goto 69.11,81.56 |q 57007
step
Watch the dialogue
Ride the Darkhaven Carriage |q 57007/1 |goto 65.14,66.17 |notravel
step
talk Rendle##155668
turnin Invitation of the Master##57007 |goto 65.34,66.27
accept Bottom Feeders##56829 |goto 65.34,66.27
step
talk Nadjia the Mistblade##157550
accept The Greatest Duelist##57381 |goto 65.70,64.65
step
click Consecrated Iron Cage
Release Nadjia the Mistblade |q 57381/1 |goto 65.70,64.65
stickystart "Pique_Nadjias_Interest"
stickystart "Abandoned_Soulguard_Torches"
step
talk Tessle the Snitch##168618
accept The Endmire##60480 |goto 65.12,63.53
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 65.83,63.24 |count 1
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 65.80,61.74 |count 2
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.55,59.58 |count 3
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.65,59.33 |count 4
step
talk Lord Chamberlain##155677
Tell him _"Come with me."_
Find Lord Chamberlain |q 56829/2 |goto 66.85,57.81
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.75,57.53 |count 5
step
Find Cudgelface |q 56829/1 |goto 67.50,62.41
|tip He runs around this area and gets picked up by a flying enemy.
|tip Attack the enemy that picks him up.
step
label "Pique_Nadjias_Interest"
Kill enemies around this area
|tip Fill up the blue bar in the quest tracker area.
Pique Nadjia's Interest |q 57381/2 |goto 66.25,61.70
step
_Next to you:_
talk Nadjia the Mistblade
turnin The Greatest Duelist##57381
step
label "Abandoned_Soulguard_Torches"
_Note:_
click Abandoned Soulguard Torch+
|tip They look like burning torches on the ground around this area.
|tip You will steadily gain stacks of a debuff as you move around this area that increases the Shadow damage you take from enemies.
|tip These torches will remove the debuff.
step
talk Tessle the Snitch##168618
turnin The Endmire##60480 |goto 65.12,63.52
step
talk Rendle##155668
turnin Bottom Feeders##56829 |goto 65.34,66.27
accept On The Road Again##56942 |goto 65.34,66.27
step
click Darkhaven Carriage
Begin Riding the Carriage |havebuff spell:304590 |goto 65.12,65.82 |q 56942
step
Watch the dialogue
Ride the Darkhaven Carriage |q 56942/1 |goto 67.50,68.52 |notravel
step
talk Lord Chamberlain##155533
turnin On The Road Again##56942 |goto 67.50,68.52
accept Rebels on the Road##56955 |goto 67.50,68.52
accept Anima Attrition##58433 |goto 67.50,68.52
step
talk Rendle##158057
accept Not My Job##60509 |goto 67.55,68.53
step
talk Rendle##157846
|tip He runs to this location.
turnin Not My Job##60509 |goto 72.57,73.21
accept It's a Dirty Job##57471 |goto 72.57,73.21
step
click Filthy Rubble+
|tip They look like grey stones with green smoke surrounding them on the ground around this area.
Throw #6# Filthy Rubble |q 57471/1 |goto 73.32,73.06
step
talk Rendle##157846
turnin It's a Dirty Job##57471 |goto 72.57,73.21
accept Dredger Duty##57474 |goto 72.57,73.21
step
talk Ripened Dredger##157884
Dredge a Dredger |q 57474/1 |goto 72.46,73.70
step
talk Ripened Dredger##157884
Carry a Dredger |havebuff spell:307926 |goto 72.46,73.70 |q 57474
step
Use the _"Throw Dredger"_ ability
|tip It appears as a button on the screen.
Throw the Dredger at the Rubble Pile |q 57474/2 |goto 74.21,73.05
step
Kill the enemies that attack in waves
Defend the Dredger |q 57474/3 |goto 74.13,72.92
step
click Sack of Dredger Supplies
collect Gem of Binding##171966 |q 57474/4 |goto 74.21,73.05
step
talk Rendle##157846
turnin Dredger Duty##57474 |goto 72.57,73.21
accept We're Gonna Need a Bigger Dredger##57477 |goto 72.57,73.21
step
Watch the dialogue
Witness the Ritual |q 57477/1 |goto 72.72,73.63
step
talk Bootus##158001
turnin We're Gonna Need a Bigger Dredger##57477 |goto 72.84,73.93
accept Running a Muck##57481 |goto 72.84,73.93
step
clicknpc Bootus##157898
Board Bootus |q 57481/1 |goto 72.84,73.93
stickystart "Slay_Devourers"
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 73.82,75.36 |count 1
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 74.85,74.48 |count 2
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 74.63,77.59 |count 3
step
label "Slay_Devourers"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #25# Devourers |q 57481/2 |goto 74.91,75.26
step
kill Charthox##157954 |q 57481/4 |goto 75.45,76.51
|tip Use the abilities on your action bar.
step
Return to Rendle |outvehicle |goto 73.02,73.00 |q 57481 |notravel
|tip You will run automatically.
step
talk Rendle##157846
turnin Running a Muck##57481 |goto 72.57,73.21
stickystart "Kill_Stoneborn_Rebels"
step
click Join the Rebellion!
accept Words Have Power##58272 |goto 67.74,67.66
stickystart "Collect_Rebellion_Pamphlets"
step
click Anima Canister
|tip You will be attacked.
collect Anima Canister##174102 |q 58433/1 |goto 68.79,63.72
step
label "Collect_Rebellion_Pamphlets"
click Join the Rebellion!+
|tip They look like pieces of paper pinned onto walls around this area.
Collect #9# Pamphlets|q 58272/1 |goto 68.26,65.97
step
label "Kill_Stoneborn_Rebels"
kill 5 Stoneborn Rebel##156084 |q 56955/1 |goto 68.26,65.97
step
talk Lord Chamberlain##155533
turnin Rebels on the Road##56955 |goto 66.91,64.70
turnin Anima Attrition##58433 |goto 66.91,64.70
turnin Words Have Power##58272 |goto 66.91,64.70
accept To Darkhaven##56978 |goto 66.91,64.70
step
talk Lord Chamberlain##155533
Tell him _"Ready."_
Speak with the Lord Chamberlain |q 56978/1 |goto 66.91,64.69
step
Watch the dialogue
|tip Follow Lord Chamberlain as he walks.
|tip He eventually walks to this location.
Reach Darkhaven |q 56978/2 |goto 63.26,62.10
step
talk Lord Chamberlain##156374
turnin To Darkhaven##56978 |goto 63.26,62.10
accept The Stoneborn##57174 |goto 63.26,62.10
step
click Anima Cage
Collect the Anima Cage |q 57174/1 |goto 63.25,62.10
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.53,64.75 |count 1
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.74,64.56 |count 2
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 64.01,62.96 |count 3
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 64.21,62.37 |count 4
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.26,61.33 |count 5
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 61.70,60.74 |count 6
step
talk Courier Rokalai##156295
fpath Darkhaven |goto 60.50,60.62
step
Enter the building |goto 62.26,63.57 < 7 |walk
talk Tremen Winefang##156290
|tip Inside the building.
home The Sinposium |goto 62.06,64.48
step
Watch the dialogue
|tip Inside the building.
talk Mistress Mihaela##156822
turnin The Stoneborn##57174 |goto 61.31,63.78
accept A Plea to the Harvesters##58654 |goto 61.31,63.78
accept Bring Out Your Tithe##60176 |goto 61.31,63.78
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.51,63.36 |count 5
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.29,62.10 |count 10
step		talk 167489
accept Reason for the Treason##60177 |goto 62.22,61.36
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 63.15,62.90 |count 15
step
talk Soul of Keltesh##167849
|tip Outside, behind the building.
Choose _<Ask about suspicious activity>_
Watch the dialogue
Kill the enemies that attack in waves
Find the Soul of Keltesh Clue |q 60177/3 |goto 62.57,64.78
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.78,60.92 |count 20
step
Locate Globknob |goto 63.38,60.87 < 7 |c |q 60177
step
talk Globknob##167838
Choose _<Ask about suspicious activity>_
Begin Following Globknob |goto 63.38,60.87 > 7 |c |q 60177
step
Watch the dialogue
click Rubbish Pile
Find the Globknob Clue |q 60177/2 |goto 63.71,61.10
step
Enter the building |goto 63.38,60.88 < 7 |walk
click Droplets of Anima
|tip Inside the building.
Collect Tithe Anima |q 60176/1 |goto 63.51,60.82 |count 25
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.20,59.56 |count 30
step
talk Darkhaven Villager##167746
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.90,59.74 |count 60
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 61.42,59.22 |count 65
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 60.80,60.23 |count 70
step
talk Lord Chamberlain##156374
turnin A Plea to the Harvesters##58654 |goto 60.61,60.86
step
talk General Kaal##155541
accept The Master Awaits##57178 |goto 60.45,60.91
step
talk Courier Rokalai##156295
Choose _<Ask about suspicious activity>_
Watch the dialogue
Find the Courier Rokalai Clue |q 60177/1 |goto 60.50,60.61
step
talk Darkhaven Villager##167717
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.36,61.20 |count 85
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 61.78,61.66 |count 90
step
talk Darkhaven Villager##167744
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.60,62.15 |count 100
step
talk Lajos##167489
turnin Reason for the Treason##60177 |goto 62.21,61.36
accept And Then There Were None##60178 |goto 62.21,61.36
step
talk Ilka##168237
Choose _<Present Lajos' invitation>_
Invite Ilka |q 60178/2 |goto 63.25,60.34
step
Enter the building |goto 62.26,63.58 < 7 |walk
talk Samu##168238
|tip Upstairs inside the building.
Choose _<Present Lajos' invitation>_
Invite Samu |q 60178/1 |goto 61.81,64.36
step
talk Mistress Mihaela##156822
|tip Inside the building.
turnin Bring Out Your Tithe##60176 |goto 61.31,63.78
step
Enter the building |goto 61.31,59.78 < 7 |walk
Watch the dialogue
|tip Downstairs inside the building.
Confront the Traitor |q 60178/3 |goto 61.32,59.81
step
talk Rahel##168448
|tip Downstairs inside the building.
turnin And Then There Were None##60178 |goto 61.21,59.73
step
talk Dimwiddle##165859
|tip Outside.
accept A Curious Invitation##59710 |goto 60.71,62.50
step
Use the Elevator |q 59710/1 |goto 58.38,64.10
|tip Ride it down to the ground.
step
talk Courier Araak##169238
Tell him _"Dimwiddle sent me."_
Find Courier Araak |q 59710/2 |goto 59.50,66.73
step
talk Courier Araak##169238
turnin A Curious Invitation##59710 |goto 59.50,66.73
accept The Lay of the Land##59712 |goto 59.50,66.73
step
talk Nadjia the Mistblade##165864
Check Nadjia |q 59712/1 |goto 59.89,68.89
step
click Taskmaster Matyas' Ruminations
|tip Inside the building.
Find the Taskmaster's Journal |q 59712/2 |goto 58.63,69.36
step
talk Courier Araak##165921
turnin The Lay of the Land##59712 |goto 60.31,69.24
step
talk Nadjia the Mistblade##165864
accept Finders-Keepers, Sinners-Weepers##59846 |goto 59.89,68.89
step
talk Dobwobble##166543
Ask him _"What are you all doing?"_
Question Dobwobble |q 59846/2 |goto 60.06,69.61
step
talk Cobwobble##166541
Ask him _"Why are the ones with scribbles interesting?"_
Question Cobwobble |q 59846/1 |goto 60.26,68.54
step
talk Slobwobble##166542
Ask him _"Where does the Taskmaster keep the sinstones?"_
Question Slobwobble |q 59846/3 |goto 61.36,68.01
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.99,67.60 |count 1
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.37,69.86 |count 2
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.83,72.13 |count 3
step
talk Nadjia the Mistblade##165864
turnin Finders-Keepers, Sinners-Weepers##59846 |goto 59.89,68.89
accept Active Ingredients##59713 |goto 59.89,68.89
accept A Fine Vintage##59714 |goto 59.89,68.89
step
Run down the stairs inside the building |goto 63.63,74.15 < 7 |walk
kill Mucksquint##166042
|tip Downstairs inside the building.
|tip Click the Kegs of the Strong stuff nearby and use the ability to stun Mucksquint.
collect Witherfall Special Reserve##177765 |q 59714/1 |goto 63.67,72.92
stickystart "Collect_Scythe_Bloom_Pollen"
step
Kill enemies around this area
|tip Outside.
collect Pristine Venom Gland##177713 |q 59713/1 |goto 62.54,70.30
step
label "Collect_Scythe_Bloom_Pollen"
click Scythe Bloom+
|tip They look like large white and red flowers on the ground around this area.
collect 60 Scythe Bloom Pollen##177714 |q 59713/2 |goto 62.54,70.30
step
talk Nadjia the Mistblade##165864
turnin Active Ingredients##59713 |goto 59.89,68.89
turnin A Fine Vintage##59714 |goto 59.89,68.89
accept Message for Matyas##59715 |goto 59.89,68.89
step
talk Courier Araak##165921
Tell him _"We are ready. Please tell the Taskmaster the Maw Walker is here."_
Send the Courier Message |q 59715/1 |goto 60.31,69.24
step
click Witherfall Special Reserve
Poison the Bottle |q 59715/2 |goto 60.25,69.16
step
talk Taskmaster Matyas##166081
turnin Message for Matyas##59715 |goto 60.17,69.44
accept Comfortably Numb##59716 |goto 60.17,69.44
step
Watch the dialogue
click Gift for Matyas
Poison Matyas |q 59716/1 |goto 60.23,69.17
step
clicknpc Taskmaster Matyas##166368
Acquire Nadjia's Sinstone |q 59716/2 |goto 60.30,69.23
step
talk Nadjia the Mistblade##165864
turnin Comfortably Numb##59716 |goto 60.20,69.32
accept The Field of Honor##59724 |goto 60.20,69.32
accept Offer of Freedom##59868 |goto 60.20,69.32
stickystart "Kill_Matyas_Followers"
step
Follow the path up |goto 60.15,74.20 < 20 |only if walking
Kill Briarbane enemies around this area
|tip Just get them to low health, don't kill them.
use the Sinstone Fragment##179359
|tip Use it on them when they are at about 35% health.
Free #3# Compelled Venthyr |q 59868/1 |goto 61.09,77.34
step
label "Kill_Matyas_Followers"
Kill enemies around this area
Kill #12# Matyas' Followers |q 59724/1 |goto 61.09,77.34
step
Enter the building |goto 60.72,79.07 < 7 |walk
talk Nadjia the Mistblade##166616
|tip Upstairs inside the building.
turnin The Field of Honor##59724 |goto 60.21,78.63
turnin Offer of Freedom##59868 |goto 60.21,78.63
accept It's a Trap##59726 |goto 60.21,78.63
step
kill Taskmaster Matyas##165834
|tip Click the Rampart Portcullis gate and walk through it.
|tip Nadjia the Mistblade will help you fight.
Complete Nadjia's Duel |q 59726/1 |goto 60.12,77.54
step
talk Nadjia the Mistblade##166616
|tip Upstairs inside the building.
turnin It's a Trap##59726 |goto 60.21,78.63
step
clicknpc Myskia##156597
Begin Flying with Myskia |invehicle |goto 60.26,60.80 |q 57178
step
Ride Myskia |q 57178/1 |goto 57.54,55.77 |notravel
step
Watch the dialogue
|tip Follow General Kaal as she walks.
Follow General Kaal |q 57178/2 |goto 56.79,51.52
step
talk Lord Chamberlain##156374
turnin The Master Awaits##57178 |goto 56.79,51.52
step
talk Sire Denathrius##156644
accept The Authority of Revendreth##57179 |goto 57.42,49.46
step
talk The Tithelord##157302
Speak with the Tithelord |q 57179/1 |goto 57.36,50.21
step
talk The Fearstalker##157306
Speak with the Fearstalker |q 57179/2 |goto 57.05,49.87
step
talk The Stonewright##160644
Speak with the Stonewright |q 57179/3 |goto 57.04,49.19
step
talk The Countess##157303
Speak with the Countess |q 57179/4 |goto 57.22,48.87
step
Return to Sire Denathrius |q 57179/5 |goto 57.42,49.44
step
Stand in the Sigil of the Harvester |q 57179/6 |goto 57.54,49.59
step
talk Sire Denathrius##156644
turnin The Authority of Revendreth##57179 |goto 57.42,49.45
step
Watch the dialogue
talk Lord Chamberlain##156605
|tip He walks to this location.
accept I Don't Get My Hands Dirty##57161 |goto 58.04,49.51
step
Kill enemies around this area
click Defiant Barricade+
|tip They look like stone walls blocking the paths on the ground around this area.
Clear Penance Bridge |q 57161/1 |goto 60.61,49.74
|tip Fill up the blue bar in the quest tracker area.
step
Watch the dialogue
talk Echelon##156842
|tip He flies to this location.
turnin I Don't Get My Hands Dirty##57161 |goto 64.71,50.08
accept The Accuser's Sinstone##57173 |goto 64.71,50.08
step
click The Accuser's Sinstone
Watch the dialogue
Investigate the Accuser's Sinstone |q 57173/1 |goto 64.96,49.73
step
Watch the dialogue
talk Lord Chamberlain##156823
|tip He walks to this location.
turnin The Accuser's Sinstone##57173 |goto 64.70,49.97
accept Inquisitor Stelia's Sinstone##58931 |goto 64.70,49.97
step
talk Echelon##163469
Begin Flying with Echelon |invehicle |goto 64.72,50.08 |q 58931
step
Watch the dialogue
Fly with Echelon |q 58931/1 |goto 69.48,53.91 |notravel
step
accept Temel, the Sin Herald##58932 |goto 69.48,53.91
|tip You will accept this quest automatically.
stickystart "Collect_Inquisitor_Stelias_Sinstone"
step
talk Chiselgrump##168698
accept It Used to Be Quiet Here##60487 |goto 69.53,53.38
stickystart "Collect_Dredger_Chisels"
step
kill Cryptkeeper Kassir##163555
Recruit Temel |q 58932/1 |goto 71.45,54.41
step
label "Collect_Inquisitor_Stelias_Sinstone"
Kill enemies around this area
collect Avowed Crypt Key##174998+ |n
click Crypt Door+
|tip They look like the pointed doors on the stone buildings around this area.
click Inquisitor Stelia's Sinstone
|tip It looks like a tall tombstone.
|tip It will appears randomly inside one of the crypts you open.
collect Inquisitor Stelia's Sinstone##174930 |q 58931/2 |goto 69.33,54.37
step
label "Collect_Dredger_Chisels"
click Dredger Chisel+
|tip The look like small skinny metal tools on the ground around this area.
collect 8 Dredger Chisel##179002 |q 60487/1 |goto 69.33,54.37
step
talk Chiselgrump##168698
turnin It Used to Be Quiet Here##60487 |goto 69.53,53.38
step
Watch the dialogue
talk Echelon##163576
|tip He flies to this location.
turnin Inquisitor Stelia's Sinstone##58931 |goto 67.40,53.56
turnin Temel, the Sin Herald##58932 |goto 67.40,53.56
accept Herald Their Demise##59021 |goto 67.40,53.56
step
Use the _"Read Inquisitor Stelia's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Stelia##163971 |q 59021/1 |goto 64.42,52.61
step
talk Echelon##163576
|tip He flies to this location.
turnin Herald Their Demise##59021 |goto 67.40,53.56
accept Inquisitor Vilhelm's Sinstone##57175 |goto 67.40,53.56
step
accept A Fresh Start##57177 |goto 67.82,51.57
|tip You will accept this quest automatically.
|only if level < 60
stickystart "Purge_The_Halls_Of_Atonement"
step
click Disheveled Monument
click Freshly Dug Dirt+
|tip They look like multiple piles of dirt that appear on the ground.
Find the Hidden Sinstone Fragment |q 57175/1 |goto 67.82,51.57 |count 1
step
click Ritual Candle+
|tip There are 4 of them.
click Hidden Sinstone Fragment
|tip It appears on the stone table.
Find the Hidden Sinstone Fragment |q 57175/1 |goto 65.30,51.13 |count 2
step
click Piled Planks+
|tip They are many of them.
click Hidden Sinstone Fragment
Find the Hidden Sinstone Fragment |q 57175/1 |goto 64.88,48.42 |count 3
step
label "Purge_The_Halls_Of_Atonement"
Kill enemies around this area
click Object+
|tip They look like various shaped highlighted objects with various names on the ground around this area.
Purge the Halls of Atonement |q 57177/1 |goto 67.26,47.21
|only if havequest(57177) or completedq(57177)
step
talk Echelon##164166
|tip He flies to this location.
turnin Inquisitor Vilhelm's Sinstone##57175 |goto 65.97,47.19
accept Ending the Inquisitor##59023 |goto 65.97,47.19
step
Use the _"Read Inquisitor Vilhelm's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Vilhelm##163973 |q 59023/1 |goto 67.29,43.47
step
talk Echelon##164166
turnin Ending the Inquisitor##59023 |goto 65.97,47.19
accept Sinstone Delivery##57176 |goto 65.97,47.19
step
talk Echelon##164274
Begin Flying with Echelon |invehicle |goto 65.97,47.19 |q 57176
step
Watch the dialogue
Fly with Echelon |q 57176/1 |goto 65.71,49.48 |notravel
step
talk Lord Chamberlain##157069
turnin Sinstone Delivery##57176 |goto 65.60,49.65
accept The Accuser's Secret##57180 |goto 65.60,49.65
step
talk Lord Chamberlain##157069
Tell him _"I'm ready to witness your ascension."_
Speak with Lord Chamberlain |q 57180/1 |goto 65.60,49.65
step
Watch the dialogue
Witness Lord Chamberlain's Ascension |q 57180/2 |goto 66.07,49.68
step
Watch the dialogue
kill The Accuser##157064
|tip She will eventually be taken away.
Protect Lord Chamberlain |q 57180/3 |goto 66.05,49.73
step
Watch the dialogue
talk Lord Chamberlain##157084
|tip He walks to this location.
turnin The Accuser's Secret##57180 |goto 66.34,50.57
accept The Accuser's Fate##57182 |goto 66.34,50.57
step
clicknpc Myskia##164438
|tip He flies to this location.
Begin Flying with Myskia |invehicle |goto 66.20,51.31 |q 57182
step
Watch the dialogue
Deliver the Accuser to the Master |q 57182/1 |goto 53.62,64.02 |notravel
step
talk Sire Denathrius##156381
turnin The Accuser's Fate##57182 |goto 53.34,63.93
accept A Lesson in Humility##59232 |goto 53.34,63.93
step
talk Sire Denathrius##156381
Tell him _"I will witness the Accuser's judgement."_
Speak with the Master |q 59232/1 |goto 53.34,63.93
step
Watch the dialogue
Witness the Judgement of the Accuser |q 59232/2 |goto 53.34,63.93
step
talk Sire Denathrius##156381
turnin A Lesson in Humility##59232 |goto 53.34,63.93
accept The Grove of Terror##57098 |goto 53.34,63.93
step
Follow the path down |goto 53.96,69.02 < 30 |only if walking
talk The Fearstalker##169087
turnin The Grove of Terror##57098 |goto 50.61,73.85
accept Dread Priming##58916 |goto 50.61,73.85
step
click Bounty: Beast Control
accept Beast Control##58936 |goto 49.61,75.95
step
Enter the building |goto 49.53,75.71 < 7 |walk
clicknpc Houndmaster Loksey##162946
|tip Inside the building.
Bind Houndmaster Loksey |q 58916/1 |goto 49.36,75.76
step
talk Sinreader Nicola##163117
Tell her _"Read this soul their sins."_
Speak to Sinreader Nicola |q 58916/2 |goto 50.17,75.17
step
Watch the dialogue
|tip Lead Houndmaster Loksey down the middle of the path between the Soulstalker Alphas.
Let the Gargons Demoralize Houndmaster Loksey |q 58916/3 |goto 49.91,73.95
step
talk Flockmaster Sergio##163221
turnin Dread Priming##58916 |goto 51.27,74.31
accept Alpha Bat##58941 |goto 51.27,74.31
stickystart "Slay_Dredbats"
step
click Stake
kill Duskterror##163059
|tip She flies down to you.
|tip She will eventually be captured.
Watch the dialogue
Capture Duskterror |q 58941/2 |goto 52.44,76.47
step
label "Slay_Dredbats"
Kill enemies around this area
Slay #6# Dredbats |q 58936/1 |goto 51.53,75.32
step
talk Flockmaster Sergio##163221
turnin Alpha Bat##58941 |goto 51.26,74.31
turnin Beast Control##58936 |goto 51.26,74.31
accept King of the Hill##59014 |goto 51.26,74.31
step
Deliver Houndmaster Loksey to Wanecrypt Hill |q 59014/1 |goto 47.86,70.12
step
talk The Fearstalker##168664
turnin King of the Hill##59014 |goto 47.86,70.12
accept Let the Hunt Begin##57131 |goto 47.86,70.12
step
talk Soultrapper Valistra##156220
|tip Inside the building.
home Wanecrypt Hill |goto 47.33,70.65
step
clicknpc Houndmaster Loksey##163467
|tip Outside.
Siphon Houndmaster Loksey's Anima |q 57131/1 |goto 48.03,70.12
step
use the Hollowed Dredbat Fang##178994
Signal the Hunt |q 57131/2 |goto 48.03,70.12
step
talk The Fearstalker##168664
turnin Let the Hunt Begin##57131 |goto 47.87,70.12
accept The Penitent Hunt##57136 |goto 47.87,70.12
accept Devour This##57164 |goto 47.87,70.12
step
talk The Fearstalker##168664
Tell him _"Let's begin."_
Speak to the Fearstalker |q 57136/1 |goto 47.87,70.12
step
talk Courier Rabatur##156196
fpath Wanecrypt Hill |goto 47.88,69.39
step
talk Huntmaster Constantin##156384
accept Hunting Trophies##60514 |goto 48.50,68.44
stickystart "Collect_Doomfang_Skulls"
stickystart "Collect_Pristine_Deathwalker_Paws"
stickystart "Collect_Prized_Fearspinner_Fangs"
stickystart "Slay_Banewood_Devourers"
step
click Yoshai the Merciless
Hunt Yoshai the Merciless |q 57136/3 |goto 44.53,70.39
step
kill Truulax##164048
Hunt Houndmaster Loksey |q 57136/4 |goto 46.87,65.24
step
clicknpc Crimelord Tiana##168728
Hunt Crimelord Tiana |q 57136/2 |goto 50.38,61.35
step
_Next to you:_
talk The Fearstalker
turnin The Penitent Hunt##57136
step
label "Collect_Doomfang_Skulls"
kill Hulking Doomfang##168862+
|tip They look like white hydras that walk around this area.
collect 3 Doomfang Skull##179316 |q 60514/1 |goto 47.08,63.66
step
label "Collect_Pristine_Deathwalker_Paws"
kill Rotting Deathwalker##168855+
|tip They look like diseased brown bears.
collect 3 Pristine Deathwalker Paw##178996 |q 60514/2 |goto 48.91,62.48
step
label "Collect_Prized_Fearspinner_Fangs"
Kill Fearspinner enemies around this area
|tip They look like spiders and large white cocoon eggs on the ground around this area.
|tip Small spiders will attack you after you break the eggs.
collect 3 Prized Fearspinner Fangs##178997 |q 60514/3 |goto 48.65,63.74
step
label "Slay_Banewood_Devourers"
Kill enemies around this area
|tip They look like various blue alien creatures.
Slay #12# Banewood Devourers |q 57164/1 |goto 50.15,63.97
step
_Next to you:_
talk The Fearstalker
turnin Devour This##57164
accept The Accuser##60506
step
Watch the dialogue
Hunt the Accuser |q 60506/1 |goto 51.57,59.95
step
Watch the dialogue
talk The Accuser##171916
Tell her _"Show me."_
Confront the Accuser |q 60506/2 |goto 51.57,59.78
step
cast Door of Shadows##300728
|tip Place the green circle on the other side of barrier, where The Accuser is standing.
|tip If you misplace it, use the nearby Midnight Rose vase to reset the cooldown.
Cast Door of Shadows to Cross the Barrier |q 60506/3 |goto 51.57,59.67
step
talk The Accuser##156554
|tip Inside the building.
turnin The Accuser##60506 |goto 51.53,59.18
accept A Reflection of Truth##57159 |goto 51.53,59.18
step
Enter the Mirror |q 57159/1 |goto 51.52,59.00
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk The Accuser##165003
Tell her _"I am ready."_
Witness the Truth |q 57159/2 |goto Castle Nathria/7 66.16,44.12
step
Kill the enemies that attack in waves
|tip Stay inside the large red circle surrounding the Accuser to receive a combat buff.
|tip Fill up the blue bar in the quest tracker area.
Protect the Accuser |q 57159/3 |goto 66.16,44.12
step
Escape Castle Nathria |q 57159/4 |goto 72.25,44.10
|tip Walk into the red swirling portal nearby.
step
talk The Accuser##156554
|tip Inside the building.
turnin A Reflection of Truth##57159 |goto Revendreth/0 51.53,59.16
accept Dredhollow##60313 |goto Revendreth/0 51.53,59.16
step
talk Huntmaster Constantin##156384
|tip Outside.
turnin Hunting Trophies##60514 |goto 48.50,68.44
accept Abel's Fate##58996 |goto 48.50,68.44
step
kill Packmother Soulfang##163282
|tip Loot her to complete the quest goal.
Investigate Abel's Fate |q 58996/1 |goto 48.71,78.78
step
talk Huntmaster Constantin##156384
turnin Abel's Fate##58996 |goto 48.51,68.44
step
Cross the bridge |goto 47.55,72.44 < 20 |only if walking
talk The Accuser##168217
turnin Dredhollow##60313 |goto 43.21,73.86
accept Breaking the Hopebreakers##57189 |goto 43.21,73.86
accept They Won't Know What Hit Them##57190 |goto 43.21,73.86
step
accept Forgotten Village##59211 |goto 43.21,73.86
|tip You will accept this quest automatically.
|only if level < 60
step
talk General Draven##164394
accept Rebel Reinforcements##59209 |goto 43.33,74.08
stickystart "Eliminate_The_Dredhollow_Threats"
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.92,74.75 |count 1
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.90,75.82 |count 2
step
Run down the stairs inside the building |goto 43.24,75.65 < 7 |walk
clicknpc Watchmaster Boromod##164405
|tip Downstairs inside the building.
Recruit Watchmaster Boromod |q 59209/1 |goto 42.47,75.62
step
click Rigged Anima Container
|tip Outside.
Set the Rigged Anima Container |q 57190/1 |goto 42.64,77.22 |count 3
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 43.14,77.64 |count 4
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 43.57,79.41 |count 5
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Marku.
kill Hopebreaker Marku##168287 |q 57189/1 |goto 43.54,79.90
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.67,79.57 |count 6
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.10,79.31 |count 7
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 41.94,78.04 |count 8
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Mursa.
|tip She walks around this area.
kill Hopebreaker Mursa##168392 |q 57189/3 |goto 41.29,78.91
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Vilstav.
kill Hopebreaker Vilstav##168390 |q 57189/2 |goto 40.24,74.08
step
clicknpc Tactician Sakaa##164404
Recruit Tactician Sakaa |q 59209/2 |goto 40.12,73.17
step
label "Eliminate_The_Dredhollow_Threats"
Kill enemies around this area
click Soulbreaker Trap+
|tip They look like dark metal circle traps with red coloring on the ground around this area.
Eliminate the Dredhollow Threats |q 59211/1 |goto 41.20,74.17
|only if havequest(59211) or completedq(59211)
step
Follow the path |goto 41.64,76.31 < 15 |only if walking
talk General Draven##168471
turnin Rebel Reinforcements##59209 |goto 39.82,80.87
step
talk The Accuser##168468
turnin Breaking the Hopebreakers##57189 |goto 39.68,81.22
turnin They Won't Know What Hit Them##57190 |goto 39.68,81.22
accept The Fearstalker##59256 |goto 39.68,81.22
step
talk The Accuser##168468
Tell her _"I am ready."_
Trigger the Trap |q 59256/1 |goto 39.68,81.22
step
Use the _"Condensed Anima Vial"_ ability
|tip Use it on The Fear Stalker each time she starts casting her "Drain Colossus" ability.
|tip This will interrupt her and prevent her from healing during the fight.
|tip It appears as a button on the screen.
kill The Fearstalker##164618
collect Medallion of Dread##175770 |q 59256/2 |goto 39.24,81.93
step
talk The Accuser##168217
turnin The Fearstalker##59256 |goto 43.21,73.87
accept Where is Prince Renathal?##57240 |goto 43.21,73.87
step
talk Stonehead##157199
|tip He will pick you up.
turnin Where is Prince Renathal?##57240 |goto 38.97,66.03
accept Sign Your Own Death Warrant##57380 |goto 38.97,66.03
stickystart "Collect_Venthyr_Calligraphy_Set"
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 39.22,67.85 |count 1
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 39.41,69.65 |count 2
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 38.88,69.94 |count 3
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 38.52,68.89 |count 4
step
label "Collect_Venthyr_Calligraphy_Set"
Kill enemies around this area
collect Venthyr Calligraphy Set##171344 |q 57380/2 |goto 39.24,69.35
step
click Venthyr Writing Desk
|tip Inside the building.
Choose _<Forge your Letter of Condemnation.>_
|tip Choose any of the dialogue options you like, it doesn't matter.
Forge a Letter of Condemnation |q 57380/3 |goto 37.93,68.25
step
talk Stonehead##157199
|tip He will pick you up.
turnin Sign Your Own Death Warrant##57380 |goto 38.97,66.03
step
Watch the dialogue
Get Thrown by Stonehead |goto 37.31,63.53 < 10 |noway |c |q 57405 |future
step
talk Lost Sybille##157588
accept Chasing Madness##57405 |goto 37.04,63.12
step
Watch the dialogue
|tip Follow Lost Sybille as he walks.
|tip He eventually walks to this location.
Follow Lost Sybille |q 57405/1 |goto 37.43,60.35
step
Watch the dialogue
talk Theotar##157639
|tip He walks to this location.
turnin Chasing Madness##57405 |goto 38.05,60.73
accept My Terrible Morning##57426 |goto 38.05,60.73
accept Theotar's Mission##57428 |goto 38.05,60.73
accept Unbearable Light##57427 |goto 38.05,60.73
step
_Note:_
|tip Don't worry about Theotar's Willpower bar above his head as he follows you in the next steps.
|tip He's supposed to lose all of his willpower, it doesn't matter.
Click Here to Continue |confirm |q 57427
stickystart "Slay_Ash_Ghouls"
step
talk Sabina##168455
|tip Up on the ridge.
accept A Rousing Aroma##60467 |goto 35.07,53.88
step
kill Ravenous Swarm##160613+
|tip They look like groups of tiny insects inside the dead tree trunks around this area.
collect 4 Pungent Swarmer Toxin##178898 |q 60467/1 |goto 35.69,54.93
You can find more around:
[34.75,48.85]
[32.85,52.58]
step
talk Sabina##168455
|tip Up on the ridge.
turnin A Rousing Aroma##60467 |goto 35.07,53.88
accept Safe in the Shadows##60469 |goto 35.07,53.88
accept Rubble Rummaging##60468 |goto 35.07,53.88
stickystart "Collect_Shackle_Key"
step
Find Sabina's Companions |q 60469/1 |goto 37.76,53.59
step
click Stained Dagger
Search for Clues |q 60469/2 |goto 37.69,53.73 |count 1
step
click Tattered Journal
Search for Clues |q 60469/2 |goto 37.68,53.45 |count 2
step
click Light Satchel
Search for Clues |q 60469/2 |goto 37.91,53.57 |count 3
step
label "Collect_Shackle_Key"
click Rubble Pile+
|tip They look like small piles of rocks on the ground around this area.
collect Shackle Key##178904 |q 60468/1 |goto 37.76,53.59
step
talk Sabina##168455
|tip Up on the ridge.
turnin Safe in the Shadows##60469 |goto 35.07,53.88
turnin Rubble Rummaging##60468 |goto 35.07,53.88
accept Setting Sabina Free##60470 |goto 35.07,53.88
step
click Shackles
|tip She will attack you.
Release Sabina |q 60470/1 |goto 35.09,53.88
step
kill Sabina##168525 |q 60470/2 |goto 35.07,53.88
step
_Click the Complete Quest Box:_
turnin Setting Sabina Free##60470
stickystart "Collect_Regal_Cloth_Scraps"
stickystart "Collect_Scorched_Planks"
step
Enter the building |goto 33.82,60.74 < 10 |walk
kill Marquis Pummeler##157740 |q 57426/1 |goto 33.79,61.33
|tip Inside the building.
step
_Next to you:_
talk Theotar
turnin My Terrible Morning##57426
step
label "Collect_Regal_Cloth_Scraps"
click Scorched Battle Standard+
|tip They look like red flags hanging from poles on the ground around this area.
Kill Scorched enemies around this area
|tip They look like enemies that look like Theotar, who is following you around.
collect 8 Regal Cloth Scrap##171468 |q 57428/2 |goto 35.70,58.54
step
label "Collect_Scorched_Planks"
click Various Scorched Item+
|tip They look like various shaped broken wooden item with various names on the ground around this area.
collect 8 Scorched Plank##171469 |q 57428/1 |goto 35.70,58.54
step
label "Slay_Ash_Ghouls"
Kill Ghoul enemies around this area
Slay #12# Ash Ghouls |q 57427/1 |goto 35.70,58.54
step
_Next to you:_
talk Theotar
turnin Theotar's Mission##57428
turnin Unbearable Light##57427
accept Lost in the Desiccation##57442
step
Watch the dialogue
|tip Follow Lost Sybille as he walks.
|tip He will appear on your minimap as a yellow dot.
|tip He eventually walks to this location inside the building.
Follow Lost Sybille |q 57442/1 |goto 31.19,57.64
step
talk Tubbins##157801
|tip Inside the building.
turnin Lost in the Desiccation##57442 |goto 31.00,57.60
accept Tubbins's Tea##57460 |goto 31.00,57.60
step
talk Tubbins##157801
|tip Inside the building.
Tell him _"I'll help you make the tea for Theotar."_
Start Making the Tea |q 57460/1 |goto 31.00,57.60
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #3# Forcefully Fragrant Fronds |q 57460/2 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #4# Grave Gravel |q 57460/3 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #2# Spicy Scorchshrooms |q 57460/4 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add the Luminous Lightroot |q 57460/5 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #10# Tricky Thicket Thorns |q 57460/6 |goto 31.24,57.56
step
click Dented Teapot
|tip Inside the building.
Carry the Dented Teapot |havebuff spell:308049 |goto 30.94,57.66 |q 57460
step
Watch the dialogue
|tip Inside the building.
Add the Liquid Shadows |q 57460/7 |goto 31.22,57.55
step
talk Tubbins##157801
|tip Inside the building.
turnin Tubbins's Tea##57460 |goto 31.00,57.60
step
Watch the dialogue
|tip Inside the building.
talk Theotar##158542
|tip He walks to this location.
accept An Uneventful Stroll##57461 |goto 31.17,57.52
step
talk Theotar##158542
|tip Inside the building.
Tell him _"I'm ready. Lead me to the sanctuary."_
Speak with Theotar |q 57461/1 |goto 31.17,57.52
step
Watch the dialogue
|tip Follow Theotar as he walks.
|tip He eventually walks to this location.
Escort Theotar to the Sanctuary |q 57461/2 |goto 32.03,47.62
step
talk Theotar##158694
turnin An Uneventful Stroll##57461 |goto 32.03,47.62
accept Into the Light##60566 |goto 32.03,47.62
step
talk Delia##166089
|tip Inside the building.
home Sanctuary of the Mad |goto 31.19,46.63
step
click Wanted: Enforcer Kristof
accept WANTED: Enforcer Kristof##60275 |goto 30.68,48.99
step
click Wanted: Summoner Marcelis
accept WANTED: Summoner Marcelis##60276 |goto 30.87,49.04
step
talk Courier Shaal##158416
fpath Sanctuary of the Mad |goto 30.56,48.87
step
Follow the path |goto 29.33,58.70 < 20 |only if walking
Follow the path up |goto 30.49,62.33 < 10 |only if walking
kill Summoner Marcelis##168093 |q 60276/1 |goto 30.21,63.93
|tip Inside the building.
step
talk Dispatcher Raluca##168120
turnin WANTED: Summoner Marcelis##60276 |goto 30.71,49.12
step
talk Laurent##158038
accept An Unfortunate Situation##57531 |goto 26.42,48.95
step
kill Costel##158165
|tip Inside the building.
Recover Laurent's Belongings |q 57531/1 |goto 29.72,48.72
step
talk Laurent##158038
turnin An Unfortunate Situation##57531 |goto 26.43,48.95
accept Foraging for Fragments##57532 |goto 26.43,48.95
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/1 |goto 25.71,48.57
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/2 |goto 25.68,48.54
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/3 |goto 25.53,47.34
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/4 |goto 25.51,47.39
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/5 |goto 24.98,47.98
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/6 |goto 25.00,48.04
step
Watch the dialogue
talk Laurent##158205
|tip He walks to this location.
turnin Foraging for Fragments##57532 |goto 24.25,49.41
accept Moving Mirrors##57571 |goto 24.25,49.41
step
click Mirror Trap+
|tip There are 3 of them surrounding Simone.
Free Simone |q 57571/1 |goto 24.07,49.67
step
Watch the dialogue
talk Simone##158088
|tip She walks to this location.
turnin Moving Mirrors##57571 |goto 24.22,49.48
accept Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
accept When Only Ash Remains##57534 |goto 24.25,49.42
stickystart "Kill_Ashen_Ravagers"
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 23.02,49.52 |count 1
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.20,48.11 |count 2
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 21.86,50.38 |count 3
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.88,50.00 |count 4
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.51,52.16 |count 5
step
Follow the path up |goto 23.78,53.06 < 20 |only if walking
Enter the building |goto 22.76,55.40 < 7 |walk
kill Enforcer Kristof##168118 |q 60275/1 |goto 22.88,55.84
|tip Inside the building.
step
label "Kill_Ashen_Ravagers"
kill 10 Ashen Ravager##164524 |q 57534/1 |goto 23.21,49.46
step
talk Simone##158088
turnin Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
turnin When Only Ash Remains##57534 |goto 24.25,49.41
accept Escaping the Master##57535 |goto 24.25,49.41
step
talk Simone##158088
accept We Need More Power##59427 |goto 24.22,49.49
stickystart "Collect_Anima_59427"
step
Kill Shrouded enemies around this area
|tip You can find more inside the buildings around this area.
collect 10 Mirror Fragment##172220 |q 57535/1 |goto 23.79,53.09
step
label "Collect_Anima_59427"
click Anima Stores+
|tip They look like small metal burnt out lanterns on the ground around this area.
|tip You can find more inside the buildings around this area.
|tip Fill up the blue bar in the quest tracker area.
Collect Anima |q 59427/1 |goto 23.79,53.09
step
talk Simone##158088
turnin We Need More Power##59427 |goto 24.22,49.48
step
talk Laurent##158205
turnin Escaping the Master##57535 |goto 24.25,49.41
accept Mirror Making, Not Breaking##57536 |goto 24.25,49.41
step
Watch the dialogue
Follow Laurent and Simone |q 57536/1 |goto 24.80,50.32
step
talk Laurent##164420
|tip He runs to this location.
Tell him _"I am ready."_
Speak to Laurent |q 57536/2 |goto 24.80,50.32
step
Kill the enemies that attack in waves
|tip Fill up the blue bar in the quest tracker area.
Defend Laurent and Simone |q 57536/3 |goto 24.73,50.38
step
talk Laurent##158505
turnin Mirror Making, Not Breaking##57536 |goto 24.80,50.32
step
talk Dispatcher Raluca##168120
|tip Outside.
turnin WANTED: Enforcer Kristof##60275 |goto 30.72,49.12
step
Ride the Elevator to Sinfall |q 60566/1 |goto 30.34,47.33
|tip Walk onto the platform after you ride the elevator up.
step
talk Breakfist##169105
turnin Into the Light##60566 |goto 30.42,45.61
accept Securing Sinfall##57724 |goto 30.42,45.61
step
Follow the path up |goto 30.91,44.07 < 20 |only if walking
Kill enemies around this area
|tip Wait to kill Grand Monitor Rorok in the next step.
Clear Out Sinfall |q 57724/1 |goto 29.82,43.17
step
kill Grand Monitor Rorok##158701 |q 57724/2 |goto 28.92,42.88
step
Enter the building |goto 28.71,43.01 < 7 |only if walking
click Scorching Mirror
|tip Upstairs inside the building.
Redirect the Scorching Mirror |q 57724/3 |goto 28.36,44.20
step
talk Theotar##158716
turnin Securing Sinfall##57724 |goto 29.91,42.32
accept In the Ruin of Rebellion##59327 |goto 29.91,42.32
step
Jump down onto the the stairs |goto 29.90,41.66 < 10 |walk
Enter Sinfall |q 59327/1 |goto 29.35,42.67
|tip Walk into the red swirling portal.
|tip Downstairs inside the building.
step
Enter the Sinfall Reaches |goto Sinfall/0 23.65,57.06 < 10 |noway |c |q 59327
step
Find a Clue |q 59327/2 |goto Sinfall/0 42.89,43.81
|tip Walk near Vorpalia.
|tip It looks like a sword that floats around this area.
|tip Inside the building.
step
talk Vorpalia##158615
|tip It looks like a sword that floats around this area.
|tip Inside the building.
turnin In the Ruin of Rebellion##59327 |goto 42.89,43.81
accept Prince Renathal##57689 |goto 42.89,43.81
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 41.61,50.87 |count 1
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 37.65,56.04 |count 2
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 38.53,40.90 |count 3
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 33.35,41.97 |count 4
step
Jump into the Maw |q 57689/2 |goto 34.61,49.51
|tip Jump into the huge white swirling portal.
|tip Inside the building.
step
Enter the Maw |goto The Maw/0 37.70,27.40 < 10 |noway |c |q 57689
step
_Next to you:_
talk Vorpalia
turnin Prince Renathal##57689
accept Cages For All Occassions##57690
step
Cross the bridge |goto 35.47,27.51 < 20 |only if walking
talk Prince Renathal##158645
turnin Cages For All Occassions##57690 |goto 34.66,18.69
accept A Royal Key##57691 |goto 34.66,18.69
step
kill Ghelak the Incarcerator##158665
|tip He walks around this area.
collect Renathal's Cage Key##172446 |q 57691/1 |goto 28.94,21.17
step
talk Prince Renathal##158645
turnin A Royal Key##57691 |goto 34.67,18.69
accept Torghast, Tower of the Damned##57693 |goto 34.67,18.69
step
Follow the path |goto 30.56,16.78 < 20 |only if walking
click Enter Torghast, Tower of the Damned
Find an Entrance to Torghast |q 57693/1 |goto 31.36,12.52
step
Enter Skoldus Hall, Torghast |q 57693/2 |goto 31.36,12.52
|tip Enter the instance with the popup that displays.
step
Enter Torghast |goto Torghast/1 37.75,49.53 < 10 |noway |c |q 57693
step
Enter the Portal |goto 29.30,49.51
|tip Walk into the swirling portal.
Reach Floor 1 in Torghast |goto Torghast/2 42.81,14.04 < 10 |noway |c |q 57693
step
Enter the Portal |goto 46.66,70.11
|tip Walk into the swirling portal.
Reach Floor 2 in Torghast |goto Torghast/3 47.94,20.73 < 10 |noway |c |q 57693
step
Follow the path |goto 47.54,65.60 < 10 |walk
Continue following the path |goto 58.48,70.09 < 10 |walk
Enter the Portal
|tip Walk into the swirling portal.
Ascend to the Chamber of Power |q 57693/3 |goto 67.74,57.50
step
Reach Floor 3 in Torghast |goto Torghast/4 50.02,25.95 < 20 |noway |c |q 57693
step
kill Warden of Souls##152995 |q 57693/4 |goto 50.30,75.39
|tip You can buy items and buffs from Broker Ve'nott when you enter floor 3, before you fight the Warden of Souls.
step
Watch the dialogue
Enter the Ritual of Soul Tracing |q 57693/5 |goto 50.03,69.50
step
Return to Sinfall |goto Sinfall/0 24.75,56.33 < 10 |noway |c |q 57693
step
talk Prince Renathal##162688
|tip Inside the building.
turnin Torghast, Tower of the Damned##57693 |goto Sinfall/0 26.46,57.19
accept Refuge of Revendreth##57694 |goto Sinfall/0 26.46,57.19
step
Meet with Theotar |q 57694/1 |goto 30.93,66.17
|tip Inside the building.
step
Meet with Accuser |q 57694/2 |goto 47.57,57.60
|tip Inside the building.
step
Meet with General Draven |q 57694/3 |goto 42.74,44.31
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Prince Renathal##162688
|tip He walks to this location.
turnin Refuge of Revendreth##57694 |goto 52.49,39.11
step
Reach Level 60 |ding 60
|tip You should already be level 60, if you completed all of the quests in the Leveling guides.
|tip However, if you're not, grind on enemies or run dungeons.
|tip You need to be level 60 before continuing the questline.
step
talk Prince Renathal##162688
|tip Inside the building.
accept Blinded By The Light##59644 |goto 52.49,39.11
step
Run up the stairs |goto 44.54,63.08 < 10 |walk
click Unaligned Mirror
|tip Click the metal ring at the top.
Align the Mirror |q 59644/1 |goto Revendreth/0 28.36,45.63 |count 1
step
click Unaligned Mirror
Align the Mirror |q 59644/1 |goto 27.30,40.36 |count 2
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 29.73,38.66 |count 3
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 31.79,40.59 |count 4
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 31.76,42.33 |count 5
step
click Unaligned Mirror
|tip Jump down carefully to it.
Align the Mirror |q 59644/1 |goto 31.57,44.16 |count 6
step
Follow the path up |goto 31.58,40.31 < 15 |only if walking
talk Projection of Prince Renathal##172673
|tip On top of the wall.
turnin Blinded By The Light##59644 |goto 32.12,41.47
accept The Master of Lies##58086 |goto 32.12,41.47
step
talk Projection of Prince Renathal##172673
|tip On top of the wall.
Tell him _"Begin the assault."_
Speak with the Projection of Prince Renathal |q 58086/1 |goto 32.12,41.47
step
Begin the Scenario |scenariostart |q 58086
step
Watch the dialogue
Rally to Prince Renathal |scenariostage 1 |goto Revendreth Scenario/0 37.48,41.49 |q 58086
step
click Darkwing Rebel+
|tip They look like stone gargoyle statues on the ground around this area.
click Anima Container+
|tip Click them to fill the Anima Stores bar near the bottom of the screen.
|tip They look like red filled lanterns on the ground around this whole area.
|tip You need anima to awaken the Darkwing Rebels.
Kill enemies around this area
|tip Walk through the red orbs that appear after you kill them to collect anima.
Awaken #6# Darkwing Stoneborns |scenariogoal 2/46664 |goto 41.50,41.52 |q 58086
step
_Collect All of the Anima:_
|tip Collect as much Anima as you can.
|tip Each anima you collect will increase your damage.
|tip They will all stay with you and make you extremely powerful.
Click Here After Collecting All of the Anima |confirm |goto 41.50,41.52 |q 58086
step
Rally at Dominance Gate |scenariostage 3 |goto 42.06,37.63 |q 58086
step
Watch the dialogue
|tip Walk down the stairs nearby to get your allies to start walking.
|tip Follow Prince Renathal as he walks.
|tip He eventually walks to this location.
Menagerie of the Master reached |scenariogoal 4/46668 |goto 45.83,31.22 |q 58086
step
kill General Kaal##159301
|tip She will eventually escape.
Defeat General Kaal |scenariostage 5 |goto 45.86,31.24 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower The Curator |scenariogoal 6/47768 |goto 47.18,30.22 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower The Accuser |scenariogoal 6/47767 |goto 47.62,32.97 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower Renathal |scenariogoal 6/46669 |goto 49.14,34.84 |q 58086
step
kill Myskia##174550 |scenariogoal 7/50579 |goto 50.39,31.32
|tip He flies down to you.
step
Watch the dialogue
talk Prince Renathal##170316
Tell him _"Ready to face the Master."_
Speak with Prince Renathal |scenarioend |goto 50.37,30.30 |q 58086
step
Return to the Menagerie of the Master |goto Revendreth/0 51.35,29.37 < 10 |c |q 58086
step
talk Courier Skraal##158564
fpath Menagerie of the Master |goto 54.22,25.68
step
Follow the path up |goto 52.28,29.53 < 20 |only if walking
Run up the ramp |goto 53.38,30.76 < 10 |only if walking
Run up the stairs |goto 55.19,26.76 < 15 |only if walking
Ride the elevator down |goto 57.39,33.43 < 15 |only if walking
talk Courier Tarehaar##158517
fpath Old Gate |goto 61.22,38.79
step
Cross the bridge |goto 64.24,37.87 < 20 |only if walking
talk Courier Rehkaash##158417
fpath Halls of Atonement |goto 71.58,40.06
step
Ride the elevator up |goto 30.34,47.34 < 15 |only if walking
Run up the stairs |goto 32.75,44.10 < 15 |only if walking
Cross the bridge |goto 33.91,41.49 < 20 |only if walking
Follow the path down |goto 37.69,44.18 < 20 |only if walking
talk Courier Chip##160202
fpath Charred Ramparts |goto 38.95,49.33
step
Follow the path on the ground |goto 28.31,49.06 < 50 |only if walking
Continue following the path |goto 26.24,45.18 < 20 |only if walking
Cross the bridge |goto 25.11,37.08 < 20 |only if walking
Follow the path |goto 25.94,30.49 < 20 |only if walking
talk Courier Dreadcarrier##158533
fpath Dominance Keep |goto 25.96,28.88
step
Follow the path |goto 51.89,29.76 < 20 |only if walking
talk Prince Renathal##165557
turnin The Master of Lies##58086 |goto 50.28,28.27
accept The End of the Beginning##57876 |goto 50.28,28.27
step
talk General Draven##173188
Tell him _"I am ready."_
Speak with Draven |q 57876/1 |goto 50.28,29.20
step
Watch the dialogue
Fly with Draven to the Flightmaster |q 57876/2 |goto 70.49,80.50 |notravel
step
talk Tal-Inara##159478
turnin The End of the Beginning##57876 |goto Oribos/0 38.87,70.01
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\The Maw",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing The Maw\n"..
"\nzone quests and storyline.\n",
condition_suggested=function() return level == 60 end,
startlevel=60.0,
endlevel=60.0,
},[[
step
Click Here After Reaching Apprehensive Reputation with Ve'nari |confirm
step
talk Ve'rayn##168432
accept Trust Issues##63051 |goto Oribos/1 55.22,59.98
step
_Next to you:_
talk Ve'rayn##168432
|tip Choose any dialogue options you prefer, it doesn't matter.
Answer Ve'rayn's Questions |q 63051/1 |goto 55.22,59.98
step
talk Ve'nari##162804
turnin Trust Issues##63051 |goto The Maw/0 46.91,41.70
accept Rule 4: Make A List##60281 |goto 46.91,41.70
step
kill Inquisitor Devaki##173580 |q 60281/1 |goto 33.07,15.39
step
click Broker Cache##364872
collect Pulsing Sphere##184492 |q 60281/2 |goto 33.55,14.49
step
talk Ve'nari##162804
turnin Rule 4: Make A List##60281 |goto 46.91,41.70
step
Click Here After Reaching Tentative Reputation with Ve'nari |confirm
step
talk Ve'nari##162804
accept Rule 5: Be Audacious##60284 |goto 46.91,41.70
step
Cross the bridge |goto 35.12,50.84 < 30 |only if walking
use Cypher of Obfuscation##182688
Use the Cypher of Obfuscation Within the Perdition Hold's Entrance |q 60284/1 |goto 33.81,55.73
step
talk Suspicious Operative##175691
Ask it _"What does Xeros want with the brokers?"_
Find the Surviving Broker |q 60284/2 |goto 32.56,57.00
step
Cross the bridge |goto 28.29,57.64 < 30 |only if walking
Enter the building |goto 26.43,55.43 < 15 |walk
kill Seeker Xeros##173637 |q 60284/3 |goto 26.05,54.77
|tip Inside the building.
step
talk Ve'nari##162804
turnin Rule 5: Be Audacious##60284 |goto 46.91,41.70
step
Click Here After Reaching Ambivalent Reputation with Ve'nari |confirm
step
talk Ve'nari##162804
accept Rule 6: Concealment is Everything##60285 |goto 46.91,41.70
step
Cross the bridge |goto 44.72,52.00 < 30 |only if walking
use Cypher of Dampening##182955
Use the Cypher of Dampening Within The Beastwarrens |q 60285/1 |goto 45.92,56.14
step
talk Ve'brax##175703
accept Rule 6 Addendum: Save Me At Any Cost##63022 |goto 56.99,57.60
stickystart "Collect_15_Broker_Hunting_Rune"
step
Enter the cave |goto 59.38,51.81 < 20 |walk
kill Runemaster Mavrok##175705 |q 63022/1 |goto 63.21,52.07
|tip Inside the cave.
step
label "Collect_15_Broker_Hunting_Rune"
Kill Rune enemies around this area
collect 15 Broker Hunting Rune##182956 |q 60285/2 |goto 58.39,53.54
step
talk Ve'brax##175703
turnin Rule 6 Addendum: Save Me At Any Cost##63022 |goto 56.99,57.60
step
talk Ve'nari##162804
turnin Rule 6: Concealment is Everything##60285 |goto 46.91,41.70
accept Stalking the Warrens##62461 |goto 46.91,41.70
step
Complete a Hunt in The Beastwarrens |q 62461/1 |goto 54.32,69.88
|tip You will likely need a group for this.
|tip Hunts appear as skull icons over eight-pointed stars on the map.
step
talk Ve'nari##162804
turnin Stalking the Warrens##62461 |goto 46.91,41.70
step
Click Here After Reaching Cordial Reputation with Ve'nari |confirm
step
talk Ve'nari##162804
accept Rule 7: Betrayal is Inevitable##60158 |goto 46.91,41.70
step
collect Broker Device##184314 |q 63022/1
step
kill Ve'brax##175711 |q 63022/2
step
talk Ve'nari##162804
turnin Rule 7: Betrayal is Inevitable##60158 |goto 46.91,41.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Bastion (Threads of Fate)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Bastion\n"..
"\nzone quests and storyline.\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Follow the road |goto Bastion/0 55.92,55.83 < 50 |only if walking
Continue following the road |goto Bastion/0 53.56,69.79 < 50 |only if walking
talk Torgolius##159127
fpath Aspirant's Rest |goto Bastion/0 48.10,74.25
step
talk Klystere##160598
accept The Old Ways##60466 |goto 47.88,73.51
step
talk Caretaker Mirene##160601
home Aspirant's Rest |goto 48.10,72.97
step
talk Caretaker Mirene##160601
buy Elysian Thread##178891 |q 60466/1 |goto 48.10,72.96
stickystart "Collect_Cloudstrider_Pelts"
step
kill Larion Sire##157761+
|tip You can find more on the plateau to the north.
|tip They also fly in the air around this area.
collect 15 Larion Plume##178890 |q 60466/3 |goto 50.28,73.26
step
label "Collect_Cloudstrider_Pelts"
kill Cloudstrider Grazer##168442+
collect 8 Cloudstrider Pelt##178885 |q 60466/2 |goto 50.28,73.26
step
talk Klystere##160598
turnin The Old Ways##60466 |goto 47.88,73.50
accept A Gift for An Acolyte##62714 |goto 47.88,73.50
step
Cross the bridge |goto 51.64,76.75 < 15 |c |q 57712 |future
step
accept Aspirant For a Day##62737 |goto 52.82,80.19
|tip You will accept this quest automatically.
|only if completedq(62716)
stickystart "Aid_The_Aspirants"
step
talk Aspirant Akimos##157138
accept Suggested Reading##57712 |goto 55.39,83.43
step
talk Aspirant Leda##159277
Ask her _"Do you have 'Worlds Beyond Counting'?"_
collect Worlds Beyond Counting##173024 |q 57712/2 |goto 56.09,82.79
step
talk Aspirant Ikaran##159278
Ask him _"Do you have 'The Infinite Treatises'?"_
collect The Infinite Treatises##173025 |q 57712/1 |goto 52.94,82.37
step
Kill enemies around this area
collect Bear Witness: The Watcher's Code##173023 |q 57712/3 |goto 52.77,79.31
step
talk Aspirant Akimos##157138
turnin Suggested Reading##57712 |goto 55.39,83.43
step
label "Aid_The_Aspirants"
Kill enemies around this area
click Lost Library Scroll##363993+
|tip They look like rolled up pieces of paper laying on objects on the ground around this area.
click Adrima's Lily+
|tip They look like large purple flower plants on the ground around this area.
talk Sparring Aspirant##159505+
|tip Challenge them to spar with you.
kill Sparring Aspirant##159505+
Aid the Aspirants |q 62737/1 |goto 52.82,80.19
|tip Fill up the blue bar in the quest tracker area.
Brind any Lost Library Scrolls to Scrollminder Vasi inside the building at [55.68,84.05]
|only if havequest(62737) or completedq(62737)
step
talk Acolyte Amalthina##174900
turnin A Gift for An Acolyte##62714 |goto 53.88,73.96
accept More Than A Gift##62715 |goto 53.88,73.96
step
talk Acolyte Galistos##160647
accept An Inspired Moral Inventory##57444 |goto 54.03,73.94
step
accept Scour the Temple##62705 |goto 55.06,73.63
|tip You will accept this quest automatically.
|only if completedq(62716)
stickystart "Defend_The_Temple"
step
Use the _"Introspection"_ ability
|tip Use it on Forsworn Ascendeds around this area.
|tip They look like dark colored angels either on the ground or flying around this area.
|tip This will make them easier to kill.
kill 3 Forsworn Ascended##157660 |q 57444/1 |goto 58.04,73.47
step
label "Defend_The_Temple"
Kill enemies around this area
talk Terrified Steward##168119+
|tip They look like scared owl NPC's on the ground around this area.
click Forsworn Axiom+
|tip They look like large unrolled scrolls floating above the ground around this area.
click Vesper+
|tip They look like huge bells floating above the ground around this area.
Defend the Temple |q 62705/1 |goto 58.04,73.47
|tip Fill up the blue bar in the quest tracker area.
|only if havequest(62705) or completedq(62705)
step
talk Acolyte Galistos##160647
turnin An Inspired Moral Inventory##57444 |goto 54.03,73.94
step
Follow the road |goto 53.74,65.07 < 50 |only if walking
accept Locus Focus##62732 |goto Bastion/0 55.66,62.93
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
clicknpc Orphaned Memory##174934+
|tip They look like various neutral NPC's on the ground around this area.
click Soul Mirror+
|tip They look like tall stone gateways without the blue glass inside them, like the others have nearby them.
|tip They will appear on your minimap as yellow dots.
Defend the Mnemonic Locus |q 62732/1 |goto 55.66,62.93
|only if havequest(62732) or completedq(62732)
step
accept Hostile Recollection##62735 |goto 58.11,64.52
|tip You will accept this quest automatically.
|only if completedq(62716)
step
label "Repel_The_Forsworn_Threat"
Kill enemies around this area
collect Centurion Anima Core##178149+ |n
|tip You need these to be able to click the Depleted Clawguards.
clicknpc Depleted Clawguard##167387+
|tip They look like robot lions on the ground around this area.
Repel the Felsworn Threat |q 62735/1 |goto 58.87,59.71
|tip Fill up the blue bar in the quest tracker area.
|only if havequest(62735) or completedq(62735)
step
Follow the road |goto 52.46,72.46 < 40 |only if walking	and completedq(62716)
talk Tamesis##158005
accept Garden in Turmoil##57529 |goto 52.32,61.35
step
talk Zosime##158004
turnin Garden in Turmoil##57529 |goto 51.33,59.54
accept Disturbing the Peace##57538 |goto 51.33,59.54
accept Distractions for Kala##57545 |goto 51.33,59.54
stickystart "Slay_Anima_Starved_Creatures"
step
click Mister Mikanikos
collect Mister Mikanikos##172037 |q 57545/2 |goto 49.62,60.02
step
click Kala's Slobber Ball
collect Kala's Slobber Ball##172036 |q 57545/1 |goto 51.11,58.75
step
click Comfy Comfort Pillow
collect Comfy Comfort Pillow##172039 |q 57545/3 |goto 52.87,58.17
step
label "Slay_Anima_Starved_Creatures"
Kill Anima-Starved enemies around this area
Slay #10# Anima-Starved Creatures |q 57538/1 |goto 50.68,58.39
step
talk Zosime##158004
turnin Disturbing the Peace##57538 |goto 51.33,59.54
turnin Distractions for Kala##57545 |goto 51.33,59.54
accept A Test of Courage##57547 |goto 51.33,59.54
step
Enter the building |goto 51.22,56.35 < 10 |walk
click Vesper of Remembrance
|tip Inside the building.
Ring the Bell of Remembrance |q 57547/1 |goto 51.84,54.69
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack in waves
kill Vyrm the Ravenous##158179
Retrieve Korinna's Allaying Crook |q 57547/2 |goto 51.93,54.85
step
talk Zosime##158004
turnin A Test of Courage##57547 |goto 51.21,56.80
accept Tough Love##57568 |goto 51.21,56.80
step
Enter the building |goto 48.89,57.94 < 7 |walk
kill Kala##158254
|tip She will eventually escape when she gets to about 50% health.
|tip Inside the building.
Use the _"Throw Slobber Ball"_ ability
|tip Use it repeatedly as you fight Kala.
|tip This will distract and stun her for a few seconds each time you use it.
click Korinna's Allaying Crook
|tip It appears on the ground nearby when Kala escapes.
collect Korinna's Allaying Crook##172141 |q 57568/1 |goto 45.90,56.72
step
Leave the building |goto 48.89,57.94 < 7 |walk
talk Zosime##158004
turnin Tough Love##57568 |goto 51.33,59.54
step
Cross the bridge |goto 53.69,59.21 < 20 |only if walking
talk Pelodis##158765
accept A Friendly Rivalry##59674 |goto 57.44,54.26
step
click Notice
accept A Fine Journey##59554 |goto 51.93,47.70 |region heros_rest
step
talk Inkiep##160173
home Hero's Rest |goto 53.21,46.86 |region heros_rest
step
accept Maldraxxi Eviction Notice##62736 |goto 41.71,55.27
|tip You will accept this quest automatically.
|only if completedq(62716)
step
talk Disciple Artemede##167584
accept Necrotic Wake: A Paragon's Plight##60057 |goto 40.93,55.34
step
Kill enemies around this area
click Necrotic Extractor+
|tip They look like large green crystals laying on the ground or floating around this area.
|tip They will appear on your minimap as yellow dots.
click Banner+
|tip They look like large bone stands with flags hanging from them on the ground around this area.
Repel the Maldraxxi Threat |q 62736/1 |goto 40.38,57.86
|only if havequest(62736) or completedq(62736)
step
Follow the road |goto 42.50,55.19 < 40 |only if walking
click Cultivated Windblossom
collect Cultivated Windblossom##183967 |q 62715/1 |goto 45.52,59.71
step
talk Keeper Mnemis##158078
turnin A Fine Journey##59554 |goto 46.99,63.45
accept In Agthia's Memory##57549 |goto 46.99,63.45
step
click Scroll of Remembrance
|tip You will be attacked.
Meditate on the First Scroll |q 57549/1 |goto 47.45,66.05
step
click Scroll of Remembrance
Meditate on the Second Scroll |q 57549/2 |goto 44.82,68.75
step
click Scroll of Remembrance
|tip You will be attacked.
Meditate on the Third Scroll |q 57549/3 |goto 44.66,64.34
step
talk Keeper Mnemis##158078
turnin In Agthia's Memory##57549 |goto 46.99,63.45
accept Agthia's Path##57551 |goto 46.99,63.45
step
click Vesper of History
Ring the Vesper of History |q 57551/1 |goto 47.02,63.39
step
talk Agthia##158181
turnin Agthia's Path##57551 |goto 46.54,63.43
accept Warriors of the Void##57552 |goto 46.54,63.43
accept Wicked Gateways##57554 |goto 46.54,63.43
stickystart "Slay_Void_Forces"
step
talk Agthian Defender##158178
accept On Wounded Wings##57553 |goto 46.42,63.63
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.94,63.07 |count 1
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.85,64.99 |count 2
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 46.55,64.98 |count 1
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 46.64,65.76 |count 3
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 46.91,66.92 |count 2
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.34,66.26 |count 4
step
clicknpc Wounded Defender##158319
Heal the Wounded Kyrian |q 57553/1 |goto 45.22,65.58 |count 5
step
click Void Portal
Destroy the Void Portal |q 57554/1 |goto 44.22,65.07 |count 3
step
label "Slay_Void_Forces"
Kill enemies around this area
Slay #15# Void Forces |q 57552/1 |goto 46.10,64.91
step
talk Agthia##158181
turnin Warriors of the Void##57552 |goto 46.54,63.43
turnin Wicked Gateways##57554 |goto 46.54,63.43
turnin On Wounded Wings##57553 |goto 46.54,63.43
accept Shadow's Fall##57555 |goto 46.54,63.43
step
Follow the path up |goto 46.32,67.22 < 20 |only if walking
kill Tezulat the Annihilator##158290 |q 57555/1 |goto 44.90,68.72
|tip Agthia will help you fight.
step
talk Keeper Mnemis##158078
turnin Shadow's Fall##57555 |goto 46.99,63.45
step
talk Acolyte Amalthina##174900
turnin More Than A Gift##62715 |goto 53.87,73.95
step
Follow the path up |goto 54.65,37.35 < 20 |only if walking
talk Pelodis##158765
turnin A Friendly Rivalry##59674 |goto 54.78,41.16
accept Phalynx Malfunction##57931 |goto 54.78,41.16
step
talk Hopo##159609
accept Resource Drain##57932 |goto 54.79,41.25
step
talk Nemea##157696
accept Part of the Pride##58037 |goto 57.26,39.21
step
talk Tamed Larion##158767+
|tip They look like lions with wings on the ground around this area.
Meet #5# Tamed Larions |q 58037/1 |goto 57.11,40.10
step
talk Nemea##157696
turnin Part of the Pride##58037 |goto 57.27,39.21
accept All Natural Chews##58038 |goto 57.27,39.21
accept Larion at Large##58039 |goto 57.27,39.21
stickystart "Drain_Cloudstrider_Anima"
stickystart "Collect_Cloudstrider_Antlers"
step
talk Andira##160189
|tip She runs away from you.
|tip Keep chasing her until you can click her.
Retrieve Andira |q 58039/1 |goto 56.04,44.13
step
label "Drain_Cloudstrider_Anima"
use the Anima Drainer##173691
|tip Use it on Gilded Cloudstriders.
|tip They will attack you.
Drain #5# Cloudstrider Anima |q 57932/1 |goto 57.24,44.61
step
label "Collect_Cloudstrider_Antlers"
kill Gilded Cloudstrider##159298+
collect 5 Cloudstrider Antler##173690 |q 58038/1 |goto 57.24,44.61
step
clicknpc Gatamatos##159641
Find Gatamatos |q 57931/1 |goto 54.86,43.54
stickystart "Return_Gatamatos"
step
Follow the path up |goto 57.04,44.18 < 20 |only if walking
Return Andira |q 58039/2 |goto 57.27,39.21
step
talk Nemea##157696
turnin All Natural Chews##58038 |goto 57.26,39.21
turnin Larion at Large##58039 |goto 57.26,39.21
accept With Lance and Larion##58040 |goto 57.26,39.21
accept Providing for the Pack##58041 |goto 57.26,39.21
step
label "Return_Gatamatos"
clicknpc Gatamatos##159675
|tip He will follow you.
|tip Click him when you see a message telling you to reactivate him.
|tip Make sure he stays with you.
Return Gatamatos |q 57931/2 |goto 55.40,42.06
step
talk Hopo##159609
turnin Resource Drain##57932 |goto 54.79,41.24
step
talk Pelodis##158765
turnin Phalynx Malfunction##57931 |goto 54.78,41.17
accept We Can Rebuild Him##57933 |goto 54.78,41.17
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57933/1 |goto 55.39,42.06
step
clicknpc Gatamatos##159835
Bring Gatamatos to the Build Rig |q 57933/2 |goto 54.60,40.36
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.42,40.97 |count 1
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.38,40.88 |count 2
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.36,41.16 |count 3
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.63,41.63 |count 4
step
click Reinforced Armor
collect Reinforced Armor##173307 |q 57933/5 |goto 54.50,41.77 |count 5
step
talk Forgefire Engineer##159410+
|tip They look like small owl people on the ground around this area.
|tip Make sure 3 of them are following you.
Click Here to Continue |confirm |goto 54.59,41.41 |q 57933
step
click Anima Barrel
Carry the Anima Barrel |havebuff 132620 |goto 54.46,41.37 |q 57933
step
Escort #3# Forgefire Engineers |q 57933/3 |goto 54.63,40.55
step
click Anima Barrel
Bring Over the Anima Barrel |q 57933/4 |goto 54.63,40.55
step
click Reinforced Armor+
|tip They look like yellow floating plates around this area.
|tip There are 5 of them.
Place #5# Reinforced Armor |q 57933/6 |goto 54.53,40.34
step
talk Pelodis##158765
Tell him _"Everything is in place for the repair."_
Watch the dialogue
Talk to Pelodis to Finish Repair |q 57933/7 |goto 54.72,40.40
step
talk Pelodis##158765
|tip He walks to this location.
turnin We Can Rebuild Him##57933 |goto 54.78,41.16
accept Combat Drills##57934 |goto 54.78,41.16
accept Laser Location##57935 |goto 54.78,41.16
step
talk Hopo##159609
accept Superior Programming##57936 |goto 54.79,41.25
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57935/1 |goto 55.39,42.06
Retrieve Gatamatos |q 57934/1 |goto 55.39,42.06 |only if not havequest(57935)
stickystart "Collect_Training_Gems"
stickystart "Slay_Agitated_Etherwyrms_With_Gatamatos"
step
Enter the building |goto 55.70,42.83 < 7 |walk
kill Leonid##159612 |q 57936/1 |goto 55.93,39.88
|tip Inside the building.
step
label "Collect_Training_Gems"
Use the _"Order Search"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
collect 6 Training Gem##173269 |q 57935/2 |goto 56.37,40.73
step
label "Slay_Agitated_Etherwyrms_With_Gatamatos"
kill Agitated Etherwyrm##159610
|tip Inside the building.
Slay #8# Agitated Etherwyrms with Gatamatos |q 57934/2 |goto 56.37,40.73
stickystart "Collect_Cloudfeather_Essences"
step
Leave the building |goto 55.70,42.83 < 7 |walk
Follow the path up |goto 55.50,45.57 < 20 |only if walking
use Nemea's Javelin##173692
|tip Use it on Cloudfeather Greatwings that are flying too high to reach.
|tip They look like large white birds flying around this area.
kill 5 Cloudfeather Greatwing##159192 |q 58040/1 |goto 56.07,47.27
step
label "Collect_Cloudfeather_Essences"
kill Juvenile Cloudfeather##159289+
collect 10 Cloudfeather Essence##173702 |q 58041/1 |goto 56.07,47.27
step
Follow the path up |goto 57.05,44.23 < 20 |only if walking
talk Nemea##157696
turnin With Lance and Larion##58040 |goto 57.27,39.21
turnin Providing for the Pack##58041 |goto 57.27,39.21
accept On Larion Wings##58042 |goto 57.27,39.21
step
talk Andira##160255
Mount Andira |q 58042/1 |goto 56.88,39.35
step
_As You Fly:_
Fly Through the Rings |q 58042/2 |goto 57.18,39.31
|tip They look like rings of smoke with blue spirals inside them in the air around this area.
|tip Fly through them to fill up the blue bar in the quest tracker area.
step
Return to Nemea |goto 57.23,39.32 < 10 |c |q 58042 |notravel
step
talk Nemea##157696
turnin On Larion Wings##58042 |goto 57.26,39.21
step
talk Pelodis##158765
turnin Combat Drills##57934 |goto 54.78,41.16
turnin Laser Location##57935 |goto 54.78,41.16
step
talk Hopo##159609
turnin Superior Programming##57936 |goto 54.79,41.24
step
talk Pelodis##158765
accept Tactical Formation##57937 |goto 54.78,41.17
step
clicknpc Gatamatos##159697
Retrieve Gatamatos |q 57937/1 |goto 55.40,42.07
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the Line Formation |q 57937/2 |goto 55.06,41.57
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the V Formation |q 57937/3 |goto 55.04,41.65
step
Watch the dialogue
clicknpc Gatamatos##159915
Complete the Cross Formation |q 57937/4 |goto 55.20,41.54
step
clicknpc Gatamatos##159675
Return Gatamatos |q 57937/5 |goto 55.39,42.05
step
talk Pelodis##158765
|tip He walks to this location.
turnin Tactical Formation##57937 |goto 54.78,41.17
accept Pride or Unit##58103 |goto 54.78,41.17
step
Meet with Pelodis and Nemea |q 58103/1 |goto 55.77,39.41
step
_Make Your Choice:_
|tip You now have to make a choice of which companion you want.
|tip There is speculation that you will be able to get whichever you choose as a mount in the future, but this isn't confirmed.
|tip The Phalynx is the mechanical lion.
|tip The Larion is the lion with wings.
Choose Phalynx |q 60293 |future |goto 55.77,39.41 |or |next "Phalynx"
Choose Larion |q 60294 |future |goto 55.77,39.41 |or |next "Larion"
step
label "Phalynx"
talk Pelodis##158765
Tell him _"I choose the phalynx."_
Choose the Phalynx |q 58103/4 |goto 55.72,39.49
step
talk Pelodis##158765
turnin Pride or Unit##58103 |goto 55.72,39.49
|next "Continue_After_Phalynx_Larion_Choice"
step
label "Larion"
talk Nemea##157696
Tell her _"I choose the larion."_
Choose the Larion |q 58103/4 |goto 55.82,39.36
step
talk Pelodis##158765
turnin Pride or Unit##58103 |goto 55.72,39.49
|next "Continue_After_Phalynx_Larion_Choice"
step
label "Continue_After_Phalynx_Larion_Choice"
Cross the bridge |goto 44.80,47.61 < 15 |only if walking
Cross the bridge |goto 44.46,36.76 < 15 |only if walking
talk Klassia##159125
fpath Sagehaven |goto 44.08,32.45
step
Follow the road |goto 41.43,23.95 < 30 |only if walking
talk Adrina##175457
fpath Terrace of the Collectors |goto 35.80,21.07
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Maldraxxus (Threads of Fate)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Maldraxxus:\n\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Slumbar Valorum##161702
home Theater of Pain |goto Maldraxxus/0 50.95,53.17
step
accept Avoid 'Em Like the Plague##62742 |goto 55.87,64.49
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Plague Refuse+
|tip They look like green steaming piles of slime on the ground around this area.
click Cleansing Formula+
|tip They look like small glass vials of yellow liquid on the ground around this area.
|tip It grants a "Cleansing Formula" ability that appears as a button on the screen.
|tip Use the ability on Plague-ridden enemies around this area.
Aid the House of Plagues Survivors |q 62742/1 |goto 58.81,61.73
|only if havequest(62742) or completedq(62742)
step
Run up the stairs |goto 57.83,66.73 < 15 |only if walking
talk Judas Sneap##165049
accept Plagues Aid##59430 |goto 58.06,72.11
step
talk Vradira Livid##157515
fpath Plague Watch |goto 58.14,72.45
step
talk Vial Master Lurgy##165052
Ask him _"Is there any way I can help?"_
Speak with Vial Master Lurgy |q 59430/1 |goto 59.45,72.98
step
talk Vial Master Lurgy##165052
accept Plaguefall: Knee Deep In It##59520 |goto 59.45,72.98
step
talk Foul-Tongue Cyrlix##157313
Ask him _"Is there any way I can help?"_
Speak with Foul-Tongue Cyrlix |q 59430/2 |goto 58.53,73.45
step
talk Boil Master Yetch##157945
Ask him _"Is there any way I can help?"_
Speak with Boil Master Yetch |q 59430/3 |goto 59.10,73.87
step
talk Boil Master Yetch##157945
turnin Plagues Aid##59430 |goto 59.10,73.87
accept Pool of Potions##58431 |goto 59.10,73.87
step
Enter the building |goto 58.47,79.30 < 10 |walk
kill Blossoming Deathshade##164759
|tip Inside the building.
collect Solanum Cerinthe##175410 |q 59223/1 |goto 57.90,80.45
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 1
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 2
step
kill Burning Extract##165027+
click Viscous Oil+
|tip It can appear on the ground after you kill Burning Extracts.
Collect Viscous Oil |havebuff 136168 |goto 59.28,75.76 |q 58431
step
Deliver the Viscous Oil to the Pool of Potions |q 58431/1 |goto 59.05,74.18 |count 3
step
talk Boil Master Yetch##157945
turnin Pool of Potions##58431 |goto 59.10,73.88
step
talk Plague Deviser Marileth##159930
turnin By Any Other Name##59223 |goto 60.49,71.66
accept Fit For a Margrave##60831 |goto 60.49,71.66
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.56,71.81 |count 1
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.41,71.18 |count 2
step
click Potion Chamber
Form the Potion |q 60831/2 |goto 60.66,71.40
step
Watch the dialogue
click Rune of Insight
Collect the Rune of Insight |q 60831/3 |goto 60.66,71.40
step
talk Plague Deviser Marileth##159930
turnin Fit For a Margrave##60831 |goto 60.49,71.65
accept Fathomless Power##59231 |goto 60.49,71.65
step
Follow the path |goto 58.22,70.94 < 30 |only if walking
Follow the road |goto 58.19,60.43 < 30 |c |q 62785 |future
step
accept Decaying Situation##62743 |goto Maldraxxus/0 64.32,55.79
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Bone Stake+
|tip They look like bone spikes with ropes connecting to flying creatures on the ground around this area.
Secure Glutharn's Decay |q 62743/1 |goto 63.27,51.39
|only if havequest(62743) or completedq(62743)
step
Follow the path up |goto 62.03,46.94 < 15 |only if walking and completedq(62716)
Follow the path |goto 64.74,48.16 < 30 |only if walking and completedq(62716)
talk Felsen Wingclip##157516
fpath Renounced Bastille |goto 67.93,45.84
step
talk Anzio The Infallible##161733
accept I Could Be A Contender##62785 |goto 50.58,51.62
step
Run up the stairs |goto 51.89,46.50 < 15 |only if walking
Leave the building |goto 54.91,45.04 < 15 |only if walking
talk Louison##161559
turnin I Could Be A Contender##62785 |goto 54.48,48.59
accept The Last Guy##59781 |goto 54.48,48.59
accept How To Get A Head##59750 |goto 54.48,48.59
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
accept ...Even The Most Ridiculous Request!##58068 |goto 54.14,50.60
step
talk Gunn Gorgebone##159824
Ask him _"Is there anything you need?"_
Speak with Gunn Gorgebone |q 58068/1 |goto 53.79,51.18
step
Watch the dialogue
Use the _"Cheer!"_ ability
|tip It appears as a button on the screen.
Watch the Gunn Show |q 58068/2 |goto 53.79,51.18
step
talk Scrapper Minoire##159827
Ask her _"Is there anything you need?"_
Speak with Scrapper Minoire |q 58068/3 |goto 53.81,50.53
step
talk Rencissa the Dynamo##159696
Ask her _"Is there anything you need?"_
Speak with Rencissa the Dynamo |q 58068/4 |goto 54.08,51.68
step
click The Biggest Rock You Can Find
Carry the Rock |havebuff spell:344657 |goto 54.21,51.19 |q 58068
step
talk Rencissa the Dynamo##159696
Tell her _"Here. This is the biggest rock I could find."_
Bring Rencissa the Biggest Rock You Can Find |q 58068/5 |goto 54.08,51.69
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
turnin ...Even The Most Ridiculous Request!##58068 |goto 54.14,50.60
step
talk Scrapper Minoire##159827
accept Juicing Up##58088 |goto 53.81,50.53
step
talk So'narynar##159833
turnin Juicing Up##58088 |goto 53.70,47.92
accept Side Effects##58090 |goto 53.70,47.92
step
talk Au'larrynar##166640
buy Necessary Enhancers##177957 |n
Purchase the Necessary Enchancers from Au'larrynar |q 58090/1 |goto 53.63,47.93
step
talk Scrapper Minoire##159827
Tell her _"Here's the enhancers you wanted."_
Deliver the Enhancers to Scrapper Minoire |q 58090/2 |goto 53.81,50.53
step
talk Overseer Kalvaros##159689
|tip He walks around this area.
turnin Side Effects##58090 |goto 54.03,50.86
step
kill Predatory Bloodtusk##158752+
use Louison's Gristle Cutter##177835
|tip Use it near their corpses.
collect 12 Bloodtusk Skull##177837 |q 59750/1 |goto 57.24,47.07
step
talk Marcel Mullby##161710
Tell him _"I have some bloodtusk skulls for you."_
Deliver the Skulls to Marcel Mullby |q 59750/2 |goto 54.49,49.54
step
talk Louison##161559
turnin How To Get A Head##59750 |goto 54.48,48.59
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 54.60,33.51 |count 1
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.04,33.02 |count 2
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.69,33.86 |count 3
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 55.64,34.52 |count 4
step
clicknpc Dead Newcomer##166186
Locate the Dead Newcomer |q 59781/1 |goto 56.28,34.06 |count 5
step
kill Deadeye##165566 |q 59781/2 |goto 55.57,32.51
step
Follow the path up |goto 54.70,32.68 < 15 |only if walking
talk Fly-eyed Eliera##157517
fpath Keres' Rest |goto 53.82,30.69
step
Follow the path |goto 56.00,46.28 < 50 |only if walking
talk Louison##161559
turnin The Last Guy##59781 |goto 54.48,48.59
accept Stuff We All Get##58575 |goto 54.48,48.59
accept Team Spirit##59800 |goto 54.48,48.59
stickystart "Collect_Weapons_Of_The_Fallen"
step
Enter the building |goto 54.92,45.03 < 15 |only if walking
use the Flask of Team Spirit##177877
|tip Use it on Arena Challengers.
|tip They look like neutral NPC's on the ground around this area.
Splash #15# Arena Challengers with the Flask of Team Spirit |q 59800/1 |goto 50.88,47.06
step
label "Collect_Weapons_Of_The_Fallen"
click Discarded Weapon+
|tip They look like various shaped weapons on the ground around this area.
collect 12 Weapons of the Fallen##174324 |q 58575/1 |goto 50.88,47.06
step
Run up the stairs |goto 51.89,46.50 < 15 |only if walking
Leave the building |goto 54.91,45.04 < 15 |only if walking
talk Louison##161559
turnin Stuff We All Get##58575 |goto 54.48,48.59
turnin Team Spirit##59800 |goto 54.48,48.59
accept Test Your Mettle##58947 |goto 54.48,48.59
step
talk Valuator Malus##163083
Tell him _"Very well. Let us fight."_
kill Valuator Malus##163083
Defeat Valuator Malus |q 58947/1 |goto 53.69,49.33
step
talk Tester Sahaari##163084
Tell her _"Very well. Let us fight."_
kill Tester Sahaari##163084
Defeat Tester Saharri |q 58947/2 |goto 55.11,46.67
step
talk Louison##161559
turnin Test Your Mettle##58947 |goto 54.48,48.59
accept This Thing Of Ours##59879 |goto 54.48,48.59
step
talk Au'narim##159830
turnin This Thing Of Ours##59879 |goto 53.60,47.51
accept Leave Me a Loan##59203 |goto 53.60,47.51
step
talk Arena Spectator##164507+
|tip They look like various highlighted neutral NPC's on the ground around this area.
Tell them _"Au'narim claims you owe her anima."_
|tip Some of them may attack you.
collect 6 Anima Vial##175413 |q 59203/1 |goto 54.05,49.97
step
talk Au'narim##159830
turnin Leave Me a Loan##59203 |goto 53.60,47.51
accept Working For The Living##59837 |goto 53.60,47.51
step
click Broker Portal
Use the Broker Portal |q 59837/1 |goto 53.70,47.22
step
Kill enemies around this area
click Broker Cagetrap+
|tip They look like large yellow cylinder portals on the ground around this area.
Secure the Shattered Grove |q 59837/2 |goto Shattered Grove/0 40.38,55.82
|tip Fill up the blue bar in the quest tracker area.
step
kill Khogov The Expunger##166382 |q 59837/3 |goto 67.39,56.30
|tip He walks around this area.
step
click Broker Portal
Use the Broker Portal |q 59837/4 |goto 14.80,39.05
step
talk Au'narim##159830
turnin Working For The Living##59837 |goto Maldraxxus/0 53.60,47.51
step
talk Louison##161559
accept A Sure Bet##58900 |goto 54.48,48.59
step
talk Anzio The Infallible##161733
turnin A Sure Bet##58900 |goto 50.58,51.62
step
Follow the road |goto 46.65,53.35 < 40 |only if walking
talk Caleesy##162615
accept Smack And Grab##58785 |goto 47.00,49.04
step
talk Dundae##162474
accept Take The Bull By The Horns##58750 |goto 46.88,48.58
stickystart "Capture_Neonate_Bonetooths"
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 1
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 2
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 3
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 4
step
click Juicy Nibbler+
|tip They look like green grubs on the ground around this area.
collect Juicy Nibbler##174751+ |n
use the Bone Splinter##174749
|tip Use it on a Bloodskin Tauralus.
|tip You need a Juicy Nibbler to be able to use it.
Begin Riding a Bloodskin Taralus |havebuff spell:316323 |goto 44.61,50.30 |q 58750
step
Return the Bloodskin Tauraluses |q 58750/1 |goto 46.86,48.69 |count 5
step
talk Dundae##162474
turnin Take The Bull By The Horns##58750 |goto 46.88,48.58
step
label "Capture_Neonate_Bonetooths"
kill Neonate Bonetooth##162589+
|tip They will eventually become stunned.
click Neonate Bonetooth##162589+
|tip Click them when they become stunned.
Capture #10# Neonate Bonetooths |q 58785/1 |goto 44.61,50.30
step
talk Caleesy##162615
turnin Smack And Grab##58785 |goto 47.00,49.04
step
talk Dundae##162474
accept Stabbing Wasteward##58794 |goto 46.88,48.58
step
kill Satiated Sawtooth##164587 |q 58794/1 |goto 42.41,48.60
step
talk Dundae##162474
turnin Stabbing Wasteward##58794 |goto 46.88,48.58
step
accept Choice of Action##62741 |goto 42.06,59.19
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Chosen Banner+
|tip They look like red flags handing from bone totems on the ground around this area.
click Powerful Swiftblade+
|tip They look like swords stuck in the ground around this area.
click Chosen Battlearmor+
|tip They looke like dark grey metal pieces of armor on the ground around this area.
click Reinforced Bindings+
|tip They look like flat silver sheets of metal on the ground around this area.
click Volatile Runes+
|tip They look like white unrolled scrolls on the ground around this area.
Attack the House of the Chosen |q 62741/1 |goto 41.06,61.08
|only if havequest(62741) or completedq(62741)
step
talk Wing Guard Aela##157519
fpath The Spearhead |goto 39.03,55.24
step
accept War of Attrition##62712 |goto 39.03,55.24
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
clicknpc Injured Vanguard##174898+
|tip They look like skeletons and brutes kneeling, laying, or sitting on the ground around this area.
click Construct Supplies+
|tip They look like piles of bone crates on the ground around this area.
Wear Down the Enemy Forces |q 62712/1 |goto 37.60,49.52
|only if havequest(62712) or completedq(62712)
step
Follow the road |goto 37.67,55.51 < 20 |only if walking
Continue following the road |goto 33.20,53.17 < 20 |only if walking
Follow the path down |goto 30.68,50.99 < 15 |only if walking
Follow the path |goto 26.02,45.48 < 20 |only if walking
talk Synder Sixfold##157076
|tip He walks around this area.
accept The Aetherlife##57245 |goto 26.40,42.71
step
Follow the path |goto 26.23,46.10 < 10 |only if walking
Run down the stairs |goto 27.51,47.61 < 15 |only if walking
Kill Animate enemies around this area
use the Aetherlife Orb##175827
|tip Use it next to their corpses.
|tip You can also use it next to Bone Remains.
|tip They look like piles of white bones on the ground around this area.
|tip Some of them may attack you.
talk Recruitable Animate##157130+
|tip Some of them will become recruitable, and you need to talk to them to recruit them.
Tell them _"Maldraxxus needs your service. Will you fight?"_
Recruit #15# Animates |q 57245/1 |goto 28.22,43.91
step
Run up the stairs |goto 27.89,44.87 < 10 |only if walking
Follow the path |goto 27.25,47.56 < 10 |only if walking
Follow the path |goto 26.02,45.48 < 20 |only if walking
talk Synder Sixfold##157076
|tip He walks around this area.
turnin The Aetherlife##57245 |goto 26.40,42.71
step
Follow the path down |goto 25.43,42.06 < 20 |only if walking
accept Deconstructing The Problem##62721 |goto 31.67,32.51
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
collect Prisoner Cage Key##183987+ |n
click Prisoner Cage+
|tip They look like bone cages on the ground around this area.
clicknpc Vestigial Animate##165084+
|tip They look like small arms reaching out of the ground in the pit nearby this location.
|tip Run away from them after clicking them, to pull them out of the ground.
Disrupt the Construct House Operations |q 62721/1 |goto 31.87,31.80
|only if havequest(62721) or completedq(62721)
step
Run down the stairs |goto 33.88,33.39 < 15 |only if walking
Follow the path up |goto 36.57,33.65 < 10 |only if walking
talk Flight Master Nudolva##157518
fpath Spider's Watch |goto 37.51,29.22
step
click Forgotten Supplies
accept Broker Business##62605 |goto 38.20,31.30
step
Enter the tunnel |goto 38.63,32.88 < 15 |only if walking
talk Ta'eran##166657
turnin Broker Business##62605 |goto 40.66,33.07
accept Read Between the Lines##58619 |goto 40.66,33.07
step
talk Ta'eran##166657
Tell him _"Tell me about this opportunity."_
Begin Following Ta'eran |goto 40.66,33.07 > 15 |c |q 58619
step
Watch the dialogue
|tip Follow Ta'eran as he walks.
|tip He eventually walks to this location.
Listen to Ta'eran's Proposal |q 58619/1 |goto 43.08,25.11
step
talk Ta'eran##166664
turnin Read Between the Lines##58619 |goto 43.08,25.11
accept Repeat After Me##58621 |goto 43.08,25.11
accept Kill Them Of Course##59917 |goto 43.08,25.11
stickystart "Kill_Enraged_Gluttons"
step
Enter the cave |goto 41.61,28.34 < 10 |walk
Kneel Before the Runestone of Rituals |script DoEmote("KNEEL")
|tip Make sure you are targeting the Runestone of Rituals.
|tip Inside the cave.
kill Echo of the Magus##162401 |q 58621/4 |goto 41.13,27.90
|tip It appears after you kneel.
step
Bleed Before the Runestone of Plague |script DoEmote("BLEED")
|tip Make sure you are targeting the Runestone of Plague.
kill Echo of the Chemist##162402 |q 58621/3 |goto 40.70,31.10
|tip It appears after you bleed.
step
Enter the cave |goto 43.90,34.69 < 10 |walk
Salute the Runestone of Rituals |script DoEmote("SALUTE")
|tip Make sure you are targeting the Runestone of Chosen.
|tip Inside the cave.
kill Echo of the Hero##162400 |q 58621/1 |goto 44.11,35.49
|tip It appears after you salute.
step
Flex Before the Runestone of Constructs |script DoEmote("FLEX")
|tip Make sure you are targeting the Runestone of Constructs.
kill Echo of the Crafter##162403 |q 58621/5 |goto 47.26,35.67
|tip It appears after you flex.
step
Enter the cave |goto 45.73,28.63 < 10 |walk
Sneak Before the Runestone of Eyes |script DoEmote("SNEAK")
|tip Make sure you are targeting the Runestone of Eyes.
|tip Inside the cave.
kill Echo of the Spy##162399 |q 58621/2 |goto 46.23,28.69
|tip It appears after you sneak.
step
label "Kill_Enraged_Gluttons"
kill 8 Enraged Glutton##163415 |q 59917/1 |goto 43.69,28.81
step
talk Ta'eran##166664
turnin Repeat After Me##58621 |goto 43.08,25.11
turnin Kill Them Of Course##59917 |goto 43.08,25.11
accept Slaylines##58620 |goto 43.08,25.11
step
Locate the East Power Crystal |q 58620/1 |goto 45.89,29.88
step
click Power Crystal
|tip Click it twice.
|tip The blue line should be pointing west to the dark crystal.
Click Here to Continue |confirm |goto 45.89,29.88 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing north.
Click Here to Continue |confirm |goto 44.96,29.55 |q 58620
step
Locate the West Power Crystal |q 58620/2 |goto 42.14,31.10
step
click Power Crystal
|tip Click it once.
|tip The blue line should be pointing east to the dark crystal.
Click Here to Continue |confirm |goto 42.14,31.10 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing northeast.
Click Here to Continue |confirm |goto 43.18,30.83 |q 58620
step
click Activated Necrocrystal
|tip The blue line should be pointing north.
Click Here to Continue |confirm |goto 43.06,28.53 |q 58620
step
click Unlocking Obelisk
Activate the West Unlocking Obelisk |q 58620/3 |goto 42.73,27.22
step
click Unlocking Obelisk
Activate the East Unlocking Obelisk |q 58620/4 |goto 43.38,26.84
step
talk Ta'eran##166664
turnin Slaylines##58620 |goto 43.08,25.11
accept Secrets Among the Shelves##58622 |goto 43.08,25.11
step
Enter the building |goto 42.33,24.26 < 10 |walk
click Alver's Annals of Strategy
|tip Click the Tower Door and walk into the building.
|tip Inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 42.46,23.62 |count 1
step
click How Not To Lose
|tip Inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 42.05,23.01 |count 1
step
click World of Crafting War
|tip Inside the building.
Retrive the World of Crafting War |q 58622/3 |goto 42.02,23.02 |count 1
step
click Guide To Marching
|tip Inside the building.
Retrieve the Guide To Marching |q 58622/1 |goto 41.93,23.35
step
click Beginners Guide To Polearms
|tip Inside the building.
Retrieve the Beginners Guide To Polearms |q 58622/5 |goto 41.95,23.60 |count 1
step
click How Not To Lose
|tip Upstairs inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 41.59,23.27 |count 2
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.31,22.92 |count 1
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.32,23.37 |count 2
step
click World of Crafting War
|tip Upstairs inside the building.
Retrive the World of Crafting War |q 58622/3 |goto 42.33,23.30 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 42.05,23.03 |count 2
step
click War, is it art?
|tip Upstairs inside the building.
Retrieve War, is it art? |q 58622/4 |goto 42.02,23.04 |count 1
step
click War, is it art?
|tip Upstairs inside the building.
Retrieve War, is it art? |q 58622/4 |goto 41.90,23.39 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.89,23.56 |count 3
step
click Pretend To Win
|tip Upstairs inside the building.
Retrieve Pretend To Win |q 58622/6 |goto 42.29,22.93 |count 3
step
click How Not To Lose
|tip Upstairs inside the building.
Retrieve How Not To Lose |q 58622/7 |goto 42.16,23.55 |count 3
step
click Krexus's Guide To War
|tip Upstairs inside the building.
Retrive Krexus's Guide To War |q 58622/2 |goto 42.20,23.22
step
click Beginners Guide To Polearms
|tip Upstairs inside the building.
Retrieve the Beginners Guide To Polearms |q 58622/5 |goto 42.00,23.10 |count 2
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.93,23.04 |count 4
step
click Alver's Annals of Strategy
|tip Upstairs inside the building.
Retrieve Alver's Annals of Strategy |q 58622/8 |goto 41.77,22.89 |count 5
step
talk Ta'eran##170667
|tip Upstairs inside the building.
turnin Secrets Among the Shelves##58622 |goto 41.80,23.65
accept Archival Protection##60900 |goto 41.80,23.65
step
kill The Archivist##161896 |q 60900/1 |goto 42.16,23.46
|tip Upstairs inside the building.
step
_Next to you:_
talk Ta'eran
turnin Archival Protection##60900
accept Trust Fall##59994
step
Jump from the Tower |q 59994/1 |goto 42.31,24.16
|tip Try to jump into the green circle rune floating in the air nearby.
|tip You will not die.
step
Reach the Sepulcher of Knowledge |goto 45.31,32.05 < 10 |noway |c |q 59994
step
click Volumes of Victory: Vol 1
|tip Inside the building.
collect Volume of Victory: Vol 1##178020 |q 59994/2 |goto 45.50,32.08
step
talk Ta'eran##166806
|tip Inside the building.
turnin Trust Fall##59994 |goto 45.17,32.13
accept A Complete Set##58623 |goto 45.17,32.13
step
click Volumes of Victory+
|tip They look like highlighted books with various names around this area.
|tip Inside the building.
Collect #5# Several Volumes |q 58623/1 |goto 45.29,32.08
step
click Volumes of Victory+
|tip They look like highlighted books and paper pages with various names around this area.
|tip Inside the building.
Take #72# More Volumes |q 58623/2 |goto 45.29,32.08
step
talk Ta'eran##166806
|tip Inside the building.
turnin A Complete Set##58623 |goto 45.17,32.13
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Ardenweald (Threads of Fate)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Ardenweald:\n\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Nolon##162446
home Tirna Vaal |goto Ardenweald/0 62.56,35.31
step
Cross the bridge |goto 65.79,27.83 < 15 |only if walking
accept The Waning Grove##62775 |goto 67.16,26.58
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
talk Heartwood Grove Holdout##157949+
|tip They look like various neutral NPC's on the ground around this area.
Tell them _"Evacuate, now!"_
click Drained Wildseed+
|tip They look like large round seeds with green tips on the ground at the base of trees around this area.
Preserve Heartwood Grove |q 62775/1 |goto 68.62,26.21
|only if havequest(62775) or completedq(62775)
step
talk Guardian Kota##158921
accept In Need of Gorm Gris##57952 |goto 62.61,36.08
step
talk Lanra##165164
fpath Tirna Vaal |goto 63.46,37.56
step
talk Brigdin##160440
accept Forest Disappearances##58161 |goto 64.39,35.18
step
talk Partik##160439
turnin Forest Disappearances##58161 |goto 70.35,32.60
accept Cult of Personality##58164 |goto 70.35,32.60
accept Mysterious Masks##58162 |goto 70.35,32.60
stickystart "Free_Captives"
stickystart "Collect_Featureless_Masks"
step
click Battered Journal
accept A Desperate Solution##58163 |goto 72.19,33.86
step
click Torn Journal Page
collect Torn Journal Page##173872 |q 58163/3 |goto 73.48,33.80
step
Enter the cave |goto 72.43,34.20 < 7 |walk
click Stained Journal Page
|tip Inside the cave.
collect Stained Journal Page##155876 |q 58163/1 |goto 73.46,34.21
step
Leave the cave |goto 72.78,35.50 < 10 |walk
click Crumpled Journal Page
collect Crumpled Journal Page##173873 |q 58163/2 |goto 71.82,38.15
step
label "Free_Captives"
click Enchanted Cage+
|tip They look like wooden cages on the ground around this area.
Free #8# Captives |q 58164/1 |goto 72.64,35.99
step
label "Collect_Featureless_Masks"
Kill Masked enemies around this area
collect 15 Featureless Mask##173800 |q 58162/1 |goto 72.64,35.99
step
talk Partik##160439
turnin Cult of Personality##58164 |goto 70.35,32.60
turnin Mysterious Masks##58162 |goto 70.35,32.60
turnin A Desperate Solution##58163 |goto 70.35,32.60
accept The Crumbling Village##59802 |goto 70.35,32.60
step
talk Partik##160439
turnin The Crumbling Village##59802 |goto 74.32,32.35
accept Cut the Roots##58165 |goto 74.32,32.35
accept Take the Power##59801 |goto 74.32,32.35
stickystart "Collect_Animacones_59801"
step
Follow the path |goto 75.26,32.64 < 15 |only if walking
kill Fiona Bleakthorn##160445 |q 58165/1 |goto 75.61,34.20
step
Follow the path |goto 76.49,31.35 < 15 |only if walking
kill Wildtwister Lewor##160295 |q 58165/3 |goto 75.86,30.91
step
kill Bitterfly##160442 |q 58165/2 |goto 73.94,31.06
|tip He flies low to the ground around this area.
step
label "Collect_Animacones_59801"
click Animacone+
|tip They look like large white and blue acorns on the ground around this area.
collect 8 Animacone##177878 |q 59801/1 |goto 75.13,31.96
step
talk Partik##160439
turnin Cut the Roots##58165 |goto 74.32,32.35
turnin Take the Power##59801 |goto 74.32,32.35
accept Unknown Assailants##58166 |goto 74.32,32.35
step
talk Droman Tashmur##158487
turnin Unknown Assailants##58166 |goto 63.49,36.28
step
accept Tranquil Pools##62774 |goto 64.86,38.95
|tip You will accept this quest automatically.
|only if completedq(62716)
step
talk Master Sha'lor##158969
turnin In Need of Gorm Gris##57952 |goto 64.86,38.95
accept Nothing Goes to Waste##57818 |goto 64.86,38.95
step
click Depleted Wildseed
collect Depleted Wildseed##172953 |q 57818/1 |goto 65.00,38.96
step
click Depleted Wildseed
Place the Depleted Wildseed |q 57818/2 |goto 65.40,39.03
step
clicknpc Docile Gormling##158967+
|tip They will begin following you, but will lose interest along the way.
|tip Click them again when they lose interest.
|tip Lead them to the Depleted Wildseed nearby.
|tip It will appear on your minimap as a yellow dot.
|tip Fill up the blue bar in the quest tracker area.
Coax Gormlings to the Wildseed |q 57818/3 |goto 65.67,38.29
step
talk Master Sha'lor##158969
turnin Nothing Goes to Waste##57818 |goto 64.86,38.95
accept Collection Day##57824 |goto 64.86,38.95
step
use the Gormherd Branch##172955
|tip Use it on Gloober.
Use the Gormherd Branch on Gloober |q 57824/1 |goto 64.83,38.94
step
Watch the dialogue
click Gorm Gris
collect Fresh Gorm Gris##173268 |q 57824/2 |goto 64.85,38.88
step
use the Gormherd Branch##172955
|tip Use it on Gorged Gormlings around this area.
kill Agitated Gorm+
Test the Gormherd Branch on #4# Gorged Gormlings |q 57824/3 |goto 65.85,39.90
step
talk Master Sha'lor##158969
turnin Collection Day##57824 |goto 64.86,38.95
accept Delivery for Guardian Kota##57825 |goto 64.86,38.95
step
Kill enemies around this area
kill Devouring Hydra##169206+
use the Hydra Gutter##179921
|tip Use it on their corpses.
click Animacone+
|tip They look like large round acorns on the ground around this area.
click Hungry Wildseed+
|tip They look like huge brown seeds on the ground at the edges of water around this area.
Aid the Tranquil Pools |q 62774/1 |goto 62.38,41.29
|only if havequest(62774) or completedq(62774)
step
Follow the road |goto 60.53,36.97 < 30 |only if walking and completedq(62774)
talk Guardian Kota##158921
turnin Delivery for Guardian Kota##57825 |goto 62.61,36.09
accept The Absent-Minded Artisan##61051 |goto 62.61,36.09
step
Follow the path up |goto 61.95,36.01 < 20 |only if walking
Investigate Autumnal Rise |q 61051/1 |goto 62.89,33.28
step
Watch the dialogue
talk Guardian Kota##171099
|tip He runs to this location.
turnin The Absent-Minded Artisan##61051 |goto 62.88,32.14
accept Finish What He Started##58022 |goto 62.88,32.14
accept One Big Problem##58023 |goto 62.88,32.14
stickystart "Collect_Wild_Gorm_Gris"
step
clicknpc Gloober##171148
Find Gloober |q 58023/1 |goto 63.21,30.76
step
clicknpc Gorm Burrow##171195
accept Burrows Away##58024 |goto 62.18,29.99
stickystart "Collapse_Gorm_Burrows"
step
Enter the cave |goto 62.19,28.87 < 7 |walk
kill Gorm Matriarch##160070
|tip Inside the cave.
|tip She will eventually escape once she reaches about 80% health.
Confront the Gorm Matriarch |q 58023/2 |goto 62.47,27.52
step
Enter the cave |goto 61.45,33.42 < 10 |walk
kill Gorm Matriarch##160070
|tip Inside the cave.
|tip She will eventually escape once she reaches about 60% health.
Confront the Gorm Matriarch |q 58023/3 |goto 62.30,33.69
step
label "Collapse_Gorm_Burrows"
clicknpc Gorm Burrow##171195+
|tip They look like cracked piles of dirt on the ground around this area.
Collapse #8# Gorm Burrows |q 58024/1 |goto 60.65,32.96
step
label "Collect_Wild_Gorm_Gris"
use the Gormherd Branch##173534
|tip Use it on Gorm enemies around this area.
|tip It will only work on the larger, hostile Gorm enemies.
Kill Gorm enemies around this area
collect 10 Wild Gorm Gris##180543 |q 58022/1 |goto 60.65,32.96
step
Enter the cave |goto 60.28,32.70 < 7 |walk
Locate the Gorm Matriarch's Den |q 58023/4 |goto Ardenweald/3 60.15,45.24
|tip Inside the cave.
step
talk Guardian Kota##160155
|tip Inside the cave.
turnin Finish What He Started##58022 |goto 60.15,45.24
turnin One Big Problem##58023 |goto 60.15,45.24
turnin Burrows Away##58024 |goto 60.15,45.24
accept Queen of the Underground##58025 |goto 60.15,45.24
step
use the Gormherd Branch##173534
|tip Use it repeatedly on the Gorm Matriarch.
|tip This will stun her briefly while you fight her.
|tip Inside the cave.
kill Gorm Matriarch##160145 |q 58025/1 |goto 34.36,28.25
|tip Guardian Kota will help you fight.
step
talk Guardian Kota##160155
|tip Inside the cave.
turnin Queen of the Underground##58025 |goto 60.15,45.24
accept When a Gorm Eats a God##58026 |goto 60.15,45.24
step
talk Droman Tashmur##158487
turnin When a Gorm Eats a God##58026 |goto Ardenweald/0 63.49,36.28
step
talk Master Sha'lor##160121
accept The Grove of Creation##57660 |goto 62.92,36.23
step
Follow the path up |goto 52.23,32.98 < 30 |only if walking
talk Lady of the Falls##158345
turnin The Grove of Creation##57660 |goto 51.11,33.87
accept Trouble in the Banks##57651 |goto 51.11,33.87
step
talk Dwyl'ir##167243
fpath Glitterfall Basin |goto 51.42,34.52
step
talk Shelynn##163738
|tip Inside the building.
home Glitterfall Basin |goto 50.69,33.80
step
talk Foreman Thorodir##158422
turnin Trouble in the Banks##57651 |goto 46.66,29.42
accept Breaking A Few Eggs##59621 |goto 46.66,29.42
accept Tending to the Tenders##59622 |goto 46.66,29.42
step
click Muddy Scroll
accept Supplies Needed: Amber Grease##57652 |goto 46.92,27.66
stickystart "Destroy_Gorm_Eggs"
stickystart "Collect_Giant_Gorm_Gris"
step
Enter the cave |goto 45.79,25.40 < 7 |walk
kill Egg-Tender Tiom##165398 |q 59622/1 |goto 45.53,25.44
|tip Inside the cave.
step
Enter the cave |goto 44.71,24.12 < 7 |walk
kill Egg-Tender Erys##165401 |q 59622/3 |goto 44.48,23.83
|tip Inside the cave.
step
Enter the cave |goto 45.54,23.23 < 7 |walk
kill Egg-Tender Bloome##165400 |q 59622/2 |goto 45.27,23.25
|tip Inside the cave.
step
label "Destroy_Gorm_Eggs"
click Gorm Egg+
|tip They look like large grey and blue eggs on the ground around this area.
Destroy #10# Gorm Eggs |q 59621/1 |goto 45.39,24.63
step
label "Collect_Giant_Gorm_Gris"
kill Gorm Ravener##158364+
collect 8 Giant Gorm Gris##172221	|q 57652/1 |goto 45.39,24.63
step
talk Foreman Thorodir##158422
turnin Breaking A Few Eggs##59621 |goto 46.66,29.42
turnin Tending to the Tenders##59622 |goto 46.66,29.42
accept Unsafe Workplace##57653 |goto 46.66,29.42
stickystart "Heal_Wounded_Fae"
step
click Discarded Scroll
accept Supplies Needed: More Husks!##57655 |goto 47.51,26.37
step
talk Fluttercatch##158489
accept Gifts of the Forest##57656 |goto 48.07,24.34
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.97,25.19 |count 1
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.17,26.14 |count 2
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 49.02,26.76 |count 1
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.99,23.79 |count 3
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 49.39,22.90 |count 4
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 49.11,22.73 |count 2
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.89,22.44 |count 5
step
click Intact Husk
collect Treated Gorm Husk##172218 |q 57655/1 |goto 48.74,21.60 |count 6
step
use the Enchanted Pipes##172517
Collect a Culexwood Branch |q 57656/1 |goto 48.03,21.72 |count 3
step
label "Heal_Wounded_Fae"
use the Jar of Clay##172950
|tip Use it next to Wounded Sylvars.
|tip They look like goat people on the ground around this area.
Heal #10# Wounded Fae |q 57653/1 |goto 47.92,24.46
step
talk Fluttercatch##158489
turnin Gifts of the Forest##57656 |goto 48.07,24.34
step
Watch the dialogue
talk Fluttercatch##158489
accept Tied Totem Toter##57657 |goto 48.07,24.34
step
click Gormling Lure
Take the Gormling Lure |q 57657/1 |goto 48.01,24.26
Wield the Gormling Lure Totem |havebuff spell:309779 |goto 48.01,24.26 |q 57657
step
Gather #30# Gormlings |condition hasbuff("spell:309806",30) |goto 47.70,24.71 |q 57657
|tip Run around this area, near Gormling Nibblers.
|tip They look like small purple and blue grubs walking on the ground around this whole area.
|tip When you get near them, they will start to follow you.
|tip You can see how many you've gathered on the buff near your minimap.
step
Deliver #30# Gormlings to the Southern Wrangler |q 57657/2 |goto 47.06,28.68
step
talk Foreman Thorodir##158422
turnin Unsafe Workplace##57653 |goto 46.66,29.41
turnin Tied Totem Toter##57657 |goto 46.66,29.41
accept Well, Tell the Lady##59656 |goto 46.66,29.41
step
talk Lady of the Falls##158345
turnin Well, Tell the Lady##59656 |goto 51.11,33.88
accept Ages-Echoing Wisdom##57865 |goto 51.11,33.88
accept Idle Hands##57866 |goto 51.11,33.88
step
talk Gormsmith Cavina##165382
turnin Supplies Needed: More Husks!##57655 |goto 51.58,33.99
turnin Supplies Needed: Amber Grease##57652 |goto 51.58,33.99
accept What a Buzzkill##59623 |goto 51.58,33.99
step
Follow the path |goto 53.10,32.52 < 30 |only if walking
talk Helpful Faerie##160045
accept The Sweat of Our Brow##57867 |goto 53.80,27.58
stickystart "Slay_Brittlebark_Invaders"
step
talk Helpful Faerie##160045
accept The Sweat of Our Brow##57867 |goto 55.50,29.92
stickystart "Disarm_Booby_Trapped_Tools"
step
talk Groonoomcrooek##159428
Tell him _"The Lady of the Falls wanted to make sure you were safe."_
Find Groonoomcrooek |q 57865/1 |goto 56.44,29.27
step
talk Groonoomcrooek##159428
accept Spirit-Gathering Labor##57869 |goto 56.44,29.27
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 56.90,28.29 |count 1
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 56.19,27.12 |count 2
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 55.90,26.30 |count 3
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 55.25,26.58 |count 4
step
Run up the ramp |goto 56.04,28.02 < 15 |only if walking
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 57.49,28.57 |count 5
step
click Water Bucket
collect River Sediment##173187 |q 57869/1 |goto 58.33,28.56 |count 6
step
Enter the building |goto 58.88,24.55 < 10 |walk
talk Elder Gwenna##159465
|tip Inside the building.
Tell her _"The Lady of the Falls wanted to make sure you were safe."_
Find Elder Gwenna |q 57865/3 |goto 59.08,24.35
step
talk Elder Gwenna##159465
|tip Inside the building.
accept The Games We Play##57870 |goto 59.08,24.35
stickystop "Disarm_Booby_Trapped_Tools"
step
click Giggling Basket
Watch the dialogue
|tip Target the Playful Trickster that appears nearby.
|tip He will tell you to perform random actions in the dialogue.
|tip Use the emotes below that match what he says.
Praise |script DoEmote("PRAISE")
|tip He says "Not so much as a word of praise! Hmph!".
Cheer |script DoEmote("CHEER")
|tip He says "The other spriggans were all cheering my name for days!".
Dance |script DoEmote("DANCE")
|tip He says "Dance with me!".
Introduce |script DoEmote("INTRODUCE")
|tip He says "Introductions were an important part of first impressions!".
Thank |script DoEmote("THANK")
|tip "Some ask permission, and always thank us for our trouble.".
Flex |script DoEmote("FLEX")
|tip He says "How strong he must have been!".
Discover the Secret |q 57870/1 |goto 58.42,27.47
stickystart "Disarm_Booby_Trapped_Tools"
step
Enter the building |goto 58.88,24.55 < 10 |walk
talk Elder Gwenna##159465
|tip Inside the building.
turnin The Games We Play##57870 |goto 59.08,24.35
accept Outplayed##57871 |goto 59.08,24.35
step
use the Pouch of Puffpetal Powder##173355
kill Wicked Wort##159476 |q 57871/1 |goto 56.94,25.93
|tip He appears nearby.
step
Enter the building |goto 55.72,23.86 < 15 |walk
talk Elder Finnan##159427
|tip Inside the building.
Tell him _"The Lady of the Falls wanted to make sure you were safe."_
Find Elder Finnan |q 57865/2 |goto 55.82,23.42
step
talk Elder Finnan##159427
|tip Inside the building.
accept Craftsman Needs No Tools##57868 |goto 55.82,23.42
step
Kill Brittlebark enemies around this area
collect Finnan's Lucky Mallet##173150 |q 57868/1 |goto 55.45,24.62
step
Enter the building |goto 55.72,23.86 < 15 |walk
talk Elder Finnan##159427
|tip Inside the building.
turnin Craftsman Needs No Tools##57868 |goto 55.82,23.42
step
label "Disarm_Booby_Trapped_Tools"
Disarm #6# Booby Trapped Tools |q 57867/1 |goto 57.84,26.89
|tip You need specific buffs to disable certain traps. When you find the items that give buffs, before clicking them, plan out the item you want to click with the buff.
|tip The buffs last for 10 minutes.
|tip
|tip Click Gossamer Threads (small blue spools of thread) to get the Gossamer Laces buff.  Click Suspiciously Untouched Harps (light colored wooden statues with strings in them) while the buff is active.
|tip
|tip Click Shimmerdust Piles (purple piles of dirt) to get the Gossamer Laces buff.  Click Suspiciously Untouched Baskets (small grey wooden baskets) while the buff is active.
|tip
|tip Click Freshleaves (small green leafy plants) to get the Minty Fresh Breath buff.  Click Suspiciously Untouched Soulweb (small grey spirals) while the buff is active.
step
label "Slay_Brittlebark_Invaders"
Kill enemies around this area
Slay #12# Brittlebark Invaders |q 57866/1 |goto 57.84,26.89
step
talk Groonoomcrooek##159428
turnin Spirit-Gathering Labor##57869 |goto 56.45,29.27
step
kill Buzzkill##165404
|tip He flies low to the ground around this area.
collect Buzzkill's Stinger##176760 |q 59623/1 |goto 50.33,26.29
step
Follow the path up |goto 49.66,31.56 < 20 |only if walking
talk Lady of the Falls##158345
turnin Ages-Echoing Wisdom##57865 |goto 51.11,33.88
turnin The Sweat of Our Brow##57867 |goto 51.11,33.88
turnin Idle Hands##57866 |goto 51.11,33.88
turnin Outplayed##57871 |goto 51.11,33.88
step
talk Gormsmith Cavina##165382
turnin What a Buzzkill##59623 |goto 51.58,33.99
step
Follow the road |goto 64.31,37.68 < 15 |only if walking
accept Wild Hunt Offensive##60840 |goto 62.79,44.67
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Draining Totem+
|tip They look like` wooden spikes with antlered animal skulls on them on the ground around this area.
Disrupt the Blighted Forces |q 60840/1 |goto 63.71,47.14
|only if havequest(60840) or completedq(60840)
step
Follow the path down |goto 63.50,49.42 < 30 |only if walking
accept Dreamshrine Basin##62773 |goto 62.86,49.55
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Drust Totem+
|tip They look like` wooden spikes with antlered animal skulls on them on the ground around this area.
clicknpc Unfettered Vision##175059+
|tip They look like small green portals on the ground around this area.
|tip Enemies may appear out of the portals after clicking them.
Defend Hibernal Hollow |q 62773/1 |goto 62.19,50.92
|only if havequest(62773) or completedq(62773)
step
talk Na'lor##165166
fpath Hibernal Hollow |goto 60.35,53.49
step
talk Droman Aliothe##160894
accept Forest Refugees##62807 |goto 60.08,53.94
step
talk Taiba##162445
home Hibernal Hollow |goto 60.48,53.93
step
talk Guardian Molan##160929
accept Blooming Villains##58265 |goto 60.68,51.34
step
Follow the road up |goto 58.11,55.33 < 30 |only if walking
talk Primrose##160749
accept Break It Down##58266 |goto 53.48,58.72
step
_Next to you:_
talk Primrose
accept Wake Up, Get Up, Get Out There##58264
stickystart "Aid_Subdued_Faeries"
stickystart "Slay_Ritualists"
step
click Faerie Belongings+
|tip They look like small baskets in hanging fae nests around this area.
|tip There are 2 at this location.
collect 2 Primrose's Pyrotechnic Powder##174078 |goto 51.80,59.38 |q 58266
step
click Basket of Enchanted Wings
Equip the Enchanted Wings |havebuff spell:323695 |goto 52.67,57.53 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 3 Primrose's Pyrotechnic Powder##174078 |goto 53.54,60.80 |q 58266
step
click Basket of Enchanted Wings
Equip the Enchanted Wings |havebuff spell:323695 |goto 52.67,57.53 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 4 Primrose's Pyrotechnic Powder##174078 |goto 53.52,60.93 |q 58266
step
click Basket of Enchanted Wings
Equip the Enchanted Wings |havebuff spell:323695 |goto 52.67,57.53 |q 58266
step
click Faerie Belongings+
|tip It looks like a small basket in the hanging fae nest.
collect 5 Primrose's Pyrotechnic Powder##174078 |goto 52.87,61.73 |q 58266
step
Follow the path up |goto 53.15,57.99 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 53.78,61.52 |count 1
step
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 53.28,62.68 |count 2
step
Follow the path up |goto 53.48,61.57 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 52.54,62.33 |count 3
step
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 52.08,63.26 |count 4
step
Follow the path up |goto 52.28,61.96 < 10 |only if walking
use Primrose's Pyrotechnic Powder##174078
|tip Use it next to the Runed Altar.
|tip Up on the platform.
Destroy the Runed Altar |q 58266/1 |goto 51.27,61.06 |count 5
step
_Next to you:_
talk Primrose
turnin Break It Down##58266
step
label "Aid_Subdued_Faeries"
clicknpc Subdued Faerie##161153+
|tip They look like small creatures with blue wings laying on the ground around this area.
|tip You can find more on the platforms up in the trees around this area. |notinsticky
Aid #10# Subdued Faeries |q 58264/1 |goto 52.65,60.18
step
_Next to you:_
talk Primrose
turnin Wake Up, Get Up, Get Out There##58264
accept Beneath the Mask##58267
step
Follow the path up |goto 53.13,57.99 < 10 |only if walking
Watch the dialogue
|tip Up on the platform.
|tip You will be attacked.
Confront Ingra Drif |q 58267/1 |goto 54.64,61.72
step
kill Primrose##160951
Slay the Mindwarped Faerie |q 58267/2 |goto 54.64,61.72
step
label "Slay_Ritualists"
Kill enemies around this area
|tip You can find more on the platforms up in the trees around this area. |notinsticky
Slay #15# Ritualists |q 58265/1 |goto 52.65,60.18
step
talk Guardian Molan##160929
turnin Blooming Villains##58265 |goto 60.68,51.34
turnin Beneath the Mask##58267 |goto 60.68,51.34
step
Follow the road |goto 62.49,55.90 < 30 |only if walking
Follow the road |goto 62.49,55.90 < 30 |only if walking
accept The Fallen Tree##62720 |goto 65.73,55.88
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Cage+
|tip They look like wooden stick cages on the ground around this area.
click Abandoned Memento+
|tip They look like various small objects on the ground around this area.
click Drust Rune+
|tip They look like patches of black symbols on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Reclaim Tirna Noch |q 62720/1 |goto 69.57,55.18
|only if havequest(62720) or completedq(62720)
step
talk Flwngyrr##168032
turnin Forest Refugees##62807 |goto 48.38,50.46
accept Tirna Scithe: A Warning Silence##62371 |goto 48.38,50.46
step
Follow the road |goto 48.44,54.57 < 20 |only if walking
Continue following the road |goto 51.14,58.81 < 20 |only if walking
Follow the path |goto 50.57,67.73 < 30 |only if walking
talk V'kerra##167247
fpath Claw's Edge |goto 51.30,71.31
step
Cross the bridge |goto 47.69,50.59 < 15 |only if walking
Follow the road |goto 39.79,49.92 < 40 |only if walking
talk Tishereenelee##167265
fpath Root-Home |goto 35.13,51.71
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Revendreth (Threads of Fate)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Revendreth:\n\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Courier Gevoraal##158526
fpath Pridefall Hamlet |goto Revendreth/0 70.35,81.16
step
Follow the road |goto 67.71,79.52 < 20 |only if walking
talk Rendle##158057
accept Not My Job##60509 |goto 67.55,68.53
step
talk Rendle##157846
|tip He runs to this location.
turnin Not My Job##60509 |goto 72.57,73.21
accept It's a Dirty Job##57471 |goto 72.57,73.21
step
click Filthy Rubble+
|tip They look like grey stones with green smoke surrounding them on the ground around this area.
Throw #6# Filthy Rubble |q 57471/1 |goto 73.32,73.06
step
talk Rendle##157846
turnin It's a Dirty Job##57471 |goto 72.57,73.21
accept Dredger Duty##57474 |goto 72.57,73.21
step
talk Ripened Dredger##157884
Dredge a Dredger |q 57474/1 |goto 72.46,73.70
step
talk Ripened Dredger##157884
Carry a Dredger |havebuff spell:307926 |goto 72.46,73.70 |q 57474
step
Use the _"Throw Dredger"_ ability
|tip It appears as a button on the screen.
Throw the Dredger at the Rubble Pile |q 57474/2 |goto 74.21,73.05
step
Kill the enemies that attack in waves
Defend the Dredger |q 57474/3 |goto 74.13,72.92
step
click Sack of Dredger Supplies
collect Gem of Binding##171966 |q 57474/4 |goto 74.21,73.05
step
talk Rendle##157846
turnin Dredger Duty##57474 |goto 72.57,73.21
accept We're Gonna Need a Bigger Dredger##57477 |goto 72.57,73.21
step
Watch the dialogue
Witness the Ritual |q 57477/1 |goto 72.72,73.63
step
talk Bootus##158001
turnin We're Gonna Need a Bigger Dredger##57477 |goto 72.84,73.93
accept Running a Muck##57481 |goto 72.84,73.93
step
clicknpc Bootus##157898
Board Bootus |q 57481/1 |goto 72.84,73.93
stickystart "Slay_Devourers"
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 73.82,75.36 |count 1
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 74.85,74.48 |count 2
step
kill Invading Riftkeeper##166844
Close the Shimmering Rift |q 57481/3 |goto 74.63,77.59 |count 3
step
label "Slay_Devourers"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #25# Devourers |q 57481/2 |goto 74.91,75.26
step
kill Charthox##157954 |q 57481/4 |goto 75.45,76.51
|tip Use the abilities on your action bar.
step
Return to Rendle |outvehicle |goto 73.02,73.00 |q 57481 |notravel
|tip You will run automatically.
step
talk Rendle##157846
turnin Running a Muck##57481 |goto 72.57,73.21
stickystart "Abandoned_Soulguard_Torches"
step
Follow the road |goto 67.22,68.07 < 30 |only if walking
talk Tessle the Snitch##168618
accept The Endmire##60480 |goto 65.12,63.53
step
accept Parasites of Reality##62780 |goto 65.12,63.53
|tip You will accept this quest automatically.
|only if completedq(62716)
stickystart "Eliminate_The_Endmire_Horrors"
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 65.83,63.24 |count 1
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 65.80,61.74 |count 2
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.55,59.58 |count 3
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.65,59.33 |count 4
step
click Stolen Infused Ruby
collect Infused Ruby##175751 |q 60480/1 |goto 66.75,57.53 |count 5
step
label "Abandoned_Soulguard_Torches"
_Note:_
click Abandoned Soulguard Torch+
|tip They look like burning torches on the ground around this area.
|tip You will steadily gain stacks of a debuff as you move around this area that increases the Shadow damage you take from enemies.
|tip These torches will remove the debuff.
step
talk Tessle the Snitch##168618
turnin The Endmire##60480 |goto 65.12,63.52
step
label "Eliminate_The_Endmire_Horrors"
Kill enemies around this area
clicknpc Mired Soul##175270+
|tip They look like neutral spirits wearing black robes on the ground around this area.
click Amalgamation Conduit+
|tip They look like large jagged hollow tree stumps with a large blue orb sitting in them on the ground around this area.
Eliminate the Endmire Horrors |q 62780/1 |goto 67.32,60.24
|only if havequest(62780) or completedq(62780)
step
accept Charlatans of Ceremony##62784 |goto 68.83,57.67
|tip You will accept this quest automatically.
|only if completedq(62716)
stickystart "Purge_The_Depravity"
step
Ride the elevator up |goto 70.12,57.89 < 15 |only if walking
talk Chiselgrump##168698
accept It Used to Be Quiet Here##60487 |goto 69.53,53.38
step
click Dredger Chisel+
|tip The look like small skinny metal tools on the ground around this area.
collect 8 Dredger Chisel##179002 |q 60487/1 |goto 69.33,54.37
step
talk Chiselgrump##168698
turnin It Used to Be Quiet Here##60487 |goto 69.53,53.38
step
label "Purge_The_Depravity"
Follow the path |goto 71.30,51.66 < 30 |only if walking
Kill enemies around this area
click Blasphemous Idol+
|tip They look like large stone gargoyles on the ground around this area.
click Debased Sinstone+
|tip They look like small red glowing tombestones on the ground around this area.
Purge the Depravity |q 62784/1 |goto 71.67,48.39
|only if havequest(62784) or completedq(62784)
step
Jump down here |goto 69.43,41.59 < 15 |only if walking
talk Courier Rehkaash##158417
fpath Halls of Atonement |goto 71.58,40.05
step
Enter the building |goto 71.82,40.34 < 7 |walk
talk The Accuser##160116
|tip Downstairs inside the building.
accept An Abuse of Power##57919 |goto 71.75,40.41
|only if completedq(62716)
step
talk Abused Soul##160107
|tip Downstairs inside the building.
Subjugate the Abused Soul |q 57919/1 |goto 71.46,40.71
|only if completedq(62716)
step
kill Shattered Soul##160120 |q 57919/2 |goto 71.46,40.71
|tip Downstairs inside the building.
|only if completedq(62716)
step
talk The Accuser##160116
|tip Downstairs inside the building.
turnin An Abuse of Power##57919 |goto 71.76,40.42
accept The Proper Souls##57920 |goto 71.76,40.42
accept The Proper Tools##57921 |goto 71.76,40.42
accept The Proper Punishment##57922 |goto 71.76,40.42
|only if completedq(62716)
step
talk Absolooshun##158986
|tip Inside the building.
home Absolution Crypt |goto 72.32,39.85
|only if completedq(62716)
stickystart "Collect_Venthyr_Ritual_Robes"
stickystart "Collect_Venthyr_Ritual_Dagger"
stickystart "Collect_Venthyr_Ritual_Tome"
step
Run up the stairs |goto 68.96,39.79 < 15 |only if walking
clicknpc Fugitive Soul##160149
Subjugate the Fugitive Soul |q 57920/1 |goto 68.00,42.03 |count 1
|only if completedq(62716)
step
Run up the stairs |goto 67.80,41.54 < 15 |only if walking
clicknpc Fugitive Soul##160149
Subjugate the Fugitive Soul |q 57920/1 |goto 66.35,43.64 |count 2
|only if completedq(62716)
step
kill Fata the Soulflayer##159677 |q 57922/1 |goto 65.19,43.80
|tip He floats around this area.
|only if completedq(62716)
step
clicknpc Fugitive Soul##160149
Subjugate the Fugitive Soul |q 57920/1 |goto 68.44,43.01 |count 3
|only if completedq(62716)
step
clicknpc Fugitive Soul##160149
Subjugate the Fugitive Soul |q 57920/1 |goto 70.57,43.37 |count 4
|only if completedq(62716)
step
label "Collect_Venthyr_Ritual_Robes"
Kill enemies around this area
collect Venthyr Ritual Robes##173695 |q 57921/1 |goto 69.51,44.00
|only if completedq(62716)
step
label "Collect_Venthyr_Ritual_Dagger"
Kill enemies around this area |notinsticky
collect Venthyr Ritual Dagger |q 57921/2 |goto 69.51,44.00
|only if completedq(62716)
step
label "Collect_Venthyr_Ritual_Tome"
Kill enemies around this area |notinsticky
collect Venthyr Ritual Tome##173697 |q 57921/3 |goto 69.51,44.00
|only if completedq(62716)
step
Run up the stairs |goto 69.88,44.32 < 15 |only if walking
talk The Accuser##160139
turnin The Proper Souls##57920 |goto 70.70,46.97
turnin The Proper Tools##57921 |goto 70.70,46.97
turnin The Proper Punishment##57922 |goto 70.70,46.97
accept Ritual of Absolution##57923 |goto 70.70,46.97
|only if completedq(62716)
step
Watch the dialogue
talk The Accuser##160163
|tip She runs to this location.
Tell her _"I'm ready. Begin the ritual."_
Start the Absolution Ritual |q 57923/1 |goto 71.96,46.22
|only if completedq(62716)
step
Watch the dialogue
Kill the enemies that attack in waves
Complete the Ritual |q 57923/2 |goto 71.96,46.22
|only if completedq(62716)
step
Watch the dialogue
talk The Accuser##160163
turnin Ritual of Absolution##57923 |goto 71.96,46.22
accept Ritual of Judgment##57924 |goto 71.96,46.22
|only if completedq(62716)
step
Watch the dialogue
talk The Accuser##160233
|tip She walks to this location.
Tell her _"I am ready. Begin the ritual."_
Join the Ritual of Judgment |q 57924/1 |goto 74.12,49.71
|only if completedq(62716)
step
Watch the dialogue
Judge the Soul |q 57924/2 |goto 74.12,49.71
|only if completedq(62716)
step
talk The Accuser##160294
turnin Ritual of Judgment##57924 |goto 74.29,49.72
accept Archivist Fane##57925 |goto 74.29,49.72
|only if completedq(62716)
step
Enter the building |goto 72.98,52.47 < 15 |walk
talk Archivist Fane##160248
|tip Inside the building.
turnin Archivist Fane##57925 |goto 73.00,51.99
accept The Sinstone Archive##57926 |goto 73.00,51.99
accept Missing Stone Fiend##60127 |goto 73.00,51.99
|only if completedq(62716)
stickystart "Collect_Sinstone_Records"
step
Kill enemies around this area
accept Atonement Crypt Key##57928 |goto 72.71,53.34
|tip You will eventually automatically accept this quest after looting.
|only if completedq(62716)
step
Run up the stairs |goto 72.07,56.07 < 15 |only if walking
talk Cryptkeeper Kassir##163073
turnin Missing Stone Fiend##60127 |goto 70.15,56.22
accept Rebuilding Temel##57927 |goto 70.15,56.22
|only if completedq(62716)
step
click Temel's Head
collect Temel's Head##173739 |q 57927/3 |goto 70.23,53.80
|only if completedq(62716)
step
click Temel's Body
collect Temel's Body##173737 |q 57927/1 |goto 68.90,53.29
|only if completedq(62716)
step
click Temel's Wings
collect Temel's Wings##173738 |q 57927/2 |goto 66.15,53.10
|only if completedq(62716)
step
click Crypt Door+
|tip They look like the doors on the small stone buildings around this area.
|tip You may have to open many of them before you find an Atonement Crypt.
Open an Atonement Crypt |q 57928/1 |goto 70.03,54.91
|only if completedq(62716)
step
label "Collect_Sinstone_Records"
Kill enemies around this area
collect 100 Sinstone Records##173733 |q 57926/1 |goto 70.03,54.91
|only if completedq(62716)
step
talk Cryptkeeper Kassir##163073
turnin Rebuilding Temel##57927 |goto 70.15,56.21
turnin Atonement Crypt Key##57928 |goto 70.15,56.21
accept Ready to Serve##60128 |goto 70.15,56.21
|only if completedq(62716)
step
Run down the stairs |goto 71.46,56.45 < 15 |only if walking
talk Archivist Fane##160248
|tip Inside the building.
turnin The Sinstone Archive##57926 |goto 72.99,51.99
turnin Ready to Serve##60128 |goto 72.99,51.99
accept Hunting an Inquisitor##57929 |goto 72.99,51.99
|only if completedq(62716)
step
Run up the stairs |goto 75.32,50.94 < 15 |only if walking
Use the _"Read Inquisitor Traian's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Traian##159151 |q 57929/1 |goto 76.19,52.11
|only if completedq(62716)
step
Enter the building |goto 72.98,52.47 < 15 |walk
talk Archivist Fane##160248
|tip Inside the building.
turnin Hunting an Inquisitor##57929 |goto 72.99,51.99
accept Halls of Atonement: Your Absolution##58092 |goto 72.99,51.99
|only if completedq(62716)
step
Run up the stairs |goto 68.94,39.78 < 15 |only if walking
Cross the bridge |goto 67.08,39.56 < 20 |only if walking
Follow the path |goto 62.13,37.21 < 20 |only if walking
talk Courier Tarehaar##158517
fpath Old Gate |goto 61.22,38.78
step
Run up the stairs |goto 53.26,35.64 < 15 |only if walking
Follow the path down |goto 52.56,30.14 < 30 |only if walking
talk Courier Skraal##158564
fpath Menagerie of the Master |goto 54.22,25.68
step
Follow the road |goto 67.68,79.46 < 20 |only if walking
click Join the Rebellion!
accept Words Have Power##58272 |goto 67.74,67.66
step
click Join the Rebellion!+
|tip They look like pieces of paper pinned onto walls around this area.
Collect #9# Pamphlets|q 58272/1 |goto 68.26,65.97
step
Cross the bridge |goto 67.21,65.03 < 20 |only if walking
talk Shadowrider Neralva##156291
turnin Words Have Power##58272 |goto 63.24,61.83
step
Enter the building |goto 62.26,63.57 < 7 |walk
talk Tremen Winefang##156290
|tip Inside the building.
home The Sinposium |goto 62.06,64.48
step
talk Mistress Mihaela##156822
|tip Inside the building.
accept Bring Out Your Tithe##60176 |goto 61.31,63.78
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.51,63.36 |count 5
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.29,62.10 |count 10
step
talk Lajos##167489
accept Reason for the Treason##60177 |goto 62.22,61.36
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 63.15,62.90 |count 15
step
talk Soul of Keltesh##167849
|tip Outside, behind the building.
Choose _<Ask about suspicious activity>_
Watch the dialogue
Kill the enemies that attack in waves
Find the Soul of Keltesh Clue |q 60177/3 |goto 62.57,64.78
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.78,60.92 |count 20
step
Locate Globknob |goto 63.38,60.87 < 7 |c |q 60177
step
talk Globknob##167838
Choose _<Ask about suspicious activity>_
Begin Following Globknob |goto 63.38,60.87 > 7 |c |q 60177
step
Watch the dialogue
click Rubbish Pile
Find the Globknob Clue |q 60177/2 |goto 63.71,61.10
step
Enter the building |goto 63.38,60.88 < 7 |walk
click Droplets of Anima
|tip Inside the building.
Collect Tithe Anima |q 60176/1 |goto 63.51,60.82 |count 25
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 62.20,59.56 |count 30
step
talk Darkhaven Villager##167746
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.90,59.74 |count 60
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 61.42,59.22 |count 65
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 60.80,60.23 |count 70
step
talk Lord Chamberlain##156374
turnin A Plea to the Harvesters##58654 |goto 60.61,60.86
step
talk General Kaal##155541
accept The Master Awaits##57178 |goto 60.45,60.91
step
talk Courier Rokalai##156295
Choose _<Ask about suspicious activity>_
Watch the dialogue
Find the Courier Rokalai Clue |q 60177/1 |goto 60.50,60.61
step
talk Darkhaven Villager##167717
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.36,61.20 |count 85
step
click Droplets of Anima
Collect Tithe Anima |q 60176/1 |goto 61.78,61.66 |count 90
step
talk Darkhaven Villager##167744
Choose _<Request tithe>_
Collect Tithe Anima |q 60176/1 |goto 61.60,62.15 |count 100
step
talk Lajos##167489
turnin Reason for the Treason##60177 |goto 62.21,61.36
accept And Then There Were None##60178 |goto 62.21,61.36
step
talk Ilka##168237
Choose _<Present Lajos' invitation>_
Invite Ilka |q 60178/2 |goto 63.25,60.34
step
Enter the building |goto 62.26,63.58 < 7 |walk
talk Samu##168238
|tip Upstairs inside the building.
Choose _<Present Lajos' invitation>_
Invite Samu |q 60178/1 |goto 61.81,64.36
step
talk Mistress Mihaela##156822
|tip Inside the building.
turnin Bring Out Your Tithe##60176 |goto 61.31,63.78
step
Enter the building |goto 61.31,59.78 < 7 |walk
Watch the dialogue
|tip Downstairs inside the building.
Confront the Traitor |q 60178/3 |goto 61.32,59.81
step
talk Rahel##168448
|tip Downstairs inside the building.
turnin And Then There Were None##60178 |goto 61.21,59.73
step
talk Dimwiddle##165859
|tip Outside.
accept A Curious Invitation##59710 |goto 60.71,62.50
step
Use the Elevator |q 59710/1 |goto 58.38,64.10
|tip Ride it down to the ground.
step
talk Courier Araak##169238
Tell him _"Dimwiddle sent me."_
Find Courier Araak |q 59710/2 |goto 59.50,66.73
step
talk Courier Araak##169238
turnin A Curious Invitation##59710 |goto 59.50,66.73
accept The Lay of the Land##59712 |goto 59.50,66.73
step
talk Nadjia the Mistblade##165864
Check Nadjia |q 59712/1 |goto 59.89,68.89
step
click Taskmaster Matyas' Ruminations
|tip Inside the building.
Find Taskmaster's Journal |q 59712/2 |goto 58.63,69.36
step
talk Courier Araak##165921
turnin The Lay of the Land##59712 |goto 60.31,69.24
step
talk Nadjia the Mistblade##165864
accept Finders-Keepers, Sinners-Weepers##59846 |goto 59.89,68.89
step
talk Dobwobble##166543
Ask him _"What are you all doing?"_
Question Dobwobble |q 59846/2 |goto 60.06,69.61
step
talk Cobwobble##166541
Ask him _"Why are the ones with scribbles interesting?"_
Question Cobwobble |q 59846/1 |goto 60.26,68.54
step
talk Slobwobble##166542
Ask him _"Where does the Taskmaster keep the sinstones?"_
Question Slobwobble |q 59846/3 |goto 61.36,68.01
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.99,67.60 |count 1
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.37,69.86 |count 2
step
click Sinstone Fragment
|tip You will be attacked.
Collect the Sinstone |q 59846/4 |goto 60.83,72.13 |count 3
step
talk Nadjia the Mistblade##165864
turnin Finders-Keepers, Sinners-Weepers##59846 |goto 59.89,68.89
accept Active Ingredients##59713 |goto 59.89,68.89
accept A Fine Vintage##59714 |goto 59.89,68.89
step
Run down the stairs inside the building |goto 63.63,74.15 < 7 |walk
kill Mucksquint##166042
|tip Downstairs inside the building.
|tip Click the Kegs of the Strong stuff nearby and use the ability to stun Mucksquint.
collect Witherfall Special Reserve##177765 |q 59714/1 |goto 63.67,72.92
stickystart "Collect_Scythe_Bloom_Pollen"
step
Kill enemies around this area
|tip Outside.
collect Pristine Venom Gland##177713 |q 59713/1 |goto 62.54,70.30
step
label "Collect_Scythe_Bloom_Pollen"
click Scythe Bloom+
|tip They look like large white and red flowers on the ground around this area.
collect 60 Scythe Bloom Pollen##177714 |q 59713/2 |goto 62.54,70.30
step
talk Nadjia the Mistblade##165864
turnin Active Ingredients##59713 |goto 59.89,68.89
turnin A Fine Vintage##59714 |goto 59.89,68.89
accept Message for Matyas##59715 |goto 59.89,68.89
step
talk Courier Araak##165921
Tell him _"We are ready. Please tell the Taskmaster the Maw Walker is here."_
Send the Courier Message |q 59715/1 |goto 60.31,69.24
step
click Witherfall Special Reserve
Poison the Bottle |q 59715/2 |goto 60.25,69.16
step
talk Taskmaster Matyas##166081
turnin Message for Matyas##59715 |goto 60.17,69.44
accept Comfortably Numb##59716 |goto 60.17,69.44
step
Watch the dialogue
click Gift for Matyas
Poison Matyas |q 59716/1 |goto 60.23,69.17
step
clicknpc Taskmaster Matyas##166368
Acquire Nadjia's Sinstone |q 59716/2 |goto 60.30,69.23
step
talk Nadjia the Mistblade##165864
turnin Comfortably Numb##59716 |goto 60.20,69.32
accept The Field of Honor##59724 |goto 60.20,69.32
accept Offer of Freedom##59868 |goto 60.20,69.32
stickystart "Kill_Matyas_Followers"
step
Follow the path up |goto 60.15,74.20 < 20 |only if walking
Kill Briarbane enemies around this area
|tip Just get them to low health, don't kill them.
use the Sinstone Fragment##179359
|tip Use it on them when they are at about 35% health.
Free #3# Compelled Venthyr |q 59868/1 |goto 61.09,77.34
step
label "Kill_Matyas_Followers"
Kill enemies around this area
Kill #12# Matyas' Followers |q 59724/1 |goto 61.09,77.34
step
Enter the building |goto 60.72,79.07 < 7 |walk
talk Nadjia the Mistblade##166616
|tip Upstairs inside the building.
turnin The Field of Honor##59724 |goto 60.21,78.63
turnin Offer of Freedom##59868 |goto 60.21,78.63
accept It's a Trap##59726 |goto 60.21,78.63
step
kill Taskmaster Matyas##165834
|tip Click the Rampart Portcullis gate and walk through it.
|tip Nadjia the Mistblade will help you fight.
Complete Nadjia's Duel |q 59726/1 |goto 60.12,77.54
step
talk Nadjia the Mistblade##166616
|tip Upstairs inside the building.
turnin It's a Trap##59726 |goto 60.21,78.63
step
clicknpc Hulking Stoneborn##166825
|tip Upstairs, on the balcony of the building.
Fly with the Hulking Stoneborn |invehicle |goto 60.10,80.73 |q 58936 |future
step
Return to Safety |outvehicle |goto 61.82,69.42 |q 58936 |future |notravel
step
Follow the road |goto 58.89,72.99 < 30 |only if walking
click Bounty: Beast Control
accept Beast Control##58936 |goto 49.61,75.95
step
Kill enemies around this area
Slay #6# Dredbats |q 58936/1 |goto 51.53,75.32
step
talk Flockmaster Sergio##163221
turnin Beast Control##58936 |goto 51.26,74.31
step
Enter the building |goto 47.85,70.14 < 7 |walk
talk Soultrapper Valistra##156220
|tip Inside the building.
home Wanecrypt Hill |goto 47.33,70.65
step
talk Courier Rabatur##156196
fpath Wanecrypt Hill |goto 47.88,69.39
step
talk Huntmaster Constantin##156384
accept Hunting Trophies##60514 |goto 48.50,68.44
accept Abel's Fate##58996 |goto 48.50,68.44
step
accept The Banewood##62782 |goto 47.08,63.66
|tip You will automatically accept this quest.
|only if completedq(62716)
stickystart "Clear_The_Hunting_Grounds"
stickystart "Collect_Pristine_Deathwalker_Paws"
stickystart "Collect_Prized_Fearspinner_Fangs"
step
kill Hulking Doomfang##168862+
|tip They look like white hydras that walk around this area.
collect 3 Doomfang Skull##179316 |q 60514/1 |goto 47.08,63.66
step
label "Collect_Pristine_Deathwalker_Paws"
kill Rotting Deathwalker##168855+
|tip They look like diseased brown bears.
collect 3 Pristine Deathwalker Paw##178996 |q 60514/2 |goto 48.91,62.48
step
label "Collect_Prized_Fearspinner_Fangs"
Kill Fearspinner enemies around this area
|tip They look like spiders and large white cocoon eggs on the ground around this area.
|tip Small spiders will attack you after you break the eggs.
collect 3 Prized Fearspinner Fangs##178997 |q 60514/3 |goto 46.36,69.71
step
label "Clear_The_Hunting_Grounds"
Kill enemies around this area
click Hopebreaker Snare+
|tip They look like metal bear traps with ghosts in them on the ground around this area.
click Soulwatcher Post+
|tip They look like wooden spikes with demon dogs chained to them on the ground around this area.
Clear the Hunting Grounds |q 62782/1 |goto 47.08,63.66
|only if havequest(62782) or completedq(62782)
step
talk Huntmaster Constantin##156384
|tip Outside.
turnin Hunting Trophies##60514 |goto 48.50,68.44
step
kill Packmother Soulfang##163282
|tip Loot her to complete the quest goal.
Investigate Abel's Fate |q 58996/1 |goto 48.71,78.78
step
talk Huntmaster Constantin##156384
turnin Abel's Fate##58996 |goto 48.51,68.44
step
Cross the bridge |goto 47.55,72.44 < 20 |only if walking
accept Stalking Fear##62783 |goto 42.97,74.23
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
click Soulbreaker Trap+
|tip They look like dark metal circle traps with red coloring on the ground around this area.
Eliminate the Dredhollow Threats |q 62783/1 |goto 41.45,77.07
|only if havequest(62783) or completedq(62783)
step
Cross the bridge |goto 42.82,71.21 < 20 |only if walking
Follow the path |goto 36.66,57.08 < 20 |only if walking
talk Sabina##168455
|tip Up on the ridge.
accept A Rousing Aroma##60467 |goto 35.07,53.88
step
kill Ravenous Swarm##160613+
|tip They look like groups of tiny insects inside the dead tree trunks around this area.
collect 4 Pungent Swarmer Toxin##178898 |q 60467/1 |goto 35.69,54.93
You can find more around:
[34.75,48.85]
[32.85,52.58]
step
talk Sabina##168455
|tip Up on the ridge.
turnin A Rousing Aroma##60467 |goto 35.07,53.88
accept Safe in the Shadows##60469 |goto 35.07,53.88
accept Rubble Rummaging##60468 |goto 35.07,53.88
stickystart "Collect_Shackle_Key"
step
Find Sabina's Companions |q 60469/1 |goto 37.76,53.59
step
click Stained Dagger
Search for Clues |q 60469/2 |goto 37.69,53.73 |count 1
step
click Tattered Journal
Search for Clues |q 60469/2 |goto 37.68,53.45 |count 2
step
click Light Satchel
Search for Clues |q 60469/2 |goto 37.91,53.57 |count 3
step
label "Collect_Shackle_Key"
click Rubble Pile+
|tip They look like small piles of rocks on the ground around this area.
collect Shackle Key##178904 |q 60468/1 |goto 37.76,53.59
step
talk Sabina##168455
|tip Up on the ridge.
turnin Safe in the Shadows##60469 |goto 35.07,53.88
turnin Rubble Rummaging##60468 |goto 35.07,53.88
accept Setting Sabina Free##60470 |goto 35.07,53.88
step
click Shackles
|tip She will attack you.
Release Sabina |q 60470/1 |goto 35.09,53.88
step
kill Sabina##168525 |q 60470/2 |goto 35.07,53.88
step
_Click the Complete Quest Box:_
turnin Setting Sabina Free##60470
step
accept Ash You Like It##62781 |goto 35.74,58.68
|tip You will accept this quest automatically.
|only if completedq(62716)
step
Kill enemies around this area
clicknpc Desiccation Refugee##175040+
|tip They look like neutral venthyr crouching on the ground around this area.
click Bottle of Settling Ash+
|tip They look like small glass jars with orange liquid in them on the ground around this area.
Use the _"Throw Ash"_ ability
|tip Use it on Turbulent Cinders.
|tip They look like tornados on the ground around this area.
|tip It appears as a button on the screen after you click a Bottle of Settling Ash.
Dessimate the Desiccation |q 62781/1 |goto 35.74,58.68
|only if havequest(62781) or completedq(62781)
step
Follow the path up |goto 34.14,52.98 < 10 |only if walking
talk Delia##166089
|tip Inside the building.
home Sanctuary of the Mad |goto 31.19,46.63
step
click Wanted: Summoner Marcelis
accept WANTED: Summoner Marcelis##60276 |goto 30.87,49.04
step
Follow the path |goto 29.33,58.70 < 20 |only if walking
Follow the path up |goto 30.49,62.33 < 10 |only if walking
kill Summoner Marcelis##168093 |q 60276/1 |goto 30.21,63.93
|tip Inside the building.
step
talk Dispatcher Raluca##168120
turnin WANTED: Summoner Marcelis##60276 |goto 30.71,49.12
step
talk Laurent##158038
accept An Unfortunate Situation##57531 |goto 26.42,48.95
step
kill Costel##158165
|tip Inside the building.
Recover Laurent's Belongings |q 57531/1 |goto 29.72,48.72
step
talk Laurent##158038
turnin An Unfortunate Situation##57531 |goto 26.43,48.95
accept Foraging for Fragments##57532 |goto 26.43,48.95
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/1 |goto 25.71,48.57
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/2 |goto 25.68,48.54
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/3 |goto 25.53,47.34
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/4 |goto 25.51,47.39
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/5 |goto 24.98,47.98
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/6 |goto 25.00,48.04
step
Watch the dialogue
talk Laurent##158205
|tip He walks to this location.
turnin Foraging for Fragments##57532 |goto 24.25,49.41
accept Moving Mirrors##57571 |goto 24.25,49.41
step
click Mirror Trap+
|tip There are 3 of them surrounding Simone.
Free Simone |q 57571/1 |goto 24.07,49.67
step
Watch the dialogue
talk Simone##158088
|tip She walks to this location.
turnin Moving Mirrors##57571 |goto 24.22,49.48
accept Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
accept When Only Ash Remains##57534 |goto 24.25,49.42
stickystart "Kill_Ashen_Ravagers"
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 23.02,49.52 |count 1
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.20,48.11 |count 2
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 21.86,50.38 |count 3
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.88,50.00 |count 4
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.51,52.16 |count 5
step
label "Kill_Ashen_Ravagers"
kill 10 Ashen Ravager##164524 |q 57534/1 |goto 23.21,49.46
step
talk Simone##158088
turnin Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
turnin When Only Ash Remains##57534 |goto 24.25,49.41
accept Escaping the Master##57535 |goto 24.25,49.41
step
talk Simone##158088
accept We Need More Power##59427 |goto 24.22,49.49
stickystart "Collect_Anima_59427"
step
Kill Shrouded enemies around this area
|tip You can find more inside the buildings around this area.
collect 10 Mirror Fragment##172220 |q 57535/1 |goto 23.79,53.09
step
label "Collect_Anima_59427"
click Anima Stores+
|tip They look like small metal burnt out lanterns on the ground around this area.
|tip You can find more inside the buildings around this area.
|tip Fill up the blue bar in the quest tracker area.
Collect Anima |q 59427/1 |goto 23.79,53.09
step
talk Simone##158088
turnin We Need More Power##59427 |goto 24.22,49.48
step
talk Laurent##158205
turnin Escaping the Master##57535 |goto 24.25,49.41
accept Mirror Making, Not Breaking##57536 |goto 24.25,49.41
step
Watch the dialogue
Follow Laurent and Simone |q 57536/1 |goto 24.81,50.31
step
talk Laurent##164420
Tell him _"I am ready."_
Speak to Laurent |q 57536/2 |goto 24.81,50.31
step
Kill the enemies that attack in waves
|tip Fill up the blue bar in the quest tracker area.
Defend Laurent and Simone |q 57536/3 |goto 24.73,50.38
step
talk Laurent##158505
turnin Mirror Making, Not Breaking##57536 |goto 24.81,50.31
step
Ride the elevator up |goto 30.34,47.34 < 15 |only if walking
Run up the stairs |goto 32.75,44.10 < 15 |only if walking
Cross the bridge |goto 33.91,41.49 < 20 |only if walking
Follow the path down |goto 37.69,44.18 < 20 |only if walking
talk Courier Chip##160202
fpath Charred Ramparts |goto 38.95,49.33
step
Follow the path on the ground |goto 28.31,49.06 < 50 |only if walking
Continue following the path |goto 26.24,45.18 < 20 |only if walking
Cross the bridge |goto 25.11,37.08 < 20 |only if walking
Follow the path |goto 25.94,30.49 < 20 |only if walking
talk Courier Dreadcarrier##158533
fpath Dominance Keep |goto 25.96,28.88
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Bastion (Story Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Bastion\n"..
"\nzone quests and storyline.\n",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
image=ZGV.DIR.."\\Guides\\Images\\Bastion",
},[[
step
Watch the dialogue
talk Kleia##166227
turnin Seek the Ascended##59773 |goto Bastion/0 37.52,76.45
accept Welcome to Eternity##59774 |goto Bastion/0 37.52,76.45
step
talk Kleia##166227
Tell her _"Lead on, Kleia."_
Speak to Kleia |q 59774/1 |goto 37.52,76.45
step
Watch the dialogue
|tip Follow Kleia as she walks.
|tip She eventually walks to this location.
Follow Kleia |q 59774/2 |goto 42.09,78.31
step
talk Kleia##165107
turnin Welcome to Eternity##59774 |goto 42.09,78.31
accept Pardon Our Dust##57102 |goto 42.09,78.31
step
click Anima Canister
Pick Up an Anima Canister |q 57102/1 |goto 42.51,78.42
step
click Goliath Watcher
Recover the Anima |q 57102/2 |goto 42.52,78.86 |count 20
step
click Kyrian Colossus
Recover the Anima |q 57102/2 |goto 42.80,78.53 |count 70
step
click Goliath Watcher
Recover the Anima |q 57102/2 |goto 42.70,78.00 |count 100
step
talk Greeter Mnemis##158281
turnin Pardon Our Dust##57102 |goto 42.13,78.25
step
Watch the dialogue
talk Greeter Mnemis##158281
accept Remember: This is Forever##57584 |goto 42.13,78.25
step
talk Greeter Mnemis##158281
Tell him _"I think there might have been a mistake."_
Tell him _"I am not dead."_
Tell him _"I come from Azeroth."_
Watch the dialogue
Speak to Greeter Mnemis |q 57584/1 |goto 42.13,78.25
step
click Pure Thought Vesper
Visit the Southwest Station |q 57584/5 |goto 41.25,79.70
step
click Compendium of Arrival
Visit the Southeast Station |q 57584/4 |goto 42.55,80.27
step
Use the _"Ritual Cleansing"_ ability
|tip It appears as a button on the screen.
Visit the Northeast Station |q 57584/3 |goto 43.29,76.95
step
click Bench
Visit the Northwest Station |q 57584/2 |goto 41.87,76.47
step
talk Kleia##165107
turnin Remember: This is Forever##57584 |goto 42.09,78.31
accept Trouble in Paradise##60735 |goto 42.09,78.31
step
talk Kleia##165107
Choose _<Tell Kleia what you saw in the Maw.>_
Watch the dialogue
Speak to Kleia |q 60735/1 |goto 42.09,78.31
step
Watch the dialogue
Let Kleia Handle This |q 60735/2 |goto 42.25,78.30
step
talk Kalisthene##166306
turnin Trouble in Paradise##60735 |goto 42.33,78.34
accept Walk the Path, Aspirant##57261 |goto 42.33,78.34
step
Watch the dialogue
Travel with Kleia |q 57261/1 |goto 46.31,79.00
step
Use the _"Kleia's Perspective"_ ability
|tip It appears as a button on the screen.
See Bastion Through Kleia's Eyes |q 57261/2 |goto 46.31,79.00
step
talk Torgolius##159127
fpath Aspirant's Rest |goto 48.10,74.25
step
Travel to Aspirant's Rest |q 57261/3 |goto 48.10,72.97
step
talk Caretaker Mirene##160601
home Aspirant's Rest |goto 48.10,72.97
step
talk Kleia##165107
turnin Walk the Path, Aspirant##57261 |goto 48.20,72.60
accept A Soulbind In Need##57677 |goto 48.20,72.60
accept The Things That Haunt Us##57676 |goto 48.20,72.60
stickystart "Slay_Memories"
step
Enter the building |goto 47.70,71.64 < 7 |walk
Find Pelagos |q 57677/1 |goto Bastion/1 23.04,58.78
|tip Inside the building.
step
kill Excruciating Memory##158630 |q 57677/2 |goto 16.84,60.18
|tip Inside the building.
step
label "Slay_Memories"
Kill enemies around this area
|tip Inside the building.
Slay #12# Memories |q 57676/1 |goto 44.65,71.51
step
Leave the building |goto Bastion/0 47.69,71.61 < 7 |walk
talk Pelagos##165112
turnin A Soulbind In Need##57677 |goto Bastion/0 48.16,72.53
step
talk Kleia##165107
turnin The Things That Haunt Us##57676 |goto 48.20,72.60
accept The Aspirant's Crucible##57709 |goto 48.20,72.60
step
clicknpc Theonara##158686
Ride Theonara |q 57709/1 |goto 47.97,74.09
step
Fly to the Aspirant's Crucible |goto 55.76,81.93 < 10 |c |q 57709 |notravel
step
talk Forgelite Sophone##158807
turnin The Aspirant's Crucible##57709 |goto 56.14,81.73
accept A Life of Service##57710 |goto 56.14,81.73
step
click The Eternal Flame
Commune with the Eternal Flame |q 57710/1 |goto 57.03,81.27
step
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 1
step
click The Eternal Flame
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 2
step
click The Eternal Flame
Kill enemies around this area
|tip Kill all of the enemies that appear nearby.
Relive the Act of Service |q 57710/2 |goto 57.03,81.27 |count 3
step
talk Forgelite Sophone##158807
turnin A Life of Service##57710 |goto 56.41,81.60
accept A Forge Gone Cold##57711 |goto 56.41,81.60
step
talk Sika##166577
turnin A Forge Gone Cold##57711 |goto 52.66,82.60
accept The Cycle of Anima: Etherwyrms##57263 |goto 52.66,82.60
accept The Cycle of Anima: Flower Power##57267 |goto 52.66,82.60
step
talk Forgelite Sophone##158807
|tip She walks to this location.
accept The Cycle of Anima: Drought Conditions##57265 |goto 52.67,82.78
step
click Anima Extractor
Activate the Anima Extractor |q 57265/1 |goto 54.89,79.47
step
kill Ravenous Etherwyrm##158771
|tip It flies down to you.
Defend the Anima Extractor |q 57265/2 |goto 54.84,79.59
step
click Anima Canister
collect Condensed Anima Mote##177954 |q 57265/3 |goto 54.97,79.32
stickystart "Collect_Glowing_Visceras"
step
click Adrima's Lily+
|tip They look like purple plants on the ground around this area.
collect 6 Adrima's Lily##172518 |q 57267/1 |goto 54.96,77.61
step
label "Collect_Glowing_Visceras"
Kill enemies around this area
|tip They are flying in the air.
collect 25 Glowing Viscera##172516 |q 57263/1 |goto 54.96,77.61
step
talk Sika##166577
turnin The Cycle of Anima: Etherwyrms##57263 |goto 52.66,82.59
turnin The Cycle of Anima: Flower Power##57267 |goto 52.66,82.59
step
talk Forgelite Sophone##158807
turnin The Cycle of Anima: Drought Conditions##57265 |goto 52.67,82.78
accept Light the Forge, Forgelite##59920 |goto 52.67,82.78
step
click Raw Materials
Gather the Raw Materials |havebuff spell:324930 |goto 52.63,82.69 |q 59920
step
Enter the building |goto 53.07,83.14 < 7 |walk
click Basin
|tip Inside the building.
Carry the Raw Materials |q 59920/1 |goto 52.80,83.47
step
click Anima Forge Vent
|tip Inside the building.
Clear the Vent |q 59920/2 |goto 52.74,83.56 |count 1
step
click Anima Forge Vent
|tip Inside the building.
Clear the Vent |q 59920/2 |goto 52.67,83.37 |count 2
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.71,83.21 |count 1
step
click Broken Barrel
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.71,83.15 |count 2
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.81,83.38 |count 3
step
click Broken Glass
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.82,83.66 |count 4
step
click Unfinished Weapon
|tip Inside the building.
Tidy Up |q 59920/3 |goto 52.97,83.50 |count 5
step
Watch the dialogue
talk Forgelite Sophone##158807
|tip She walks to this location.
|tip Inside the building.
turnin Light the Forge, Forgelite##59920 |goto 52.94,83.50
accept The Work of One's Hands##57713 |goto 52.94,83.50
step
talk Sika##166742
|tip Inside the building.
Tell her _"Show me what to do, Sika."_
Speak to Sika |q 57713/1 |goto 52.72,83.37
step
click Raw Materials
|tip Click it repeatedly.
|tip Inside the building.
Add #5# Fuel to the Forge |q 57713/2 |goto 52.79,83.49
step
click Anima Forge Vent
|tip Inside the building.
Open a Vent |q 57713/3 |goto 52.74,83.55
step
Watch the dialogue
|tip Follow Sika's instructions to either add fuel or open the vents.
|tip Click Raw Materials to add fuel.
|tip Click Anima Forge Vents to open the vents.
Hold the Heat Steady |q 57713/4 |goto 52.76,83.51
|tip Watch the bar that appears above the forge.
|tip Try to keep the marker in the middle blue section.
step
Watch the dialogue
|tip Inside the building.
click Incomplete Armor
Hold the Armor Steady |q 57713/5 |goto 52.85,83.33
step
Watch the dialogue
|tip Inside the building.
talk Forgelite Sophone##158807
turnin The Work of One's Hands##57713 |goto 52.94,83.48
accept The True Crucible Awaits##57908 |goto 52.94,83.48
step
talk Kleia##158862
turnin The True Crucible Awaits##57908 |goto 51.72,81.03
accept Assessing Your Strength##57288 |goto 51.72,81.03
step
talk Pelagos##158861
accept Assessing Your Stamina##57909 |goto 51.74,80.99
stickystart "Complete_Combat_Meditations"
step
kill Archilon##158867
Defeat Archilon |q 57288/1 |goto 50.52,82.20
step
kill Straticus##158870
Defeat Straticus |q 57288/3 |goto 50.07,80.52
step
kill Epilon##158869
Defeat Epilon |q 57288/2 |goto 50.52,78.82
step
label "Complete_Combat_Meditations"
talk Sparring Aspirant##159505+
|tip Challenge them to spar with you.
|tip The dialogue options vary.
kill Sparring Aspirant##159505+
|tip They will eventually surrender.
Complete #8# Combat Meditations |q 57909/1 |goto 50.64,80.48
step
talk Pelagos##158861
turnin Assessing Your Stamina##57909 |goto 51.67,80.86
step
talk Kleia##158862
turnin Assessing Your Strength##57288 |goto 51.63,80.94
accept Assessing Your Spirit##57714 |goto 51.63,80.94
step
kill Athanos##158891
|tip You won't die.
Challenge Athanos |q 57714/1 |goto 51.25,80.49
step
talk Kleia##158862
turnin Assessing Your Spirit##57714 |goto 51.63,80.94
step
talk Forgelite Sophone##158807
accept Aspirant's Reflection##57291 |goto 51.64,80.90
step
Enter Aspirant's Reflection |q 57291/1 |goto 55.97,86.45
|tip Enter the doorway of the building.
step
talk Kleia##159583
|tip Inside the building.
turnin Aspirant's Reflection##57291 |goto 57.22,86.58
accept The First Cleansing##57266 |goto 57.22,86.58
step
Use the _"Bathe"_ ability.
|tip It appears as a button on the screen.
|tip Inside the building.
Bathe in the Pool |q 57266/2 |goto 57.71,85.45
step
click Crate of Ritual Vestments
|tip Inside the building.
Don the Vestments |q 57266/1 |goto 58.09,85.72
step
click Vespers of Clarity
|tip Inside the building.
Ring the Vespers of Clarity |q 57266/3 |goto 58.05,85.33
step
talk Kleia##159583
|tip Inside the building.
Tell her _"I am ready to begin."_
Speak to Kleia |q 57266/4 |goto 57.22,86.58
step
click Soul Mirror
|tip You will be attacked.
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 58.64,88.87 |count 1
step
click Soul Mirror
|tip You will be attacked.
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 59.31,88.35 |count 2
step
click Soul Mirror
|tip Inside the building.
Peer into the Soul Mirror |q 57266/5 |goto 59.13,87.53 |count 3
step
kill Anguished Memory##159665
|tip Inside the building.
Complete the First Cleansing |q 57266/6 |goto 58.87,88.17
step
Leave the building |goto 55.98,86.46 < 7 |walk
talk Kleia##158862
|tip She runs to this location.
turnin The First Cleansing##57266 |goto 55.65,86.43
accept The Archon's Answer##60219 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60225 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60226 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60222 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60224 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60220 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60221 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60217 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60218 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60223 |goto 55.65,86.43 |or
'|accept The Archon's Answer##57715 |goto 55.65,86.43 |or
'|accept The Archon's Answer##60229 |goto 55.65,86.43 |or
step
talk Kalisthene##156217
|tip She is flying nearby.
Tell her _"I wish to speak to the Archon."_
Watch the dialogue
Speak to Kalisthene |q 60219/1 |goto 53.51,87.13 |only if havequest(60219) or completedq(60219)
Speak to Kalisthene |q 60225/1 |goto 53.51,87.13 |only if havequest(60225) or completedq(60225)
Speak to Kalisthene |q 60226/1 |goto 53.51,87.13 |only if havequest(60226) or completedq(60226)
Speak to Kalisthene |q 60222/1 |goto 53.51,87.13 |only if havequest(60222) or completedq(60222)
Speak to Kalisthene |q 60224/1 |goto 53.51,87.13 |only if havequest(60224) or completedq(60224)
Speak to Kalisthene |q 60220/1 |goto 53.51,87.13 |only if havequest(60220) or completedq(60220)
Speak to Kalisthene |q 60221/1 |goto 53.51,87.13 |only if havequest(60221) or completedq(60221)
Speak to Kalisthene |q 60217/1 |goto 53.51,87.13 |only if havequest(60217) or completedq(60217)
Speak to Kalisthene |q 60218/1 |goto 53.51,87.13 |only if havequest(60218) or completedq(60218)
Speak to Kalisthene |q 60223/1 |goto 53.51,87.13 |only if havequest(60223) or completedq(60223)
Speak to Kalisthene |q 57715/1 |goto 53.51,87.13 |only if havequest(57715) or completedq(57715)
Speak to Kalisthene |q 60229/1 |goto 53.51,87.13 |only if havequest(60229) or completedq(60229)
step
Use the _"Kalisthene's Grace"_ ability
|tip It appears as a button on the screen.
Accept Kalisthene's Gift |q 60219/2 |goto 53.51,87.13 |only if havequest(60219) or completedq(60219)
Accept Kalisthene's Gift |q 60225/2 |goto 53.51,87.13 |only if havequest(60225) or completedq(60225)
Accept Kalisthene's Gift |q 60226/2 |goto 53.51,87.13 |only if havequest(60226) or completedq(60226)
Accept Kalisthene's Gift |q 60222/2 |goto 53.51,87.13 |only if havequest(60222) or completedq(60222)
Accept Kalisthene's Gift |q 60224/2 |goto 53.51,87.13 |only if havequest(60224) or completedq(60224)
Accept Kalisthene's Gift |q 60220/2 |goto 53.51,87.13 |only if havequest(60220) or completedq(60220)
Accept Kalisthene's Gift |q 60221/2 |goto 53.51,87.13 |only if havequest(60221) or completedq(60221)
Accept Kalisthene's Gift |q 60217/2 |goto 53.51,87.13 |only if havequest(60217) or completedq(60217)
Accept Kalisthene's Gift |q 60218/2 |goto 53.51,87.13 |only if havequest(60218) or completedq(60218)
Accept Kalisthene's Gift |q 60223/2 |goto 53.51,87.13 |only if havequest(60223) or completedq(60223)
Accept Kalisthene's Gift |q 57715/2 |goto 53.51,87.13 |only if havequest(57715) or completedq(57715)
Accept Kalisthene's Gift |q 60229/2 |goto 53.51,87.13 |only if havequest(60229) or completedq(60229)
step
talk Kalisthene##156217
|tip She is flying nearby.
turnin The Archon's Answer##60219 |goto 53.51,87.12 |only if havequest(60219) or completedq(60219)
turnin The Archon's Answer##60225 |goto 53.51,87.12 |only if havequest(60225) or completedq(60225)
turnin The Archon's Answer##60226 |goto 53.51,87.12 |only if havequest(60226) or completedq(60226)
turnin The Archon's Answer##60222 |goto 53.51,87.12 |only if havequest(60222) or completedq(60222)
turnin The Archon's Answer##60224 |goto 53.51,87.12 |only if havequest(60224) or completedq(60224)
turnin The Archon's Answer##60220 |goto 53.51,87.12 |only if havequest(60220) or completedq(60220)
turnin The Archon's Answer##60221 |goto 53.51,87.12 |only if havequest(60221) or completedq(60221)
turnin The Archon's Answer##60217 |goto 53.51,87.12 |only if havequest(60217) or completedq(60217)
turnin The Archon's Answer##60218 |goto 53.51,87.12 |only if havequest(60218) or completedq(60218)
turnin The Archon's Answer##60223 |goto 53.51,87.12 |only if havequest(60223) or completedq(60223)
turnin The Archon's Answer##57715 |goto 53.51,87.12 |only if havequest(57715) or completedq(57715)
turnin The Archon's Answer##60229 |goto 53.51,87.12 |only if havequest(60229) or completedq(60229)
step
talk Kleia##158862
accept All An Aspirant Can Do##58174 |goto 53.51,87.27
step
talk Kleia##158471
turnin All An Aspirant Can Do##58174 |goto 48.28,72.86
step
talk Disciple Kosmas##157673
accept The Temple of Purity##57270 |goto 48.36,72.80
step
talk Eridia##159762
turnin The Temple of Purity##57270 |goto 54.10,73.62
accept A Temple in Need##57977 |goto 54.10,73.62
step
talk Disciple Kosmas##157673
accept On The Edge of a Revelation##57264 |goto 56.72,74.46
stickystart "Inspire_Aspirants_To_Action"
step
talk Disciple Fotima##159840
Tell her _"I will help you."_
Watch the dialogue
kill Danysia's Burden##160654
Aid Disciple Fotima |q 57977/1 |goto 57.36,71.45
step
talk Disciple Helene##160636
Tell her _"Tell me how I can help."_
Watch the dialogue
clicknpc Galistos' Burden##160698+
|tip They look like various spirits that appear nearby.
Aid Disciple Helene |q 57977/2 |goto 57.95,75.88
step
talk Disciple Lykaste##159841
Tell her _"Begin the cleansing. I am ready."_
Watch the dialogue
kill Fallen Acolyte Erisne##160646
Aid Disciple Lykaste |q 57977/3 |goto 60.01,73.66
step
label "Inspire_Aspirants_To_Action"
talk Vulnerable Aspirant##157242+
|tip Try to choose the most positive dialogue option available, otherwise enemies may attack you.
|tip Some of them may attack you, or other enemies may appear and attack you.
Inspire #11# Aspirants to Action |q 57264/1 |goto 58.40,75.27
step
talk Eridia##159762
|tip Inside the building.
turnin A Temple in Need##57977 |goto 59.40,78.00
turnin On The Edge of a Revelation##57264 |goto 59.40,78.00
accept A Wayward Disciple?##57716 |goto 59.40,78.00
step
Follow the path up |goto 59.13,71.56 < 30 |only if walking
talk Disciple Nikolon##159896
Tell him _"Eridia asked me to find you."_
Find the Missing Disciple |q 57716/1 |goto 59.94,69.11
step
Watch the dialogue
|tip Follow Disciple Nikolon and protect him as he walks.
|tip He eventually walks to this location inside the building.
Escort Disciple Nikolon to Eridia |q 57716/2 |goto 59.45,77.89
step
talk Eridia##159762
|tip Inside the building.
turnin A Wayward Disciple?##57716 |goto 59.40,78.01
accept Step Back From That Ledge, My Friend##57717 |goto 59.40,78.01
step
Watch the dialogue
|tip Follow Eridia as she walks.
talk Eridia##159906
Tell her _"Yes, Eridia."_
Kill the enemies that attack in waves
kill Nikolon's Despair##159911
Assist Eridia |q 57717/1 |goto 60.17,78.06
step
Watch the dialogue
talk Fallen Disciple Nikolon##159900
Ask him _"Are you well?"_
Speak to Fallen Disciple Nikolon |q 57717/2 |goto 60.02,77.88
step
Watch the dialogue
talk Eridia##159906
Ask her _"What is it? What is wrong?"_
Speak to Eridia |q 57717/3 |goto 60.17,78.06
step
talk Eridia##159762
turnin Step Back From That Ledge, My Friend##57717 |goto 59.32,77.05
accept A Once Sweet Sound##57037 |goto 59.32,77.05
accept The Hand of Purification##59147 |goto 59.32,77.05
stickystart "Cleanse_The_Temple"
step
click Vesper of Purity
Cleanse the Vesper of Purity |q 57037/1 |goto 57.35,71.10
step
click Dark Sermon
accept Dangerous Discourse##57719 |goto 60.07,73.71
step
click Vesper of Harmony
Cleanse the Vesper of Harmony |q 57037/2 |goto 60.25,73.47
step
click Dark Sermon
collect 2 Dark Sermon##171215 |q 57719/1 |goto 59.86,72.79
step
click Dark Sermon##343603
collect 3 Dark Sermon##171215 |q 57719/1 |goto 60.69,74.01
step
click Dark Sermon##343603
collect 4 Dark Sermon##171215 |q 57719/1 |goto 59.82,74.91
step
click Dark Sermon##343603
collect 5 Dark Sermon##171215 |q 57719/1 |goto 60.56,76.35
step
click Dark Sermon##343603
collect 6 Dark Sermon##171215 |q 57719/1 |goto 60.89,74.69
step
label "Cleanse_The_Temple"
Kill enemies around this area
talk Terrified Steward##168119+
|tip They look like scared owl NPC's on the ground around this area.
"Cleanse" the Temple |q 59147/1 |goto 58.54,75.26
|tip Fill up the blue bar in the quest tracker area.
step
talk Eridia##159762
|tip On the bridge.
turnin A Once Sweet Sound##57037 |goto 61.27,74.36
turnin The Hand of Purification##59147 |goto 61.27,74.36
turnin Dangerous Discourse##57719 |goto 61.27,74.36
accept The Enemy You Know##57446 |goto 61.27,74.36
step
Watch the dialogue
|tip Follow Eridia as she flies.
Follow Eridia |q 57446/1 |goto 63.69,72.19
step
talk Disciple Kosmas##164378
|tip He flies to this location.
Tell him _"I am ready."_
Speak to Kosmas |q 57446/2 |goto 63.49,72.06
step
Watch the dialogue
Fly with Kosmas |invehicle |goto 63.49,72.06 |q 57446
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 65.06,74.98 |count 1
|tip Use the ability on you action bar.
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 62.61,68.86 |count 2
|tip Use the ability on you action bar.
step
Watch the dialogue
Cleanse the Vesper |q 57446/3 |goto 64.21,71.36 |count 3
|tip Use the ability on you action bar.
step
Watch the dialogue
Fly Up to the Platform |goto 64.20,71.55 < 10 |c |q 57446 |notravel
step
talk Disciple Kosmas##157673
turnin The Enemy You Know##57446 |goto 64.23,71.45
accept The Hand of Doubt##57269 |goto 64.23,71.45
step
talk Disciple Kosmas##157673
Tell him _"I will stand with you."_
Speak to Disciple Kosmas |q 57269/1 |goto 64.23,71.45
step
kill Lysonia##168299
|tip Disciple Kosmas will help you fight.
|tip She will eventually escape.
Defeat Lysonia |q 57269/2 |goto 64.53,71.17
step
Watch the dialogue
Witness Lysonia's Fate |q 57269/3 |goto 64.48,71.21
step
talk Vesiphone##157687
turnin The Hand of Doubt##57269 |goto 64.63,71.07
accept Purity's Prerogative##57447 |goto 64.63,71.07
step
talk Vesiphone##157687
Tell her _"I will fly with you."_
Fly with Vesiphone |q 57447/1 |goto 64.63,71.07
step
Begin Flying with Vesiphone |invehicle |goto 64.63,71.07 |q 57447
step
Watch the dialogue
Return to Kleia |outvehicle |goto 53.96,73.62 |q 57447 |notravel
step
talk Kleia##156238
turnin Purity's Prerogative##57447 |goto 53.83,73.66
step
Reach Level 51 |ding 51
|tip You must be level 51 to continue the questline.
|tip Use the "Bastion (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Kleia##156238
accept Chasing a Memory##58976 |goto 53.83,73.66
step
Watch the dialogue
talk Mikanikos##167034
turnin Chasing a Memory##58976 |goto 54.74,64.12
accept Directions Not Included##58771 |goto 54.74,64.12
accept The Prime's Directive##58799 |goto 54.74,64.12
stickystart "Collect_Centurion_Cores"
step
click Scroll+
|tip They look like single or small piles of rolled up white paper on the ground around this area.
|tip They have various names.
collect Locus Manual##178046 |q 58771/1 |goto 56.41,62.66
step
label "Collect_Centurion_Cores"
Kill enemies around this area
collect 12 Centurion Core##178094 |q 58799/1 |goto 56.41,62.66
step
talk Mikanikos##167034
turnin Directions Not Included##58771 |goto 57.17,61.69
turnin The Prime's Directive##58799 |goto 57.17,61.69
accept The Mnemonic Locus##58800 |goto 57.17,61.69
step
Use the _"Empower Extractor"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Activate the Mnemonic Locus |q 58800/1 |goto 57.12,61.67
step
talk Mikanikos##167034
turnin The Mnemonic Locus##58800 |goto 57.54,61.82
accept What's In a Memory?##58977 |goto 57.54,61.82
step
talk Mikanikos##167034
Tell him _"I am ready."_
Speak to Mikanikos |q 58977/1 |goto 57.54,61.82
step
kill Forsworn Memory Fragment##162492+
|tip They appear around this area.
collect 10 Memory of the Forsworn##183802 |q 58977/2 |goto 57.38,61.93
step
clicknpc Essence of Lysonia##167551
Imbue the Fragment of Lysonia |q 58977/3 |goto 57.62,61.69
step
Watch the dialogue
talk Kleia##167038
turnin What's In a Memory?##58977 |goto 57.51,61.73
accept Lysonia's Truth##58978 |goto 57.51,61.73
step
click Soul Mirror
Witness the First Memory |q 58978/1 |goto 58.11,64.52
step
click Soul Mirror
Witness the Second Memory |q 58978/2 |goto 58.97,62.69
step
click Soul Mirror
Witness the Third Memory |q 58978/3 |goto 59.55,59.63
step
Enter the building |goto 57.35,56.60 < 10 |walk
click Soul Mirror
|tip Inside the building.
Witness the Final Memory |q 58978/4 |goto 57.17,54.43
step
talk Mikanikos##167034
|tip Inside the building.
turnin Lysonia's Truth##58978 |goto 57.25,55.37
accept I MADE You!##58979 |goto 57.25,55.37
step
talk Mikanikos##167034
|tip Inside the building.
Tell him _"I am ready."_
Speak to Mikanikos |q 58979/1 |goto 57.25,55.37
step
kill Locus-Keeper Mnemis##167036
|tip Inside the building.
Defeat Locus-Keeper Mnemis |q 58979/2 |goto 57.21,54.96
step
Watch the dialogue
|tip Inside the building.
talk Locus-Keeper Mnemis##167035
turnin I MADE You!##58979 |goto 57.26,55.27
accept Mnemis, At Your Service##58980 |goto 57.26,55.27
step
Follow the path down |goto 58.54,58.89 < 20 |only if walking
Watch the dialogue
Kill the enemy that attacks
Locate the First Offering |q 58980/1 |goto 59.90,58.18
step
click Cache of the Paragons
Obtain the First Offering |q 58980/2 |goto 59.90,58.18
step
Watch the dialogue
Kill the enemy that attacks
Locate the Second Offering |q 58980/3 |goto 60.59,61.87
step
click Cache of the Paragons
Obtain the Second Offering |q 58980/4 |goto 60.59,61.87
step
talk Locus-Keeper Mnemis##167035
turnin Mnemis, At Your Service##58980 |goto 58.85,65.29
accept The Vault of the Archon##58843 |goto 58.85,65.29
step
talk Vault Guardian##167374
Click Here to Continue |confirm |goto 58.82,65.03 |q 58843
step
talk Vault Guardian##167374
Gain Entry to the Vault of the Archon |q 58843/1 |goto 59.02,65.31
step
Enter the building |goto 58.70,65.54 < 7 |walk
Watch the dialogue
|tip Follow Mikanikos as he walks.
|tip He eventually walks to this location inside the building.
talk Mikanikos##167498
|tip Inside the building.
Ask him _"What do we do now?"_
Follow Mikanikos |q 58843/2 |goto 57.94,68.60
step
Kill the enemies that attack in waves
|tip Inside the building.
Help Kleia |q 58843/3 |goto 57.93,66.75
step
Enter the Inner Vault |q 58843/4 |goto 56.15,67.65
|tip Inside the building.
step
talk Vault-Keeper Mnemis##167504
|tip Inside the building.
turnin The Vault of the Archon##58843 |goto 56.15,67.65
accept A Paragon's Reflection##60180 |goto 56.15,67.65
step
click Eye of Purity
|tip Inside the building.
Click Here to Continue |confirm |goto 56.28,68.13 |q 60180
step
click Eye of Humility
|tip Inside the building.
Click Here to Continue |confirm |goto 56.17,68.34 |q 60180
step
click Eye of Loyalty
|tip Inside the building.
Click Here to Continue |confirm |goto 56.01,68.44 |q 60180
step
click Eye of the Archon
|tip Inside the building.
Reveal the Final Memory |q 60180/1 |goto 55.71,68.14
step
talk Vault-Keeper Mnemis##167504
|tip Inside the building.
turnin A Paragon's Reflection##60180 |goto 56.14,67.66
accept Leave it to Mnemis##60013 |goto 56.14,67.66
step
click Transport Pad
|tip Inside the building.
Use the Anima Gateway |q 60013/1 |goto 57.70,67.16
step
Return to Kleia |offtaxi |goto 54.36,64.15 |q 60013 |notravel
step
talk Kleia##167038
turnin Leave it to Mnemis##60013 |goto 54.43,64.28
accept Go in Service##59196 |goto 54.43,64.28
step
Cross the bridge |goto 53.70,59.19 < 15 |only if walking
click Anima Gateway
Take the Gateway to Hero's Rest |q 59196/1 |goto 55.98,52.76
step
Travel to Hero's Rest |offtaxi |goto 53.26,48.52 |q 59196 |notravel |region heros_rest
step
talk Kleia##165042
turnin Go in Service##59196 |goto 52.88,48.03 |region heros_rest
step
talk Kalisthene##165045
accept Your Personal Assistant##59426 |goto 52.83,47.88 |region heros_rest
step
talk Ipa##167796
|tip There are many others around this area.
|tip It doesn't matter which one you pick.
|tip Just pick the one with the name and appearance you like the best.
Tell them _"I need assistance."_
Select Your Steward Companion |q 59426/1 |goto 52.75,47.14 |region heros_rest
step
talk Kalisthene##165045
turnin Your Personal Assistant##59426 |goto 52.83,47.87 |region heros_rest
accept Steward at Work##59197 |goto 52.83,47.87 |region heros_rest
step
talk Navarros##159423
fpath Hero's Rest |goto 51.37,46.80 |region heros_rest
step
cast Summon Steward##324739
Summon Your Steward |q 59197/1 |goto 51.74,46.81 |region heros_rest
step
_Next to you:_
talk Your Steward
Tell them _"I need you to fix the Beacon of Invocation."_
Watch the dialogue
|tip Follow your Steward as it walks.
Fix the Beacon of Invocation |q 59197/2 |region heros_rest
step
click Beacon of Invocation
Activate the Beacon of Invocation |q 59197/3 |goto 53.30,46.80 |region heros_rest
step
talk Inkiep##160173
home Hero's Rest |goto 53.21,46.86 |region heros_rest
step
Watch the dialogue
talk Polemarch Adrestes##165048
|tip He flies to this location.
turnin Steward at Work##59197 |goto 52.87,45.64 |region heros_rest
accept On Swift Wings##59198 |goto 52.87,45.64 |region heros_rest
step
talk Polemarch Adrestes##165048
Tell him _"I am ready to go to Elysian Hold."_
Speak to Adrestes |q 59198/1 |goto 52.87,45.65 |region heros_rest
step
Begin Flying with Adrestes |invehicle |goto 52.87,45.65 |q 59198 |region heros_rest
step
Watch the dialogue
Fly to Elysian Hold |outvehicle |goto Elysian Hold/0 39.92,65.63 |q 59198 |notravel
step
talk Cassius##159421
|tip Upstairs.
fpath Elysian Hold |goto 50.94,49.03
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin On Swift Wings##59198 |goto 55.65,41.95
accept Kyrestia, the Firstborne##59199 |goto 55.65,41.95
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
Tell him _"I am ready to speak to the Archon."_
Speak to Adrestes |q 59199/1 |goto 55.65,41.95
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin Kyrestia, the Firstborne##59199 |goto 55.65,41.95
accept The Wards of Bastion##59200 |goto 55.65,41.95
step
click Ward of Purity
Check the Ward of Purity |q 59200/1 |goto 52.04,78.87
step
click Ward of Loyalty
Check the Ward of Loyalty |q 59200/4 |goto 54.23,75.30
step
click Ward of Humility
Check the Ward of Humility |q 59200/2 |goto 58.58,88.46
step
click Ward of Wisdom
Check the Ward of Wisdom |q 59200/3 |goto 59.13,89.43
step
click Ward of Courage
Watch the dialogue
Check the Ward of Courage |q 59200/5 |goto 61.09,85.81
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin The Wards of Bastion##59200 |goto 55.65,41.95
step
Reach Level 53 |ding 53
|tip You must be level 53 to continue the questline.
|tip Use the "Bastion (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept Imminent Danger##60005 |goto 55.65,41.95
step
talk Cassius##159421
|tip Upstairs.
Tell him _"I need to go to the Temple of Courage."_
Fly to the Temple of Courage |q 60005/1 |goto 50.93,49.04
step
Begin Flying to the Temple of Courage |invehicle |goto 50.93,49.04 |q 60005
step
Watch the dialogue
Reach the Temple of Courage |outvehicle |goto Bastion/0 41.96,55.21 |q 60005 |notravel
step
talk Thanikos##167873
turnin Imminent Danger##60005 |goto Bastion/0 41.76,55.18
accept Now or Never##60006 |goto Bastion/0 41.76,55.18
step
talk Thanikos##167873
Tell him _"I am with you."_
Speak to Thanikos |q 60006/1 |goto 41.76,55.18
step
Kill the enemies that attack
Watch the dialogue
|tip Follow Thanikos as he walks.
Reclaim Xandria's Vigil |q 60006/2 |goto 41.76,55.18
step
talk Thanikos##167873
turnin Now or Never##60006 |goto 40.59,55.21
accept Rip and Tear##60008 |goto 40.59,55.21
step
talk Mikanikos##167135
accept Stay Scrappy##60007 |goto 40.72,55.50
step
talk Disciple Apolon##167269
accept Fight Another Day##60009 |goto 41.27,54.35
stickystart "Slay_House_Of_Constructs_Forces"
step
click Anima Conflux
collect Anima Conflux##178043 |q 60007/1 |goto 40.78,52.25
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 41.47,52.52 |count 1
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 40.35,50.76 |count 2
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 40.10,49.17 |count 3
step
click Archonic Resonator
collect Archonic Resonator##178041 |q 60007/3 |goto 39.48,48.89
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 39.59,50.40 |count 4
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 38.69,51.53 |count 5
step
Enter the building |goto 39.40,52.54 < 10 |only if walking
click Eternity Plating
|tip Inside the building.
collect Eternity Plating##178042 |q 60007/2 |goto 39.69,52.66
step
click Bonewrought Prison
Free the Ascended |q 60009/1 |goto 39.25,53.02 |count 6
step
label "Slay_House_Of_Constructs_Forces"
Kill enemies around this area
Slay the House of Constructs Forces |q 60008/1 |goto 39.05,52.11
step
_Next to you:_
talk Thanikos
turnin Rip and Tear##60008
step
Run up the stairs |goto 39.69,53.45 < 15 |only if walking
talk Disciple Apolon##167269
|tip He fights around this area.
turnin Fight Another Day##60009 |goto 41.27,54.35
step
talk Mikanikos##167135
turnin Stay Scrappy##60007 |goto 40.72,55.50
accept Clear as Crystal##60053 |goto 40.72,55.50
step
_Next to you:_
talk Thanikos
accept Double Tap##60052
stickystart "Sunder_House_Of_Rituals_Corpses"
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 40.95,58.43 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 40.14,57.31 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 39.25,56.73 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 38.98,57.97 |q 60053
step
click Necrotic Extractor
Click Here to Continue |confirm |goto 38.52,58.70 |q 60053
step
click Necrotic Extractor
|tip Inside the building.
Empower the Anima Conflux |q 60053/1 |goto 39.75,59.07
step
label "Sunder_House_Of_Rituals_Corpses"
Kill enemies around this area
use the Archonic Resonator##178140
|tip Use it near their corpses
Sunder #12# House of Rituals Corpses |q 60052/1 |goto 39.17,58.81
step
talk Thanikos##167423
turnin Double Tap##60052 |goto 39.46,55.24
step
talk Mikanikos##167428
turnin Clear as Crystal##60053 |goto 39.80,55.17
step
talk Thanikos##167423
accept The Final Countdown##60054 |goto 39.46,55.24
step
talk Thanikos##167423
Tell him _"I am ready."_
Speak to Thanikos |q 60054/1 |goto 39.46,55.24
step
Watch the dialogue
Kill the enemies that attack in waves
kill Marrowmaw##167433
Delay Amarth |q 60054/2 |goto 39.46,55.24
step
clicknpc Centurion Colossus##167121
Clear the Blockade |q 60054/3 |goto 39.83,55.23
|tip Use the ability on your action bar.
step
talk Thanikos##167460
turnin The Final Countdown##60054 |goto 38.93,55.23
accept A Time for Courage##60055 |goto 38.93,55.23
step
talk Thanikos##167460
Tell him _"I am ready."_
Speak to Thanikos |q 60055/1 |goto 38.93,55.23
step
Begin Flying with Thanikos |invehicle |goto 38.93,55.23 |q 60055
step
Watch the dialogue
Fly with Thanikos |outvehicle |goto 35.10,55.21 |q 60055 |notravel
step
Watch the dialogue
kill Thanikos Spinerender##167484
|tip Xandria will help you fight.
Confront Amarth |q 60055/2 |goto 34.24,55.22
step
Watch the dialogue
talk Disciple Apolon##167559
|tip He flies to this location.
Escape the Necrotic Wake |q 60055/3 |goto 34.63,55.09
step
Begin Flying with Disciple Apolon |invehicle |goto 34.63,55.09 |q 60055
step
Return to Safety |outvehicle |goto 40.84,55.11 |q 60055 |notravel
step
talk Disciple Apolon##167583
turnin A Time for Courage##60055 |goto 40.90,55.10
accept Follow the Path##60056 |goto 40.90,55.10
step
Cross the bridge |goto 44.80,47.61 < 15 |only if walking
Cross the bridge |goto 44.46,36.76 < 15 |only if walking
talk Klassia##159125
fpath Sagehaven |goto 44.08,32.45
step
Follow the road |goto 41.43,23.95 < 30 |only if walking
talk Adrina##175457
fpath Terrace of the Collectors |goto 35.80,21.07
step
talk Tal-Inara##159478
Tell her _"Maldraxxus has attacked Bastion."_
Watch the dialogue
Inform Tal-Inara of Maldraxxus's Attack |q 60056/2 |goto Oribos/0 38.91,69.97
step
talk Tal-Inara##159478
turnin Follow the Path##60056 |goto 38.91,69.97
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Maldraxxus (Story Only)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Maldraxxus:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Maldraxxus",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Grandmaster Vole##164244
|tip He walks around this area.
|tip Inside the building.
turnin If You Want Peace...##57386 |goto Maldraxxus/0 50.53,41.25 |only if havequest(57386) or completedq(57386)
accept To Die By the Sword##57390 |goto Maldraxxus/0 50.53,41.25
step
Kill enemies around this area
|tip Click the Arena Gate and walk through it.
|tip Outside the building.
Defeat #30# Competitors |q 57390/1 |goto 50.36,46.27
step
talk Grandmaster Vole##164244
turnin To Die By the Sword##57390 |goto 50.36,44.29
accept An Opportunistic Strike##60020 |goto 50.36,44.29
step
Kill enemies around this area
|tip Only elite enemies will count toward this quest goal.
Defeat #10# Elite Combatants |q 60020/1 |goto 50.36,46.27
step
talk Grandmaster Vole##164244
turnin An Opportunistic Strike##60020 |goto 50.36,44.29
accept Champion the Cause##60021 |goto 50.36,44.29
step
kill Champion Rin'mar##166649 |q 60021/2 |goto 51.72,46.63
|tip He fights around this area.
step
kill Champion Gutrend##166658 |q 60021/1 |goto 49.10,47.55
|tip He fights around this area.
step
talk Grandmaster Vole##164244
turnin Champion the Cause##60021 |goto 50.36,44.29
accept Land of Opportunity##57425 |goto 50.36,44.29
step
kill High Champion Meskal##166975 |q 57425/1 |goto 50.37,48.10
step
Watch the dialogue
|tip You will fly automatically.
Make Your Escape |invehicle |q 57425
step
Watch the dialogue
Escape the Theater of Pain |outvehicle |goto 48.34,57.05 |q 57425 |notravel
step
talk Baroness Draka##162069
turnin Land of Opportunity##57425 |goto 48.38,57.16
accept Arms for the Poor##57511 |goto 48.38,57.16
step
_Next to you:_
talk Baroness Draka
accept Walk Among Death##57512
step
click Faded Epitaph
accept Memory of Honor##60179 |goto 48.33,57.76
stickystart "Arm_Displaced_Scavengers"
stickystart "Kill_Unbound_Deathwalkers"
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 44.83,58.30 |count 1
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 44.00,61.48 |count 2
step
click Faded Epitaph
Read the Faded Epitaph |q 60179/1 |goto 45.86,61.75 |count 3
step
_Next to you:_
talk Baroness Draka
turnin Memory of Honor##60179
step
label "Arm_Displaced_Scavengers"
click Battered Weapon+
|tip They look like axes and swords stuck in the ground around this area.
collect Battered Weapon##172020+ |n
use the Battered Weapon##172020+
|tip Use them on Displaced Scavengers.
|tip They look like skeletons walking and mining on the ground around this area.
Arm #8# Displaced Scavengers |q 57511/1 |goto 46.93,58.96
step
label "Kill_Unbound_Deathwalkers"
kill 8 Unbound Deathwalker##158040 |q 57512/1 |goto 46.93,58.96
step
_Next to you:_
talk Baroness Draka
turnin Arms for the Poor##57511
turnin Walk Among Death##57512
accept Trench Warfare##60181
step
use Baron's Warhorn##178496
|tip Use it on Malifis.
|tip He looks like a large green spirit that walks around this area.
|tip This will summon allies to help you fight.
kill Malifis##166908 |q 60181/1 |goto 45.73,60.71
step
_Next to you:_
talk Baroness Draka
turnin Trench Warfare##60181
accept The House of the Chosen##57515
step
Follow the path up |goto 44.40,59.68 < 30 |only if walking
Enter the building |goto 40.92,61.34 < 15 |walk
Enter the House of the Chosen |q 57515/1 |goto 38.90,65.19
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Baroness Draka##159065
Tell her _"Tell me your story."_
Speak with Draka |q 57515/2 |goto 38.90,65.19
step
talk Baroness Draka##159065
|tip Inside the building.
turnin The House of the Chosen##57515 |goto 38.90,65.19
accept The First Act of War##57514 |goto 38.90,65.19
step
Enter the building |goto 36.43,60.83 < 10 |walk
talk Baron Vyraz##157895
|tip Inside the building.
Tell him _"Reporting for duty. I'm to prepare for war against the other houses."_
Report to Baron Vyraz |q 57514/1 |goto 36.33,60.20
step
Watch the dialogue
|tip Inside the building.
talk Baron Vyraz##157895
turnin The First Act of War##57514 |goto 36.33,60.20
accept The Hills Have Eyes##58351 |goto 36.33,60.20
accept Maintaining Order##58617 |goto 36.33,60.20
stickystart "Slay_Masked_Infiltrators"
step
talk Head Summoner Perex##168491
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Head Summoner Perex |q 58617/1 |goto 32.59,67.19
step
talk Drill Sergeant Telice##168463
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Drill Sergeant Telice |q 58617/2 |goto 36.74,75.90
step
talk Secutor Mevix##168288
|tip He walks around this area.
Tell him _"I have orders from Baron Vyraz."_
Deliver Orders to Secutor Mevix |q 58617/3 |goto 41.01,70.87
step
label "Slay_Masked_Infiltrators"
talk Chosen Protector##169376+
|tip They look like friendly NPC's all around the House of the Chosen.
|tip Walk around this area with the Chosen Corpsehound next to you.
|tip It will sense infiltrators, and run to them.
|tip You will be able to talk to them after the Chosen Corpsehound senses them.
Tell them _"You're acting suspicious."_
Slay #6# Masked Infiltrators |q 58351/1 |goto 36.66,72.49
step
Enter the building |goto 36.43,60.84 < 10 |walk
talk Baron Vyraz##157895
|tip Inside the building.
turnin The Hills Have Eyes##58351 |goto 36.33,60.20
turnin Maintaining Order##58617 |goto 36.33,60.20
accept Never Enough##60451 |goto 36.33,60.20
step
talk Baroness Draka##159065
|tip Inside the building.
turnin Never Enough##60451 |goto 38.90,65.19
accept Through the Fire and Flames##57516 |goto 38.90,65.19
step
click Standing Rock
|tip You won't die swimming through the lava.
Watch the dialogue
Reach the Standing Stone |q 57516/1 |goto 37.12,68.50
step
click Unfinished Blade
collect Unfinished Blade##178662 |q 57516/2 |goto 37.12,68.50
step
click Orb of Teleportation |goto 37.18,68.39
Return to Draka |goto 37.99,66.97 < 10 |noway |c |q 57516
step
talk Baroness Draka##159065
turnin Through the Fire and Flames##57516 |goto 38.22,66.53
step
Watch the dialogue
talk Baroness Draka##159065
accept Forging a Champion##58616 |goto 38.22,66.53
step
Follow the path up |goto 36.54,64.17 < 20 |only if walking
Continue up the path |goto 34.09,69.16 < 20 |only if walking
talk Bonesmith Heirmir##157676
Ask him _"What do you know about this blade?"_
Speak with Bonesmith Heirmir About Your Runeblade |q 58616/1 |goto 36.35,70.50
step
Use the _"Listen Up!"_ ability
|tip It appears as a button on the screen.
Convince Bonesmith Heirmir to Speak with You |q 58616/2 |goto 36.35,70.50
step
Watch the dialogue
talk Bonesmith Heirmir##157676
|tip He walks to this location.
turnin Forging a Champion##58616 |goto 36.29,71.08
accept Ossein Enchantment##58618 |goto 36.29,71.08
accept Thick Skin##58726 |goto 36.29,71.08
stickystart "Collect_Pulsating_Hides"
step
Follow the path |goto 40.15,70.70 < 20 |only if walking
kill Marrowjaw##168036
collect Empowered Bones##174499 |q 58618/1 |goto 41.44,67.20
step
label "Collect_Pulsating_Hides"
click Overgrown Mass+
|tip They look like large red blisters on the ground around this area.
|tip They will appear on your minimap as yellow dots.
kill Animated Flesh##168234+
collect 40 Pulsating Hide##178676 |q 58726/1 |goto 40.21,70.66
step
talk Bonesmith Heirmir##157676
turnin Ossein Enchantment##58618 |goto 36.29,71.08
turnin Thick Skin##58726 |goto 36.29,71.08
accept The Blade of the Primus##60428 |goto 36.29,71.08
step
talk Bonesmith Heirmir##157676
Tell him _"I am ready to start forging a rune weapon."_
Speak with Bonesmith Heirmir |q 60428/1 |goto 36.29,71.08
step
Watch the dialogue
Kill the enemies that attack in waves
kill Guardian of the Blade##168562
Protect Heirmir |q 60428/2 |goto 36.35,70.49
step
click Glowing Runeblade
Retrieve the Glowing Runeblade |q 60428/3 |goto 36.33,70.58
step
talk Bonesmith Heirmir##157676
turnin The Blade of the Primus##60428 |goto 36.29,71.08
accept The Path to Glory##60453 |goto 36.29,71.08
step
talk Baroness Draka##159065
|tip Inside the building.
turnin The Path to Glory##60453 |goto 38.90,65.19
accept Meet the Margrave##60461 |goto 38.90,65.19
step
talk Margrave Krexus##158007
|tip Inside the building.
turnin Meet the Margrave##60461 |goto 36.93,68.43 |region vortrexxis
step
Watch the dialogue
|tip Inside the building.
talk Margrave Krexus##158007
accept The Seat of the Primus##60886 |goto 36.93,68.43 |region vortrexxis
step
talk Baroness Draka##163536
|tip Inside the building.
Tell her _"I'm ready. Let's fly to the Seat of the Primus."_
Begin Flying with Draka |invehicle |goto 37.12,68.37 |q 60886 |region vortrexxis
step
Watch the dialogue
Fly with Draka to the Seat of the Primus |q 60886/1 |goto 50.38,67.56 |notravel
step
Use the _"Resonate"_ ability
|tip It appears as a button on the screen.
Empower the Rune of Ambition |q 60886/2 |goto 50.39,67.75
step
Watch the dialogue
talk Baroness Draka##168381
turnin The Seat of the Primus##60886 |goto 50.31,67.72
accept A Common Peril##58751 |goto 50.31,67.72
accept The House of Plagues##59130 |goto 50.31,67.72
accept Baron of the Chosen##57912 |goto 50.31,67.72
step
talk Wing Guard Buurkin##157514
fpath Bleak Redoubt |goto 52.47,67.65
step
talk Wing Guard Buurkin##157514
|tip Open the flight taxi map.
|tip This is to allow the guide to learn the flight paths you have.
fpath Theater of Pain |goto 52.47,67.65
step
talk Slumbar Valorum##161702
home Theater of Pain |goto 50.95,53.17
step
talk Plague Deviser Marileth##159930
turnin The House of Plagues##59130 |goto 56.47,57.29
accept Bug Bites##58011 |goto 56.47,57.29
accept Spores Galore##58016 |goto 56.47,57.29
stickystart "Collect_Bloated_Venom_Sacs"
step
click Stringy Spore+
|tip They look like small dark dead trees growing out of the ground around this area.
|tip Run away from them after clicking them, to pull them out of the ground.
|tip They will appear on your minimap as yellow dots.
collect 8 Stringy Spore##180271 |q 58016/1 |goto 54.05,58.60
step
label "Collect_Bloated_Venom_Sacs"
kill Virulent Pest##159856+
collect 6 Bloated Venom Sac##173368 |q 58011/1 |goto 54.05,58.60
step
talk Plague Deviser Marileth##159930
turnin Bug Bites##58011 |goto 56.47,57.29
turnin Spores Galore##58016 |goto 56.47,57.29
accept Slime, Anyone?##58027 |goto 56.47,57.29
step
click Jar of Venom
Imbue the Venom |q 58027/2 |goto 56.54,57.18
step
click Pile of Spores
Incorporate the Spores |q 58027/1 |goto 56.53,57.07
step
click Cauldron of Creation
Stir the Cauldron |q 58027/3 |goto 56.44,57.20
step
click Cauldron of Creation
Mix the Concoction |q 58027/4 |goto 56.44,57.20
step
talk Plague Deviser Marileth##159930
turnin Slime, Anyone?##58027 |goto 56.47,57.29
accept Hazardous Waste Collection##58036 |goto 56.47,57.29
accept Plague is Thicker Than Water##58045 |goto 56.47,57.29
step
click Marileth's Journal
accept Applied Science##58031 |goto 56.53,57.21
stickystart "Collect_Laboratory_Equipment"
stickystart "Find_Marileths_Journal_Page_One"
stickystart "Find_Marileths_Journal_Page_Two"
stickystart "Find_Marileths_Journal_Page_Three"
stickystart "Find_Marileths_Journal_Page_Four"
step
kill Korrim the Cunning##161613 |q 58045/1 |goto 62.08,63.07
step
label "Collect_Laboratory_Equipment"
click Plague Refuse+
|tip They look like green steaming piles of slime on the ground around this area.
clicknpc Laboratory Equipment##160062+
|tip They appear on the Plagueborn Slime that follows you around.
collect 6 Laboratory Equipment##173536 |q 58036/1 |goto 58.81,61.73
step
label "Find_Marileths_Journal_Page_One"
Kill Remnant enemies around this area
Find Marileth's Journal - Page One |q 58031/1 |goto 58.81,61.73
step
label "Find_Marileths_Journal_Page_Two"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Two |q 58031/2 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=1})
step
label "Find_Marileths_Journal_Page_Three"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Three |q 58031/3 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=2})
step
label "Find_Marileths_Journal_Page_Four"
Kill Remnant enemies around this area
Find Marileth's Journal - Page Four |q 58031/4 |goto 58.81,61.73
|only if goaltype("q",{questid=58031,objnum=3})
step
Run up the stairs |goto 57.83,66.73 < 15 |only if walking
talk Plague Deviser Marileth##159930
turnin Hazardous Waste Collection##58036 |goto 58.31,71.66
turnin Plague is Thicker Than Water##58045 |goto 58.31,71.66
turnin Applied Science##58031 |goto 58.31,71.66
accept By Any Other Name##59223 |goto 58.31,71.66
step
talk Vradira Livid##157515
fpath Plague Watch |goto 58.14,72.45
step
Enter the building |goto 58.47,79.30 < 10 |walk
kill Blossoming Deathshade##164759
|tip Inside the building.
collect Solanum Cerinthe##175410 |q 59223/1 |goto 57.90,80.45
step
talk Plague Deviser Marileth##159930
turnin By Any Other Name##59223 |goto 60.49,71.66
accept Fit For a Margrave##60831 |goto 60.49,71.66
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.56,71.81 |count 1
step
click Anima Catalyst
Catalyze the Anima |q 60831/1 |goto 60.41,71.18 |count 2
step
click Potion Chamber
Form the Potion |q 60831/2 |goto 60.66,71.40
step
Watch the dialogue
click Rune of Insight
Collect the Rune of Insight |q 60831/3 |goto 60.66,71.40
step
talk Plague Deviser Marileth##159930
turnin Fit For a Margrave##60831 |goto 60.49,71.65
accept Fathomless Power##59231 |goto 60.49,71.65
step
Follow the path |goto 58.22,70.94 < 30 |only if walking
Follow the road |goto 58.19,60.43 < 30 |only if walking
Follow the path |goto 65.79,54.25 < 15 |only if walking
Watch the dialogue
talk Baroness Vashj##162487
|tip She walks to this location.
Tell her _"I have a summons from Draka."_
Watch the dialogue
Deliver the Summons to the Lost Bannerman |q 58751/1 |goto 67.67,45.92
step
talk Baroness Vashj##162487
turnin A Common Peril##58751 |goto 67.67,45.92
accept Glorious Pursuits##58821 |goto 67.67,45.92
accept Prey Upon Them##59171 |goto 67.67,45.92
step
talk Felsen Wingclip##157516
fpath Renounced Bastille |goto 67.93,45.84
stickystart "Collect_Anima_Charged_Maldracites"
step
kill Mephiles the Loyal##164128
|tip Don't kill him, just weaken him.
use Vashj's Signal##178940
|tip Use it on Mephiles the Loyal when he is weakened.
Capture Mephiles the Loyal |q 58821/1 |goto 62.65,52.80
stickystart "Kill_Morbid_Disciples"
step
label "Collect_Anima_Charged_Maldracites"
click Anima-charged Maldracite##342099+
|tip They look like large floating bone structures with large green gems inside them around this area.
|tip They will appear on your minimap as yellow dots.
collect 3 Anima-charged Maldracite##174934 |q 59171/1 |goto 63.16,50.85
step
label "Kill_Morbid_Disciples"
kill 6 Morbid Disciple##163414 |q 58821/2 |goto 63.16,50.85
step
Follow the path up |goto 62.03,46.94 < 15 |only if walking
Follow the path |goto 64.74,48.16 < 30 |only if walking
Return Mephiles |q 58821/3 |goto 67.67,45.92
step
talk Baroness Vashj##162487
turnin Glorious Pursuits##58821 |goto 67.67,45.92
turnin Prey Upon Them##59171 |goto 67.67,45.92
accept War is Deception##59172 |goto 67.67,45.92
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.45,45.97 |count 1
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.68,45.69 |count 2
step
click Place Anima-charged Crystal
Plant the Anima-charged Crystal |q 59172/1 |goto 67.87,46.04 |count 3
step
talk Baroness Vashj##162487
Tell her _"I'm ready. Begin the ritual."_
Trigger the Ritual |q 59172/2 |goto 67.67,45.92
step
Watch the dialogue
Witness the Ritual |q 59172/3 |goto 67.67,45.92
step
Watch the dialogue
talk Baroness Vashj##162487
turnin War is Deception##59172 |goto 67.67,45.92
accept Entangling Web##59185 |goto 67.67,45.92
accept Tainted Cores##59210 |goto 67.67,45.92
step
talk Khaliiq##164297
accept Vaunted Vengeance##59188 |goto 67.71,45.61
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.68,45.69 |count 1
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.87,46.04 |count 2
step
click Depleted Crystal
Fracture the Depleted Crystal |q 59210/1 |goto 67.45,45.97 |count 3
stickystart "Collect_Maldracite_Dust"
stickystart "Siphon_Corpses_Of_Anima"
step
kill Architect Halen##165008
collect Halen's Ritual Drafts##178657 |q 59188/2 |goto 69.84,52.74
step
kill Architect Xeeli##165007
collect Xeeli's Ritual Drafts##178656 |q 59188/1 |goto 72.16,47.93
step
kill Architect Lye##165009
collect Lye's Ritual Drafts##178655 |q 59188/3 |goto 72.79,53.16
step
label "Collect_Maldracite_Dust"
click Jar of Ground Maldracite+
|tip They look like small stone bottles on the ground around this area.
collect 8 Maldracite Dust##178684 |q 59185/1 |goto 72.12,50.60
step
label "Siphon_Corpses_Of_Anima"
Kill enemies around this area
use the Fractured Anima Crystal##175409
|tip Use it near their corpses.
Siphon #12# Corpses of Anima |q 59210/2 |goto 72.12,50.60
step
Follow the path up |goto 74.55,47.43 < 30 |only if walking
talk Baroness Vashj##164326
turnin Entangling Web##59185 |goto 73.54,44.51
turnin Tainted Cores##59210 |goto 73.54,44.51
step
talk Khaliiq##164297
turnin Vaunted Vengeance##59188 |goto 73.39,44.52
step
talk Baroness Vashj##164326
accept Seek Your Mark##59190 |goto 73.54,44.51
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 73.17,44.46 |count 1
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 73.03,43.02 |count 2
step
click Tainted Crystal
Place the Fractured Crystal |q 59190/1 |goto 74.43,43.81 |count 3
step
click Ritual Focus
Draw the Binding Sigil |q 59190/2 |goto 73.82,43.94
step
talk Baroness Vashj##164326
turnin Seek Your Mark##59190 |goto 73.54,44.51
accept Straight to the Heart##59025 |goto 73.54,44.51
step
click Ritual Focus
Trigger the Ritual |q 59025/1 |goto 73.78,43.97
step
kill Mor'Bitan##163431 |q 59025/2 |goto 73.73,44.11
|tip Baroness Vashj will help you fight.
step
click Rune of Guile
Collect the Rune of Guile |q 59025/3 |goto 73.73,44.11
step
Watch the dialogue
talk Baroness Vashj##164326
turnin Straight to the Heart##59025 |goto 73.54,44.51
accept Her Rightful Place##59009 |goto 73.54,44.51
step
Follow the road |goto 53.23,54.99 < 40 |only if walking
Follow the path up |goto 54.70,32.68 < 15 |only if walking
talk Fly-eyed Eliera##157517
fpath Keres' Rest |goto 53.82,30.69
step
Follow the road |goto 42.66,58.17 < 50 |only if walking
talk Baron Vyraz##159894
turnin Baron of the Chosen##57912 |goto 39.27,55.88
accept Lead By Example##57976 |goto 39.27,55.88
accept First Time? You Have to Fight!##60557 |goto 39.27,55.88
step
talk Secutor Mevix##169359
accept Take the High Ground##58268 |goto 39.44,55.55
step
talk Wing Guard Aela##157519
fpath The Spearhead |goto 39.03,55.24
stickystart "Rally_Hesitant_Soldiers"
stickystart "Slay_Steelskin_Constructs"
step
click First Charge
Place the First Charge |q 58268/1 |goto 35.77,50.34
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the First Charge |q 58268/2 |goto 35.77,50.34
step
click First Charge
Place the Second Charge |q 58268/3 |goto 36.07,48.41
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the Second Charge |q 58268/4 |goto 36.07,48.41
step
click First Charge
Place the Third Charge |q 58268/5 |goto 36.11,46.42
step
Watch the dialogue
Kill the enemies that attack
|tip Protect Secutor Mevix while he detonates the charge.
Detonate the Third Charge |q 58268/6 |goto 36.11,46.42
step
label "Rally_Hesitant_Soldiers"
Use the _"Signal to Advance"_ ability
|tip Use it near Soldier NPC's.
|tip They look like armored NPC's qith various names kneeling on the ground around this area.
|tip It appears as a button on the screen when you get near them.
Rally #8# Hesitant Soldiers |q 60557/1 |goto 37.76,50.66
step
label "Slay_Steelskin_Constructs"
Kill enemies around this area
Slay #12# Steelskin Constructs |q 57976/1 |goto 37.76,50.66
step
talk Secutor Mevix##169226
turnin Lead By Example##57976 |goto 39.44,46.71
turnin First Time? You Have to Fight!##60557 |goto 39.44,46.71
turnin Take the High Ground##58268 |goto 39.44,46.71
accept Offensive Behavior##57979 |goto 39.44,46.71
step
Use the _"Signal the Attack"_ ability
|tip Use it on General Alver.
|tip It appears as a button on the screen.
|tip It will summon allies to help you fight.
kill General Alver##160095 |q 57979/1 |goto 37.21,43.47
step
talk Secutor Mevix##169226
turnin Offensive Behavior##57979 |goto 39.45,46.71
step
Watch the dialogue
talk Baron Vyraz##169462
|tip He walks to this location.
accept Army of One##59616 |goto 39.73,46.72
step
Follow the road |goto 40.34,40.82 < 30 |only if walking
talk Secutor Mevix##165362
Meet Secutor Mevix at the House of Constructs |q 59616/1 |goto 36.05,34.93
step
click Corpse Pile
|tip Click it repeatedly.
Escape the Corpse Pile |q 59616/2 |goto 33.85,31.41
step
Watch the dialogue
talk Aspirant Thales##160211
|tip He walks to this location.
turnin Army of One##59616 |goto 33.89,31.05
accept Archon Save Us##57983 |goto 33.89,31.05
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Hipokos |q 57983/2 |goto 34.93,30.50
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Kou and Koa |q 57983/1 |goto 36.21,30.63
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Orb of Power
Save Kynthia |q 57983/3 |goto 35.27,28.94
step
kill Hulking Fleshwarden##165337+
collect Prisoner Cage Key##176456 |n
click Cage
Save Secutor Mevix |q 57983/4 |goto 35.64,28.13
step
_Next to you:_
talk Aspirant Thales
turnin Archon Save Us##57983
accept The Ones in Charge##57984
step
kill Tabulator Hymeris##169312 |q 57984/2 |goto 35.33,23.09
|tip He walks around this area.
step
Enter the building |goto 33.66,22.93 < 10 |walk
kill Doctor Hivvil##159707 |q 57984/1 |goto 33.65,22.38
|tip He walks around this area inside the building.
step
kill Leacher Cvan##169315 |q 57984/3 |goto 31.81,22.65
|tip He walks around this area.
step
Run up the stairs |goto 32.62,25.87 < 15 |only if walking
talk Secutor Mevix##165397
turnin The Ones in Charge##57984 |goto 31.99,27.37
accept Give Them a Hand##57985 |goto 31.99,27.37
accept A Deadly Distraction##57987 |goto 31.99,27.37
step
talk Aspirant Thales##160211
accept A Burden Worth Bearing##57986 |goto 32.07,27.46
step
clicknpc Vestigial Animate##165084+
|tip They look like hands reaching out of the ground around this area.
kill Vestigial Animate##165084+
Destroy #10# Vestigial Animates |q 57985/1 |goto 31.09,28.33
stickystart "Slay_Warstitched_Forces"
step
click Gurney
Locate the Kyrian Equipment |q 57986/1 |goto 32.77,28.17
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 32.86,27.59 |count 1
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 32.17,29.61 |count 2
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 31.21,31.72 |count 3
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 30.11,32.27 |count 4
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 29.97,31.03 |count 5
step
clicknpc Lost Kyrian##160822
Spare the Lost Kyrian |q 57986/2 |goto 29.15,29.77 |count 6
step
label "Slay_Warstitched_Forces"
Kill Warstitched enemies around this area
Slay #15# Warstitched Forces |q 57987/1 |goto 28.60,28.16
step
Watch the dialogue
|tip Inside the building.
Bring Kou and Koa to Thales |q 57986/3 |goto 30.08,24.04
step
talk Aspirant Thales##169949
|tip Inside the building.
turnin A Burden Worth Bearing##57986 |goto 30.08,24.04
step
talk Secutor Mevix##165397
|tip Inside the building.
turnin Give Them a Hand##57985 |goto 30.19,23.77
turnin A Deadly Distraction##57987 |goto 30.19,23.77
accept Breaking Down Barriers##57982 |goto 30.19,23.77
step
talk Aspirant Thales##169949
|tip Inside the building.
Ask him _"How would you breach the barrier?"_
Speak with Thales |q 57982/1 |goto 30.08,24.04
step
talk Salvaged Praetor##169953
|tip Inside the building.
Tell him _"I need you to follow my directions."_
Direct the Salvaged Praetor |q 57982/2 |goto 30.03,23.95
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the barrier.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.96,23.52 |count 1
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the green spraying liquid.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.60,23.48 |count 2
step
click Spewer Valve
|tip Use the ability on your action bar to be able to walk through the green spraying liquid.
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.53,22.70 |count 3
step
click Spewer Valve
|tip Inside the building.
Disable the Bile Spewer |q 57982/3 |goto 29.54,22.63 |count 4
step
click Shielding Lattice
|tip Inside the building.
Disable the Shielding Lattice |q 57982/4 |goto 29.29,23.06
step
Return to Secutor Mevix |outvehicle |q 57982
|tip Inside the building.
step
talk Secutor Mevix##165397
|tip Inside the building.
turnin Breaking Down Barriers##57982 |goto 30.19,23.77
accept Two of Them, Two of Us##57993 |goto 30.19,23.77
step
kill Sharrex the Fleshcrafter##165478 |q 57993/1 |goto 29.00,22.27
kill First Apprentice Malkrex##165477 |q 57993/2 |goto 29.00,22.27
|tip Inside the building.
step
clicknpc Soulfused Construct##170020
|tip Inside the building.
Examine the Soulfused Construct |q 57993/3 |goto 28.87,21.97
step
Watch the dialogue
talk Aspirant Thales##165575
|tip He runs to this location.
|tip Inside the building.
turnin Two of Them, Two of Us##57993 |goto 28.89,22.15
accept In The Flesh##57994 |goto 28.89,22.15
step
clicknpc Soulfused Construct##165488
|tip Inside the building.
Take Control of the Soulfused Construct |q 57994/1 |goto 28.86,21.96
stickystart "Destroy_The_Construct_House_Forces"
step
kill Baron Halis##170082 |q 57994/3 |goto 30.82,28.76
|tip He walks around this area.
step
label "Destroy_The_Construct_House_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Fill up the blue bar in the quest tracker area.
Destroy the Construct House Forces |q 57994/2 |goto 30.82,28.76
step
Escape the House of Constructs |q 57994/4 |goto 34.15,33.79
step
Watch the dialogue
Reach Spider's Watch |goto 37.60,29.39 < 10 |c |q 57994 |notravel
|tip You will run there automatically.
step
click Rune of Might
Retrieve the Rune of Might |q 57994/5 |goto 37.65,29.20
step
talk Aspirant Thales##160211
turnin In The Flesh##57994 |goto 37.61,29.10
step
talk Flight Master Nudolva##157518
fpath Spider's Watch |goto 37.51,29.22
step
talk Secutor Mevix##170094
accept Front and Center##60733 |goto 37.70,29.13
step
Use the _"Resonate"_ ability
|tip It appears as a button on the screen.
|tip Upstairs.
Empower the Rune of Guile |q 59009/1 |goto 50.40,67.75
Empower Rune of Insight |q 59231/1 |goto 50.40,67.75
Empower the Rune of Might |q 60733/1 |goto 50.40,67.75
step
talk Baroness Draka##168381
|tip Upstairs.
turnin Front and Center##60733 |goto 50.31,67.72
turnin Her Rightful Place##59009 |goto 50.31,67.72
turnin Fathomless Power##59231 |goto 50.31,67.72
step
Reach Level 55 |ding 55
|tip You must be level 55 to continue the questline.
|tip Use the "Maldraxxus (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Baroness Draka##168381
|tip Upstairs.
accept Among the Chosen##59202 |goto 50.31,67.72
step
Follow the path up |goto 40.16,57.01 < 40 |only if walking
Enter the building |goto 40.91,61.34 < 15 |walk
Return to the House of the Chosen |q 59202/1 |goto 40.47,62.18
|tip Inside the building.
step
Find Krexus |q 59202/2 |goto 38.07,66.80
step
Watch the dialogue
talk Baron Vyraz##164843
|tip He walks to this location.
turnin Among the Chosen##59202 |goto 38.22,66.75
accept The Maw##59874 |goto 38.22,66.75
step
talk Highlord Bolvar Fordragon##164079
turnin The Maw##59874 |goto Oribos/0 39.93,68.56
step
Watch the dialogue
talk Highlord Bolvar Fordragon##164079
accept Seeking the Baron##59897 |goto 39.93,68.56
step
Jump into the Soul Pillar from the Ring of Transference |q 59897/1 |goto Oribos/1 49.53,56.85
|tip Jump into the huge pillar of light in the center of the room.
step
Travel to the Maw |goto The Maw/0 44.95,40.99 < 10 |noway |c |q 59897
step
_Click the Complete Quest Box:_
turnin Seeking the Baron##59897
accept The Hunt for the Baron##60972
step
Kill enemies around this area
Charge the Ebon Blade Amulet |q 60972/1 |goto 40.56,42.76
|tip Fill up the bar near the bottom of the screen.
You can find more around [37.05,36.82]
step
_Click the Complete Quest Box:_
turnin The Hunt for the Baron##60972
accept A Cooling Trail##59960
step
Find Darion Mograine |q 59960/1 |goto 37.90,48.88
|tip At the entrance to the cave.
step
click Cage
|tip Inside the cave.
turnin A Cooling Trail##59960 |goto 38.40,48.52
accept The Brand Holds the Key##59959 |goto 38.40,48.52
step
Run up the stairs |goto 33.49,44.88 < 15 |only if walking
kill Brethlun the Brand##166670
|tip He walks around this area.
collect The Brand's Key##178018 |n
Find "the Brand" and Claim the Key |q 59959/1 |goto 35.98,44.73
step
Enter the cave |goto 37.90,48.88 < 7 |walk
click Cage
|tip Inside the cave.
Free Darion Mograine |q 59959/2 |goto 38.39,48.51
step
Watch the dialogue
talk Ve'nari##171770
|tip She eventually walks to this location.
turnin The Brand Holds the Key##59959 |goto 36.54,50.76
accept Hope Never Dies##59962 |goto 36.54,50.76
step
click Orb of Teleportation
Use the Orb of Teleportation |q 59962/1 |goto 36.55,50.93
step
Travel with Ve'nari |goto 36.29,55.32 < 10 |c |q 59962 |notravel
step
talk Ve'nari##171770
turnin Hope Never Dies##59962 |goto 36.23,55.74
accept Delving Deeper##59966 |goto 36.23,55.74
step
talk Ve'nari##171770
Tell her _"Let's go."_
Speak with Ve'nari |q 59966/1 |goto 36.23,55.74
step
Watch the dialogue
|tip Follow Ve'nari as she walks.
|tip Stay within the circle surrounding Ve'nari to remain invisible to enemies.
|tip She eventually walks to this location.
Follow Ve'nari |q 59966/2 |goto 34.62,66.89
step
Watch the dialogue
talk Highlord Darion Mograine##172414
|tip He walks to this location.
turnin Delving Deeper##59966 |goto 32.92,66.40
accept A Bond Beyond Death##59973 |goto 32.92,66.40
step
clicknpc Alexandros Mograine##166776
Aid Alexandros |q 59973/1 |goto 32.86,66.41
step
Kill the enemies
Secure the Area |q 59973/2 |goto 33.05,66.53
step
kill Deslan the Torturer##166987 |q 59973/3 |goto 33.74,67.48
|tip She flies to this location.
step
talk Highlord Darion Mograine##172414
turnin A Bond Beyond Death##59973 |goto 32.92,66.40
accept Wake of Ashes##61190 |goto 32.92,66.40
step
click Ve'nari's Portal
Use Ve'nari's Portal |q 61190/1 |goto 33.06,66.16
step
Watch the dialogue
talk Ve'nari##162804
turnin Wake of Ashes##61190 |goto 46.92,41.69
accept Maw Walker##62654 |goto 46.92,41.69
step
click Waystone to Oribos
Attune to Alexandros and Darion at the Waygate |q 62654/1 |goto 42.38,42.16
step
click Waystone to Oribos
Escape the Maw |q 62654/2 |goto 42.38,42.16
step
talk Highlord Bolvar Fordragon##164079
turnin Maw Walker##62654 |goto Oribos/0 39.94,68.60
step
Watch the dialogue
talk Baroness Draka##167903
accept A Soul Saved##59974 |goto 39.15,67.95
step
Follow the path up |goto Maldraxxus/0 40.16,57.01 < 40 |only if walking
talk Alexandros Mograine##162801
turnin A Soul Saved##59974 |goto Maldraxxus/0 41.34,60.58
accept In Death We Are Truly Tested##59011 |goto Maldraxxus/0 41.34,60.58
step
Watch the dialogue
Use the _"Claim Rune"_ ability
|tip It appears as a button on the screen.
Claim the Final Rune |q 59011/1 |goto 41.34,60.58
step
Watch the dialogue
kill Baron Vyraz##169901
|tip Kill the enemies that channel on him when they appear.
|tip He will eventually escape.
Confront Vyraz |q 59011/2 |goto 41.10,61.00
step
Watch the dialogue
|tip You will fly automatically.
Escape with Alexandros Mograine |invehicle |q 59011
step
Watch the dialogue
Escape to Safety |outvehicle |goto 50.39,67.70 |q 59011 |notravel
step
talk Baroness Draka##170309
turnin In Death We Are Truly Tested##59011 |goto 50.52,67.88
accept The Door to the Unknown##60737 |goto 50.52,67.88
step
Use the _"Unlock Door"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Open the Door to the Seat of the Primus |q 60737/1 |goto 50.39,67.42
step
Enter the building |goto 50.40,68.05 < 7 |walk
click Stone Altar
|tip Inside the building.
turnin The Door to the Unknown##60737 |goto Seat of the Primus/0 49.68,54.84
step
Watch the dialogue
|tip Inside the building.
talk Baroness Draka##164545
|tip She walks to this location.
accept Words of the Primus##59206 |goto 49.66,48.96
step
talk Tal-Inara##159478
turnin Words of the Primus##59206 |goto Oribos/0 54.49,54.23
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Ardenweald (Story Only)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Ardenweald:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Ardenweald",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Lady Moonberry##168341
turnin Journey to Ardenweald##60338 |goto Ardenweald/0 68.27,18.37 |only if havequest(60338) or completedq(60338)
accept I Moustache You to Lend a Hand##60763 |goto Ardenweald/0 68.27,18.37
step
click Night Lily
collect Night Lily##178747 |q 60763/1 |goto 67.48,18.28
step
talk Featherlight##170175
Tell him _"I have the lily."_
Give the Night Lily to Featherlight |q 60763/2 |goto 68.35,18.42
step
talk Lady Moonberry##168341
Ask her _"Will you help me gain an audience with the Queen?"_
Speak with Lady Moonberry |q 60763/3 |goto 68.28,18.37
step
Watch the dialogue
|tip Follow Lady Moonberry as she flies.
|tip She eventually flies to this location.
Follow Lady Moonberry |q 60763/4 |goto 65.06,19.60
step
talk Lady Moonberry##157788
turnin I Moustache You to Lend a Hand##60763 |goto 65.06,19.60
accept First on the Agenda##60341 |goto 65.06,19.60
step
clicknpc Mothbane the Mighty##170889
|tip He flies low to the ground around this area.
kill Mothbane the Mighty##170889 |q 60341/1 |goto 64.81,19.96
step
talk Featherlight##170175
turnin First on the Agenda##60341 |goto 65.07,19.54
accept Wildseed Rescue##60778 |goto 65.07,19.54
step
Find Korenth |q 60778/1 |goto 66.73,21.03
step
talk Korenth##168422
|tip In the entrance of the cave.
Tell him _"I'm standing in for Lady Moonberry. What happened?"_
Speak with Korenth |q 60778/2 |goto 67.67,20.56
step
talk Featherlight##170324
|tip In the entrance of the cave.
Choose _<Hold still?>_
Speak with Featherlight |q 60778/3 |goto 67.69,20.61
step
Coax the Nesting Valeshrieker |q 60778/4 |goto Ardenweald/1 46.50,56.26
|tip Use the abilities on your action bar.
|tip Fill up the blue bar in the quest tracker area.
|tip It will attack you after you complete this quest goal.
|tip Inside the cave.
step
kill Nesting Valeshrieker##168475 |q 60778/5 |goto 46.50,56.26
|tip Inside the cave.
step
talk Featherlight##170324
|tip In the entrance of the cave.
turnin Wildseed Rescue##60778 |goto Ardenweald/0 67.69,20.61
accept We Can't Save Them All##60857 |goto Ardenweald/0 67.69,20.61
step
Continue Down the Road |q 60857/1 |goto 67.95,24.24
step
talk Droman Krelnor##168528
turnin We Can't Save Them All##60857 |goto 67.95,24.24
step
talk Te'zan##170537
|tip He runs to this location.
accept Souls of the Forest##60859 |goto 67.82,24.24
step
Find Wagonmaster Derawyn |q 60859/1 |goto 65.55,27.96
step
talk Wagonmaster Derawyn##168595
Tell her _"I will help you."_
Speak with Derawyn |q 60859/2 |goto 65.55,27.96
stickystart "Rescue_Nature_Spirits"
step
clicknpc Choofa##159740
Rescue Choofa |q 60859/3 |goto 64.65,28.45
step
label "Rescue_Nature_Spirits"
kill Starving Shadowstalker##168620+
Rescue #3# Nature Spirits |q 60859/4 |goto 65.40,28.69
step
talk Wagonmaster Derawyn##168595
Tell her _"You're welcome."_
Speak with Derawyn Again |q 60859/5 |goto 65.55,27.96
step
talk Featherlight##170533
turnin Souls of the Forest##60859 |goto 65.67,27.90
accept Keep to the Path##57787 |goto 65.67,27.90
step
Continue Further Down the Road |q 57787/1 |goto 65.37,30.84
step
talk Nelwyn##169328
Tell her _"I'm going that way too. I'll help."_
Speak with the Upset Sylvar |q 57787/2 |goto 65.37,30.84
step
Enter the cave |goto 67.51,29.44 < 10 |walk
talk "Granny"##169331
|tip Inside the cave.
Tell her _"My, what big teeth you have Granny."_
Check the Sick Elder |q 57787/3 |goto 67.76,28.97
|tip She will attack you.
step
kill "Granny"##169331 |q 57787/4 |goto 67.76,28.97
|tip Inside the cave.
step
talk Nelwyn##169328
|tip Inside the cave.
Tell her _"Hey! What's the big idea?"_
Confront Nelwyn |q 57787/5 |goto 67.76,28.90
|tip She will attack you.
step
Watch the dialogue
|tip Inside the cave.
kill 3 Mire Trickster##169381 |q 57787/6 |goto 67.76,28.90
step
Return to the Road |q 57787/7 |goto 65.29,30.78
step
Find Tirna Vaal |q 57787/8 |goto 63.59,36.28
step
talk Lady Moonberry##169031
Choose _<Express your appreciation for her help.>_
Speak with Lady Moonberry |q 57787/9 |goto 63.59,36.28
step
talk Lady Moonberry##169031
turnin Keep to the Path##57787 |goto 63.59,36.28
step
talk Droman Tashmur##158487
accept Spirits of the Glen##57947 |goto 63.50,36.28
accept Dreamweaver##57816 |goto 63.50,36.28
step
talk Nolon##162446
home Tirna Vaal |goto 62.56,35.31
step
talk Lanra##165164
fpath Tirna Vaal |goto 63.46,37.56
step
talk Dreamweaver##169116
turnin Dreamweaver##57816 |goto 64.27,41.27
accept Shooing Wildlife##60567 |goto 64.27,41.27
accept Tending to Wildseeds##60563 |goto 64.27,41.27
step
click Animacone Basket
Take the Basket of Animacones |q 60563/1 |goto 64.24,41.27
stickystart "Slay_Anima_Starved_Wildlife"
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 65.60,43.26 |count 1
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 63.97,42.99 |count 2
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 63.52,41.56 |count 3
step
click Wildseed
Imbue the Wildseed with Anima |q 60563/2 |goto 62.18,40.08 |count 4
step
label "Slay_Anima_Starved_Wildlife"
Kill enemies around this area
Slay #8# Anima-starved Wildlife |q 60567/1 |goto 63.90,42.04
step
talk Dreamweaver##169202
turnin Shooing Wildlife##60567 |goto 61.40,40.97
turnin Tending to Wildseeds##60563 |goto 61.40,40.97
accept Belly Full of Fae##60575 |goto 61.40,40.97
accept Hungry for Animacones##60577 |goto 61.40,40.97
stickystart "Collect_Animacones_60577"
step
kill Devouring Hydra##169206+
use the Hydra Gutter##179921
|tip Use it on their corpses.
Free #16# Wildseed Tenders from Hydras |q 60575/1 |goto 61.43,39.48
step
label "Collect_Animacones_60577"
kill Gobbling Blossom##169205+
collect 25 Animacone##179922 |q 60577/1 |goto 61.09,39.39
step
talk Dreamweaver##169217
turnin Belly Full of Fae##60575 |goto 62.21,36.47
turnin Hungry for Animacones##60577 |goto 62.21,36.47
accept One Special Spirit##60594 |goto 62.21,36.47
step
Enter the cave |goto 64.40,36.47 < 10 |walk
Watch the dialogue
|tip Follow Dreamweaver as he flies.
talk Dreamweaver##169278
|tip Inside the cave.
Tell him _"I'll take the animacones and infuse this wildseed with their anima."_
Speak with Dreamweaver at the Young Wildseed |q 60594/1 |goto Ardenweald/2 48.04,49.15
step
use the Infused Animacones##179978
|tip Use them on the Young Wildseed.
|tip Inside the cave.
Use an Animacone on the Young Wildseed |q 60594/2 |goto 49.97,51.91
step
talk Droman Tashmur##158487
turnin One Special Spirit##60594 |goto Ardenweald/0 63.50,36.29
step
talk Choofa##159638
turnin Spirits of the Glen##57947 |goto 67.11,32.19
accept They Need to Calm Down##57949 |goto 67.11,32.19
accept Nothing Left to Give##57948 |goto 67.11,32.19
stickystart "Reclaim_Stolen_Anima"
step
Follow the path up |goto 67.10,34.63 < 15 |only if walking
talk Rury##159643
|tip He floats around this area.
Tell him _"The fuss is, it's time to leave."_
Restore Rury |q 57948/2 |goto 66.94,34.21
step
talk Awool##159644
|tip He floats around this area.
Tell him _"It's fine, you can leave with me now."_
Restore Awool |q 57948/3 |goto 67.78,36.35
step
talk Slanknen##159642
|tip He floats around this area.
Tell him _"Let's get you out of here."_
Restore Slanknen |q 57948/1 |goto 68.61,33.26
step
_Next to you:_
talk Choofa
turnin Nothing Left to Give##57948
step
label "Reclaim_Stolen_Anima"
Kill Spriggan enemies around this area
|tip They look like small blue imps on the ground around this area.
use the Soulweb##176445
|tip Use it near their corpses.
Reclaim #8# Stolen Anima |q 57949/1 |goto 68.12,35.00
step
_Next to you:_
talk Choofa
turnin They Need to Calm Down##57949
accept Mizik the Haughty##57950
step
kill Enthralled Gorm##159693
|tip It walks around this area.
kill Mizik the Haughty##165388 |q 57950/1 |goto 68.76,35.39
|tip He jumps off the Enthralled Gorm after you kill it.
step
talk Choofa##159638
turnin Mizik the Haughty##57950 |goto 67.11,32.19
accept Souls Come Home##57951 |goto 67.11,32.19
step
talk Droman Tashmur##158487
turnin Souls Come Home##57951 |goto 63.50,36.29
step
talk Lady Moonberry##169031
accept Preparing for the Winter Queen##60600 |goto 63.59,36.28
step
talk Lady Moonberry##169031
Tell her _"I'm ready to be properly prepared to meet the Winter Queen."_
Watch the dialogue
Received Ardenweald's Essence from Lady Moonberry |q 60600/1 |goto 63.59,36.28
step
Watch the dialogue
talk Droman Tashmur##158487
turnin Preparing for the Winter Queen##60600 |goto 63.50,36.29
accept Ride to Heartwood Grove##60624 |goto 63.50,36.29
step
clicknpc Riding Stag##169577
Begin Riding the Stag |invehicle |goto 63.05,35.63 |q 60624
step
Watch the dialogue
Ride the Stag to Heartwood Grove |q 60624/1 |goto 66.94,26.55 |notravel
step
talk Niya##169686
turnin Ride to Heartwood Grove##60624 |goto 66.97,26.56
accept The End of Former Friends##60637 |goto 66.97,26.56
accept Recovering Wildseeds##60638 |goto 66.97,26.56
accept Heart of the Grove##60639 |goto 66.97,26.56
stickystart "Collect_Drained_Wildseeds"
stickystart "Slay_Possessed"
step
Find the Heart of the Grove |q 60639/1 |goto 69.24,26.77
step
clicknpc Korenth##169746
Inspect Korenth |q 60639/2 |goto 69.24,26.77
step
label "Collect_Drained_Wildseeds"
click Drained Wildseed+
|tip They look like large blue and grey bulbs on the ground around this area.
collect 6 Drained Wildseed##180126 |q 60638/1 |goto 67.99,27.06
step
label "Slay_Possessed"
Kill Possessed enemies around this area
Slay #8# Possessed |q 60637/1 |goto 67.99,27.06
step
talk Niya##169748
turnin The End of Former Friends##60637 |goto 68.43,24.37
turnin Recovering Wildseeds##60638 |goto 68.43,24.37
turnin Heart of the Grove##60639 |goto 68.43,24.37
step
Watch the dialogue
talk Niya##169748
accept Recovering the Animacones##60647 |goto 68.43,24.37
accept Survivors of Heartwood Grove##60648 |goto 68.43,24.37
stickystart "Collect_Animacones_60647"
step
talk Warden Casad##169802
Rescue Warden Casad |q 60648/1 |goto 69.80,24.50
step
Enter the cave |goto 69.01,22.72 < 10 |walk
talk Te'zan##169824
|tip Inside the cave.
Rescue Te'zan |q 60648/2 |goto 68.91,22.15
step
label "Collect_Animacones_60647"
Kill Turned enemies around this area
collect 25 Animacone##180172 |q 60647/1 |goto 69.45,24.46
step
_Next to you:_
talk Niya
turnin Recovering the Animacones##60647
step
talk Wagonmaster Derawyn##169817
Rescue Wagonmaster Derawyn |q 60648/3 |goto 67.52,23.15
step
_Next to you:_
talk Niya
turnin Survivors of Heartwood Grove##60648
accept The Sacrifices We Must Make##60671
step
talk Wagonmaster Derawyn##169938
Watch the dialogue
Save Wagonmaster Derawyn |q 60671/1 |goto 67.52,23.16
step
talk Niya##169985
|tip She runs to this location.
turnin The Sacrifices We Must Make##60671 |goto 66.29,23.71
step
talk Warden Casad##169956
accept Recovering the Heart##60709 |goto 66.27,23.80
step
talk Te'zan##169957
Tell him _"I need you to use some of your anima to destroy the droman's barrier."_
Watch the dialogue
Speak with Te'zan |q 60709/1 |goto 66.31,23.84
step
kill Droman Krelnor##169986
|tip Niya will help you fight.
Watch the dialogue
Thwart Droman Krelnor |q 60709/2 |goto 65.58,24.35
step
talk Niya##170012
|tip She runs to this location.
turnin Recovering the Heart##60709 |goto 65.39,26.67
accept Heartless##60724 |goto 65.39,26.67
step
talk Droman Tashmur##158487
turnin Heartless##60724 |goto 63.43,36.05
accept Audience with the Winter Queen##60519 |goto 63.43,36.05
step
talk Lady Moonberry##169031
Tell her _"I'm ready to meet the Winter Queen."_
Speak to Lady Moonberry |q 60519/1 |goto 63.50,36.08
step
talk Lady Moonberry##169031
turnin Audience with the Winter Queen##60519 |goto 63.59,36.27
step
Reach Level 56 |ding 56
|tip You must be level 56 to continue the questline.
|tip Use the "Ardenweald (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Lady Moonberry##169031
accept Call of the Hunt##60521 |goto 63.59,36.27
step
Follow the path up |goto 52.85,33.46 < 30 |only if walking
talk Hunt-Captain Korayn##169584
turnin Call of the Hunt##60521 |goto 51.31,33.99
accept The Missing Hunters##60628 |goto 51.31,33.99
accept Extreme Recycling##60629 |goto 51.31,33.99
step
talk Dwyl'ir##167243
fpath Glitterfall Basin |goto 51.42,34.52
step
talk Shelynn##163738
|tip Inside the building.
home Glitterfall Basin |goto 50.69,33.80
stickystart "Collect_Fae_Weapons"
step
Enter the cave |goto 53.82,33.13 < 15 |walk
clicknpc Rondar##169647
|tip Inside the cave.
Find Rondar |q 60628/3 |goto 53.65,32.64
step
clicknpc Jynkla##169642
Find Jynkla |q 60628/1 |goto 55.40,31.42
step
Enter the cave |goto 55.55,34.06 < 15 |walk
clicknpc Serinkai##169639
|tip Inside the cave.
Find Serinkei |q 60628/2 |goto 55.86,33.84
step
label "Collect_Fae_Weapons"
Kill Blighted enemies around this area
collect 10 Fae Weapon##180061 |q 60629/1 |goto 54.63,33.43
step
talk Ara'lon##169649
Tell him _"Hunt-Captain Korayn says to report back to the grove."_
Find Ara'lon |q 60628/4 |goto 54.80,36.54
step
Follow the path up |goto 52.23,32.98 < 30 |only if walking
talk Hunt-Captain Korayn##169584
turnin The Missing Hunters##60628 |goto 51.32,33.99
turnin Extreme Recycling##60629 |goto 51.32,33.99
accept Totem Eclipse##60630 |goto 51.32,33.99
accept Big Problem, Little Vorkai##60631 |goto 51.32,33.99
stickystart "Slay_The_Blighted"
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 52.37,35.46 |count 1
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 52.62,37.21 |count 2
step
Enter the cave |goto 54.25,37.50 < 10 |walk
clicknpc Foul Totem##169791
|tip Inside the cave.
Destroy the Foul Totem |q 60630/1 |goto 54.88,38.60 |count 3
step
clicknpc Foul Totem##169791
Destroy the Foul Totem |q 60630/1 |goto 50.62,37.36 |count 4
step
_Next to you:_
talk Hunt-Captain Korayn
turnin Totem Eclipse##60630
step
label "Slay_The_Blighted"
Use the _"Hunter's Strike"_ ability
|tip Use it repeatedly on Blighted Brutes around this area.
|tip Hunt-Captain Korayn will deal massive damage to them, making them easier to kill.
Kill Blighted enemies around this area
|tip Fill up the blue bar in the quest tracker area.
Slay the Blighted |q 60631/1 |goto 52.70,36.76
step
_Next to you:_
talk Hunt-Captain Korayn
turnin Big Problem, Little Vorkai##60631
accept I Know Your Face##60632
step
Use the _"Hunter's Strike"_ ability
|tip Use it repeatedly on the Blighted Monstrosity.
|tip Hunt-Captain Korayn will deal massive damage to it, making it easier to kill.
kill Blighted Monstrosity##169900
kill Lorkron the Hunter##169890 |q 60632/1 |goto 48.56,37.19
|tip He jumps down after you kill the Blighted Monstrosity.
|tip He will eventually escape.
step
talk Hunt-Captain Korayn##170121
Ask her _"Who was that? What now?"_
Speak to Korayn |q 60632/2 |goto 48.98,35.69
step
Follow the path up |goto 50.14,34.61 < 15 |only if walking
talk Ara'lon##169935
turnin I Know Your Face##60632 |goto 51.31,33.99
accept Return to Tirna Vaal##60522 |goto 51.31,33.99
step
Return to Tirna Vaal |q 60522/1 |goto 63.39,37.51
step
Enter the cave |goto 64.38,36.47 < 10 |walk
talk Dreamweaver##169142
|tip Inside the cave.
turnin Return to Tirna Vaal##60522 |goto Ardenweald/2 50.70,46.97
accept Nightmares Manifest##60520 |goto Ardenweald/2 50.70,46.97
step
Kill enemies around this area
Confront the Nightmares |q 60520/1 |goto Ardenweald/0 63.46,36.26
step
Enter the cave |goto 64.37,36.46 < 10 |walk
clicknpc Distressed Wildseed##169144
|tip Inside the cave.
Soothe the Wildseed |q 60520/2 |goto Ardenweald/2 49.98,51.96
step
talk Dreamweaver##169142
|tip Inside the cave.
turnin Nightmares Manifest##60520 |goto Ardenweald/2 50.70,46.97
accept The Way to Hibernal Hollow##60738 |goto Ardenweald/2 50.70,46.97
step
talk Niya##170143
Tell her _"I'm taking the wildseed responsible for this to Hibernal Hollow. I could use your help bringing it there."_
Recruit Niya |q 60738/1 |goto Ardenweald/0 62.78,36.64
step
talk Niya##170171
|tip She runs to this location.
turnin The Way to Hibernal Hollow##60738 |goto 64.50,39.05
step
talk Dreamweaver##170172
accept Soothing Song##60764 |goto 64.58,39.08
step
talk Dreamweaver##170172
Tell him _"I'm ready to take this wildseed to Hibernal Hollow."_
Speak with Dreamweaver |q 60764/1 |goto 64.58,39.08
step
Watch the dialogue
|tip Follow Niya and protect her as she walks.
|tip She eventually walks to this location.
Escort the Wildseed to Tirna Glayn |q 60764/2 |goto 62.38,45.50
step
talk Ara'lon##170290
turnin Soothing Song##60764 |goto 62.33,45.55
accept Remnants of the Wild Hunt##60839 |goto 62.33,45.55
step
clicknpc Wounded Defender##170458+
|tip They look like dazed horse people on the ground around this area.
Rescue #5# Wounded Defenders |q 60839/1 |goto 63.96,47.29
step
Enter the building |goto 64.35,49.82 < 10 |walk
talk Ara'lon##170485
|tip Inside the building.
turnin Remnants of the Wild Hunt##60839 |goto 64.25,49.98
accept Toppling the Brute##60856 |goto 64.25,49.98
step
kill Blighted Brute##170087
|tip Ara'lon will help you fight.
click Wild Hunt Horn
|tip It looks like a small gray horn that appears on the ground nearby, when the Blighted Brute reaches about 50% health.
|tip Click it when Ara'lon yells for you the take up the horn.
Use the _"Call of the Hunt"_ ability
|tip It appears as a button on the screen.
Slay the Blighted Brute |q 60856/1 |goto 66.33,49.33
step
Enter the building |goto 64.35,49.82 < 10 |walk
talk Ara'lon##170485
|tip Inside the building.
turnin Toppling the Brute##60856 |goto 64.25,49.98
accept Ride of the Wild Hunt##60881 |goto 64.25,49.98
step
clicknpc Stranded Stag##170609
|tip Inside the building.
Watch the dialogue
Ride with the Wild Hunt |q 60881/1 |goto 64.15,49.87
step
Watch the dialogue
talk Ara'lon##170290
turnin Ride of the Wild Hunt##60881 |goto 62.32,45.55
accept Passage to Hibernal Hollow##60901 |goto 62.32,45.55
step
talk Ara'lon##170290
Tell him _"I'm ready to travel to the Hibernal Hollow."_
Begin Traveling with Ara'lon |goto 62.32,45.55 > 15 |c |q 60901
step
Watch the dialogue
|tip Follow Ara'lon as he walks.
|tip He eventually walks to this location.
Travel with Ara'lon |q 60901/1 |goto 59.92,52.58
step
talk Na'lor##165166
fpath Hibernal Hollow |goto 60.35,53.49
step
talk Droman Aliothe##160894
turnin Passage to Hibernal Hollow##60901 |goto 60.09,53.94
accept Infusing the Wildseed##60905 |goto 60.09,53.94
step
Cast _"Soulshape"_ |cast 310143
Enter Soulshape |havebuff spell:310143 |goto 60.09,53.94 |q 60905
step
Enter the cave |goto 60.32,54.00 < 5 |walk
talk Proglo##170709
|tip Inside the cave.
Tell him _"Droman Aliothe said you were storing the anima that we could use to help a wildseed."_
Recover the Anima from Proglo while in Soulshape |q 60905/1 |goto 59.95,53.97
step
talk Dreamweaver##160962
Tell him _"I'm ready to perform the ritual on the wildseed."_
Watch the dialogue
Speak with Dreamweaver to Perform the Ritual |q 60905/2 |goto 60.05,52.96
step
talk Ara'lon##160963
turnin Infusing the Wildseed##60905 |goto 60.11,52.83
accept Echoes of Tirna Noch##58473 |goto 60.11,52.83
step
talk Ara'lon##160963
Choose _<Listen to the tale of Tirna Noch.>_
Listen to Ara'lon's Tale |q 58473/1 |goto 60.11,52.83
step
talk Taiba##162445
home Hibernal Hollow |goto 60.48,53.93
step
talk Ara'lon##161378
turnin Echoes of Tirna Noch##58473 |goto 68.47,57.44
accept Take What You Can##58484 |goto 68.47,57.44
accept Read the Roots##58480 |goto 68.47,57.44
step
_Next to you:_
talk Niya
accept Mementos##58483
stickystart "Take_Plundered_Anima"
stickystart "Recover_Stolen_Mementos"
step
clicknpc Depleted Soulweb##161478
Investigate the South |q 58480/1 |goto 70.95,57.11
step
Follow the path |goto 70.05,54.10 < 30 |only if walking
clicknpc Depleted Soulweb##161479
Investigate the Northeast |q 58480/3 |goto 70.54,53.51
step
label "Take_Plundered_Anima"
click Fae Basket+
|tip They look like various sized grey wooden buckets on the ground around this area.
Take #40# Plundered Anima |q 58484/1 |goto 70.58,55.46
step
label "Recover_Stolen_Mementos"
Kill enemies around this area
Recover #10# Stolen Mementos |q 58483/1 |goto 70.58,55.46
step
_Next to you:_
talk Niya
turnin Mementos##58483
step
_Next to you:_
talk Ara'lon
turnin Take What You Can##58484
step
clicknpc Depleted Soulweb##161477
Investigate the Northwest |q 58480/2 |goto 68.94,52.96
step
_Next to you:_
talk Ara'lon
turnin Read the Roots##58480
accept He's Drust in the Way##58486
step
Cross the bridge |goto 69.31,53.70 < 10 |only if walking
kill Vroth##161484
|tip Up on the platform.
Slay Vroth, Bulwark of Thros |q 58486/1 |goto 70.51,53.61
step
talk Ara'lon##161492
|tip Up on the platform.
turnin He's Drust in the Way##58486 |goto 71.44,54.64
accept Go for the Heart##58488 |goto 71.44,54.64
step
kill Barrier##166222
Destroy the Barrier |q 58488/1 |goto 71.70,54.68
step
click Heart of Tirna Noch
collect Heart of Tirna Noch##174269 |q 58488/2 |goto 71.76,54.69
step
talk Ara'lon##161492
turnin Go for the Heart##58488 |goto 71.44,54.64
step
talk Lady Moonberry##161494
accept Sparkles Rain from Above##58524 |goto 71.50,54.68
step
talk Lady Moonberry##161494
Tell her _"I'm ready to borrow some wings and rain sparkly terror."_
Speak with Lady Moonberry |q 58524/1 |goto 71.50,54.68
step
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Slay #50# Invaders |q 58524/2 |goto 69.37,55.03
step
Begin Returning to Hibernal Hollow |invehicle |q 58524
step
Watch the dialogue
Return to Hibernal Hollow |outvehicle |goto 60.05,53.07 |q 58524 |notravel
step
talk Droman Aliothe##160894
turnin Sparkles Rain from Above##58524 |goto 60.08,53.94
accept For the Sake of Spirit##60572 |goto 60.08,53.94
accept Despoilers##58591 |goto 60.08,53.94
step
talk Dreamweaver##160962
turnin For the Sake of Spirit##60572 |goto 60.05,52.96
accept The Restless Dreamer##58589 |goto 60.05,52.96
accept Caring for the Caretakers##58592 |goto 60.05,52.96
stickystart "Slay_Witherscorn_Or_Blighted"
step
Follow the path up |goto 61.39,54.38 < 15 |only if walking
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 61.19,55.37 |count 1
step
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 60.94,55.58 |count 2
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 60.32,56.26 |count 3
step
clicknpc Trapped Spirit Tender##162578
Free the Trapped Spirit Tender |q 58592/1 |goto 60.65,58.03 |count 4
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 61.33,57.36 |count 5
step
click Unattuned Dreamshrine
Attune the South Dreamshrine |q 58589/1 |goto 61.17,56.74
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.06,56.38 |count 6
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.11,56.39 |count 7
step
clicknpc Trapped Spirit Tender##162577
Free the Trapped Spirit Tender |q 58592/1 |goto 62.46,50.25 |count 8
step
Use the _"Anima Expulsion"_ ability
|tip Use it repeatedly on Skell the Despoiler, as you fight him.
|tip It appears as a button on the screen.
kill Skell the Despoiler##169175 |q 58591/2 |goto 61.24,49.52
step
click Unattuned Dreamshrine
|tip You will be attacked.
Attune the North Dreamshrine |q 58589/2 |goto 57.80,50.06
step
label "Slay_Witherscorn_Or_Blighted"
Kill enemies around this area
|tip Use the "Anima Expulsion" ability to kill the elite enemies easier.
|tip It appears as a button on the screen.
Slay #12# Witherscorn or Blighted |q 58591/1 |goto 59.98,48.99
step
click Dreamer's Wildseed
Bind the Heart to the Dreamer's Wildseed |q 58589/3 |goto 59.95,52.72
step
talk Dreamweaver##160962
turnin The Restless Dreamer##58589 |goto 60.06,52.96
turnin Caring for the Caretakers##58592 |goto 60.06,52.96
step
talk Droman Aliothe##160894
turnin Despoilers##58591 |goto 60.09,53.93
step
talk Dreamweaver##160962
accept Visions of the Dreamer: Origins##58590 |goto 60.05,52.96
accept Visions of the Dreamer: The Betrayal##60578 |goto 60.05,52.96
step
Follow the path |goto 60.20,50.74 < 20 |only if walking
clicknpc Dreamer's Vision##161823
Choose _<Face the Dreamer's great enemy in battle.>_
Enter the Dreamer's Vision |q 58590/1 |goto 57.81,50.05
step
kill Worldbreaker##161780
Defeat the Worldbreaker |q 60578/2 |goto 58.67,49.45
stickystart "Slay_Nightmares"
step
clicknpc Abandoned Whelp##161788+
|tip They look like small green dragons flying around this area.
Comfort #6# Abandoned Whelps |q 58590/3 |goto 61.79,50.35
step
label "Slay_Nightmares"
Kill enemies around this area
Slay #10# Nightmares |q 58590/2 |goto 60.83,49.76
step
talk Dreamweaver##160962
turnin Visions of the Dreamer: Origins##58590 |goto 60.06,52.96
turnin Visions of the Dreamer: The Betrayal##60578 |goto 60.06,52.96
step
Reach Level 58 |ding 58
|tip You must be level 58 to continue the questline.
|tip Use the "Ardenweald (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Dreamweaver##160962
accept End of the Dream##58593 |goto 60.06,52.96
step
talk Dreamweaver##160962
Tell him _"I am ready to relive the Dreamer's nightmare."_
Speak to Dreamweaver |q 58593/1 |goto 60.06,52.96
step
Enter the Dreamer's Nightmare |scenariostart |q 58593
step
_As the Dreamer:_
Begin the Attack on the Temple
|tip Use the "Attack the Temple" ability on your action bar.
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Temple of Elune |scenarioend |q 58593
|tip You will die.
step
Return to Hibernal Hollow |goto Ardenweald/0 60.06,53.04 < 50 |noway |c |q 58593
step
talk Dreamweaver##160962
turnin End of the Dream##58593 |goto 60.06,52.97
step
Watch the dialogue
talk Lady Moonberry##161847
accept The Forest Has Eyes##58714 |goto 60.00,53.02
stickystart "Kill_Possessed_Spies"
step
talk Droman Aliothe##160894
accept The Droman's Call##58719 |goto 60.08,53.93
step
use Droman's Hunting Horn##174864
Sound the Horn at the West Road |q 58719/3 |goto 58.00,55.48
step
use Droman's Hunting Horn##174864
Sound the Horn at the North Road |q 58719/2 |goto 60.04,48.93
step
use Droman's Hunting Horn##174864
Sound the Horn at the East Road |q 58719/1 |goto 62.20,55.56
step
label "Kill_Possessed_Spies"
Use the _"Eyes of the Forest"_ ability
|tip Use it near the small spots of purple smoke on the ground around this area.
|tip It appears as a button on the screen when you are near a spot of purple smoke.
kill 6 Possessed Spy##162799 |q 58714/1 |goto 60.00,53.02
step
talk Droman Aliothe##160894
turnin The Forest Has Eyes##58714 |goto 60.08,53.94
turnin The Droman's Call##58719 |goto 60.08,53.94
accept Missing!##58720 |goto 60.08,53.94
step
talk Hunt-Captain Korayn##162541
turnin Missing!##58720 |goto 55.95,57.64
accept Enemies at the Gates##60621 |goto 55.95,57.64
step
talk Droman Aliothe##169541
turnin Enemies at the Gates##60621 |goto 59.89,53.19
accept Battle for Hibernal Hollow##58869 |goto 59.89,53.19
stickystart "Slay_Attackers_58869"
step
Gain the Swift of Hoof Buff |havebuff spell:334829 |goto 59.54,53.24 |q 58869
|tip Walk onto the yellow circle.
step
Gain the Energized Spirit Buff |havebuff spell:317878 |goto 60.19,52.55 |q 58869
|tip Walk onto the green circle.
step
Gain the Hunter's Efficiency Buff |havebuff spell:334865 |goto 59.89,52.36 |q 58869
|tip Walk onto the red circle.
step
label "Slay_Attackers_58869"
Kill enemies around this area
Slay #20# Attackers |q 58869/1 |goto 59.70,52.77
step
talk Droman Aliothe##169541
Tell him _"I am ready to stand with you!"_
Speak to Droman Aliothe |q 58869/2 |goto 59.89,53.19
step
kill Fulyar the Destroyer##169540
|tip Walk onto the yellow, green, and red circles on the ground nearby to refresh your buffs.
|tip Kill whichever of these two enemies has the lowest health.
|tip You only need to kill one of them to end the battle.
kill Lorkron the Hunter##171556
Defeat Lorkron and Fulyar the Destroyer |q 58869/3 |goto 59.78,52.80
step
talk Droman Aliothe##160894
turnin Battle for Hibernal Hollow##58869 |goto 59.86,53.17
step
talk Lady Moonberry##161847
accept Dying Dreams##60661 |goto 60.00,53.02
step
talk Guardian Molan##160929
turnin Blooming Villains##58265 |goto 60.68,51.34
step
talk Lady Moonberry##161847
Tell her _"I am ready to go."_
Speak with Moonberry |q 60661/1 |goto 60.00,53.02
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip They eventually walk to this location.
Escort Ysera's Wildseed |q 60661/2 |goto 48.00,53.77
step
Watch the dialogue
talk Lord Herne##169869
|tip He runs to this location.
turnin Dying Dreams##60661 |goto 47.93,53.81
step
talk Derwynnthlmn##167255
fpath Refugee Camp |goto 49.35,51.81
step
talk Lord Herne##169869
accept Awaken the Dreamer##58721 |goto 47.93,53.81
step
Travel to the Grove of Awakening |q 58721/1 |goto 45.29,63.03
step
talk Winter Queen##162968
turnin Awaken the Dreamer##58721 |goto 45.29,63.03
step
Watch the dialogue
talk Winter Queen##162968
accept The Court of Winter##58723 |goto 45.29,63.03
step
talk Winter Queen##162968
Choose _<Deliver the Primus's Message.>_
Watch the dialogue
Deliver the Primus's Message |q 58723/1 |goto 45.29,63.03
step
Follow the path |goto 50.57,67.73 < 30 |only if walking
talk V'kerra##167247
fpath Claw's Edge |goto 51.30,71.31
step
Enter the tree |goto Heart of the Forest/0 62.02,43.39 < 10 |walk
Travel to the Heart of the Forest |q 58723/2 |goto Heart of the Forest/0 48.95,33.71
|tip Inside the tree.
step
talk Winter Queen##162968
|tip Inside the tree.
Ask her _"Yes, your majesty?"_
Watch the dialogue
Speak with Winter Queen |q 58723/3 |goto 48.95,33.71
step
talk Winter Queen##162968
|tip Inside the tree.
turnin The Court of Winter##58723 |goto 49.01,33.67
accept The Queen's Request##58724 |goto 49.01,33.67
step
Follow the road |goto Ardenweald/0 39.79,49.92 < 40 |only if walking
talk Tishereenelee##167265
fpath Root-Home |goto Ardenweald/0 35.13,51.71
step
talk Tal-Inara##159478
turnin The Queen's Request##58724 |goto Oribos/1 49.03,60.01
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Revendreth (Story Only)",{
author="support@zygorguides.com",
description="\nComplete the following zone quest storylines in Revendreth:\n\n",
image=ZGV.DIR.."\\Guides\\Images\\Revendreth",
condition_suggested=function() return level >= 50 and level <= 60 end,
startlevel=50.0,
endlevel=60.0,
},[[
step
talk Rendle##155537
turnin A Plea to Revendreth##57025 |goto Revendreth/0 69.99,82.61 |only if havequest(57025) or completedq(57025)
accept The Sinstone##57026 |goto Revendreth/0 69.99,82.61
step
talk Courier Gevoraal##158526
fpath Pridefall Hamlet |goto 70.35,81.16
step
click Sinstone
Learn of the Sinstones |q 57026/1 |goto 70.27,79.95
step
click The Master
Learn about the Master |q 57026/2 |goto 68.99,81.43
step
talk Defiant Soul##156277
Learn about the Souls |q 57026/3 |goto 67.63,83.30
step
talk Lord Chamberlain##155533
turnin The Sinstone##57026 |goto 69.09,81.77
accept Invitation of the Master##57007 |goto 69.09,81.77
step
click Darkhaven Carriage
Begin Riding the Carriage |havebuff spell:304977 |goto 69.11,81.56 |q 57007
step
Watch the dialogue
Ride the Darkhaven Carriage |q 57007/1 |goto 65.14,66.17 |notravel
step
talk Rendle##155668
turnin Invitation of the Master##57007 |goto 65.34,66.27
accept Bottom Feeders##56829 |goto 65.34,66.27
step
talk Nadjia the Mistblade##157550
accept The Greatest Duelist##57381 |goto 65.70,64.65
step
click Consecrated Iron Cage
Release Nadjia the Mistblade |q 57381/1 |goto 65.70,64.65
stickystart "Pique_Nadjias_Interest"
stickystart "Abandoned_Soulguard_Torches"
step
talk Lord Chamberlain##155677
Tell him _"Come with me."_
Find Lord Chamberlain |q 56829/2 |goto 66.85,57.81
step
Find Cudgelface |q 56829/1 |goto 67.50,62.41
|tip He runs around this area and gets picked up by a flying enemy.
|tip Attack the enemy that picks him up.
step
label "Pique_Nadjias_Interest"
Kill enemies around this area
|tip Fill up the blue bar in the quest tracker area.
Pique Nadjia's Interest |q 57381/2 |goto 66.25,61.70
step
_Next to you:_
talk Nadjia the Mistblade
turnin The Greatest Duelist##57381
step
label "Abandoned_Soulguard_Torches"
_Note:_
click Abandoned Soulguard Torch+
|tip They look like burning torches on the ground around this area.
|tip You will steadily gain stacks of a debuff as you move around this area that increases the Shadow damage you take from enemies.
|tip These torches will remove the debuff.
step
talk Rendle##155668
turnin Bottom Feeders##56829 |goto 65.34,66.27
accept On The Road Again##56942 |goto 65.34,66.27
step
click Darkhaven Carriage
Begin Riding the Carriage |havebuff spell:304590 |goto 65.12,65.81 |q 56942
step
Watch the dialogue
Ride the Darkhaven Carriage |q 56942/1 |goto 67.50,68.52 |notravel
step
talk Lord Chamberlain##155533
turnin On The Road Again##56942 |goto 67.50,68.52
accept Rebels on the Road##56955 |goto 67.50,68.52
accept Anima Attrition##58433 |goto 67.50,68.52
stickystart "Kill_Stoneborn_Rebels"
step
click Anima Canister
|tip You will be attacked.
collect Anima Canister##174102 |q 58433/1 |goto 68.79,63.72
step
label "Kill_Stoneborn_Rebels"
kill 5 Stoneborn Rebel##156084 |q 56955/1 |goto 68.26,65.97
step
talk Lord Chamberlain##155533
turnin Rebels on the Road##56955 |goto 66.91,64.70
turnin Anima Attrition##58433 |goto 66.91,64.70
accept To Darkhaven##56978 |goto 66.91,64.70
step
talk Lord Chamberlain##155533
Tell him _"Ready."_
Speak with the Lord Chamberlain |q 56978/1 |goto 66.91,64.69
step
Watch the dialogue
|tip Follow Lord Chamberlain as he walks.
|tip He eventually walks to this location.
Reach Darkhaven |q 56978/2 |goto 63.26,62.10
step
talk Lord Chamberlain##156374
turnin To Darkhaven##56978 |goto 63.26,62.10
accept The Stoneborn##57174 |goto 63.26,62.10
step
click Anima Cage
Collect the Anima Cage |q 57174/1 |goto 63.25,62.10
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.53,64.75 |count 1
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.74,64.56 |count 2
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 64.01,62.96 |count 3
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 64.21,62.37 |count 4
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 63.26,61.33 |count 5
step
click Stoneborn Guardian
Awaken the Stoneborn |q 57174/2 |goto 61.70,60.74 |count 6
step
talk Courier Rokalai##156295
fpath Darkhaven |goto 60.50,60.62
step
Enter the building |goto 62.26,63.57 < 7 |walk
talk Tremen Winefang##156290
|tip Inside the building.
home The Sinposium |goto 62.06,64.48
step
Watch the dialogue
|tip Inside the building.
talk Mistress Mihaela##156822
turnin The Stoneborn##57174 |goto 61.31,63.78
accept A Plea to the Harvesters##58654 |goto 61.31,63.78
step
talk Lord Chamberlain##156374
turnin A Plea to the Harvesters##58654 |goto 60.61,60.86
step
talk General Kaal##155541
accept The Master Awaits##57178 |goto 60.45,60.91
step
clicknpc Myskia##156597
Begin Flying with Myskia |invehicle |goto 60.26,60.80 |q 57178
step
Ride Myskia |q 57178/1 |goto 57.54,55.77 |notravel
step
Watch the dialogue
|tip Follow General Kaal as she walks.
Follow General Kaal |q 57178/2 |goto 56.79,51.52
step
talk Lord Chamberlain##156374
turnin The Master Awaits##57178 |goto 56.79,51.52
step
talk Sire Denathrius##156644
accept The Authority of Revendreth##57179 |goto 57.42,49.46
step
talk The Tithelord##157302
Speak with the Tithelord |q 57179/1 |goto 57.36,50.21
step
talk The Fearstalker##157306
Speak with the Fearstalker |q 57179/2 |goto 57.05,49.87
step
talk The Stonewright##160644
Speak with the Stonewright |q 57179/3 |goto 57.04,49.19
step
talk The Countess##157303
Speak with the Countess |q 57179/4 |goto 57.22,48.87
step
Return to Sire Denathrius |q 57179/5 |goto 57.42,49.44
step
Stand in the Sigil of the Harvester |q 57179/6 |goto 57.54,49.59
step
talk Sire Denathrius##156644
turnin The Authority of Revendreth##57179 |goto 57.42,49.45
step
Watch the dialogue
talk Lord Chamberlain##156605
|tip He walks to this location.
accept I Don't Get My Hands Dirty##57161 |goto 58.04,49.51
step
Kill enemies around this area
click Defiant Barricade+
|tip They look like stone walls blocking the paths on the ground around this area.
Clear Penance Bridge |q 57161/1 |goto 60.61,49.74
|tip Fill up the blue bar in the quest tracker area.
step
Watch the dialogue
talk Echelon##156842
|tip He flies to this location.
turnin I Don't Get My Hands Dirty##57161 |goto 64.71,50.08
accept The Accuser's Sinstone##57173 |goto 64.71,50.08
step
click The Accuser's Sinstone
Watch the dialogue
Investigate the Accuser's Sinstone |q 57173/1 |goto 64.96,49.73
step
Watch the dialogue
talk Lord Chamberlain##156823
turnin The Accuser's Sinstone##57173 |goto 64.70,49.97
accept Inquisitor Stelia's Sinstone##58931 |goto 64.70,49.97
step
talk Echelon##163469
Begin Flying with Echelon |invehicle |goto 64.72,50.08 |q 58931
step
Watch the dialogue
Fly with Echelon |q 58931/1 |goto 69.48,53.91 |notravel
step
accept Temel, the Sin Herald##58932 |goto 69.48,53.91
|tip You will accept this quest automatically.
stickystart "Collect_Inquisitor_Stelias_Sinstone"
step
kill Cryptkeeper Kassir##163555
Recruit Temel |q 58932/1 |goto 71.45,54.41
step
label "Collect_Inquisitor_Stelias_Sinstone"
Kill enemies around this area
collect Avowed Crypt Key##174998+ |n
click Crypt Door+
|tip They look like the pointed doors on the stone buildings around this area.
click Inquisitor Stelia's Sinstone
|tip It looks like a tall tombstone.
|tip It will appears randomly inside one of the crypts you open.
collect Inquisitor Stelia's Sinstone##174930 |q 58931/2 |goto 69.33,54.37
step
Watch the dialogue
talk Echelon##163576
|tip He flies to this location.
turnin Inquisitor Stelia's Sinstone##58931 |goto 67.40,53.56
turnin Temel, the Sin Herald##58932 |goto 67.40,53.56
accept Herald Their Demise##59021 |goto 67.40,53.56
step
Use the _"Read Inquisitor Stelia's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Stelia##163971 |q 59021/1 |goto 64.42,52.61
step
talk Echelon##163576
|tip He flies to this location.
turnin Herald Their Demise##59021 |goto 67.40,53.56
accept Inquisitor Vilhelm's Sinstone##57175 |goto 67.40,53.56
step
click Disheveled Monument
click Freshly Dug Dirt+
|tip They look like multiple piles of dirt that appear on the ground.
Find the Hidden Sinstone Fragment |q 57175/1 |goto 67.82,51.57 |count 1
step
click Ritual Candle+
|tip There are 4 of them.
click Hidden Sinstone Fragment
|tip It appears on the stone table.
Find the Hidden Sinstone Fragment |q 57175/1 |goto 65.30,51.13 |count 2
step
click Piled Planks+
|tip They are many of them.
click Hidden Sinstone Fragment
Find the Hidden Sinstone Fragment |q 57175/1 |goto 64.88,48.42 |count 3
step
talk Echelon##164166
|tip He flies to this location.
turnin Inquisitor Vilhelm's Sinstone##57175 |goto 65.97,47.19
accept Ending the Inquisitor##59023 |goto 65.97,47.19
step
Use the _"Read Inquisitor Vilhelm's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Vilhelm##163973 |q 59023/1 |goto 67.29,43.47
step
talk Echelon##164166
turnin Ending the Inquisitor##59023 |goto 65.97,47.19
accept Sinstone Delivery##57176 |goto 65.97,47.19
step
talk Echelon##164274
Begin Flying with Echelon |invehicle |goto 65.97,47.19 |q 57176
step
Watch the dialogue
Fly with Echelon |q 57176/1 |goto 65.71,49.48 |notravel
step
talk Lord Chamberlain##157069
turnin Sinstone Delivery##57176 |goto 65.60,49.65
accept The Accuser's Secret##57180 |goto 65.60,49.65
step
talk Lord Chamberlain##157069
Tell him _"I'm ready to witness your ascension."_
Speak with Lord Chamberlain |q 57180/1 |goto 65.60,49.65
step
Watch the dialogue
Witness Lord Chamberlain's Ascension |q 57180/2 |goto 66.07,49.68
step
Watch the dialogue
kill The Accuser##157064
|tip She will eventually be taken away.
Protect Lord Chamberlain |q 57180/3 |goto 66.05,49.73
step
Watch the dialogue
talk Lord Chamberlain##157084
|tip He walks to this location.
turnin The Accuser's Secret##57180 |goto 66.34,50.57
accept The Accuser's Fate##57182 |goto 66.34,50.57
step
clicknpc Myskia##164438
|tip He flies to this location.
Begin Flying with Myskia |invehicle |goto 66.20,51.31 |q 57182
step
Watch the dialogue
Deliver the Accuser to the Master |q 57182/1 |goto 53.62,64.02 |notravel
step
talk Sire Denathrius##156381
turnin The Accuser's Fate##57182 |goto 53.34,63.93
accept A Lesson in Humility##59232 |goto 53.34,63.93
step
talk Sire Denathrius##156381
Tell him _"I will witness the Accuser's judgement."_
Speak with the Master |q 59232/1 |goto 53.34,63.93
step
Watch the dialogue
Witness the Judgement of the Accuser |q 59232/2 |goto 53.34,63.93
step
talk Sire Denathrius##156381
turnin A Lesson in Humility##59232 |goto 53.34,63.93
accept The Grove of Terror##57098 |goto 53.34,63.93
step
Follow the path down |goto 53.96,69.02 < 30 |only if walking
talk The Fearstalker##169087
turnin The Grove of Terror##57098 |goto 50.61,73.85
accept Dread Priming##58916 |goto 50.61,73.85
step
Enter the building |goto 49.53,75.71 < 7 |walk
clicknpc Houndmaster Loksey##162946
|tip Inside the building.
Bind Houndmaster Loksey |q 58916/1 |goto 49.36,75.76
step
talk Sinreader Nicola##163117
Tell her _"Read this soul their sins."_
Speak to Sinreader Nicola |q 58916/2 |goto 50.17,75.17
step
Watch the dialogue
|tip Lead Houndmaster Loksey down the middle of the path between the Soulstalker Alphas.
Let the Gargons Demoralize Houndmaster Loksey |q 58916/3 |goto 49.91,73.95
step
talk Flockmaster Sergio##163221
turnin Dread Priming##58916 |goto 51.27,74.31
accept Alpha Bat##58941 |goto 51.27,74.31
step
click Stake
kill Duskterror##163059
|tip She flies down to you.
|tip She will eventually be captured.
Watch the dialogue
Capture Duskterror |q 58941/2 |goto 52.44,76.47
step
talk Flockmaster Sergio##163221
turnin Alpha Bat##58941 |goto 51.26,74.31
accept King of the Hill##59014 |goto 51.26,74.31
step
Deliver Houndmaster Loksey to Wanecrypt Hill |q 59014/1 |goto 47.86,70.12
step
talk The Fearstalker##168664
turnin King of the Hill##59014 |goto 47.86,70.12
accept Let the Hunt Begin##57131 |goto 47.86,70.12
step
talk Soultrapper Valistra##156220
|tip Inside the building.
home Wanecrypt Hill |goto 47.33,70.65
step
clicknpc Houndmaster Loksey##163467
|tip Outside.
Siphon Houndmaster Loksey's Anima |q 57131/1 |goto 48.03,70.12
step
use the Hollowed Dredbat Fang##178994
Signal the Hunt |q 57131/2 |goto 48.03,70.12
step
talk The Fearstalker##168664
turnin Let the Hunt Begin##57131 |goto 47.87,70.12
accept The Penitent Hunt##57136 |goto 47.87,70.12
accept Devour This##57164 |goto 47.87,70.12
step
talk The Fearstalker##168664
Tell him _"Let's begin."_
Speak to the Fearstalker |q 57136/1 |goto 47.87,70.12
step
talk Courier Rabatur##156196
fpath Wanecrypt Hill |goto 47.88,69.39
stickystart "Slay_Banewood_Devourers"
step
click Yoshai the Merciless
Hunt Yoshai the Merciless |q 57136/3 |goto 44.53,70.39
step
kill Truulax##164048
Hunt Houndmaster Loksey |q 57136/4 |goto 46.87,65.24
step
clicknpc Crimelord Tiana##168728
Hunt Crimelord Tiana |q 57136/2 |goto 50.38,61.35
step
_Next to you:_
talk The Fearstalker
turnin The Penitent Hunt##57136
step
label "Slay_Banewood_Devourers"
Kill enemies around this area
|tip They look like various blue alien creatures.
Slay #12# Banewood Devourers |q 57164/1 |goto 50.15,63.97
step
_Next to you:_
talk The Fearstalker
turnin Devour This##57164
accept The Accuser##60506
step
Watch the dialogue
Hunt The Accuser |q 60506/1 |goto 51.57,59.95
step
Watch the dialogue
talk The Accuser##171916
Tell her _"Show me."_
Confront The Accuser |q 60506/2 |goto 51.57,59.78
step
cast Door of Shadows##300728
|tip Place the green circle on the other side of barrier, where The Accuser is standing.
Cast Door of Shadows to Cross the Barrier |q 60506/3 |goto 51.57,59.67
step
talk The Accuser##156554
|tip Inside the building.
turnin The Accuser##60506 |goto 51.53,59.18
accept A Reflection of Truth##57159 |goto 51.53,59.18
step
Enter the Mirror |q 57159/1 |goto 51.52,59.00
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk The Accuser##165003
Tell her _"I am ready."_
Witness the Truth |q 57159/2 |goto Castle Nathria/7 66.16,44.12
step
Kill the enemies that attack in waves
|tip Stay inside the large red circle surrounding the Accuser to receive a combat buff.
|tip Fill up the blue bar in the quest tracker area.
Protect the Accuser |q 57159/3 |goto 66.16,44.12
step
Escape Castle Nathria |q 57159/4 |goto 72.25,44.10
|tip Walk into the red swirling portal nearby.
step
talk The Accuser##156554
|tip Inside the building.
turnin A Reflection of Truth##57159 |goto Revendreth/0 51.53,59.16
accept Dredhollow##60313 |goto Revendreth/0 51.53,59.16
step
Cross the bridge |goto 47.55,72.44 < 20 |only if walking
talk The Accuser##168217
turnin Dredhollow##60313 |goto 43.21,73.86
accept Breaking the Hopebreakers##57189 |goto 43.21,73.86
accept They Won't Know What Hit Them##57190 |goto 43.21,73.86
step
talk General Draven##164394
accept Rebel Reinforcements##59209 |goto 43.33,74.08
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.92,74.75 |count 1
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.90,75.82 |count 2
step
Run down the stairs inside the building |goto 43.24,75.65 < 7 |walk
clicknpc Watchmaster Boromod##164405
|tip Downstairs inside the building.
Recruit Watchmaster Boromod |q 59209/1 |goto 42.47,75.62
step
click Rigged Anima Container
|tip Outside.
Set the Rigged Anima Container |q 57190/1 |goto 42.64,77.22 |count 3
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 43.14,77.64 |count 4
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 43.57,79.41 |count 5
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Marku.
kill Hopebreaker Marku##168287 |q 57189/1 |goto 43.54,79.90
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.67,79.57 |count 6
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 42.10,79.31 |count 7
step
click Rigged Anima Container
Set the Rigged Anima Container |q 57190/1 |goto 41.94,78.04 |count 8
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Mursa.
|tip She walks around this area.
kill Hopebreaker Mursa##168392 |q 57189/3 |goto 41.29,78.91
step
use the Concentrated Anima Vial##178873
|tip Use it on Hopebreaker Vilstav.
kill Hopebreaker Vilstav##168390 |q 57189/2 |goto 40.24,74.08
step
clicknpc Tactician Sakaa##164404
Recruit Tactician Sakaa |q 59209/2 |goto 40.12,73.17
step
Follow the path |goto 41.64,76.31 < 15 |only if walking
talk General Draven##168471
turnin Rebel Reinforcements##59209 |goto 39.82,80.87
step
talk The Accuser##168468
turnin Breaking the Hopebreakers##57189 |goto 39.68,81.22
turnin They Won't Know What Hit Them##57190 |goto 39.68,81.22
accept The Fearstalker##59256 |goto 39.68,81.22
step
talk The Accuser##168468
Tell her _"I am ready."_
Trigger the Trap |q 59256/1 |goto 39.68,81.22
step
Use the _"Condensed Anima Vial"_ ability
|tip Use it on The Fear Stalker each time she starts casting her "Drain Colossus" ability.
|tip This will interrupt her and prevent her from healing during the fight.
|tip It appears as a button on the screen.
kill The Fearstalker##164618
collect Medallion of Dread##175770 |q 59256/2 |goto 39.24,81.93
step
talk The Accuser##168217
turnin The Fearstalker##59256 |goto 43.21,73.87
accept Where is Prince Renathal?##57240 |goto 43.21,73.87
step
talk Stonehead##157199
|tip He will pick you up.
turnin Where is Prince Renathal?##57240 |goto 38.97,66.03
accept Sign Your Own Death Warrant##57380 |goto 38.97,66.03
stickystart "Collect_Venthyr_Calligraphy_Set"
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 39.22,67.85 |count 1
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 39.41,69.65 |count 2
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 38.88,69.94 |count 3
step
click Forbidden Research Documents
collect Blank Parchment##171343 |q 57380/1 |goto 38.52,68.89 |count 4
step
label "Collect_Venthyr_Calligraphy_Set"
Kill enemies around this area
collect Venthyr Calligraphy Set##171344 |q 57380/2 |goto 39.24,69.35
step
click Venthyr Writing Desk
|tip Inside the building.
Choose _<Forge your Letter of Condemnation.>_
|tip Choose any of the dialogue options you like, it doesn't matter.
Forge a Letter of Condemnation |q 57380/3 |goto 37.93,68.25
step
talk Stonehead##157199
|tip He will pick you up.
turnin Sign Your Own Death Warrant##57380 |goto 38.97,66.03
step
Watch the dialogue
Get Thrown by Stonehead |goto 37.31,63.53 < 10 |noway |c |q 57405 |future
step
talk Lost Sybille##157588
accept Chasing Madness##57405 |goto 37.04,63.12
step
Watch the dialogue
|tip Follow Lost Sybille as he walks.
|tip He eventually walks to this location.
Follow Lost Sybille |q 57405/1 |goto 37.43,60.35
step
Watch the dialogue
talk Theotar##157639
|tip He walks to this location.
turnin Chasing Madness##57405 |goto 38.05,60.73
accept My Terrible Morning##57426 |goto 38.05,60.73
accept Theotar's Mission##57428 |goto 38.05,60.73
accept Unbearable Light##57427 |goto 38.05,60.73
step
_Note:_
|tip Don't worry about Theotar's Willpower bar above his head as he follows you.
|tip He's supposed to lose all of his willpower, it doesn't matter.
Click Here to Continue |confirm |q 57427
stickystart "Slay_Ash_Ghouls"
stickystart "Collect_Regal_Cloth_Scraps"
stickystart "Collect_Scorched_Planks"
step
Enter the building |goto 33.82,60.74 < 10 |walk
kill Marquis Pummeler##157740 |q 57426/1 |goto 33.79,61.33
|tip Inside the building.
step
_Next to you:_
talk Theotar
turnin My Terrible Morning##57426
step
label "Collect_Regal_Cloth_Scraps"
click Scorched Battle Standard+
|tip They look like red flags hanging from poles on the ground around this area.
Kill Scorched enemies around this area
|tip They look like enemies that look like Theotar, who is following you around.
collect 8 Regal Cloth Scrap##171468 |q 57428/2 |goto 35.70,58.54
step
label "Collect_Scorched_Planks"
click Various Scorched Item+
|tip They look like various shaped broken wooden item with various names on the ground around this area.
collect 8 Scorched Plank##171469 |q 57428/1 |goto 35.70,58.54
step
label "Slay_Ash_Ghouls"
Kill Ghoul enemies around this area
Slay #12# Ash Ghouls |q 57427/1 |goto 35.70,58.54
step
_Next to you:_
talk Theotar
turnin Theotar's Mission##57428
turnin Unbearable Light##57427
accept Lost in the Desiccation##57442
step
Watch the dialogue
|tip Follow Lost Sybille as he walks.
|tip He will appear on your minimap as a yellow dot.
|tip He eventually walks to this location inside the building.
Follow Lost Sybille |q 57442/1 |goto 31.19,57.64
step
talk Tubbins##157801
|tip Inside the building.
turnin Lost in the Desiccation##57442 |goto 31.00,57.60
accept Tubbins's Tea##57460 |goto 31.00,57.60
step
talk Tubbins##157801
|tip Inside the building.
Tell him _"I'll help you make the tea for Theotar."_
Start Making the Tea |q 57460/1 |goto 31.00,57.60
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #3# Forcefully Fragrant Fronds |q 57460/2 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #4# Grave Gravel |q 57460/3 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #2# Spicy Scorchshrooms |q 57460/4 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add the Luminous Lightroot |q 57460/5 |goto 31.24,57.56
step
Watch the dialogue
|tip Stand in the green circles that appear on the ground nearby to catch the ingredients he throws.
|tip After catching them, bring them to the Makeshift Mortar at this location.
|tip Inside the building.
Add #10# Tricky Thicket Thorns |q 57460/6 |goto 31.24,57.56
step
click Dented Teapot
|tip Inside the building.
Watch the dialogue
Carry the Dented Teapot |havebuff spell:308049 |goto 30.94,57.66 |q 57460
step
Watch the dialogue
|tip Inside the building.
Add the Liquid Shadows |q 57460/7 |goto 31.22,57.55
step
talk Tubbins##157801
|tip Inside the building.
turnin Tubbins's Tea##57460 |goto 31.00,57.60
step
Watch the dialogue
|tip Inside the building.
talk Theotar##158542
accept An Uneventful Stroll##57461 |goto 31.17,57.52
step
talk Theotar##158542
|tip Inside the building.
Tell him _"I'm ready. Lead me to the sanctuary."_
Speak with Theotar |q 57461/1 |goto 31.17,57.52
step
Watch the dialogue
|tip Follow Theotar as he walks.
|tip He eventually walks to this location.
Escort Theotar to the Sanctuary |q 57461/2 |goto 32.03,47.62
step
talk Theotar##158694
turnin An Uneventful Stroll##57461 |goto 32.03,47.62
accept Into the Light##60566 |goto 32.03,47.62
step
talk Delia##166089
|tip Inside the building.
home Sanctuary of the Mad |goto 31.19,46.63
step
talk Courier Shaal##158416
fpath Sanctuary of the Mad |goto 30.56,48.87
step
Ride the Elevator to Sinfall |q 60566/1 |goto 30.34,47.33
|tip Walk onto the platform after you ride the elevator up.
step
talk Breakfist##169105
turnin Into the Light##60566 |goto 30.42,45.61
accept Securing Sinfall##57724 |goto 30.42,45.61
step
Follow the path up |goto 30.91,44.07 < 15 |only if walking
Kill enemies around this area
|tip Wait to kill Grand Monitor Rorok in the next step
Clear Out Sinfall |q 57724/1 |goto 29.82,43.17
step
kill Grand Monitor Rorok##158701 |q 57724/2 |goto 28.92,42.88
step
Enter the building |goto 28.71,43.01 < 7 |only if walking
click Scorching Mirror
|tip Upstairs inside the building.
Redirect the Scorching Mirror |q 57724/3 |goto 28.36,44.20
step
talk Theotar##158716
turnin Securing Sinfall##57724 |goto 29.91,42.32
accept In the Ruin of Rebellion##59327 |goto 29.91,42.32
step
Jump down onto the the stairs |goto 29.90,41.66 < 10 |walk
Enter Sinfall |q 59327/1 |goto 29.35,42.67
|tip Walk into the red swirling portal.
|tip Downstairs inside the building.
step
Enter the Sinfall Reaches |goto Sinfall/0 23.65,57.06 < 10 |noway |c |q 59327
step
Find a Clue |q 59327/2 |goto Sinfall/0 42.89,43.81
|tip Walk near Vorpalia.
|tip It looks like a sword that floats around this area.
|tip Inside the building.
step
talk Vorpalia##158615
|tip It looks like a sword that floats around this area.
|tip Inside the building.
turnin In the Ruin of Rebellion##59327 |goto 42.89,43.81
accept Prince Renathal##57689 |goto 42.89,43.81
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 41.61,50.87 |count 1
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 37.65,56.04 |count 2
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 38.53,40.90 |count 3
step
click Container of Dark Will
|tip Inside the building.
Open the Container of Dark Will |q 57689/1 |goto 33.35,41.97 |count 4
step
Jump into the Maw |q 57689/2 |goto 34.61,49.51
|tip Jump into the huge white swirling portal.
|tip Inside the building.
step
Enter the Maw |goto The Maw/0 37.70,27.40 < 10 |noway |c |q 57689
step
_Next to you:_
talk Vorpalia
turnin Prince Renathal##57689
accept Cages For All Occassions##57690
step
Cross the bridge |goto 35.47,27.51 < 20 |only if walking
talk Prince Renathal##158645
turnin Cages For All Occassions##57690 |goto 34.66,18.69
accept A Royal Key##57691 |goto 34.66,18.69
step
kill Ghelak the Incarcerator##158665
|tip He walks around this area.
collect Renathal's Cage Key##172446 |q 57691/1 |goto 28.94,21.17
step
talk Prince Renathal##158645
turnin A Royal Key##57691 |goto 34.67,18.69
accept Torghast, Tower of the Damned##57693 |goto 34.67,18.69
step
Follow the path |goto 30.56,16.78 < 20 |only if walking
click Enter Torghast, Tower of the Damned
Find an Entrance to Torghast |q 57693/1 |goto 31.36,12.52
step
Enter Skoldus Hall, Torghast |q 57693/2 |goto 31.36,12.52
|tip Enter the instance with the popup that displays.
step
Enter Torghast |goto Torghast/1 37.75,49.53 < 10 |noway |c |q 57693
step
Enter the Portal |goto 29.30,49.51
|tip Walk into the swirling portal.
Reach Floor 1 in Torghast |goto Torghast/2 42.81,14.04 < 10 |noway |c |q 57693
step
Enter the Portal |goto 46.66,70.11
|tip Walk into the swirling portal.
Reach Floor 2 in Torghast |goto Torghast/3 47.94,20.73 < 10 |noway |c |q 57693
step
Follow the path |goto 47.54,65.60 < 10 |walk
Continue following the path |goto 58.48,70.09 < 10 |walk
Enter the Portal
|tip Walk into the swirling portal.
Ascend to the Chamber of Power |q 57693/3 |goto 67.74,57.50
step
Reach Floor 3 in Torghast |goto Torghast/4 50.02,25.95 < 20 |noway |c |q 57693
step
kill Warden of Souls##152995 |q 57693/4 |goto 50.30,75.39
|tip You can buy items and buffs from Broker Ve'nott when you enter floor 3, before you fight the Warden of Souls.
step
Watch the dialogue
Enter the Ritual of Soul Tracing |q 57693/5 |goto 50.03,69.50
step
Return to Sinfall |goto Sinfall/0 24.75,56.33 < 10 |noway |c |q 57693
step
talk Prince Renathal##162688
|tip Inside the building.
turnin Torghast, Tower of the Damned##57693 |goto Sinfall/0 26.46,57.19
accept Refuge of Revendreth##57694 |goto Sinfall/0 26.46,57.19
step
Meet with Theotar |q 57694/1 |goto 30.93,66.17
|tip Inside the building.
step
Meet with Accuser |q 57694/2 |goto 47.57,57.60
|tip Inside the building.
step
Meet with General Draven |q 57694/3 |goto 42.74,44.31
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Prince Renathal##162688
|tip He walks to this location.
turnin Refuge of Revendreth##57694 |goto 52.49,39.11
step
Reach Level 60 |ding 60
|tip You must be level 60 to continue the questline.
|tip Use the "Revendreth (Threads of Fate)" leveling guide to complete side quests.
|tip You can also run dungeons, if you prefer.
step
talk Prince Renathal##162688
|tip Inside the building.
accept Blinded By The Light##59644 |goto 52.49,39.11
step
Run up the stairs |goto 44.54,63.08 < 10 |walk
click Unaligned Mirror
|tip Click the metal ring at the top.
Align the Mirror |q 59644/1 |goto Revendreth/0 28.36,45.63 |count 1
step
click Unaligned Mirror
Align the Mirror |q 59644/1 |goto 27.30,40.36 |count 2
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 29.73,38.66 |count 3
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 31.79,40.59 |count 4
step
click Unaligned Mirror
|tip On top of the wall.
Align the Mirror |q 59644/1 |goto 31.76,42.33 |count 5
step
click Unaligned Mirror
|tip Jump down carefully to it.
Align the Mirror |q 59644/1 |goto 31.57,44.16 |count 6
step
Follow the path up |goto 31.58,40.31 < 15 |only if walking
talk Projection of Prince Renathal##172673
|tip On top of the wall.
turnin Blinded By The Light##59644 |goto 32.12,41.47
accept The Master of Lies##58086 |goto 32.12,41.47
step
talk Projection of Prince Renathal##172673
|tip On top of the wall.
Tell him _"Begin the assault."_
Speak with the Projection of Prince Renathal |q 58086/1 |goto 32.12,41.47
step
Begin the Scenario |scenariostart |q 58086
step
Watch the dialogue
Rally to Prince Renathal |scenariostage 1 |goto Revendreth Scenario/0 37.48,41.49 |q 58086
step
click Darkwing Rebel+
|tip They look like stone gargoyle statues on the ground around this area.
click Anima Container+
|tip Click them to fill the Anima Stores bar near the bottom of the screen.
|tip They look like red filled lanterns on the ground around this whole area.
|tip You need anima to awaken the Darkwing Rebels.
Kill enemies around this area
|tip Walk through the red orbs that appear after you kill them to collect anima.
Awaken #6# Darkwing Stoneborns |scenariogoal 2/46664 |goto 41.50,41.52 |q 58086
step
_Collect All of the Anima:_
|tip Collect as much Anima as you can.
|tip Each anima you collect will increase your damage.
|tip They will all stay with you and make you extremely powerful.
Click Here After Collecting All of the Anima |confirm |goto 41.50,41.52 |q 58086
step
Rally at Dominance Gate |scenariostage 3 |goto 42.06,37.63 |q 58086
step
Watch the dialogue
|tip Walk down the stairs nearby to get your allies to start walking.
|tip Follow Prince Renathal as he walks.
|tip He eventually walks to this location.
Menagerie of the Master reached |scenariogoal 4/46668 |goto 45.83,31.22 |q 58086
step
kill General Kaal##159301
|tip She will eventually escape.
Defeat General Kaal |scenariostage 5 |goto 45.86,31.24 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower The Curator |scenariogoal 6/47768 |goto 47.18,30.22 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower The Accuser |scenariogoal 6/47767 |goto 47.62,32.97 |q 58086
step
kill Dread Siphonist##163966+
|tip There are 4 of them.
Watch the dialogue
Empower Renathal |scenariogoal 6/46669 |goto 49.14,34.84 |q 58086
step
kill Myskia##174550 |scenariogoal 7/50579 |goto 50.39,31.32
|tip He flies down to you.
step
Watch the dialogue
talk Prince Renathal##170316
Tell him _"Ready to face the Master."_
Speak with Prince Renathal |scenarioend |goto 50.37,30.30 |q 58086
step
Return to the Menagerie of the Master |goto Revendreth/0 51.35,29.37 < 10 |c |q 58086
step
talk Courier Skraal##158564
fpath Menagerie of the Master |goto 54.22,25.68
step
Follow the path up |goto 52.28,29.53 < 20 |only if walking
Run up the ramp |goto 53.38,30.76 < 10 |only if walking
Run up the stairs |goto 55.19,26.76 < 15 |only if walking
Ride the elevator down |goto 57.39,33.43 < 15 |only if walking
talk Courier Tarehaar##158517
fpath Old Gate |goto 61.22,38.79
step
Cross the bridge |goto 64.24,37.87 < 20 |only if walking
talk Courier Rehkaash##158417
fpath Halls of Atonement |goto 71.58,40.06
step
Ride the elevator up |goto 30.34,47.34 < 15 |only if walking
Run up the stairs |goto 32.75,44.10 < 15 |only if walking
Cross the bridge |goto 33.91,41.49 < 20 |only if walking
Follow the path down |goto 37.69,44.18 < 20 |only if walking
talk Courier Chip##160202
fpath Charred Ramparts |goto 38.95,49.33
step
Follow the path on the ground |goto 28.31,49.06 < 50 |only if walking
Continue following the path |goto 26.24,45.18 < 20 |only if walking
Cross the bridge |goto 25.11,37.08 < 20 |only if walking
Follow the path |goto 25.94,30.49 < 20 |only if walking
talk Courier Dreadcarrier##158533
fpath Dominance Keep |goto 25.96,28.88
step
Follow the path |goto 51.89,29.76 < 20 |only if walking
talk Prince Renathal##165557
turnin The Master of Lies##58086 |goto 50.28,28.27
accept The End of the Beginning##57876 |goto 50.28,28.27
step
talk General Draven##173188
Tell him _"I am ready."_
Speak with Draven |q 57876/1 |goto 50.28,29.20
step
Watch the dialogue
Fly with Draven to the Flightmaster |q 57876/2 |goto 70.49,80.50 |notravel
step
talk Tal-Inara##159478
turnin The End of the Beginning##57876 |goto Oribos/0 38.87,70.01
|next Leveling Guides\\Shadowlands (50-60)\\Shadowlands Intro & Main Story Questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Questline",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Kyrian\n"..
"\ncovenant quests and storyline.\n",
condition_suggested=function() return level >= 60 end,
startlevel=60.0,
endlevel=70.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Reach Level 60 |ding 60
|tip You must be level 60 before you can start your covenant questline.
|tip Use the Leveling guides to accomplish this.
step
Complete the "Choosing Your Purpose" Quest in Oribos |complete completedanyq(57878,62000) |future
|tip Use the "Shadowlands Intro & Main Questline" guide to accomplish this.
step
talk Tal-Inara##159478
accept Report to Adrestes##63211 |goto Oribos/0 38.90,69.98
step
talk Polemarch Adrestes##171787
turnin Report to Adrestes##63211 |goto 36.16,64.17
accept Among the Kyrian##60491 |goto 36.16,64.17
step
Fly to Hero's Rest in Bastion |q 60491/1 |goto Bastion/0 51.48,46.82
step
talk Polemarch Adrestes##168742
turnin Among the Kyrian##60491 |goto Bastion/0 56.76,31.44
accept A Proper Reception##60492 |goto Bastion/0 56.76,31.44
step
talk Polemarch Adrestes##168742
Tell him _"I am."_
Speak with Polemarch Adrestes |q 60492/1 |goto 56.76,31.44
step
Watch the dialogue
|tip Follow Polemarch Adrestes as he walks.
|tip He eventually walks to this location.
Follow Polemarch Adrestes |q 60492/2 |goto 58.21,29.07
step
Use the _"Kyrian Glory"_ ability
|tip It appears as a button on the screen.
Join the Kyrian Covenant |q 60492/3 |goto 58.21,29.07
step
talk Polemarch Adrestes##168906
turnin A Proper Reception##60492 |goto 58.44,28.92
accept Elysian Hold##57895 |goto 58.44,28.92
step
talk Polemarch Adrestes##168906
Tell him _"I'm ready."_
Fly to Elysian Hold |q 57895/1 |goto 58.44,28.92
step
Begin Flying with Polemarch Adrestes |invehicle |goto 58.44,28.92 |q 57895
step
Watch the dialogue
Fly with Polemarch Adrestes |outvehicle |goto Elysian Hold/0 51.88,47.68 |q 57895 |notravel
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin Elysian Hold##57895 |goto Elysian Hold/0 55.65,41.96
accept Of Great Renown##62789 |goto 55.65,41.96
step
talk Caretaker Theo##174581
home Elysian Hold |goto 48.25,59.16 |q 62789
step
talk Iona Skyblade##176100
turnin Of Great Renown##62789 |goto 42.75,70.24
accept The Path Provides##62790 |goto 42.75,70.24
step
talk Iona Skyblade##176100
Ask her _"What is my Renown with the Kyrian."_
Examine Your Renown |q 62790/1 |goto 42.75,70.24
step
talk Haephus##167745
turnin The Path Provides##62790 |goto 42.75,70.24
accept A Call to Service##62698 |goto 42.75,70.24
step
talk Hermestes##160387
|tip Upstairs.
turnin A Call to Service##62698 |goto 40.95,40.91
accept A Calling in Bastion##62692 |goto 40.95,40.91
step
Complete #3# World Quests in Bastion |q 62692/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
step
talk Hermestes##160387
|tip Upstairs.
turnin A Calling in Bastion##62692 |goto 40.95,40.91
accept Our Most Precious Resource##62791 |goto 40.95,40.91
step
use the Tribute of the Ascended##181372
|tip You should have this from turning in the "A Calling in Bastion" quest.
|tip You will be given an item worth 500 Anima.
|tip If you don't have this, complete world quests that reward Anima items, until you have 375 Anima worth of items.
Receive the Rewards |condition itemcount(181372) == 0 |q 62792 |future
step
talk Haephus##167745
turnin Our Most Precious Resource##62791 |goto 42.61,53.10
accept Into the Reservoir##62792 |goto 42.61,53.10
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button.
Deposit #375# Anima |q 62792/2 |goto 42.61,53.10
step
talk Haephus##167745
turnin Into the Reservoir##62792 |goto 42.61,53.10
accept A Unique Opportunity##57905 |goto 42.61,53.10
step
talk Soulguide Daelia##160212
|tip Downstairs inside the building.
turnin A Unique Opportunity##57905 |goto Elysian Hold/1 59.48,34.22
accept Friends in Dark Places##62832 |goto 59.48,34.22
step
talk Ve'nari##162804
turnin Friends in Dark Places##62832 |goto The Maw/0 46.91,41.69
accept Setting the Ground Rules##62882 |goto The Maw/0 46.91,41.69
step
talk Ve'nari##162804
Ask her _"What are your ground rules for working together?"_
Watch the dialogue
Set the Ground Rules with Ve'nari |q 62882/1 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Setting the Ground Rules##62882 |goto 46.91,41.69
accept Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
stickystart "Collect_Granules_of_Stygia_60287"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Take #5# Souls into the Soulkeeper |q 60287/1 |goto 40.16,42.42
step
label "Collect_Granules_of_Stygia_60287"
Kill enemies around this area
kill Stone Prison##176145+								|notinsticky
|tip They look like pyramids made of rocks on the ground around this area.		|notinsticky
click Soul Cage+									|notinsticky
|tip They look like tall grey metal cages on the ground around this area.		|notinsticky
|tip They will appear on your minimap as white ghost icons.				|notinsticky
click Soul+										|notinsticky
|tip They look like white spirits that float out of the cages and stone prisons.	|notinsticky
|tip You can also click Souls that other players free.					|notinsticky
collect 60 Granule of Stygia##180852 |q 60287/2 |goto 40.16,42.42
step
Follow the path down |goto 44.60,41.08 < 15 |only if walking
talk Ve'nari##162804
buy 1 Cypher of Relocation##180817 |q 60287/4 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
accept Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 47.19,43.16 |count 1
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.41,41.84 |count 2
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.19,40.20 |count 3
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 46.93,39.48 |count 4
step
talk Ve'nari##162804
turnin Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
accept Rule 3: Trust is Earned##60289 |goto 46.91,41.69
step
click Signaling Beacon
Place the Signaling Beacon |q 60289/1 |goto 34.98,47.68
step
click Baine's Mace##364498
|tip You will be attacked.
collect Bloodhoof Warmace##184284 |q 60289/2 |goto 33.46,49.06
step
kill Tower Inquisitor##171626 |q 60289/3 |goto 33.46,49.06
step
use the Cypher of Relocation##180817
Return to Ve'nari |goto 46.22,41.25 < 10 |c |q 60289
step
talk Ve'nari##162804
turnin Rule 3: Trust is Earned##60289 |goto 46.91,41.69
accept Hopeful News##62837 |goto 46.91,41.69
step
talk Highlord Bolvar Fordragon##164079
turnin Hopeful News##62837 |goto Oribos/0 39.94,68.61
accept Return to Adrestes##62796 |goto 39.94,68.61
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin Return to Adrestes##62796 |goto Elysian Hold/0 55.66,41.94
accept It's All Coming Together##62793 |goto Elysian Hold/0 55.66,41.94
step
talk Haephus##167745
turnin It's All Coming Together##62793 |goto 42.61,53.10
accept Enhancing the Hold##62794 |goto 42.61,53.10
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Choose whichever upgrade you like best, it doesn't matter, because you will eventually unlock them all over time.
|tip Click the "Activate" button.
Start a Sanctum Upgrade |q 62794/1 |goto 42.61,53.10
step
talk Haephus##167745
turnin Enhancing the Hold##62794 |goto 42.61,53.10
accept Dangerous to Go Alone##57897 |goto 42.61,53.10
step
talk Soulguide Daelia##160212
|tip Downstairs inside the building.
turnin Dangerous to Go Alone##57897 |goto Elysian Hold/1 59.49,34.24
accept Soul Meets Body##57898 |goto 59.49,34.24
step
Watch the dialogue
|tip Downstairs inside the building.
talk Pelagos##160595
|tip He walks to this location.
Tell him _"Let us soulbind."_
Soulbind with Pelagos |q 57898/1 |goto 60.02,36.32
step
talk Soulguide Daelia##160212
|tip Downstairs inside the building.
turnin Soul Meets Body##57898 |goto 59.48,34.23
accept Strengthen the Bond##60504 |goto 59.48,34.23
step
click Forge of Bonds
|tip Select the Soulbind Power.
|tip Downstairs inside the building.
Activate the Soulbind Power |q 60504/1 |goto 59.84,34.66
step
talk Soulguide Daelia##160212
|tip Downstairs inside the building.
turnin Strengthen the Bond##60504 |goto 59.49,34.24
accept A Conduit for Good##62795 |goto 59.49,34.24
step
click Forge of Bonds
|tip Use the 3 conduits in your bags.
|tip The conduits are different, depending on your class.
|tip Downstairs inside the building.
Add the Conduits to the Forge of Bonds |q 62795/1 |goto 59.84,34.67
step
click Forge of Bonds
|tip Look at the powers down the tree to figure out the path you want to take.
|tip Choose the conduit that leads to unlocking the power you like best.
|tip Downstairs inside the building.
Apply the Conduit to Pelagos |q 62795/2 |goto 59.84,34.67
step
talk Soulguide Daelia##160212
|tip Downstairs inside the building.
turnin A Conduit for Good##62795 |goto 59.49,34.24
accept Our Eternal Charge##57904 |goto 59.49,34.24
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin Our Eternal Charge##57904 |goto Elysian Hold/0 55.64,41.96
accept The Highlord Calls##63029 |goto 55.64,41.96
step
talk Highlord Bolvar Fordragon##164079
turnin The Highlord Calls##63029 |goto Oribos/0 39.94,68.59
step
Reach Renown Level 5 |condition covenant() == Kyrian and covenantrenown() >= 5
|tip Complete Covenant Sanctum quests.
|tip They are repeatable weekly quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept Trial of Ascension##58787 |goto Elysian Hold/0 55.64,41.96
step
talk Kleia##162542
turnin Trial of Ascension##58787 |goto Bastion/0 33.19,26.14
accept Censers of Guidance##58788 |goto 33.19,26.14
step
talk Achillon##162544
accept Misguiding Mentors##58789 |goto 33.25,26.15
stickystart "Collect_Incense_Of_Guidance"
step
kill Strategist Palladia##162613 |q 58789/1 |goto 32.59,23.78
|tip She flies in the air around this area.
step
kill Instructor Herus##162614 |q 58789/2 |goto 33.94,21.66
step
label "Collect_Incense_Of_Guidance"
Kill enemies around this area
collect 10 Incense of Guidance##174821 |q 58788/1 |goto 33.29,23.16
step
Follow the path |goto 32.36,20.81 < 10 |walk
talk Achillon##162544
|tip Inside the building.
turnin Misguiding Mentors##58789 |goto 32.11,21.04
step
talk Kleia##162542
|tip Inside the building.
turnin Censers of Guidance##58788 |goto 32.09,21.25
accept To Cross the Veil##58790 |goto 32.09,21.25
step
talk Kleia##162542
Tell her _"I am ready."_
Speak to Kleia |q 58790/1 |goto 32.49,19.20
step
click Censer of Service
Light the Censer of Service |q 58790/3 |goto 32.41,19.56
step
click Censer of Spirit
Light the Censer of Spirit |q 58790/4 |goto 32.01,19.16
step
click Censer of Faith
Light the Censer of Faith |q 58790/5 |goto 32.28,18.57
step
click Censer of Discipline
Light the Censer of Discipline |q 58790/2 |goto 32.68,18.96
step
Watch the dialogue
Complete the Ritual |q 58790/6 |goto 32.48,19.20
step
talk Kleia##162542
Tell her _"I'm ready. Let's go."_
Talk to Kleia |q 58790/7 |goto 32.48,19.20
step
click Veil Gateway
Take a Veil Gateway |q 58790/8 |goto 32.89,18.11
step
Travel to Lakeshire |goto Redridge Mountains/0 32.63,39.89 < 10 |noway |c |q 58790
step
talk Alithea##162558
turnin To Cross the Veil##58790 |goto Redridge Mountains/0 32.44,39.69
accept A Day in the Life##58791 |goto Redridge Mountains/0 32.44,39.69
step
talk Ben Howell##162591
Tell him _"We must see your final moments."_
Watch the dialogue
Witness Ben Howell's Life |q 58791/1 |goto 32.62,39.77
step
Enter the building |goto 21.91,42.23 < 7 |walk
talk Sarah Howell##162953
|tip Inside the building.
turnin A Day in the Life##58791 |goto 21.59,42.04
accept Food on the Table##58948 |goto 21.59,42.04
accept Millie's Garden##58949 |goto 21.59,42.04
step
Till the Untilled Soil |q 58949/1 |goto 21.12,42.30 |count 1
|tip Use the "Shovel" ability on your action bar.
step
Till the Untilled Soil |q 58949/1 |goto 20.81,42.55 |count 2
|tip Use the "Shovel" ability on your action bar.
step
Till the Untilled Soil |q 58949/1 |goto 20.52,42.84 |count 3
|tip Use the "Shovel" ability on your action bar.
step
talk Millie Howell##162962
|tip She walks around this area.
turnin Millie's Garden##58949 |goto 20.95,42.85
step
kill Redridge Rabbit##163096+
collect 4 Rabbit Meat##174935 |q 58948/1 |goto 19.37,44.07
step
Enter the building |goto 21.91,42.23 < 7 |walk
talk Sarah Howell##162953
|tip Inside the building.
turnin Food on the Table##58948 |goto 21.59,42.04
accept Lumber for Lakeshire##58950 |goto 21.59,42.04
step
Enter the building |goto 28.49,42.55 < 10 |walk
talk Magistrate Solomon##163111
|tip Inside the building.
turnin Lumber for Lakeshire##58950 |goto 28.91,41.11
step
Watch the dialogue
talk Magistrate Solomon##163111
|tip Inside the building.
accept Lakeshire's Last Stand##58951 |goto 28.91,41.11
stickystart "Warn_Citizens"
step
click Boards
|tip Outside the building.
Board Up the Window |q 58951/1 |goto 28.96,41.95 |count 1
step
click Boards
|tip Outside the building.
Board Up the Windows |q 58951/1 |goto 27.65,41.96 |count 3
step
click Boards
|tip Outside the building.
Board Up the Window |q 58951/1 |goto 26.52,42.40 |count 4
step
label "Warn_Citizens"
talk Citizen+
|tip They look like friendly NPC's with various names all around this area.
|tip They have various dialogue options.
Warn #5# Citizens |q 58951/2 |goto 27.43,43.65
step
talk Sarah Howell##162953
Tell her _"Take the children inside, now!"_
Warn Your Family |q 58951/3 |goto 22.13,42.24
step
Kill the enemies that attack
|tip You will die.
Fight the Scourge |q 58951/4 |goto 22.39,42.34
step
talk Kleia##162542
turnin Lakeshire's Last Stand##58951 |goto 32.51,39.93
step
talk Alithea##162558
accept Where a Soul Belongs##58792 |goto 32.44,39.69
step
use the Vesper of Veilflight##175011
Use the Horn of Veilflight |q 58792/1 |goto 32.44,39.69
step
Watch the dialogue
Arrive in Oribos |q 58792/2
step
talk Kleia##162542
Ask her _"Are you okay?"_
Talk to Kleia |q 58792/3 |goto Oribos/1 43.59,51.59
step
Watch the dialogue
talk Kleia##162542
turnin Where a Soul Belongs##58792 |goto 43.59,51.59
accept Faith Through the Darkness##58793 |goto 43.59,51.59
step
talk Polemarch Adrestes##160037
turnin Faith Through the Darkness##58793 |goto Elysian Hold/0 47.90,53.65
accept Ascended##58795 |goto Elysian Hold/0 47.90,53.65
step
talk Pelagos##167716
Tell him _"We must assist in the ceremony."_
Meet with Pelagos |q 58795/1 |goto 45.53,55.22
step
talk Clora##162556
Tell her _"Your time has come, Clora."_
Usher Clora |q 58795/2 |goto 45.70,57.63
step
Watch the dialogue
Witness Clora's Ascension |q 58795/3 |goto 45.70,57.63
step
talk Forgelite Sophone##162557
Tell her _"Your time has come, Sophone."_
Usher Forgelite Sophone |q 58795/4 |goto 46.04,58.33
step
Watch the dialogue
Witness Sophone's Ascension |q 58795/5 |goto 46.04,58.33
step
talk Kleia##162542
Tell her _"Your time has come, Kleia."_
Usher Kleia |q 58795/6 |goto 45.26,57.44
step
Watch the dialogue
Witness Kleia's Ascension |q 58795/7 |goto 45.26,57.44
step
talk Kleia##163650
|tip Inside the building.
turnin Ascended##58795 |goto 51.57,47.71
accept The Forsworn Onslaught##58796 |goto 51.57,47.71
stickystart "Repel_The_Forsworn_Invasion"
step
Watch the dialogue
|tip Kill the enemies next to the Gilded Spiritmender.
|tip Upstairs.
Check the Wards |q 58796/3 |goto 59.97,87.40
step
click Bell of Recall
Summon the Ascended |q 58796/2 |goto 21.63,29.81 |notravel
step
label "Repel_The_Forsworn_Invasion"
Kill enemies around this area
talk Wounded Kyrian##163655+
|tip They look like blue people laying on the ground around this area.
talk Terrified Caretaker##163435+
|tip They look like small owl creatures running on the ground around this area.
Repel the Forsworn Invasion |q 58796/1 |goto 47.30,54.42
step
kill Uther##163670
|tip He will eventually escape when he gets to about 50% health.
|tip Upstairs.
Defeat the Commander |q 58796/4 |goto 64.08,29.30
step
talk Kleia##163650
|tip Downstairs.
turnin The Forsworn Onslaught##58796 |goto 51.55,47.71
accept Forged by Trial##58797 |goto 51.55,47.71
step
Watch the dialogue
|tip Downstairs.
talk Kleia##163650
|tip She walks to this location.
Tell her _"Let us soulbind."_
Soulbind with Kleia |q 58797/1 |goto Elysian Hold/1 59.91,36.28
step
talk Kleia##163650
|tip Downstairs.
turnin Forged by Trial##58797 |goto 59.91,36.28
accept The Spires of Ascension##58798 |goto 59.91,36.28
step
_Enter the Spires of Ascension Dungeon:_
|tip Walk into the swirling portal.
|tip You can use the Group Finder to enter the dungeon.
kill Devos##162061 |q 58798/1 |goto Bastion/0 58.54,28.58
|tip She is the final boss in the dungeon.
|tip Use the "Spires of Ascension" dungeon guide to accomplish this.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin The Spires of Ascension##58798 |goto Elysian Hold/0 55.66,41.96
step
Reach Renown Level 8 |condition covenant() == Kyrian and covenantrenown() >= 8
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept The Eternal Forge##58175 |goto Elysian Hold/0 55.66,41.96
step
talk Mikanikos##160280
turnin The Eternal Forge##58175 |goto Bastion/0 50.15,20.47
accept Refining Ego##58177 |goto Bastion/0 50.15,20.47
step
talk Sika##160648
accept Instruments of Perfection##58179 |goto 50.11,20.60
accept Stewards of a Feather##58176 |goto 50.11,20.60
stickystart "Rescue_Captured_Forgehands"
stickystart "Collect_Tainted_Centurion_Components"
step
click Gracepetal Incense Burner
collect Gracepetal Incense Burner##173910 |q 58179/3 |goto 49.87,17.26
step
click Soulsteel Clamps
collect Soulsteel Clamps##173882 |q 58179/1 |goto 51.15,18.34
step
click Sparkling Driftglobe Core
collect Sparkling Driftglobe Core##173909 |q 58179/2 |goto 53.07,18.16
step
label "Rescue_Captured_Forgehands"
clicknpc Captured Forgehand##160360+
|tip They look like small white owl creatures on the ground around this area.
|tip Kill the enemies holding their chains, to be able to click them.
Rescue #5# Captured Forgehands |q 58176/1 |goto 51.60,17.95
step
label "Collect_Tainted_Centurion_Components"
Kill enemies around this area
collect 8 Tainted Centurion Component##173879 |goto 51.60,17.95 |q 58177
step
use the Tainted Centurion Component##173879+
collect 8 Purified Metal##173880 |q 58177/1 |goto 51.60,17.95
step
talk Sika##160648
turnin Stewards of a Feather##58176 |goto 50.11,20.60
step
talk Mikanikos##160280
turnin Refining Ego##58177 |goto 50.15,20.47
turnin Instruments of Perfection##58179 |goto 50.15,20.47
accept Phaestus, Genesis of Aeons##58180 |goto 50.15,20.46
step
Run up the stairs |goto 50.16,19.32 < 15 |only if walking
kill Overseer Atticus##160409
collect Phaestus, Genesis of Aeons##174061 |q 58180/1 |goto 49.00,15.54
step
talk Mikanikos##160280
turnin Phaestus, Genesis of Aeons##58180 |goto 50.15,20.47
accept A Partner for Eternity##58178 |goto 50.15,20.47
step
talk Mikanikos##160280
Tell him _"I am ready to aid you."_
Speak with Mikanikos |q 58178/1 |goto 50.15,20.47
step
click Reinforced Gauntlet
Apply the Reinforced Armor |q 58178/2 |goto 49.94,20.58 |count 1
step
click Reinforced Neckplate
Apply the Reinforced Armor |q 58178/2 |goto 49.88,20.41 |count 2
step
click Reinforced Gauntlet
Apply the Reinforced Armor |q 58178/2 |goto 50.03,20.26 |count 3
step
click Reinforced Breastplate
Apply the Reinforced Armor |q 58178/2 |goto 50.07,20.30 |count 4
step
clicknpc Mikanikos##160280
Support Mikanikos |q 58178/3 |goto 50.15,20.47
step
talk Mikanikos##160280
turnin A Partner for Eternity##58178 |goto 50.15,20.47
step
talk Mikanikos##160280
accept Dismantling the Opposition##58182 |goto 50.15,20.47
step
clicknpc Bron##164402
Mount Bron |q 58182/1 |goto 50.01,20.45
stickystart "Slay_Forsworn_Forces_58182"
step
kill Forsworn Colossus##160408 |q 58182/3 |goto 53.10,16.68 |count 1
|tip Use the "Toss Stewards" ability on your action bar on the Forsworn Colossus.
step
kill Forsworn Colossus##160408 |q 58182/3 |goto 51.03,15.44 |count 2
|tip Use the "Toss Stewards" ability on your action bar on the Forsworn Colossus.
step
label "Slay_Forsworn_Forces_58182"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #30# Forsworn Forces |q 58182/2 |goto 51.71,17.59
step
Watch the dialogue
Return to Safety |goto 50.21,20.60 < 10 |noway |c |q 58182
step
talk Mikanikos##160280
turnin Dismantling the Opposition##58182 |goto 50.15,20.46
accept Friend to the Forgelite##58183 |goto 50.15,20.46
step
talk Polemarch Adrestes##160037
turnin Friend to the Forgelite##58183 |goto Elysian Hold/0 46.00,56.51
step
talk Mikanikos##160280
accept Building the Base##58181 |goto Elysian Hold/0 45.28,56.63
step
talk Mikanikos##160280
Tell him _"I will take Phaestus."_
Take Phaestus, Genesis of Aeons |q 58181/1 |goto 45.28,56.63
step
click Crest of Ascension
Complete the Crest of Ascension Base |q 58181/2 |goto 44.41,58.72
step
talk Mikanikos##160280
turnin Building the Base##58181 |goto 45.27,56.63
step
Reach Renown Level 11 |condition covenant() == Kyrian and covenantrenown() >= 11
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
accept An Expected Visitor##61785 |goto Elysian Hold/0 45.95,56.55
step
talk Xandria##154627
|tip Upstairs.
turnin An Expected Visitor##61785 |goto 62.21,37.77
accept A Perilous Journey##61767 |goto 62.21,37.77
step
talk Xandria##173222
turnin A Perilous Journey##61767 |goto Maldraxxus/0 37.79,29.45
accept Stronger Together##61768 |goto Maldraxxus/0 37.79,29.45
step
talk Xandria##173222
Tell her _"I am ready."_
Speak to Xandria |q 61768/1 |goto 37.79,29.45
step
Watch the dialogue
Fly to Baroness Draka |goto 36.26,36.54 < 10 |c |q 61768 |notravel
step
talk Baroness Draka##171483
|tip Inside the building.
turnin Stronger Together##61768 |goto 36.32,36.63
accept Fight and Flight##61769 |goto 36.32,36.63
step
talk Xandria##171551
|tip Inside the building.
Begin Flying with Xandria |goto 36.32,36.36 > 20 |c |q 61769
step
Watch the dialogue
Fly with Xandria |q 61769/1 |goto 35.61,26.49 |notravel
step
talk Xandria##166333
turnin Fight and Flight##61769 |goto 35.62,26.50
accept Justice from Above##61771 |goto 35.62,26.50
step
talk Apolon##168743
accept The Butchers of Bastion##61770 |goto 35.32,25.95
stickystart "Slay_House_Of_Constructs_Forces"
step
click Maldracite Core
Destroy the Maldracite Core |q 61771/1 |goto 34.04,25.82 |count 1
step
click Maldracite Core
Destroy the Maldracite Core |q 61771/1 |goto 33.68,25.89 |count 2
step
click Maldracite Core
Destroy the Maldracite Core |q 61771/1 |goto 34.58,23.75 |count 3
step
click Tattered Scroll
accept Dark Developments##61772 |goto 33.49,24.12
step
click Maldracite Core
Destroy the Maldracite Core |q 61771/1 |goto 32.79,24.04 |count 4
step
click Maldracite Core
Destroy the Maldracite Core |q 61771/1 |goto 32.18,23.93 |count 5
step
label "Slay_House_Of_Constructs_Forces"
Kill enemies around this area
Slay #10# House of Constructs Forces |q 61770/1 |goto 33.24,24.51
step
talk Apolon##168743
turnin The Butchers of Bastion##61770 |goto 35.32,25.95
step
talk Xandria##166333
turnin Justice from Above##61771 |goto 35.62,26.50
step
talk Artemede##168744
turnin Dark Developments##61772 |goto 35.16,26.90
accept Burn Before Reading##61774 |goto 35.16,26.90
step
talk Xandria##166333
accept Descended##61773 |goto 35.62,26.50
step
talk Apolon##168743
accept An Early End##61775 |goto 35.33,25.95
stickystart "Collect_Stitchflesh_Designs"
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 35.89,28.59 |count 1
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 35.15,28.79 |count 2
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 34.69,29.32 |count 3
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 34.63,30.53 |count 4
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 33.95,30.16 |count 5
step
kill Woeblade##168697 |q 61773/1 |goto 33.61,31.19
|tip Use the "Flames of Courage" ability as you fight.
|tip It appears as a button on the screen.
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61775/1 |goto 35.73,31.89 |count 6
step
label "Collect_Stitchflesh_Designs"
Kill enemies around this area
collect 6 Stitchflesh Design##180845 |q 61774/1 |goto 34.87,29.63
step
talk Artemede##168744
turnin Burn Before Reading##61774 |goto 35.16,26.90
step
talk Xandria##166333
turnin Descended##61773 |goto 35.62,26.50
step
talk Apolon##168743
turnin An Early End##61775 |goto 35.33,25.95
step
talk Kynthia##168860
accept Trouble on the Western Front##61776 |goto 35.45,26.50
step
talk Kynthia##168860
Tell her _"Could you fly me to the western gate?"_
Begin Flying with Kynthia |goto 35.45,26.50 > 20 |c |q 61776
step
Watch the dialogue
Fly to the Western Gate |q 61776/1 |goto 28.83,37.92 |notravel
step
talk Alexandros Mograine##166211
turnin Trouble on the Western Front##61776 |goto 28.81,38.21
accept Charging The Blade##61777 |goto 28.81,38.21
step
talk Baroness Vashj##167173
accept Grave Intent##61779 |goto 28.69,37.61
step
talk Emeni##167810
accept Aerial Advantage##61778 |goto 28.08,37.51
step
use the Riding Hook##180899
|tip Use it on the Battlesewn Roc.
Hook the Battlesewn Roc |q 61778/1 |goto 28.07,37.37
step
kill 6 Battlesewn Roc##171776 |q 61778/2 |goto 27.38,34.36
|tip They look like skeleton birds flying in the air around this area.
|tip They will appear on your minimap as yellow dots.
|tip Use the "Riding Hook" ability on your action bar on them to jump to them.
|tip Use the other abilties on your action bar to kill them.
|tip Jump to another one quickly when you see a message on your screen that they are panicking.
|tip You don't need to target them to jump to them.
If you fall, hook another Battlesewn Roc at [28.07,37.37]
step
talk Emeni##167810
|tip Click the yellow arrow to dismount the Battlesewn Roc, if you're still riding one.
turnin Aerial Advantage##61778 |goto 28.08,37.51
stickystart "Charge_The_Runeblade"
step
click Astral Projector
Destroy the Southwestern Projector |q 61779/1 |goto 24.84,37.62
step
click Astral Projector
Destroy the Northwestern Projector |q 61779/2 |goto 25.43,33.09
step
click Astral Projector
Destroy the Northeastern Projector |q 61779/3 |goto 27.90,32.91
step
label "Charge_The_Runeblade"
Kill enemies around this area
Charge the Runeblade |q 61777/1 |goto 26.95,35.42
step
talk Baroness Vashj##167173
turnin Grave Intent##61779 |goto 28.69,37.61
step
talk Alexandros Mograine##166211
turnin Charging The Blade##61777 |goto 28.81,38.21
accept Power of the Chosen##61780 |goto 28.81,38.21
step
talk Alexandros Mograine##166211
Tell him _"I am ready."_
Speak to Mograine |q 61780/1 |goto 28.81,38.21
step
Watch the dialogue
Destroy #4# Bilebloat Juggernauts |q 61780/2 |goto 27.77,37.42
|tip Use the ability on your action bar.
step
talk Alexandros Mograine##166211
turnin Power of the Chosen##61780 |goto 28.81,38.21
accept The End is Now##61781 |goto 28.81,38.21
step
talk Xandria##172002
turnin The End is Now##61781 |goto 31.78,30.32
accept Pursuit of Justice##61782 |goto 31.78,30.32
step
talk Xandria##172002
Tell her _"I am ready to assist you."_
Speak to Xandria |q 61782/1 |goto 31.78,30.32
step
Watch the dialogue
Kill the enemies that attack
|tip You will fight the smaller enemies while Xandria kills Margrave Gharmal.
kill Margrave Gharmal##167437 |q 61782/2 |goto 31.04,29.17
step
talk Xandria##173193
turnin Pursuit of Justice##61782 |goto 31.04,29.17
accept Take Heart##61876 |goto 31.04,29.17
step
Watch the dialogue
click Fleshshaper's Heart
collect Fleshshaper's Heart##182334 |q 61876/1 |goto 30.96,29.05
step
talk Xandria##173193
turnin Take Heart##61876 |goto 31.04,29.17
accept Return to the Hold##61877 |goto 31.04,29.17
step
talk Xandria##173313
turnin Return to the Hold##61877 |goto Elysian Hold/0 38.92,59.77
accept Crest of Greatness##61878 |goto Elysian Hold/0 38.92,59.77
step
click Fleshshaper's Heart
turnin Crest of Greatness##61878 |goto 40.52,60.48
step
Reach Renown Level 13 |condition covenant() == Kyrian and covenantrenown() >= 13
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
accept Assistance from Sinfall##58557 |goto Elysian Hold/0 45.06,56.87
step
talk The Curator##161544
Tell her _"We are looking for the Seal of Contrition."_
Speak with The Curator in Darkhaven |q 58557/1 |goto Revendreth/0 60.35,60.89
step
talk The Curator##161544
turnin Assistance from Sinfall##58557 |goto 60.35,60.89
accept Overhead Intelligence##58558 |goto 60.35,60.89
step
talk Kleia##161540
accept Eyes of the Master##58559 |goto 60.26,60.84
step
Cross the bridge |goto 60.64,62.40 < 15 |only if walking
Cross the bridge |goto 55.20,63.14 < 20 |only if walking
talk Pelagos##165011
|tip He appears next to you.
accept Gothic Fashion##58560 |goto 50.13,52.50
stickystart "Collect_Venthyr_Clothing"
step
kill Keraal the Ripper##165056 |q 58559/3 |goto 48.16,54.35
step
kill Evaala the All-Seeing##165039 |q 58559/1 |goto 50.92,51.63
step
Enter the building |goto 53.28,45.12 < 7 |walk
kill Guardian Mastrus##165041 |q 58559/2 |goto 52.87,44.83
|tip Inside the building.
step
kill Chalice Courier##161621+
|tip They look like small flying imps around this area.
|tip They will drop other quest items that start a dialogue before dropping the quest item you need.
Collect the Rumors of Favor |q 58558/1 |goto 51.98,49.11
step
label "Collect_Venthyr_Clothing"
Kill enemies around this area
|tip They will drop clothing items with various names.
Collect #5# Venthyr Clothing |q 58560/1 |goto 51.98,49.11
step
Run up the stairs |goto 54.81,45.69 < 15 |only if walking
Enter the building |goto 56.14,41.42 < 7 |walk
talk Pelagos##161543
|tip Inside the building.
turnin Gothic Fashion##58560 |goto 56.36,41.40
step
talk Kleia##161540
|tip Inside the building.
turnin Eyes of the Master##58559 |goto 56.41,41.47
step
talk The Curator##161544
|tip Inside the building.
turnin Overhead Intelligence##58558 |goto 56.42,41.38
accept Collecting Dust##58562 |goto 56.42,41.38
step
talk Kleia##161540
|tip Inside the building.
accept Shards of the Countess##58561 |goto 56.41,41.47
step
Watch the dialogue
click Bell of Transport
Ring the Bell of Transport |q 58561/1 |goto 55.39,41.16
step
Reach the Ground |goto 54.67,41.42 < 10 |c |q 58561 |notravel
step
Enter the building |goto 53.03,37.14 < 7 |walk
click Shard of the Countess
|tip Inside the building.
collect Shard of the Countess##174375 |q 58561/2 |goto 52.81,37.87 |count 1
step
Enter the building |goto 55.10,37.36 < 7 |walk
click Shard of the Countess
|tip Inside the building.
collect Shard of the Countess##174375 |q 58561/2 |goto 54.78,37.11 |count 2
step
Enter the building |goto 56.00,39.61 < 7 |walk
kill Duchess Minodora##161624
|tip Inside the building.
collect Shard of the Countess##174375 |q 58561/2 |goto 56.39,39.90 |count 3
step
click Death Lotus##340424+
|tip They look like large scraggly plants with purple flowers on them on the ground around this area.
collect 30 Death Lotus Petal##174357 |q 58562/2 |goto 55.25,36.57
step
talk The Curator##161544
turnin Collecting Dust##58562 |goto 55.23,34.78
turnin Shards of the Countess##58561 |goto 55.23,34.78
accept Through Glass##58563 |goto 55.23,34.78
step
Run down the stairs inside the building |goto 55.47,34.44 < 7 |walk
talk The Curator##161544
|tip Downstairs inside the building.
Tell her _"I am ready."_
Speak with the Curator |q 58563/1 |goto 55.23,35.66
step
Watch the dialogue
|tip Downstairs inside the building.
Wait for the Curator |q 58563/2 |goto 55.23,35.66
step
use the Death Lotus Powder##174382
|tip Downstairs inside the building.
Apply the Death Lotus Powder |q 58563/3 |goto 55.23,35.66
step
Enter the Mirror |q 58563/4 |goto 55.29,35.80
|tip Downstairs inside the building.
step
kill Warden Eriken##161947 |q 58563/5 |goto 78.38,39.00
|tip Downstairs inside the building.
step
click The Countess's Sinstone
|tip Downstairs inside the building.
collect The Countess's Sinstone##174454 |q 58563/6 |goto 78.49,39.11
step
talk Kleia##161540
|tip Downstairs inside the building.
turnin Through Glass##58563 |goto 77.90,39.64
step
talk The Curator##161544
|tip Downstairs inside the building.
accept Sins of the Past##58564 |goto 77.96,39.63
step
Enter the Mirror |q 58564/1 |goto 77.92,39.72
|tip Downstairs inside the building.
step
Watch the dialogue
|tip Downstairs inside the building.
Meet The Countess |q 58564/2 |goto 57.52,28.45 |region redelav_tower
step
click Ornate Chair
|tip Downstairs inside the building.
Sit in the Ornate Chair |q 58564/3 |goto 58.13,27.65 |region redelav_tower
step
Watch the dialogue
|tip Downstairs inside the building.
Listen to The Countess |q 58564/4 |goto 58.13,27.65 |region redelav_tower
step
click Grand Feast
|tip On the table next to you.
|tip Downstairs inside the building.
Eat the Grand Feast |q 58564/5 |goto 58.13,27.65 |region redelav_tower
step
Watch the dialogue
|tip Downstairs inside the building.
Listen to the Countess |q 58564/6 |goto 58.13,27.65 |region redelav_tower
step
talk The Countess##161996
|tip Downstairs inside the building.
turnin Sins of the Past##58564 |goto 58.05,27.53 |region redelav_tower
step
Watch the dialogue
|tip Downstairs inside the building.
talk The Curator##161544
accept Land of Light##58565 |goto 58.17,27.60 |region redelav_tower
step
clicknpc Purple Nightflyer##165355
|tip Upstairs on the balcony of the building.
|tip You will have to walk through 2 clickable doors to get to it.
Ride the Purple Nightflyer |q 58565/1 |goto 56.99,27.10 |region redelav_tower
step
Fly to the Sanctuary of the Mad |goto 31.43,49.97 < 10 |c |q 58565 |notravel
step
talk Theotar##161515
turnin Land of Light##58565 |goto 31.97,47.55
step
talk Kleia##161540
accept Skulking in the Darkness##58567 |goto 31.96,47.71
accept Light Respite##58568 |goto 31.96,47.71
step
Watch the dialogue
talk Mindscorched Alwin##161553
accept Actions Speak Louder than Words##58566 |goto 31.92,47.57
step
talk Mindscorched Alwin##161553
Tell him _"Let's go."_
Speak to Mindscorched Alwin |q 58566/1 |goto 31.92,47.57
step
Follow Mindscorched Alwin |q 58566/2 |goto 39.99,59.05 |notravel
|tip He eventually walks to this location.
step
talk Mindscorched Alwin##161553
turnin Actions Speak Louder than Words##58566 |goto 39.99,59.05
stickystart "Collect_Brushberries"
step
Kill Scorched enemies around this area
Slay #8# Outcast Venthyr |q 58567/1 |goto 38.72,54.23
step
label "Collect_Brushberries"
click Duskbrush+
|tip They look like bushes with purple leaves on the ground around this area.
collect 25 Brushberry##174497 |q 58568/1 |goto 38.33,55.63
step
talk Kleia##161540
turnin Skulking in the Darkness##58567 |goto 39.94,59.04
turnin Light Respite##58568 |goto 39.94,59.04
step
talk Mindscorched Alwin##161553
accept The Folly of Envy##58569 |goto 39.99,59.06
step
kill Duke Vielle##162109 |q 58569/1 |goto 39.84,59.98
|tip Upstairs.
step
click Seal of Contrition
collect Seal of Contrition##174498 |q 58569/2 |goto 39.74,59.97
step
talk Kleia##161540
turnin The Folly of Envy##58569 |goto 39.94,59.04
accept Parting Words##58570 |goto 39.94,59.04
step
talk The Curator##161544
Tell her _"We have retrieved the seal and are returning to Bastion."_
Speak to the Curator |q 58570/1 |goto 32.04,47.64
step
talk Kalisthene##173860
Tell her _"Let's see it, then."_
Speak to Kalisthene in Elysian Hold |q 58570/2 |goto Elysian Hold/0 44.51,56.85
step
talk Mikanikos##162149
turnin Parting Words##58570 |goto 45.63,57.13
accept The Seal of Contrition##58571 |goto 45.63,57.13
step
click Seal of Contrition
turnin The Seal of Contrition##58571 |goto 44.29,58.98
step
Reach Renown Level 17 |condition covenant() == Kyrian and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
accept Meet the Queen##58775 |goto 45.06,56.88
She eventually walks to [55.65,41.96]
step
Follow the path |goto Ardenweald/0 47.70,50.59 < 15 |only if walking
talk Lord Herne##158544
Tell him _"Yes, I am here for an audience with the Winter Queen. Please take me to her."_
Speak with Lord Herne at the Heart of the Forest |q 58775/1 |goto Ardenweald/0 44.35,51.99
step
Fly to Pelagos |goto Heart of the Forest/2 44.46,59.48 < 10 |c |q 58775 |notravel
step
talk Pelagos##165671
|tip Upstairs inside the tree.
Tell him _"Let's hear what the queen has to say."_
Tell Pelagos You're Ready |q 58775/2 |goto 47.42,57.98
step
Watch the dialogue
|tip Upstairs inside the tree.
Listen to the Winter Queen's Reply |q 58775/3 |goto 47.42,57.98
step
Locate Attendant Shimmerwing |goto 36.15,63.61 < 15 |c |q 58775
|tip Upstairs inside the tree.
step
talk Attendant Shimmerwing##165550
|tip Upstairs inside the tree.
Tell her _"I would like to leave the Queen's audience chamber, please."_
Speak with Attendant Shimmerwing to Exit the Heart of the Forest |goto 36.15,63.61 > 20 |c |q 58775
step
Leave the Heart of the Forest |goto Heart of the Forest/0 25.02,24.32 < 10 |c |q 58775 |notravel
step
talk Willowblossom##162392
turnin Meet the Queen##58775 |goto Ardenweald/0 44.04,51.79
accept Who Are You Fooling?##58856 |goto Ardenweald/0 44.04,51.79
stickystart "Find_Grubby"
step
Kill enemies around this area
accept Trinkle Trinkle Little Twerp##58832 |goto 39.57,55.93
|tip You will eventually automatically accept this quest after looting.
step
kill Trinkle the Silk Eater##162657 |q 58832/1 |goto 38.82,59.23
step
_Next to you:_
talk Willowblossom##162679
turnin Trinkle Trinkle Little Twerp##58832
step
label "Find_Grubby"
Kill enemies around this area
collect Sicklethorn Trickster Powder##174843+ |n
use the Sicklethorn Trickster Powder##174843+
|tip This will give you a buff to see Conspicuous Objects.
click Conspicuous Object+
|tip They look like various shaped objects on the ground around this area.
Find Grubby |q 58856/1 |goto 39.57,55.93
step
_Next to you:_
talk Willowblossom##162679
turnin Who Are You Fooling?##58856
accept Getting Backstage##58816
step
Follow the path up |goto 38.75,53.49 < 20 |only if walking
Get Backstage at Star Lake Amphitheater |q 58816/1 |goto 41.23,44.98
step
Use the _"Trick Powder"_ ability
|tip It appears as a button on the screen.
Use the Trick Powder to Blend In |havebuff spell:323723 |goto 41.27,45.28 |q 58816
step
Stand on the First Mark |q 58816/2 |goto 41.42,43.93
|tip Avoid the circles beneath the NPCs.
step
Stand on the Second Mark |q 58816/3 |goto 40.95,44.43
|tip Avoid the circles beneath the NPCs.
step
Follow the path up |goto 40.85,43.31 < 10 |only if walking
click Wreath of Night's Veil Flowers
|tip Avoid the circles beneath the NPCs.
collect Wreath of Night's Veil Flowers##174845 |q 58816/4 |goto 40.27,43.47
step
click Lady Moonberry's Soap
Choose _"Add red petals to the bottle."_
"Enrich" Lady Moonberry's Soap |q 58816/5 |goto 41.25,42.71
step
_Next to you:_
talk Willowblossom##162679
turnin Getting Backstage##58816
accept Picking Up Pelagos##58905
step
talk Pelagos##163328
turnin Picking Up Pelagos##58905 |goto 50.56,68.96
step
talk Willowblossom##162392
accept Gorm Ruin Everything##58938 |goto 50.53,68.92
accept Evil Grubbies##58937 |goto 50.53,68.92
stickystart "Slay_Mature_Gorm"
step
Use the _"Flamelash Seeds"_ ability
|tip Use it on Evolving Mites.
|tip They look like small grubs on the ground around this area.
|tip It appears as a button on the screen.
Burn #20# Evolving Mites |q 58937/1 |goto 51.40,75.43
step
label "Slay_Mature_Gorm"
Kill Gorm enemies around this area
Slay #10# Mature Gorm |q 58938/1 |goto 51.40,75.43
step
_Next to you:_
talk Willowblossom##163060
turnin Gorm Ruin Everything##58938
turnin Evil Grubbies##58937
step
_Next to you:_
talk Pelagos##165110
accept The Blue Seed##58939
step
Locate the Cave Entrance |q 58939/1 |goto 51.25,77.35
step
Use the _"Flamelash Seeds"_ ability
|tip Use it on the bunch of branches blocking the cave entrance.
|tip It appears as a button on the screen.
Destroy the Bramble Blockage |q 58939/2 |goto 51.25,77.35
step
click Ripened Anima Seed
|tip Inside the cave.
collect Ripened Anima Seed##176446 |q 58939/3 |goto 50.78,77.40
step
talk Willowblossom##162392
|tip Inside the cave.
turnin The Blue Seed##58939 |goto 50.85,77.43
accept Seeds Away!##58857 |goto 50.85,77.43
step
talk Willowblossom##162392
|tip Inside the cave.
Tell her _"I am ready."_
Speak with Willowblossom |q 58857/1 |goto 50.85,77.43
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip They are on the ground as you fly.
Vanquish the Gorm Swarm |q 58857/2 |goto 51.54,77.35
step
Watch the dialogue
Reach the Ritual Site |goto 47.44,64.10 < 10 |c |q 58857 |notravel
step
talk Pelagos##163328
turnin Seeds Away!##58857 |goto 45.23,65.35
accept I Dreamed A Dream##58995 |goto 45.23,65.35
step
talk Pelagos##163328
Tell him _"I am ready."_
Watch the dialogue
Witness the Ceremony |q 58995/1 |goto 45.23,65.35
step
click Vessel of Ardenweald
collect Vessel of Ardenweald##175153 |q 58995/2 |goto 45.27,65.67
step
talk Pelagos##163328
turnin I Dreamed A Dream##58995 |goto 45.23,65.35
accept A Bittersweet Prize##58997 |goto 45.23,65.35
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin A Bittersweet Prize##58997 |goto Elysian Hold/0 55.66,41.96
accept Heart of the Crest##61135 |goto Elysian Hold/0 55.66,41.96
step
click Vessel of Ardenweald
turnin Heart of the Crest##61135 |goto 43.30,64.61
step
talk Polemarch Adrestes##174177
accept A New Age##61697 |goto 43.68,66.58
step
Use the _"Glory of Bastion"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Activate the Crest of Ascension |q 61697/1 |goto 42.70,61.38
step
talk Polemarch Adrestes##174177
turnin A New Age##61697 |goto 43.66,66.60
step
Reach Renown Level 20 |condition covenant() == Kyrian and covenantrenown() >= 20
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept On Lysonia's Trail##57113 |goto Elysian Hold/0 55.67,41.94
step
talk Kleia##156361
turnin On Lysonia's Trail##57113 |goto Bastion/0 61.85,43.61
accept Aerial Reconnaissance##57114 |goto Bastion/0 61.85,43.61
step
talk Kleia##156361
Tell her _"I am ready to take flight."_
Speak to Kleia |q 57114/1 |goto 61.85,43.61
step
Watch the dialogue
|tip You will fly automatically.
Survey the Temple of Humility |q 57114/2 |goto 66.10,46.66 |notravel
step
talk Voitha##156327
turnin Aerial Reconnaissance##57114 |goto 66.05,47.10
accept Sacred Scrolls of Humility##57115 |goto 66.05,47.10
step
talk Kleia##156361
accept Succumbing to Pride##57116 |goto 65.88,46.91
step
click Radiant Sword
accept Compassion, Blade of Humility##57120 |goto 64.74,45.69
stickystart "Stop_Rituals"
stickystart "Charge_Compassion"
step
click Sacred Scroll+
|tip They look like rolled up pieces of paper on the ground around this area.
collect 5 Sacred Scroll##170550 |q 57115/1 |goto 64.44,44.14
step
label "Stop_Rituals"
Stop #5# Rituals |q 57116/1 |goto 64.44,44.14
|tip Kill the enemies next to Burdened Aspirants.
|tip They look like blue people on the ground around this area.
step
label "Charge_Compassion"
Kill Pride enemies around this area
|tip They look like small and larger dark colored spirits around this area.
Charge Compassion |q 57120/1 |goto 64.44,44.14
step
talk Kleia##156361
turnin Succumbing to Pride##57116 |goto 65.88,46.91
step
talk Voitha##156327
turnin Sacred Scrolls of Humility##57115 |goto 66.04,47.09
turnin Compassion, Blade of Humility##57120 |goto 66.04,47.09
accept Distorted by the Maw##57118 |goto 66.04,47.09
accept Fallen to Their Vices##57117 |goto 66.04,47.09
stickystart "Slay_Forsworn_Forces"
step
Follow the path |goto 66.68,44.80 < 20 |only if walking
click Anima Collector
|tip Outside, behind the building.
Break the Anima Collector |q 57118/1 |goto 65.15,43.68 |count 1
step
click Anima Collector
Break the Anima Collector |q 57118/1 |goto 68.98,44.53 |count 2
step
click Anima Collector
Break the Anima Collector |q 57118/1 |goto 67.75,40.24 |count 3
step
label "Slay_Forsworn_Forces"
Kill enemies around this area
Slay #15# Forsworn Forces |q 57117/1 |goto 66.88,43.93
step
talk Kleia##156361
turnin Distorted by the Maw##57118 |goto 68.38,41.64
turnin Fallen to Their Vices##57117 |goto 68.38,41.64
accept Lysonia's Plan##57207 |goto 68.38,41.64
step
Watch the dialogue
Confront Lysonia |q 57207/1 |goto 69.09,40.72
step
talk Chyrus##156474
turnin Lysonia's Plan##57207 |goto 69.09,40.72
accept The Power of the Maw##57121 |goto 69.09,40.72
step
talk Kleia##156361
Tell her _"We jump."_
Meet with Kleia |q 57121/1 |goto Oribos/1 45.43,51.60
step
Travel to the Maw |q 57121/2 |goto 46.09,51.60
|tip Jump into the pillar of light.
step
Reach the Maw |goto The Maw/0 44.95,40.99 < 10 |noway |c |q 57121
step
Follow the path |goto The Maw/0 35.44,49.98 < 30 |only if walking
talk Kleia##156361
turnin The Power of the Maw##57121 |goto The Maw/0 33.79,55.75
step
_Next to you:_
talk Kleia
accept A Step Too Far##57122
accept Kyrian No More##57123
stickystart "Slay_Mawsworn_Forces_57123"
step
clicknpc Captured Forsworn##170575+
|tip They look like dark colored angels standing and kneeling on the ground around this area.
Free #5# Captured Forsworn |q 57122/1 |goto 32.13,61.02
step
label "Slay_Mawsworn_Forces_57123"
Kill Mawsworn enemies around this area
Slay #10# Mawsworn Forces |q 57123/1 |goto 32.13,61.02
step
_Next to you:_
talk Kleia
turnin A Step Too Far##57122
turnin Kyrian No More##57123
accept Her Will, Inflicted##57124
step
Cross the bridge |goto 28.96,62.52 < 40 |only if walking
Watch the dialogue
Confront Lysonia |q 57124/1 |goto 25.28,67.14
step
kill Pride of Lysonia##169410 |q 57124/2 |goto 25.28,67.14
step
talk Uther##169850
|tip He runs to this location.
turnin Her Will, Inflicted##57124 |goto 25.65,65.17
accept Time to Reflect##57125 |goto 25.65,65.17
step
talk Kleia##156361
Tell her _"Let's fly to the waystone."_
Speak to Kleia |q 57125/1 |goto 25.64,65.30
step
Fly to the Waystone |goto 43.07,42.65 < 10 |c |q 57125 |notravel
|tip You will fly automatically.
step
click Waystone to Oribos
Use the Waystone |q 57125/2 |goto 42.38,42.16
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin Time to Reflect##57125 |goto Elysian Hold/0 55.65,41.96
accept A Touch of Humility##62555 |goto Elysian Hold/0 55.65,41.96
step
talk Polemarch Adrestes##174497
Tell him _"I am ready."_
Empower the Crest of Ascension |q 62555/1 |goto 45.38,57.36
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin A Touch of Humility##62555 |goto 55.66,41.95
step
Reach Renown Level 22 |condition covenant() == Kyrian and covenantrenown() >= 22
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept Convene the Paragons##58854 |goto Elysian Hold/0 55.66,41.95
step
click Echo of Aeons
|tip Upstairs.
Summon the Paragons |q 58854/1 |goto 56.25,41.04
step
Enter Archon's Rise |q 58854/2 |goto 58.95,40.66
|tip Upstairs.
step
Watch the dialogue
|tip Upstairs.
Plan the Assault |q 58854/3 |goto 62.80,28.78
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin Convene the Paragons##58854 |goto 55.65,41.95
accept Before the Dawn##58844 |goto 55.65,41.95
step
Follow the path |goto Bastion/0 55.00,73.61 < 30 |only if walking
click Vesper of Harmony
Click Here After Ringing the Vesper of Harmony |confirm |goto 60.70,73.62 |q 58844
step
click Vesper of Harmony
Click Here After Ringing the Vesper of Harmony |confirm |goto 60.65,72.82 |q 58844
step
click Vesper of Harmony
Click Here After Ringing the Vesper of Harmony |confirm |goto 60.13,72.66 |q 58844
step
talk Eridia##162889
Tell her _"We need our Watchers' aid in battle."_
Gather the Watchers |q 58844/1 |goto 60.01,73.45
step
talk Apolon##162904
Tell him _"We need the Bearers at the Temple of Loyalty."_
Gather the Bearers |q 58844/2 |goto 41.22,56.32
step
Run up the stairs |goto 47.62,26.41 < 30 |only if walking
talk Sika##162888
Tell her _"We need our Centurions in battle."_
Gather the Centurions |q 58844/3 |goto 51.28,19.07
step
Run down the stairs |goto 48.30,26.00 < 20 |only if walking
click Transport Pad |goto 41.66,23.32
Teleport to the Eonian Archives |goto 40.49,20.95 < 10 |noway |c |q 58844 |region eonian_archives
step
talk Pelagos##170061
Tell him _"I am with you."_
Watch the dialogue
kill Pelagos Shadeweaver##170064
Click Here After Kiling Pelagos Shadeweaver |confirm |goto 40.48,20.40 |q 58844 |region eonian_archives
step
talk Arios Riftbearer##162907
Tell him _"We need the Collectors for the battle ahead."_
Gather the Collectors |q 58844/4 |goto 40.28,20.50 |region eonian_archives
step
Run up the stairs |goto 36.78,22.15 < 20 |only if walking
talk Polemarch Adrestes##164473
turnin Before the Dawn##58844 |goto 31.39,23.41
accept The Greater Good##58846 |goto 31.39,23.41
step
talk Polemarch Adrestes##164473
Tell him _"I am."_
Speak to Adrestes |q 58846/1 |goto 31.39,23.41
step
Watch the dialogue
Begin the Scenario |scenariostart |goto 31.39,23.41 |q 58846
step
Enter the Citadel of Loyalty |scenariostage 1 |goto 30.57,23.35 |q 58846
step
Kill enemies around this area
|tip Use the abilities that appear as buttons on the screen.
Clear the Courtyard |scenariostage 2 |goto 28.78,22.91 |q 58846
step
kill Adonias##166169
kill Phaedra##166170
Defeat Adonias and Phaedra |scenariostage 3 |goto 28.50,22.86 |q 58846
step
Follow the path |goto 27.97,24.41 < 10 |only if walking
Push Forward to the Truthbringer |scenariostage 4 |goto 27.02,24.91 |q 58846
step
Watch the dialogue
Kill enemies around this area
|tip Kill any remaining enemies nearby.
|tip After they are all dead, Athanos will attack you.
kill Athanos##166012
Prevent the Truthbringer from activating |scenariostage 5 |goto 27.13,22.85 |q 58846
step
Run down the stairs |goto 25.02,25.08 < 15 |only if walking
click Anima Gateway
Take the Gateway to the Temple |scenariostage 6 |goto 24.49,22.78 |q 58846
step
Watch the dialogue
Find Lysonia |goto 21.12,22.87 < 10 |c |q 58846 |notravel
step
kill Lysonia##166046
|tip She will eventually escape.
Confront Lysonia |scenariostage 7 |goto 20.65,22.88 |q 58846
step
Locate Chyrus |goto 21.30,23.04 < 15 |c |q 58846
step
talk Chyrus##166609
Begin Flying with Chyrus |goto 21.30,23.04 > 20 |c |q 58846
step
Rally to Elysian Hold |scenariostage 8 |goto 66.00,17.28 |q 58846 |notravel
step
Watch the dialogue
kill Lysonia##166052
Defeat Lysonia |scenarioend |goto 67.28,15.36 |q 58846
step
Watch the dialogue
Complete the Kyrian Assault |q 58846/2 |goto 67.43,15.24
step
talk Polemarch Adrestes##166693
turnin The Greater Good##58846 |goto 67.43,15.24
accept Kyrestia's Grace##58847 |goto 67.43,15.24
step
Watch the dialogue
|tip Follow Uther as he walks.
|tip He eventually walks to this location.
Escort Uther |q 58847/1 |goto 64.00,19.09
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin Kyrestia's Grace##58847 |goto 66.50,16.51
accept An Earned Bond##59919 |goto 66.50,16.51
step
talk Mikanikos##166740
|tip Downstairs.
Tell him _"I am."_
Soulbind with Mikanikos |q 59919/1 |goto 67.09,15.74
step
talk Polemarch Adrestes##160037
|tip Upstairs.
turnin An Earned Bond##59919 |goto 66.51,16.51
accept Our Realm Reclaimed##62557 |goto 66.51,16.51
step
talk Polemarch Adrestes##174503
Watch the dialogue
Empower the Crest of Ascension |q 62557/1 |goto 65.12,18.60
step
Reach Renown Level 40 |condition covenant() == Kyrian and covenantrenown() >= 40
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
_Congratulations!_
You Reached Renown Level 40.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Questline",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Night Fae\n"..
"\ncovenant quests and storyline.\n",
condition_suggested=function() return level >= 60 end,
startlevel=60.0,
endlevel=70.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Reach Level 60 |ding 60
|tip You must be level 60 before you can start your covenant questline.
|tip Use the Leveling guides to accomplish this.
step
Complete the "Choosing Your Purpose" Quest in Oribos |complete completedanyq(57878,62000) |future
|tip Use the "Shadowlands Intro & Main Questline" guide to accomplish this.
step
talk Tal-Inara##159478
accept Report to Moonberry##63214 |goto Oribos/0 38.91,69.97
step
talk Lady Moonberry##171795
turnin Report to Moonberry##63214 |goto Oribos/0 39.77,60.88
accept The Heart of the Forest##61475 |goto Oribos/0 39.77,60.88
step
talk Lady Moonberry##172431
turnin The Heart of the Forest##61475 |goto Ardenweald/0 49.34,52.36
accept The Boon of Shapes##61479 |goto Ardenweald/0 49.34,52.36
step
talk Lady Moonberry##172431
Tell her _"Lead on."_
Begin Following Lady Moonberry |goto 49.34,52.36 > 20 |c |q 61479
step
Watch the dialogue
|tip Follow Lady Moonberry as she flies.
|tip She eventually flies to this location inside the tree.
Follow Lady Moonberry |q 61479/1 |goto Heart of the Forest/0 49.96,40.23 |notravel
step
Use the _"Receive Boon"_ ability
|tip It appears as a button on the screen.
|tip Inside the tree.
Watch the dialogue
Kneel Before Lady Moonberry |q 61479/2 |goto 49.96,40.23
step
talk Lady Moonberry##172431
|tip Inside the tree.
turnin The Boon of Shapes##61479 |goto 49.21,39.92
accept Show, Don't Tell##58104 |goto 49.21,39.92
step
talk Lady Moonberry##161509
|tip Inside the tree.
Tell her _"Let us commune with each other."_
Watch the dialogue
Commune with Moonberry |q 58104/1 |goto 49.22,39.93
step
talk Kewarin##160292
|tip Inside the tree.
home Heart of the Forest |goto 54.79,56.18 |q 58104
step
Follow the path up |goto 56.70,28.47 < 15 |walk
talk Ceridwyn##165701
fpath Heart of the Forest |goto Ardenweald/0 46.26,50.81
step
Follow the path |goto Ardenweald/0 44.09,45.25 < 30 |only if walking
talk Featherlight##160484
turnin Show, Don't Tell##58104 |goto Ardenweald/0 40.71,42.78
accept Break a Leg##58157 |goto Ardenweald/0 40.71,42.78
step
Take Your Place on Stage |q 58157/1 |goto 41.43,44.78
step
Use the _"Begin Act 1, Xavius"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
kill Niya, As Xavius##160466
Defeat Act 1, "Lord Xavius" |q 58157/2 |goto 41.43,44.78
step
Use the _"Begin Act 2, Gul'dan"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
kill Senthii, As Gul'dan##160504
Defeat Act 2, "Gul'dan" |q 58157/3 |goto 41.43,44.78
step
Use the _"Begin Act 3, Kil'jaeden"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
kill Glimmerdust, As Kil'jaeden##160506
Defeat Act 3, "Kil'jaeden" |q 58157/4 |goto 41.43,44.78
step
Use the _"Begin Act 4, Argus"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
kill Mi'kai, As Argus, the Unmaker##160507
Defeat Act 4, "Argus" |q 58157/5 |goto 41.43,44.78
step
Use the _"Taking a Bow"_ ability
|tip It appears as a button on the screen.
Take a Bow |q 58157/6 |goto 41.43,44.78
step
talk Featherlight##160484
turnin Break a Leg##58157 |goto 40.71,42.78
accept The Fourth Wall, er, War##58158 |goto 40.71,42.78
step
click Azeroth
Carry Azeroth |havebuff spell:313449 |goto 40.81,43.91 |q 58158
step
click Azeroth
Place Azeroth |q 58158/2 |goto 41.31,44.53
step
click Teldrassil
Place Teldrassil |q 58158/1 |goto 41.21,44.89
step
talk Satinstitch##161066
Tell him _"Give me my costume, please."_
|tip You cannot receive this while mounted.
Become Sargeras |q 58158/3 |goto 40.57,42.95
step
Use the _"Stab the World"_ ability
|tip It appears as a button on the screen.
|tip Mounting will remove your costume.
Watch the dialogue
Stab the World |q 58158/4 |goto 41.02,43.72
step
talk Satinstitch##161066
Tell him _"Give me my costume, please."_
|tip You cannot receive this while mounted.
Become Nathanos |q 58158/5 |goto 40.57,42.95
step
Use the _"Burning Teldrassil"_ ability
|tip It appears as a button on the screen.
|tip Mounting will remove your costume.
Burn Teldrassil |q 58158/6 |goto 41.21,44.89
step
talk Rickrack##161106
Tell him _"Give me my costume, please."_
|tip You cannot receive this while mounted.
Become Reverence |q 58158/7 |goto 40.57,42.90
step
talk Satinstitch##161066
Choose _<You hold still.>_
|tip Mounting will remove your costume.
Upgrade Your Costume |q 58158/8 |goto 40.57,42.95
step
Trample #15# Horde Siege Engines |q 58158/9 |goto 41.29,44.30
|tip They look like small wooden block vehicles around this area.
|tip Run over them.
step
talk Satinstitch##161066
Tell him _"Please remove my costume."_
Remove Your Costume |q 58158/10 |goto 40.57,42.95
step
click Wound
Heal Azeroth's Wound |q 58158/11 |goto 41.47,44.34 |count 1
step
click Wound
Heal Azeroth's Wound |q 58158/11 |goto 41.47,44.48 |count 2
step
click Wound
Heal Azeroth's Wound |q 58158/11 |goto 41.37,44.52 |count 3
step
click Wound
Heal Azeroth's Wound |q 58158/11 |goto 41.31,44.71 |count 4
step
click Wound
Heal Azeroth's Wound |q 58158/11 |goto 41.21,44.69 |count 5
step
talk Featherlight##160484
turnin The Fourth Wall, er, War##58158 |goto 40.71,42.78
accept What's My Motivation?##58159 |goto 40.71,42.78
step
Take Your Place on Stage |q 58159/1 |goto 41.43,44.78
step
Use the _"Act 6, Begin!"_ ability
|tip It appears as a button on the screen.
Click Here After Using the Ability |confirm |goto 41.43,44.78 |q 58159
step
Watch the dialogue
clicknpc Gloober as G'huun##160511
Defeat G'huun |q 58159/2 |goto 41.30,44.84
step
Use the _"Act 7, Begin!"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Defeat Jaina |q 58159/3 |goto 41.43,44.79
step
Use the _"Finale, Begin!"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
kill Astra, As Azshara##161161
Defeat Azshara |q 58159/4 |goto 41.43,44.79
step
Watch the dialogue
kill Dreamweaver, As N'Zoth##160510
Defeat N'Zoth |q 58159/5 |goto 41.30,44.83
step
Use the _"Awaiting the Queen's Judgement"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Await the Queen's Judgement |q 58159/6 |goto 41.43,44.79
step
talk Lady Moonberry##160467
turnin What's My Motivation?##58159 |goto 41.07,44.86
step
talk Ysera##160500
accept For Queen and Grove!##58160 |goto 42.51,45.29
step
clicknpc Ysera##160501
Begin Flying with Ysera |invehicle |goto 42.51,45.29 |q 58160
step
Watch the dialogue
Fly with Ysera |q 58160/1 |goto 51.94,8.24 |notravel
step
talk Attendant Sparkledew##158543
|tip Inside the tree.
Tell her _"Take me to the Queen's audience chamber, please."_
Ask Attendant Sparkledew for Transport |q 58160/2 |goto Heart of the Forest/0 51.21,19.22
step
Reach the Queen's Audience Chamber |goto Heart of the Forest/2 43.68,61.88 < 10 |c |q 58160 |notravel
step
Use the _"Swearing Oath"_ ability
|tip It appears as a button on the screen.
|tip Upstairs inside the tree.
Pledge the Oath |q 58160/3 |goto Heart of the Forest/2 49.66,37.10
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
turnin For Queen and Grove!##58160 |goto 51.16,27.90
accept The Forest Will Sing Your Name##62883 |goto 51.16,27.90
step
talk Laurel##176096
turnin The Forest Will Sing Your Name##62883 |goto Heart of the Forest/0 33.60,37.00
accept Who Shapes the Forest##62884 |goto 33.60,37.00
step
talk Laurel##176096
Ask her _"What is my Renown with the Night Fae?"_
Examine Your Renown |q 62884/1 |goto 33.60,37.00
step
talk Laurel##176096
turnin Who Shapes the Forest##62884 |goto 33.60,37.00
accept A Call to Service##62697 |goto 33.60,37.00
step
talk Blodwyn##167195
|tip Outside, on the balcony of the tree.
turnin A Call to Service##62697 |goto Heart of the Forest/0 53.81,5.97
accept A Calling in Ardenweald##62693 |goto Heart of the Forest/0 53.81,5.97
accept The Life-blood of the Forest##62890 |goto Heart of the Forest/0 53.81,5.97
step
Complete #3# World Quests in Ardenweald |q 62693/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
step
talk Blodwyn##167195
|tip Outside, on the balcony of the tree.
turnin A Calling in Ardenweald##62693 |goto Heart of the Forest/0 53.81,5.97
step
use the Bounty of the Grove Wardens##181475
|tip You should have this from turning in the "A Calling in Ardenweald" quest.
|tip You will be given an item worth 500 Anima.
|tip If you don't have this, complete world quests that reward Anima items, until you have 375 Anima worth of items.
Receive the Rewards |condition itemcount(181475) == 0 |q 62891 |future
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
turnin The Life-blood of the Forest##62890 |goto Heart of the Forest/1 39.39,54.35
accept Into the Reservoir##62891 |goto Heart of the Forest/1 39.39,54.35
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button.
Deposit #375# Anima |q 62891/2 |goto 39.39,54.35
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
turnin Into the Reservoir##62891 |goto 39.39,54.35
accept Recover the Lost##62892 |goto 39.39,54.35
step
talk Flutterby##158553
|tip Inside the tree.
turnin Recover the Lost##62892 |goto Heart of the Forest/0 33.89,43.48
accept Do What We Cannot##62893 |goto Heart of the Forest/0 33.89,43.48
step
talk Ve'nari##162804
turnin Do What We Cannot##62893 |goto The Maw/0 46.92,41.69
accept Setting the Ground Rules##62882 |goto The Maw/0 46.91,41.69
step
talk Ve'nari##162804
Ask her _"What are your ground rules for working together?"_
Watch the dialogue
Set the Ground Rules with Ve'nari |q 62882/1 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Setting the Ground Rules##62882 |goto 46.91,41.69
accept Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
stickystart "Collect_Granules_of_Stygia_60287"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Take #5# Souls into the Soulkeeper |q 60287/1 |goto 40.16,42.42
step
label "Collect_Granules_of_Stygia_60287"
Kill enemies around this area
kill Stone Prison##176145+								|notinsticky
|tip They look like pyramids made of rocks on the ground around this area.		|notinsticky
click Soul Cage+									|notinsticky
|tip They look like tall grey metal cages on the ground around this area.		|notinsticky
|tip They will appear on your minimap as white ghost icons.				|notinsticky
click Soul+										|notinsticky
|tip They look like white spirits that float out of the cages and stone prisons.	|notinsticky
|tip You can also click Souls that other players free.					|notinsticky
collect 60 Granule of Stygia##180852 |q 60287/2 |goto 40.16,42.42
step
Follow the path down |goto 44.60,41.08 < 15 |only if walking
talk Ve'nari##162804
buy 1 Cypher of Relocation##180817 |q 60287/4 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
accept Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 47.19,43.16 |count 1
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.41,41.84 |count 2
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.19,40.20 |count 3
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 46.93,39.48 |count 4
step
talk Ve'nari##162804
turnin Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
accept Rule 3: Trust is Earned##60289 |goto 46.91,41.69
step
click Signaling Beacon
Place the Signaling Beacon |q 60289/1 |goto 34.98,47.68
step
click Baine's Mace##364498
|tip You will be attacked.
collect Bloodhoof Warmace##184284 |q 60289/2 |goto 33.46,49.06
step
kill Tower Inquisitor##171626 |q 60289/3 |goto 33.46,49.06
step
use the Cypher of Relocation##180817
Return to Ve'nari |goto 46.22,41.25 < 10 |c |q 60289
step
talk Ve'nari##162804
turnin Rule 3: Trust is Earned##60289 |goto 46.91,41.69
accept Hopeful News##62837 |goto 46.91,41.69
step
talk Highlord Bolvar Fordragon##164079
turnin Hopeful News##62837 |goto Oribos/0 39.94,68.61
accept Flutterback##62894 |goto Oribos/0 39.94,68.61
step
talk Flutterby##158553
|tip Inside the tree.
turnin Flutterback##62894 |goto Heart of the Forest/0 33.90,43.50
accept Recovered Souls##62897 |goto Heart of the Forest/0 33.90,43.50
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
turnin Recovered Souls##62897 |goto Heart of the Forest/1 39.39,54.36
accept The First New Growth##62898 |goto Heart of the Forest/1 39.39,54.36
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
Tell him _"Show me the Sanctum."_
|tip Choose whichever upgrade you like best, it doesn't matter, because you will eventually unlock them all over time.
|tip Click the "Activate" button.
Start a Sanctum Upgrade |q 62898/1 |goto 39.39,54.36
step
talk Lady Moonberry##172431
|tip Inside the tree.
turnin The First New Growth##62898 |goto Heart of the Forest/0 49.22,39.94
accept The Forge of Bonds##61541 |goto Heart of the Forest/0 49.22,39.94
step
talk Flutterby##158553
|tip Inside the tree.
turnin The Forge of Bonds##61541 |goto 33.89,43.50
accept The Boon of Binding##61542 |goto 33.89,43.50
step
talk Niya##172677
|tip Inside the tree.
Tell her _"I am ready to begin."_
Soulbind with Niya |q 61542/1 |goto 33.45,45.27
step
talk Niya##172677
|tip Inside the tree.
turnin The Boon of Binding##61542 |goto 33.43,45.26
accept Strengthening the Bond##61550 |goto 33.43,45.26
step
click Forge of Bonds
|tip Select the Soulbind Power.
|tip Inside the tree.
Activate the Soulbind Power |q 61550/1 |goto 33.17,46.85
step
talk Niya##172677
|tip Inside the tree.
turnin Strengthening the Bond##61550 |goto 33.45,45.28
accept A Conduit for Growth##62900 |goto 33.45,45.28
step
click Forge of Bonds
|tip Use the 3 conduits in your bags.
|tip The conduits are different, depending on your class.
Add the Conduits to the Forge of Bonds |q 62900/1 |goto 33.16,46.81
step
click Forge of Bonds
|tip Look at the powers down the tree to figure out the path you want to take.
|tip Choose the conduit that leads to unlocking the power you like best.
|tip Inside the tree.
Apply the Conduit to Niya |q 62900/2 |goto 33.16,46.81
step
talk Flutterby##158553
|tip Inside the tree.
turnin A Conduit for Growth##62900 |goto 33.91,43.44
accept The Endless Forest##62899 |goto 33.91,43.44
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin The Endless Forest##62899 |goto 47.51,36.47
accept The Highlord Calls##63030 |goto 47.51,36.47
step
talk Highlord Bolvar Fordragon##164079
turnin The Highlord Calls##63030 |goto Oribos/0 39.94,68.59
step
Reach Renown Level 5 |condition covenant() == NightFae and covenantrenown() >= 5
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Ysera##160262
|tip Inside the tree.
accept Daughter of the Night Warrior##59179 |goto Heart of the Forest/0 44.78,38.95
step
Find Shandris Feathermoon in Oribos |q 59179/1 |goto Oribos/0 39.06,66.96
step
Watch the dialogue
talk Shandris Feathermoon##164277
|tip She walks to this location.
turnin Daughter of the Night Warrior##59179 |goto 39.06,66.96
accept Into the Maw##59181 |goto 39.06,66.96
step
Escort Shandris Feathermoon into the Maw |q 59181/1 |goto The Maw/0 44.37,41.18
step
talk Shandris Feathermoon##164277
turnin Into the Maw##59181 |goto 44.37,41.18
accept On the Trail##60508 |goto 44.37,41.18
step
talk Shandris Feathermoon##168836
Tell her _"We should be able to find Tyrande if we follow the trail of corpses."_
Find the Location in Shandris's Dream |q 60508/1 |goto 36.20,47.96
step
Follow the path |goto 31.30,43.19 < 40 |only if walking
Watch the dialogue
kill Velzhen the Duplicitous##168921
Follow the the Trail of Corpses |q 60508/2 |goto 33.04,37.27
step
talk Shandris Feathermoon##168929
|tip On the bridge.
turnin On the Trail##60508 |goto 30.11,36.43
accept The Sea of Souls##60530 |goto 30.11,36.43
step
Find Tyrande Whisperwind |q 60530/1 |goto 39.31,25.83
|tip As you walk, use the "Smoke Arrow" ability to escape from any enemies you find too difficult to kill.
|tip It appears as a button on the screen.
step
talk Shandris Feathermoon##171028
turnin The Sea of Souls##60530 |goto 46.86,41.70
accept The Recovery of Tyrande Whisperwind##59189 |goto 46.86,41.70
step
Enter the Portal to Torghast |goto 48.20,39.40
|tip Walk into the swirling portal.
Follow Shandris Feathermoon into the Portal |goto Torghast/0 16.29,47.08 < 10 |noway |c |q 59189
step
talk Shandris Feathermoon##175118
Choose _"Follow Shandris Feathermoon into Torghast to find Tyrande Whisperwind."_
Follow Shandris Feathermoon into Torghast |q 59189/1 |goto Torghast/0 39.08,47.16
step
Begin the Scenario |scenariostart |q 59189
step
Watch the dialogue
|tip Follow Shandris Feathermoon and protect her as she walks.
Find Tyrande Whisperwind |scenariostage 1 |goto Night Fae Torghast/0 63.63,47.55 |q 59189
step
Kill Mawsworn enemies around this area
|tip Help Tyrande Whisperwind and Shandris Feathermoon fight.
Slay #10# Maw Ambushers |scenariogoal 2/47817 |goto 78.50,37.23 |q 59189
step
Watch the dialogue
|tip Follow Shandris Feathermoon and protect her as she walks.
Follow Tyrande Whisperwind |scenariostage 3 |goto 78.11,67.82 |q 59189
step
Kill the enemies that attack in waves
|tip Help Shandris Feathermoon fight.
Slay #12# Maw Ambushers |scenariogoal 4/47817 |goto 78.34,66.60 |q 59189
step
click Lever
|tip Follow the hallway through the traps.
Disable the Traps |scenariostage 5 |goto 60.55,87.33 |q 59189
step
Find Tyrande |scenariostage 6 |goto 50.12,69.21 |q 59189
|tip Continue following the path.
step
clicknpc Bound Soul##171110
|tip You must free the 3 souls to be able to attack Skuld.
Free the Soul |scenariogoal 7/47830 |goto 43.33,72.29 |q 59189 |count 1
step
clicknpc Bound Soul##171110
|tip You must free the 3 souls to be able to attack Skuld.
Free the Soul |scenariogoal 7/47830 |goto 40.78,70.16 |q 59189 |count 2
step
clicknpc Bound Soul##171110
|tip You must free the 3 souls to be able to attack Skuld.
Free the Soul |scenariogoal 7/47830 |goto 43.13,68.06 |q 59189 |count 3
step
kill Skuld##164447 |scenariogoal 7/47831 |goto 42.14,70.13 |q 59189
|tip Shandris Feathermoon will help you fight.
step
Follow the path |goto 25.30,69.07 < 20 |walk
Watch the dialogue
|tip Follow Shandris Feathermoon as she walks.
Find Tyrande |scenariostage 8 |goto 24.55,34.44 |q 59189
step
kill Tortured Amalgamation##164476 |scenariostage 9 |goto 25.10,28.91 |q 59189
step
talk Tyrande Whisperwind##164336
Watch the dialogue
Beseech Tyrande to Return |scenariostage 10 |goto 25.32,28.28 |q 59189
step
click Soulkeeper Crystal
|tip Floating in the middle of the room.
Place the Soulkeeper Crystal |scenariogoal 11/48460 |goto 25.36,27.77 |q 59189
step
Watch the dialogue
Rescue #80# Night Elf Souls |scenariogoal 11/48457 |q 59189
step
talk Shandris Feathermoon##164334
|tip In the middle of the room.
Tell her _"I can bring you and these souls to Ardenweald."_
Speak with Shandris to Leave |scenarioend |goto 25.27,28.90 |q 59189
step
talk Shandris Feathermoon##171028
turnin The Recovery of Tyrande Whisperwind##59189 |goto The Maw/0 46.87,41.70
accept Their New Home##59242 |goto The Maw/0 46.87,41.70
step
Bring the Night Elf Souls to Ysera in Ardenweald |q 59242/1 |goto Heart of the Forest/0 44.75,38.92
|tip Inside the tree.
step
talk Ysera##160262
|tip Inside the tree.
Tell her _"I'm ready to release the night elf souls into Ardenweald."_
Watch the dialogue
Speak with Ysera to Release the Night Elf souls |q 59242/2 |goto 44.75,38.92
step
talk Ysera##160262
|tip Inside the tree.
turnin Their New Home##59242 |goto 44.75,38.92
step
Reach Renown Level 8 |condition covenant() == NightFae and covenantrenown() >= 8
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
_Next to you:_
talk Mask of Bwonsamdi##166265
|tip He appears next to you inside the Heart of the Forest.
|tip Inside the tree.
accept On De Other Side##59809 |goto Heart of the Forest/0 47.72,34.29
step
use the Deathstone##177904
|tip Inside the tree.
Travel to the Other Side |q 59809/1 |goto 47.72,34.29
step
_Inside the Other Side:_
talk Bwonsamdi##166281
turnin On De Other Side##59809
accept Taking Inventory##59811
step
_Inside the Other Side:_
talk Bwonsamdi##166281
Tell him _"Return me to Ardenweald."_
Return to Ardenweald |q 59811/1
step
click Jaron'tha
Inspect Tharon'ja |q 59811/3 |goto Ardenweald/0 61.59,38.45
step
click Mam'toth
Inspect Mam'toth |q 59811/2 |goto 61.33,38.98
step
click Dambala's Husk
Inspect Dambala |q 59811/4 |goto 60.16,41.97
step
click Hakkar's Husk
Inspect Hakkar |q 59811/5 |goto 63.46,39.72
step
_Next to you:_
talk Mask of Bwonsamdi##166265
turnin Taking Inventory##59811
accept Following the Trail##59812
step
use the Death God Mask##180167
Use the Death God Mask |q 59812/1 |goto 62.51,39.66
step
Follow the path up |goto 65.06,41.81 < 30 |only if walking
Continue up the path |goto 66.85,39.30 < 30 |only if walking
Follow the Tracks |q 59812/2 |goto 67.10,35.13
step
click Mueh'zala Token
Locate the Mueh'zala Token |q 59812/3 |goto 67.10,35.13
step
_Next to you:_
talk Mask of Bwonsamdi##166265
turnin Following the Trail##59812
accept Minions of Mueh'zala##59813
accept Stolen Loa##59815
stickystart "Slay_Muehzala_Forces"
step
Inspect Dambala |q 59815/2 |goto 67.84,36.47
step
kill High Priest Rakazodu##167548 |q 59813/1 |goto 68.56,35.25
step
Inspect Hakkar |q 59815/1 |goto 68.57,33.42
step
label "Slay_Muehzala_Forces"
Kill enemies around this area
Slay #8# Mueh'zala Forces |q 59813/2 |goto 68.04,35.09
step
_Next to you:_
talk Mask of Bwonsamdi##166265
turnin Minions of Mueh'zala##59813
turnin Stolen Loa##59815
accept Winter Be Comin'##59817
step
talk Attendant Sparkledew##158543
|tip Inside the tree.
Tell her _"Take me to the Queen's audience chamber, please."_
Request an Audience with the Winter Queen |q 59817/1 |goto Heart of the Forest/0 53.72,38.27
step
Enter the Queen's Audience Chamber |goto Heart of the Forest/2 43.94,60.67 < 10 |c |q 59817 |notravel
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
Tell her _"I am here on behalf of Bwonsamdi. He needs our help."_
Deliver Bwonsamdi's Request |q 59817/2 |goto Heart of the Forest/2 51.16,28.25
step
Watch the dialogue
|tip The quest only becomes able to be turned in after the dialogue finishes.
Click Here When You Are Able To Turn In The Quest |confirm |goto 51.16,28.25 |q 59817
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
turnin Winter Be Comin'##59817 |goto 51.16,28.25
accept Gathering The Hunt##59818 |goto 51.16,28.25
step
talk Mask of Bwonsamdi##172886
|tip Upstairs inside the tree.
Ask him _"What will you do about Mueh'zala?"_
Speak with Bwonsamdi |q 59818/1 |goto 46.96,42.05
step
talk Sorcha##158519
Tell her _"The forces of Mueh'zala have invaded Ardenweald."_
Rally Glitterfall Basin |q 59818/2 |goto Ardenweald/0 50.95,33.47
step
talk Guardian Kota##158921
Tell her _"The forces of Mueh'zala have invaded Ardenweald."_
Rally Tirna Vaal |q 59818/3 |goto 62.61,36.08
step
talk Guardian Molan##160929
Tell him _"The forces of Mueh'zala have invaded Ardenweald."_
Rally Hibernal Hollow |q 59818/4 |goto 60.13,52.64
step
Follow the path |goto 62.81,56.10 < 30 |only if walking
talk Lady Moonberry##167823
turnin Gathering The Hunt##59818 |goto 66.66,55.60
accept Cleansing the Forest##59819 |goto 66.66,55.60
step
Kill enemies around this area
clicknpc Wounded Hunter##168067+
|tip They look like neutral goat people on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Weaken the Mueh'zala Forces |q 59819/1 |goto 67.03,57.84
|tip Fill up the blue bar in the quest tracker area.
step
Cross the bridge |goto 67.86,61.50 < 20 |only if walking
Use the _"Majestic Runestag"_ ability
|tip It appears as a button on the screen.
Transform into a Majestic Runestag |invehicle |goto 68.45,64.98 |q 59819
step
kill Dambala##167848 |q 59819/2 |goto 68.58,66.00
|tip Use the abilities on your action bar.
step
talk Lady Moonberry##167823
turnin Cleansing the Forest##59819 |goto 68.36,65.06
accept Report to the Queen##59821 |goto 68.36,65.06
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
turnin Report to the Queen##59821 |goto Heart of the Forest/2 51.18,28.29
step
Reach Renown Level 11 |condition covenant() == NightFae and covenantrenown() >= 11
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Ysera##160262
|tip Inside the tree.
accept The Speaker of Elune##58610 |goto Heart of the Forest/0 44.77,38.95
step
talk Thiernax##161785
Choose _<Explain the situation and request help.>_
Watch the dialogue
Speak with Thiernax |q 58610/1 |goto Ardenweald/0 40.28,51.25
step
talk Qadarin##161786
turnin The Speaker of Elune##58610 |goto 40.24,51.16
accept A Little Pruning##58669 |goto 40.24,51.16
step
_Next to you:_
talk Qadarin
accept Broken Webs##58647
step
talk Cirrik##163385
accept Spriggan Snares##59008 |goto 39.07,52.53
step
talk Cirrik##163385
Free Cirrik |q 59008/1 |goto 39.07,52.53
stickystart "Rescue_Captives"
stickystart "Slay_Sicklethorn_Spriggans"
step
click Broken Anima Web
Repair the North Soulweb |q 58647/1 |goto 37.89,56.38
step
click Broken Anima Web
Repair the Central Soulweb |q 58647/2 |goto 39.20,55.36
step
click Broken Anima Web
Repair the South Soulweb |q 58647/3 |goto 40.76,56.16
step
_Next to you:_
talk Qadarin
turnin Broken Webs##58647
step
label "Rescue_Captives"
clicknpc Captured Soul##163389+
|tip They look like blue animals trapped in green vines on the ground around this area.
Rescue #8# Captives |q 59008/2 |goto 39.43,56.26
step
label "Slay_Sicklethorn_Spriggans"
Kill Sicklethorn enemies around this area
Slay #15# Sicklethorn Spriggans |q 58669/1 |goto 39.43,56.26
step
_Next to you:_
talk Qadarin
turnin A Little Pruning##58669
turnin Spriggan Snares##59008
accept The Garden of Night##58704
step
Reach the Inner Garden |q 58704/1 |goto 39.09,59.43
step
talk Thiernax##161785
Tell him _"I do hear something..."_
Speak with Thiernax |q 58704/2 |goto 39.09,59.43
step
Kill the enemies that attack in waves
kill Sickleshanks##163413
Slay the Invading Brownies and Their Leader |q 58704/3 |goto 39.09,59.43
step
talk Thiernax##161785
turnin The Garden of Night##58704 |goto 39.09,59.43
accept Broken Harts##58871 |goto 39.09,59.43
step
talk Lord Herne##158544
|tip He walks around this area.
Choose _<Explain what happened in the Gardens of Night and the spriggan's curse.>_
Speak with Lord Herne |q 58871/1 |goto Heart of the Forest/0 39.34,71.12
step
talk Lady Moonberry##161509
|tip Inside the tree.
Ask her _"Do you know anything about curses?"_
Watch the dialogue
Listen to Lady Moonberry |q 58871/2 |goto 44.12,37.12
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin Broken Harts##58871 |goto 44.12,37.12
accept Archivist on the Edge##59725 |goto 44.12,37.12
step
Follow the path up |goto 64.19,23.87 < 30 |only if walking
talk Archivist Dreyden##165867
turnin Archivist on the Edge##59725 |goto Ardenweald/0 63.64,22.70
accept Curses!##59063 |goto Ardenweald/0 63.64,22.70
stickystart "Collect_Pieces_Of_Shredded_Scroll"
step
kill Unleashed Major Hex##165869
collect Tattered Binding##177280 |goto 60.92,25.91 |q 59063
step
label "Collect_Pieces_Of_Shredded_Scroll"
Kill enemies around this area
collect 5 Piece of Shredded Scroll##175137 |goto 62.38,24.05 |q 59063
step
use the Piece of Shredded Scroll##175137+
Obtain the Sealed Scroll of Soul Rot |q 59063/1
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin Curses!##59063 |goto Heart of the Forest/0 44.11,37.12
accept A Secret Never Spoken##59068 |goto Heart of the Forest/0 44.11,37.12
accept A Sacrifice of Anima##59070 |goto Heart of the Forest/0 44.11,37.12
step
talk Ysera##160262
|tip Inside the tree.
accept A Token of Lost Love##59069 |goto 44.79,38.95
step
talk Watcher Vesperbloom##164023
Choose _<Explain why Lady Moonberry sent you to get a Secret Never Spoken.>_
Ask Watcher Vesperbloom for a Secret |q 59068/1 |goto Ardenweald/0 44.67,56.28
step
Enter the cave |goto 55.09,48.19 < 10 |walk
kill Darkwarren Matriarch##164033
|tip Inside the cave.
Obtain the Book of Secrets |q 59068/2 |goto 54.50,45.72
step
talk Watcher Vesperbloom##164023
Tell her _"I was able to recover your book."_
Speak with Watcher Vesperbloom |q 59068/3 |goto 44.66,56.28
step
click A Secret Never Spoken
Obtain the Secret Never Spoken |q 59068/4 |goto 44.65,56.25
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin A Secret Never Spoken##59068 |goto Heart of the Forest/0 44.13,37.11
step
Follow the path |goto Ardenweald/0 32.89,47.86 < 40 |only if walking
Kill enemies around this area
collect 60 Mischief-touched Anima##175139 |q 59070/1 |goto Ardenweald/0 27.99,54.06
step
talk Aithlyn##158556
|tip Inside the tree.
turnin Silk for Ardenweald##60066 |goto Heart of the Forest/0 60.02,32.42
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin A Sacrifice of Anima##59070 |goto 44.09,37.14
step
talk Alexstrasza the Life-Binder##164012
Choose _<Explain the situation to Alexstrasza and request a Token of Lost Love.>_
Watch the dialogue
Speak with Alexstrasza |q 59069/1 |goto Twilight Highlands/0 26.69,21.64
step
click Keepsake Chest
Obtain the Token of Lost Love |q 59069/2 |goto 27.07,21.03
step
talk Ysera##160262
|tip Inside the tree.
turnin A Token of Lost Love##59069 |goto Heart of the Forest/0 44.76,38.92
step
talk Lady Moonberry##161509
|tip Inside the tree.
accept Mending a Broken Hart##59071 |goto 44.15,37.07
step
Use the _"Cast Counter Curse"_ ability
|tip It appears as a button on the screen.
|tip Inside the tree.
Perform the Counter Curse |q 59071/1 |goto 43.91,38.47
step
talk Thiernax##161336
|tip Inside the tree.
turnin Mending a Broken Hart##59071 |goto 45.01,38.26
accept Equine Soul##62428 |goto 45.01,38.26
step
talk Lady Muunn##174209
|tip Inside the tree.
turnin Equine Soul##62428 |goto 37.91,24.70
step
Reach Renown Level 13 |condition covenant() == NightFae and covenantrenown() >= 13
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Lord Herne##170848
|tip He walks around this area.
|tip Outside the tree.
accept The Fate of Ara'lon##60898 |goto 39.87,71.97
step
Find Ara'lon |q 60898/1 |goto Ardenweald/0 43.26,40.05
step
talk Ara'lon##170705
turnin The Fate of Ara'lon##60898 |goto 43.26,40.05
accept Masks of Deception##60910 |goto 43.26,40.05
step
Kill enemies around this area
collect 2 Mask of Possession##180462 |q 60910/1 |goto 42.68,35.50
step
talk Ara'lon##170705
turnin Masks of Deception##60910 |goto 43.26,40.05
accept Blackthorn Captives##60928 |goto 43.26,40.05
step
use the Disguise Mask##180523
Wear the Possessed Disguise |havebuff spell:333625 |goto 43.26,40.05 |q 60928
step
clicknpc Azelor##170959
|tip Avoid the enemies with circles beneath them.
|tip They can see through your disguise.
Find Azelor |q 60928/1 |goto 41.43,35.50
step
Enter the cave |goto 41.54,33.66 < 10 |walk
clicknpc Nera##170958
|tip Inside the cave.
Find Nera |q 60928/3 |goto 41.10,33.81
step
clicknpc Taeras##170957
Find Taeras |q 60928/2 |goto 42.47,32.21
step
Enter the cave |goto 41.30,32.03 < 15 |walk
click Cage
|tip Inside the cave.
Find Gweyir |q 60928/4 |goto 41.11,31.54
step
talk Ara'lon##173296
|tip Inside the cave.
turnin Blackthorn Captives##60928 |goto 41.10,31.60
accept Report to Lord Herne##60934 |goto 41.10,31.60
step
talk Lord Herne##170848
|tip Outside the tree.
turnin Report to Lord Herne##60934 |goto Heart of the Forest/0 54.31,78.06
step
talk Ysera##171138
accept Ulfar's Guidance##61061 |goto 53.20,78.87
step
Follow the path up |goto Drustvar/0 44.86,39.98 < 10 |only if walking
Enter the cave |goto Drustvar/0 46.04,45.32 < 10 |walk
talk Ulfar##141159
|tip Inside the cave.
turnin Ulfar's Guidance##61061 |goto Drustvar/0 45.20,45.85
accept Into the Flame##61076 |goto Drustvar/0 45.20,45.85
step
Enter the cave |goto 27.02,58.45 < 7 |walk
click Flame of Oblivion
|tip Downstairs inside the cave.
Place the Fetish |q 61076/1 |goto 27.55,58.96
step
Watch the dialogue
|tip Downstairs inside the cave.
kill Drust Behemoth##171251 |q 61076/2 |goto 27.48,59.79
step
click Drust Fetish
|tip Downstairs inside the cave.
collect Imbued Drust Fetish##180625 |q 61076/3 |goto 27.55,58.92
step
Run up the stairs |goto 27.20,59.97 < 7 |walk
Leave the cave |goto 27.03,58.47 < 7 |walk
Follow the path up |goto 44.86,39.98 < 10 |only if walking
Enter the cave |goto 46.04,45.32 < 10 |walk
talk Ulfar##141159
|tip Inside the cave.
turnin Into the Flame##61076 |goto 45.20,45.84
accept Kivarr the Thornspeaker##61102 |goto 45.20,45.84
step
talk Lord Herne##170848
|tip Outside the tree.
turnin Kivarr the Thornspeaker##61102 |goto Heart of the Forest/0 51.28,81.16
accept Kivarr's Den##61113 |goto Heart of the Forest/0 51.28,81.16
step
talk Ara'lon##170705
Tell him _"I am looking for Kivarr."_
Speak with Ara'lon |q 61113/1 |goto Ardenweald/0 46.03,56.70
step
Enter the cave |goto 43.48,69.24 < 10 |walk
Meet Ara'lon at Eventide Grove |q 61113/2 |goto 43.65,69.07
|tip Inside the cave.
step
talk Ara'lon##170705
|tip Inside the cave.
turnin Kivarr's Den##61113 |goto 43.65,69.07
accept Searching the Grove##61701 |goto 43.65,69.07
step
Enter the cave |goto 46.36,72.81 < 10 |walk
Locate Kivarr |q 61701/1 |goto 46.57,73.07
|tip Inside the cave.
step
talk Kivarr##171413
|tip Inside the cave.
turnin Searching the Grove##61701 |goto 46.57,73.07
accept The Thornspeaker Captive##58773 |goto 46.57,73.07
step
kill Lukir##162700
collect Thros-Forged Key##180777 |q 58773/1 |goto 45.44,73.21
step
kill Gallak##162708
collect Gilded Skull Key##182639 |q 58773/2 |goto 44.20,72.30
step
Enter the building |goto 45.77,75.69 < 10 |walk
kill Haassert##162697
|tip Inside the building.
collect Lustrous Silver Key##182641 |q 58773/3 |goto 45.74,75.89
step
Enter the cave |goto 46.36,72.81 < 10 |walk
talk Nika##173612
|tip Inside the cave.
turnin The Thornspeaker Captive##58773 |goto 46.57,73.08
accept A Swift Intervention##61702 |goto 46.57,73.08
step
Watch the dialogue
|tip Follow Nika as she walks.
|tip She eventually walks to this location.
Locate Kivarr |q 61702/1 |goto 41.87,74.41
step
kill Thulsketha the Binder##162297 |q 61702/2 |goto 41.47,74.36
step
talk Kivarr##171413
turnin A Swift Intervention##61702 |goto 41.29,74.33
accept Return to the Den##61143 |goto 41.29,74.33
step
Enter the cave |goto 43.49,69.24 < 10 |walk
Travel to Kivarr's Den |q 61143/1 |goto 43.69,69.03
|tip Inside the cave.
step
talk Kivarr##171413
|tip Inside the cave.
turnin Return to the Den##61143 |goto 43.69,69.03
accept Nox Root##61703 |goto 43.69,69.03
step
Cross the bridge |goto 40.47,68.62 < 15 |only if walking
click Nox Root+
|tip They look like white mushrooms on the ground around this area.
collect 12 Nox Root##182958 |q 61703/1 |goto 36.94,69.15
step
talk Kivarr##171413
|tip Outside the tree.
turnin Nox Root##61703 |goto 46.16,56.43
accept Witch's Satchel##61709 |goto 46.16,56.43
stickystart "Collect_Witchs_Satchel"
step
click Broken Spear
|tip You may need help with this.
accept The Broken Spear##61710 |goto 33.84,54.52
step
label "Collect_Witchs_Satchel"
kill Oakheart Nightscreamer##172079+
|tip You may need help with this.
collect Witch's Satchel##182963 |q 61709/1 |goto 33.84,54.52
step
clicknpc Kivarr##171413
|tip Outside the tree.
turnin Witch's Satchel##61709 |goto 46.16,56.43
step
talk Lord Herne##170848
turnin The Broken Spear##61710 |goto 46.23,56.76
step
talk Kivarr##171413
accept Ritual of Purification##61711 |goto 46.16,56.43
step
Use the _"Purification Fetish"_ ability
|tip Use it on Gweyir.
|tip It appears as a button on the screen.
Use the Purification Fetish |q 61711/1 |goto 46.14,56.63
step
Kill the enemies that attack
Defeat the First Wave of Enemies |q 61711/2 |goto 46.14,56.63 |count 25
step
Use the _"Purification Fetish"_ ability
|tip Use it on Gweyir.
|tip It appears as a button on the screen.
Kill the enemies that attack
Defeat the Second Wave of Enemies |q 61711/2 |goto 46.14,56.63 |count 50
step
Use the _"Purification Fetish"_ ability
|tip Use it on Gweyir.
|tip It appears as a button on the screen.
Kill the enemies that attack
Defeat the Third Wave of Enemies |q 61711/2 |goto 46.14,56.63 |count 75
step
Use the _"Purification Fetish"_ ability
|tip Use it on Gweyir.
|tip It appears as a button on the screen.
Kill the enemies that attack
Complete the Ritual of Purification |q 61711/2 |goto 46.14,56.63 |count 100
step
talk Kivarr##171413
turnin Ritual of Purification##61711 |goto 46.16,56.43
step
talk Lord Herne##170848
accept Unbroken Bonds##61171 |goto 46.23,56.76
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
turnin Unbroken Bonds##61171 |goto Heart of the Forest/2 51.15,28.33
step
Reach Renown Level 17 |condition covenant() == NightFae and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Ysera##160262
|tip Inside the tree.
accept Containing the Night##58445 |goto Heart of the Forest/0 44.79,38.93
step
talk Ysera##160262
|tip Inside the tree.
Tell her _"Let us hear Thiernax's plan."_
Watch the dialogue
Hear the Plan |q 58445/1 |goto 44.79,38.93
step
talk Ysera##160262
|tip Inside the tree.
turnin Containing the Night##58445 |goto 44.79,38.93
accept Tracker Tracking##58446 |goto 44.79,38.93
step
talk Lord Herne##158544
|tip He walks around this area.
|tip Outside the tree.
Tell him _"Lord Herne, we seek someone who can hunt down special warriors across the Shadowlands. Is there such a tracker among the Wild Hunt?"_
Speak with Lord Herne |q 58446/1 |goto 39.34,71.13
step
talk Reldorn##164627
turnin Tracker Tracking##58446 |goto Ardenweald/0 35.27,51.11
accept Home of the Tirnenn##59258 |goto Ardenweald/0 35.27,51.11
step
Approach Tirna Scithe |q 59258/1 |goto 32.27,46.43
step
click Devourer Rift
Close the Southern Portal |q 59258/2 |goto 31.41,46.39
step
click Devourer Rift
Close the Northern Portal |q 59258/3 |goto 31.50,45.87
step
Follow the path |goto 30.09,46.07 < 20 |only if walking
Watch the dialogue
Locate the Horned Hunter |q 59258/4 |goto 30.00,44.89
step
talk Huln Highmountain##161353
turnin Home of the Tirnenn##59258 |goto 30.00,44.89
accept Dressing the Kill##58706 |goto 30.00,44.89
step
Use the _"Carve"_ ability
|tip Use it on the Ravenous Gorger corpse.
|tip It appears as a button on the screen.
Carve the Kill |q 58706/1 |goto 29.96,44.70
step
talk Huln Highmountain##161353
turnin Dressing the Kill##58706 |goto 30.00,44.90
accept Monster Hunting##58447 |goto 30.00,44.90
step
Kill enemies around this area
click Shriveled Shrub+
|tip They look like brown bushes on the ground around this area.
click Drained Animacone Cluster+
|tip They look like large brown seed pod clusters hanging from trees and on the ground around this area.
clicknpc Desiccated Tirnenn##161784+
|tip They look like dead tree people on the ground around this area.
Search for Traces of the Worldeater |q 58447/1 |goto 27.35,47.48
step
Follow the Trail |q 58447/2 |goto 25.29,49.44
step
Locate Voras |goto 24.52,48.86 < 15 |c |q 58447
step
Watch the dialogue
Escape with Huln Highmountain |goto 24.52,48.86 > 20 |c |q 58447
step
Watch the dialogue
Ambush Voras |q 58447/3 |goto 35.26,51.28 |notravel
step
talk Huln Highmountain##165841
turnin Monster Hunting##58447 |goto 35.25,51.19
accept Acid Reflux##58449 |goto 35.25,51.19
accept Anima Instincts##58450 |goto 35.25,51.19
stickystart "Collect_Bulging_Digestive_Sacs"
step
click Expended Wildseed##340664+
|tip They look like huge brown seed pods on the ground around this area.
collect 8 Life-Hardened Anima##175753 |q 58450/2 |goto 52.07,77.54
step
label "Collect_Bulging_Digestive_Sacs"
Use the _"Pacify Gorm"_ ability
|tip Use it on Gorm Rampager.
|tip They will explode.
click Gorm Giblet##357417+
|tip They look like small red piles on the ground that appear nearby after the Gorm Rampagers explode.
collect 50 Bulging Digestive Sac##174467 |q 58449/2 |goto 52.07,77.54
step
talk Reldorn##164627
turnin Acid Reflux##58449 |goto 35.27,51.11
turnin Anima Instincts##58450 |goto 35.27,51.11
accept Becoming the Hunt##59721 |goto 35.27,51.11
step
Follow the path |goto 32.85,47.94 < 30 |only if walking
talk Huln Highmountain##161353
|tip Avoid enemies as you walk, and don't mount up.
|tip If you get attacked, or mount up, you will lose your disguise.
turnin Becoming the Hunt##59721 |goto 24.54,48.98
accept Voras, The Realm Eater##58451 |goto 24.54,48.99
step
talk Huln Highmountain##161354
Speak with Huln |q 58451/1 |goto 24.54,48.99
step
talk Huln Highmountain##161354
Tell him _"I am ready. Set the lure, Huln."_
Watch the dialogue
|tip Follow Huln Highmountain as he runs away to hide.
kill Voras##161691 |q 58451/2 |goto 24.54,48.99
|tip Huln Highmountain will help you fight.
step
talk Huln Highmountain##161354
|tip He walks to this location.
turnin Voras, The Realm Eater##58451 |goto 24.55,48.98
accept Tracking the Shadows##58452 |goto 24.55,48.98
step
talk Ysera##160262
|tip Inside the tree.
turnin Tracking the Shadows##58452 |goto Heart of the Forest/0 44.82,38.93
step
Reach Renown Level 20 |condition covenant() == NightFae and covenantrenown() >= 20
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Ysera##160262
|tip Inside the tree.
accept An Expected Guest##59731 |goto Heart of the Forest/0 44.82,38.93
step
talk Bwonsamdi##165951
|tip Outside the tree.
turnin An Expected Guest##59731 |goto Ardenweald/0 48.36,52.42
accept Something Extra for the Winter Queen##59732 |goto Ardenweald/0 48.36,52.42
step
Find the Entrance to Bwonsamdi's Necropolis |q 59732/1 |goto 50.61,44.57
step
click Bwonsamdi's Death Gate to the Necropolis
Take the Portal to the Necropolis |q 59732/2 |goto 50.61,44.57
step
talk Bwonsamdi##122688
|tip Inside the building.
turnin Something Extra for the Winter Queen##59732 |goto Nazmir/0 39.57,24.67
accept The Problem with Containing a Death Loa##59739 |goto Nazmir/0 39.57,24.67
step
talk Hanzabu##165968
|tip Inside the building.
accept Dark Mojo for a Dark Loa##59741 |goto 39.51,24.72
accept Delaying the Other Side##59742 |goto 39.51,24.72
stickystart "Rescue_Injured_Worshippers"
stickystart "Collect_Dark_Mojo"
step
Run up the stairs |goto 40.30,30.94 < 15 |only if walking
kill Zel'han the Summoner##166028
|tip When he becomes immune to damage, kill the Scourge of the Dreadmire he summons to be able to damage him again.
collect Zel'han's Broken Armor##180787 |q 59739/1 |goto 39.58,35.95
step
label "Rescue_Injured_Worshippers"
use the Voodoo Powder##177817
|tip Use it on Injured Bwonsamdi Worshippers.
|tip They look like dead trolls on the ground around this area.
Rescue #6# Injured Worshippers |q 59742/1 |goto 39.47,30.11
step
label "Collect_Dark_Mojo"
Kill enemies around this area
collect 100 Dark Mojo##177818 |q 59741/1 |goto 39.47,30.11
step
Enter the building |goto 39.57,26.64 < 10 |walk
talk Mueh'zala##166018
|tip Inside the building.
turnin The Problem with Containing a Death Loa##59739 |goto 39.56,24.66
step
talk Bwonsamdi##122688
|tip Inside the building.
turnin Dark Mojo for a Dark Loa##59741 |goto 39.56,24.66
turnin Delaying the Other Side##59742 |goto 39.56,24.66
accept One Little Whisper##59749 |goto 39.56,24.66
step
click Gong of Calling
|tip Inside the building.
Summon a Special Friend |q 59749/1 |goto 39.12,25.23
step
talk Bwonsamdi##122688
|tip Inside the building.
Tell him _"I'm ready to begin the ritual to find out what Mueh'zala was hiding."_
Speak with Bwonsamdi to Begin the Ritual |q 59749/2 |goto 39.56,24.66
step
Watch the dialogue
|tip The NPC's nearby will periodically get drained of their life.
|tip Use the ability on your action bar on them to replenish their life.
|tip Inside the building.
Complete the Ritual |q 59749/3 |goto 39.56,24.66
step
talk Bwonsamdi##122688
|tip Inside the building.
turnin One Little Whisper##59749 |goto 39.56,24.66
accept Maw Manifested##59805 |goto 39.56,24.66
step
talk Spirit of Vol'jin##166110
|tip Inside the building.
Tell him _"Very well. Let's head to the Maw and find these missing spirits."_
Speak with Vol'jin |q 59805/1 |goto 39.61,24.72
step
click Bwonsamdi's Secret Door to Ardenweald |goto 39.30,24.60
|tip Inside the building.
Return to Ardenweald |goto Ardenweald/0 50.59,44.57 < 10 |noway |c |q 59805
step
Travel to the Maw |q 59805/2 |goto The Maw/0 44.95,40.99
step
talk Spirit of Vol'jin##171655
turnin Maw Manifested##59805 |goto 44.78,41.03
accept Tracking a Wild God##59822 |goto 44.78,41.03
step
click Used Cage
kill Rulkros##166263
Find the First Clue |q 59822/1 |goto 42.34,43.56
step
Follow the path |goto 35.40,50.06 < 30 |only if walking
click Used Cage
Find the Second Clue |q 59822/2 |goto 35.62,55.80
step
talk Ashamane##166280
Tell her _"I will slay the monsters that have been torturing you."_
Kill the enemies that attack in waves
kill Brynkros##166279
Rescue the Wild God |q 59822/3 |goto 37.47,66.40
step
talk Ashamane##166315
|tip On the bridge.
Tell her _"I can take you back to Ardenweald if you go inside the soulkeeper crystal."_
Watch the dialogue
Absorb Ashamane into the Soulkeeper Crystal |q 59822/4 |goto 40.84,64.22
step
talk Spirit of Vol'jin##171806
|tip On the bridge.
turnin Tracking a Wild God##59822 |goto 40.95,64.26
accept Loa Rescue##59824 |goto 40.95,64.26
step
Follow the path |goto 43.91,63.75 < 20 |only if walking
clicknpc Hir'eek##166343
Rescue the First Loa |q 59824/1 |goto 47.13,72.91
step
clicknpc Shadra##166367
|tip At the entrance of the cave.
Rescue the Second Loa |q 59824/2 |goto 46.07,82.80
step
Rescue the Third Loa |q 59824/3 |goto 45.79,85.02
|tip Inside the cave.
step
talk Spirit of Vol'jin##166461
|tip Inside the cave.
turnin Loa Rescue##59824 |goto 45.79,85.02
accept Rezan, Loa of Kings##59856 |goto 45.79,85.02
step
talk Spirit of Vol'jin##166461
|tip Inside the cave.
Tell him _"I'm ready to receive your anima to protect myself from the death barrier."_
Receive Vol'jin's Anima |q 59856/1 |goto 45.79,85.02
step
kill Exhaurbius##166467
|tip Inside the cave.
Watch the dialogue
Save Rezan |q 59856/2 |goto 47.15,86.49
step
talk Spirit of Vol'jin##166461
|tip Inside the cave.
turnin Rezan, Loa of Kings##59856 |goto 45.79,85.02
accept Parting Ways##59866 |goto 45.79,85.02
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
Tell her _"Winter Queen, I bring missing spirits to return to Ardenweald."_
Deliver the Loa to the Winter Queen |q 59866/1 |goto Heart of the Forest/2 51.17,27.94
step
talk Ysera##160262
|tip Inside the tree.
turnin Parting Ways##59866 |goto Heart of the Forest/0 44.76,38.90
step
Reach Renown Level 22 |condition covenant() == NightFae and covenantrenown() >= 22
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Ysera##160262
|tip Inside the tree.
accept We Strike Now##60189 |goto Heart of the Forest/0 44.76,38.90
step
talk Lord Herne##167686
turnin We Strike Now##60189 |goto Ardenweald/0 39.06,63.75
accept Assault on Darkreach##60190 |goto Ardenweald/0 39.06,63.75
step
talk Lady Moonberry##167688
accept Their Last Line of Defense##60192 |goto 39.13,63.73
step
talk Kivarr##172010
accept Ingra Drif##60191 |goto 38.98,63.75
stickystart "Assault_Darkreach"
step
kill Ingra Drif##167702 |q 60191/1 |goto 36.56,67.51
step
click Shielding Rune
Destroy the Shielding Rune |q 60192/1 |goto 39.19,69.59 |count 1
step
click Shielding Rune
Destroy the Shielding Rune |q 60192/1 |goto 36.96,70.93 |count 2
step
click Shielding Rune
Destroy the Shielding Rune |q 60192/1 |goto 36.43,68.39 |count 3
step
click Shielding Rune
Destroy the Shielding Rune |q 60192/1 |goto 34.91,68.93 |count 4
step
label "Assault_Darkreach"
Kill enemies around this area
click Drust Totem+
|tip They look like wooden poles with horned animal skulls on them on the ground around this area.
click Cage+
|tip They look like wooden stick cages on the ground around this area.
Assault Darkreach |q 60190/1 |goto 36.28,68.47
step
talk Lord Herne##171838
turnin Assault on Darkreach##60190 |goto 35.18,72.44
step
talk Kivarr##172010
turnin Ingra Drif##60191 |goto 35.10,72.45
step
talk Lady Moonberry##167688
turnin Their Last Line of Defense##60192 |goto 35.07,72.34
step
talk Lord Herne##171838
accept Unmasked##60193 |goto 35.18,72.45
step
click Drust Barrier
|tip On the bridge.
Destroy the Drust Barrier |q 60193/1 |goto 35.82,70.62
step
Watch the dialogue
Kill the enemies that attack in waves
kill Gorak Zhar##165285 |q 60193/2 |goto 36.22,69.39
step
talk Lady Moonberry##171992
turnin Unmasked##60193 |goto 36.17,69.62
accept The Call of the Hunt##60194 |goto 36.17,69.62
step
talk Lady Moonberry##171992
Tell her _"Let's get out of here."_
Fly out with Lady Moonberry |q 60194/1 |goto 36.17,69.62
step
Watch the dialogue
Return to Safety |goto 39.00,63.57 < 10 |c |q 60194 |notravel
step
talk Lord Herne##172091
turnin The Call of the Hunt##60194 |goto 38.93,63.43
accept Drust and Ashes##60108 |goto 38.93,63.43
step
talk Lord Herne##172091
Tell him _"I am ready. For Ardenweald!"_
Begin the Scenario |scenariostart |goto 38.93,63.43 |q 60108
step
clicknpc Ysera##166417
Ride with Ysera |scenariogoal 1/49276 |goto Ardenweald/4 30.80,77.31 |q 60108
step
Watch the dialogue
Put #125# Drust to Sleep |scenariogoal 1/49079 |q 60108
|tip Use the ability on your action bar.
|tip Use it on the enemies running on the ground.
step
Watch the dialogue
Fly to the Heart of the Forest |scenariogoal 1/48021 |goto 53.88,24.48 |q 60108 |notravel
step
talk Winter Queen##166887
Tell her _"Ara'lon has fallen. The Drust march on the Grove of Awakening."_
Watch the dialogue
Report to the Queen |scenariogoal 2/48026 |goto 55.78,23.36 |q 60108
step
Use the _"Receiving Blessing"_ ability
|tip It appears as a button on the screen.
Recieve the Queen's Blessing |scenariogoal 3/48022 |goto 55.51,23.09 |q 60108
step
click Horn of the Hunt
Sound the Horn of the Wild Hunt |scenariogoal 4/48025 |goto 55.26,23.33 |q 60108
step
Kill enemies around this area
Slay #45# Drust Forces |scenariogoal 4/48024 |goto 55.84,48.69 |q 60108
step
Reach the Grove of Awakening |scenariogoal 4/48023 |goto 62.79,63.70 |q 60108
step
talk Winter Queen##166887
Ask her _"What are your orders?"_
Watch the dialogue
Speak with Winter Queen |scenariogoal 5/48027 |goto 62.80,63.71 |q 60108
step
Kill enemies around this area
|tip They are fighting Lord Herne nearby.
click Focus of Protection
Assist Herne |scenariogoal 6/48029 |goto 54.30,72.22 |q 60108
step
Kill enemies around this area
|tip They are fighting Lady Moonberry nearby.
click Focus of Destiny
Assist Moonberry |scenariogoal 6/48028 |goto 53.61,81.24 |q 60108
step
Kill enemies around this area
|tip They are fighting Droman Aliothe nearby.
click Focus of Renewal
Assist Aliothe |scenariogoal 6/48030 |goto 65.81,72.34 |q 60108
step
Kill enemies around this area
|tip They are fighting Zayhad, The Builder nearby.
click Focus of Cycles
Assist Zayhad |scenariogoal 6/48031 |goto 65.63,80.86 |q 60108
step
Return to the Winter Queen |scenariogoal 7/48740 |goto 60.08,76.22 |q 60108
step
kill Anchoring Rune##173708
Destroy the Anchoring Rune |scenariogoal 7/49315 |goto 61.34,82.96 |count 1 |q 60108
step
kill Anchoring Rune##173708
Destroy the Anchoring Rune |scenariogoal 7/49315 |goto 59.33,82.83 |count 2 |q 60108
step
kill Anchoring Rune##173708
Destroy the Anchoring Rune |scenariogoal 7/49315 |goto 58.91,85.80 |count 3 |q 60108
step
kill Anchoring Rune##173708
Destroy the Anchoring Rune |scenariogoal 7/49315 |goto 60.88,86.54 |count 4 |q 60108
step
kill Gorak Zhar##168683
Defeat Gorak Zhar |scenariogoal 7/48032 |goto 59.92,84.24 |q 60108
step
talk Winter Queen##166887
Tell her _"I am ready to go."_
Speak with the Winter Queen |scenarioend |goto 60.10,76.29 |q 60108
step
talk Winter Queen##156634
|tip Upstairs inside the tree.
turnin Drust and Ashes##60108 |goto Heart of the Forest/2 51.19,28.19
accept Ardenmoth Soul##62422 |goto Heart of the Forest/2 51.19,28.19
step
talk Lady Muunn##174209
|tip Inside the tree.
turnin Ardenmoth Soul##62422 |goto Heart of the Forest/0 37.89,24.75
step
talk Lady Moonberry##161509
|tip Inside the tree.
accept Growing in Power##62560 |goto 47.51,36.49
step
talk Lady Moonberry##161509
|tip Inside the tree.
Tell her _"I am ready, Lady Moonberry."_
Witness the Empowerment |q 62560/1 |goto 47.51,36.49
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin Growing in Power##62560 |goto 47.51,36.49
step
talk Lady Moonberry##161509
|tip Inside the tree.
accept My Heart is Full##62561 |goto 47.51,36.49
step
talk Lady Moonberry##161509
|tip Inside the tree.
Tell her _"I am ready, Lady Moonberry."_
Witness the Empowerment |q 62561/1 |goto 47.51,36.49
step
talk Lady Moonberry##161509
|tip Inside the tree.
turnin My Heart is Full##62561 |goto 47.51,36.49
step
_Congratulations!_
You Reached Renown Level 40.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Questline",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Venthyr\n"..
"\ncovenant quests and storyline.\n",
condition_suggested=function() return level >= 50 end,
startlevel=50.0,
endlevel=60.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Reach Level 60 |ding 60
|tip You must be level 60 before you can start your covenant questline.
|tip Use the Leveling guides to accomplish this.
step
Complete the "Choosing Your Purpose" Quest in Oribos |complete completedanyq(57878,62000) |future
|tip Use the "Shadowlands Intro & Main Questline" guide to accomplish this.
step
talk Tal-Inara##159478
accept Report to Draven##63215 |goto Oribos/0 38.90,69.98
|only if not havequest(59314) or completedq(59314)
step
talk General Draven##171589
turnin Report to Draven##63215 |goto Oribos/0 44.88,68.86 |only if not havequest(59314) or completedq(59314)
accept Sinfall##59314 |goto Oribos/0 44.88,68.86
step
Ride the elevator up |goto Revendreth/0 30.33,47.33 < 10 |only if walking
Enter Sinfall Through the Mirror |q 59314/2 |goto Revendreth/0 29.36,42.66
|tip Walk into the red swirling portal.
|tip Downstairs inside the building.
step
talk Prince Renathal##164742
|tip Inside the building.
turnin Sinfall##59314 |goto Sinfall/0 25.89,55.78
accept The Court of Harvesters##59315 |goto Sinfall/0 25.89,55.78
step
Watch the dialogue
|tip Follow Prince Renathal as he walks.
|tip He eventually walks to this location.
|tip Inside the building.
Walk with Prince Renathal |q 59315/1 |goto 51.81,37.54
step
Use the _"Oath of the Harvesters"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
Give Your Oath to the Accuser |q 59315/2 |goto 50.45,35.04
step
Use the _"Oath of the Harvesters"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
Give Your Oath to the Curator |q 59315/3 |goto 52.07,40.62
step
talk Prince Renathal##164796
|tip Inside the building.
turnin The Court of Harvesters##59315 |goto 51.78,37.60
accept Sacred Covenant##59321 |goto 51.78,37.60
step
talk Courier Snaggle##162702
|tip Inside the building.
fpath Sinfall |goto 67.31,21.42
step
talk Tavian##166137
|tip Inside the building.
home Sinfall |goto 66.02,33.59
step
Use the Sinfall Mirror to Teleport to the Sanctum's Lower Level |q 59321/1 |goto 36.55,48.19
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk Prince Renathal##171934
|tip Downstairs inside the building.
turnin Sacred Covenant##59321 |goto Sinfall/1 45.41,29.28
accept Anima Awakening##59323 |goto Sinfall/1 45.41,29.28
step
Stand before the Harvesters |q 59323/1 |goto 45.64,24.77
|tip Downstairs inside the building.
step
Watch the dialogue
|tip Downstairs inside the building.
Complete the Ritual |q 59323/2 |goto 45.64,24.77
step
talk Prince Renathal##171934
|tip Downstairs inside the building.
turnin Anima Awakening##59323 |goto 45.38,29.40
accept Building Your Renown##62856 |goto 45.38,29.40
step
Use the Sinfall Mirror to Teleport to the Sanctum's Upper Level |q 62856/1 |goto 70.18,38.46
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk Rahel##175772
|tip Inside the building.
turnin Building Your Renown##62856 |goto Sinfall/0 54.27,26.43
accept The Court's Bounty##62857 |goto Sinfall/0 54.27,26.43
step
talk Rahel##175772
|tip Inside the building.
Tell her _"Show me my Renown."_
Examine your Renown |q 62857/1 |goto 54.27,26.43
step
talk Rahel##175772
|tip Inside the building.
turnin The Court's Bounty##62857 |goto 54.27,26.43
accept A Call to Service##62695 |goto 54.27,26.43
step
Use the Sinfall Mirror to Teleport to the Sanctum's Lower Level |q 62695/1 |goto 36.55,48.19
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk Rendle##165302
|tip Downstairs inside the building.
turnin A Call to Service##62695 |goto Sinfall/1 62.46,76.60
accept A Calling in Revendreth##62691 |goto Sinfall/1 62.46,76.60
step
Complete #3# World Quests in Revendreth |q 62691/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
step
talk Rendle##165302
|tip Downstairs inside the building.
turnin A Calling in Revendreth##62691 |goto Sinfall/1 62.46,76.60
accept Anima is Power##62902 |goto Sinfall/1 62.46,76.60
step
use the Tribute of the Court##181556
|tip You should have this from turning in the "A Calling in Revendreth" quest.
|tip You will be given an item worth 500 Anima.
|tip If you don't have this, complete world quests that reward Anima items, until you have 375 Anima worth of items.
Receive the Rewards |condition itemcount(181556) == 0 |q 62903 |future
step
talk Foreman Flatfinger##172605
|tip Inside the building.
turnin Anima is Power##62902 |goto Sinfall/0 55.69,26.04
accept Into the Reservoir##62903 |goto Sinfall/0 55.69,26.04
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button.
Deposit #375# Anima |q 62903/2 |goto 55.69,26.04
step
talk Foreman Flatfinger##172605
|tip Inside the building.
turnin Into the Reservoir##62903 |goto 55.69,26.04
accept The Souls Plight##62904 |goto 55.69,26.04
step
talk Tenaval##164738
|tip Inside the building.
turnin The Souls Plight##62904 |goto 45.45,28.44
accept Back into the Darkness##62905 |goto 45.45,28.44
step
talk Ve'nari##162804
turnin Back into the Darkness##62905 |goto The Maw/0 46.91,41.69
accept Setting the Ground Rules##62882 |goto The Maw/0 46.91,41.69
step
talk Ve'nari##162804
Ask her _"What are your ground rules for working together?"_
Watch the dialogue
Set the Ground Rules with Ve'nari |q 62882/1 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Setting the Ground Rules##62882 |goto 46.91,41.69
accept Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
stickystart "Collect_Granules_of_Stygia_60287"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Take #5# Souls into the Soulkeeper |q 60287/1 |goto 40.16,42.42
step
label "Collect_Granules_of_Stygia_60287"
Kill enemies around this area
kill Stone Prison##176145+								|notinsticky
|tip They look like pyramids made of rocks on the ground around this area.		|notinsticky
click Soul Cage+									|notinsticky
|tip They look like tall grey metal cages on the ground around this area.		|notinsticky
|tip They will appear on your minimap as white ghost icons.				|notinsticky
click Soul+										|notinsticky
|tip They look like white spirits that float out of the cages and stone prisons.	|notinsticky
|tip You can also click Souls that other players free.					|notinsticky
collect 60 Granule of Stygia##180852 |q 60287/2 |goto 40.16,42.42
step
Follow the path down |goto 44.60,41.08 < 15 |only if walking
talk Ve'nari##162804
buy 1 Cypher of Relocation##180817 |q 60287/4 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
accept Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 47.19,43.16 |count 1
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.41,41.84 |count 2
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.19,40.20 |count 3
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 46.93,39.48 |count 4
step
talk Ve'nari##162804
turnin Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
accept Rule 3: Trust is Earned##60289 |goto 46.91,41.69
step
click Signaling Beacon
Place the Signaling Beacon |q 60289/1 |goto 34.98,47.68
step
click Baine's Mace##364498
|tip You will be attacked.
collect Bloodhoof Warmace##184284 |q 60289/2 |goto 33.46,49.06
step
kill Tower Inquisitor##171626 |q 60289/3 |goto 33.46,49.06
step
use the Cypher of Relocation##180817
Return to Ve'nari |goto 46.22,41.25 < 10 |c |q 60289
step
talk Ve'nari##162804
turnin Rule 3: Trust is Earned##60289 |goto 46.91,41.69
accept Hopeful News##62837 |goto 46.91,41.69
step
talk Highlord Bolvar Fordragon##164079
turnin Hopeful News##62837 |goto Oribos/0 39.94,68.61
accept Souls for Sinfall##62870 |goto Oribos/0 39.94,68.61
step
talk Tenaval##164738
|tip Inside the building.
turnin Souls for Sinfall##62870 |goto Sinfall/0 45.37,28.48
accept A Coalition of the Willing##62914 |goto Sinfall/0 45.37,28.48
step
talk Foreman Flatfinger##172605
|tip Inside the building.
turnin A Coalition of the Willing##62914 |goto 55.73,26.00
accept Home Improvement##62915 |goto 55.73,26.00
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Choose whichever upgrade you like best, it doesn't matter, because you will eventually unlock them all over time.
|tip Click the "Activate" button.
Start a Sanctum Upgrade |q 62915/1 |goto 55.73,26.00
step
talk Foreman Flatfinger##172605
|tip Inside the building.
turnin Home Improvement##62915 |goto 55.73,26.00
step
talk The Accuser##171950
|tip Inside the building.
accept Binding Power##62918 |goto Sinfall/0 45.51,20.96
step
Watch the dialogue
|tip Inside the building.
talk Nadjia the Mistblade##164853
|tip She walks to this location.
Soulbind with Nadjia |q 62918/1 |goto 43.67,17.44
step
talk Nadjia the Mistblade##171979
|tip Inside the building.
turnin Binding Power##62918 |goto 43.73,17.46
accept Strengthening the Bond##62919 |goto 43.73,17.46
step
click Forge of Bonds
|tip Follow the instructions on the screen, then click the Activate button.
|tip Inside the building.
Empower Nadjia |q 62919/1 |goto 42.73,18.12
step
talk Nadjia the Mistblade##171979
|tip Inside the building.
turnin Strengthening the Bond##62919 |goto 43.72,17.41
step
talk The Accuser##171950
|tip Inside the building.
accept A Conduit For Change##62920 |goto 45.39,20.89
step
click Forge of Bonds
|tip Use the 3 conduits in your bags.
|tip The conduits are different, depending on your class.
|tip Inside the building.
Add the Conduits to the Forge of Bonds |q 62920/1 |goto 42.72,18.14
step
click Forge of Bonds
|tip Look at the powers down the tree to figure out the path you want to take.
|tip Choose the conduit that leads to unlocking the power you like best.
|tip Inside the building.
Apply the Conduit to Nadjia |q 62920/2 |goto 42.72,18.14
step
talk The Accuser##171950
|tip Inside the building.
turnin A Conduit For Change##62920 |goto 45.39,20.89
accept Our True Purpose##62921 |goto 45.39,20.89
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Our True Purpose##62921 |goto 51.77,37.51
accept The Highlord Calls##63033 |goto 51.77,37.51
step
click Medallion of Pride
|tip Inside the building.
accept Halls of Atonement: Medallion of Pride##60500 |goto 56.80,30.94
step
talk Highlord Bolvar Fordragon##164079
turnin The Highlord Calls##63033 |goto Oribos/0 39.94,68.59
step
Reach Renown Level 5 |condition covenant() == Venthyr and covenantrenown() >= 5
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Prince Renathal##158653
|tip Inside the building.
accept Common Ground##59701 |goto Sinfall/0 51.77,37.51
step
talk General Draven##161977
|tip Inside the building.
accept The Princeguard##61492 |goto 46.16,14.82
step
Ride the elevator up |goto Revendreth/0 42.07,47.12 < 15 |only if walking
click Renathal Banner
Place the Renathal Banner |q 59701/1 |goto Revendreth/0 40.45,50.78 |count 1
step
click Chelra the Bladewall
Revive Chelra the Bladewall |q 61492/1 |goto 44.00,50.73
stickystart "Slay_Venthyr_Invaders"
step
click Renathal Banner
Place the Renathal Banner |q 59701/1 |goto 44.54,53.98 |count 2
step
click Renathal Banner
Place the Renathal Banner |q 59701/1 |goto 45.37,49.01 |count 3
step
click Renathal Banner
Place the Renathal Banner |q 59701/1 |goto 45.03,48.49 |count 4
step
label "Slay_Venthyr_Invaders"
Kill enemies around this area
Slay #10# Venthyr Invaders |q 61492/2 |goto 44.00,50.73
step
_Next to you:_
talk Chelra the Bladewall##172499
turnin The Princeguard##61492
step
Follow the path |goto 42.53,52.68 < 10 |only if walking
talk Prince Renathal##165661
|tip High up on the balcony.
turnin Common Ground##59701 |goto 41.01,54.81
accept Invitation for the Countess##59706 |goto 41.01,54.81
accept Invitation for the Tithelord##59707 |goto 41.01,54.81
accept Invitation for the Stonewright##59708 |goto 41.01,54.81
step
Follow the path |goto 42.54,52.65 < 10 |only if walking
Ride the elevator down |goto 42.07,47.13 < 15 |only if walking
Follow the path |goto 37.87,47.50 < 20 |only if walking
Continue following the path |goto 38.10,38.33 < 30 |only if walking
Follow the path |goto 41.19,32.29 < 30 |only if walking
talk General Draven##165865
turnin Invitation for the Stonewright##59708 |goto 40.27,30.59
accept Harvester of Wrath##59720 |goto 40.27,30.59
step
talk The Stonewright##165866
|tip You will be attacked while crossing the bridge.
|tip The enemies won't attack you after you cross the bridge.
Choose _"Deliver Prince Renathal's invitation."_
Deliver the Message to the Stonewright |q 59720/1 |goto 34.28,21.92
step
Click the Pridefall Gate and follow the path |goto 70.45,77.72 < 15 |only if walking
talk Nadjia the Mistblade##165818
|tip High up on the balcony.
turnin Invitation for the Tithelord##59707 |goto 72.23,74.92
accept Harvester of Envy##59711 |goto 72.23,74.92
step
talk Temel##165817
|tip High up on the balcony.
Dispatch Temel |q 59711/1 |goto 72.20,74.91
step
Deliver the Message for the Tithelord |q 59711/2 |goto 77.42,64.68
|tip Use the "Flap!" ability on your action bar to fly to this location.
|tip Outside, in the courtyard behind the building.
step
Stop Controlling Temel |nobuff spell:323339 |q 59711
|tip Use the "Escape!" ability on your action bar.
step
click Old Gate Carriage
|tip Wait here until a horse carriage comes along.
|tip You shouldn't have to wait very long.
|tip You will be able to ride the carriage to the quest location.
Ride an Old Gate Carriage |invehicle |goto 44.21,41.51 |q 59706
step
Stop Riding the Old Gate Carriage |outvehicle |goto 51.36,37.03 |q 59706
|tip Click the red arrow above your action bars at this location.
step
talk Cudgelface##165658
|tip Up on the bridge.
turnin Invitation for the Countess##59706 |goto 52.44,35.32
accept Harvester of Desire##59676 |goto 52.44,35.32
step
click Servant's Basic Kit
|tip High up on the balcony.
Wear the Servant's Basic Kit |q 59676/1 |goto 52.41,35.32
step
talk The Countess##165662
Choose _"Deliver Prince Renathal's invitation."_
Deliver the Message for the Countess |q 59676/2 |goto 56.98,28.55
step
Ride the elevator up |goto 42.07,47.12 < 15 |only if walking
Follow the path |goto 42.53,52.68 < 10 |only if walking
talk Prince Renathal##165661
|tip High up on the balcony.
turnin Harvester of Desire##59676 |goto 41.01,54.81
turnin Harvester of Envy##59711 |goto 41.01,54.81
turnin Harvester of Wrath##59720 |goto 41.01,54.81
accept The Court##59719 |goto 41.01,54.81
step
Watch the dialogue
talk Prince Renathal##165661
turnin The Court##59719 |goto 43.78,51.27
step
talk Theotar##161979
accept Kindred Spirits##59343 |goto Sinfall/0 50.22,18.10
step
Watch the dialogue
clicknpc Theotar##172042
Soulbind with Theotar |q 59343/1 |goto 43.70,17.46
step
talk Theotar##172046
turnin Kindred Spirits##59343 |goto 43.69,17.49
step
Reach Renown Level 8 |condition covenant() == Venthyr and covenantrenown() >= 8
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
click Medallion of Desire
accept Medallion of Desire##60904 |goto Sinfall/0 53.60,32.91
step
talk Theotar##161979
turnin Medallion of Desire##60904 |goto 50.22,18.10
accept An Estate Within the Old Gate##57880 |goto 50.22,18.10
step
talk Bogdan##159513
turnin An Estate Within the Old Gate##57880 |goto Revendreth/0 60.46,40.15
accept The Key to Rebuilding##57881 |goto Revendreth/0 60.46,40.15
accept Reestablishing the Household##57882 |goto Revendreth/0 60.46,40.15
stickystart "Collect_Ornate_Key"
step
talk Florin##159652
Choose _<Present the Offer of Employment.>_
Speak to Florin |q 57882/3 |goto 59.32,34.09
step
talk Dumitra##159651
Choose _<Present the Offer of Employment.>_
Speak to Dumitra |q 57882/1 |goto 58.48,33.24
step
talk Elena##159650
Choose _<Present the Offer of Employment.>_
Speak to Elena |q 57882/2 |goto 61.02,33.44
step
label "Collect_Ornate_Key"
Kill enemies around this area
collect Ornate Key##173180 |q 57881/1 |goto 60.25,37.19
step
talk Bogdan##159513
turnin The Key to Rebuilding##57881 |goto 60.46,40.14
turnin Reestablishing the Household##57882 |goto 60.46,40.14
accept Reclaiming Thornhill Manor##57884 |goto 60.46,40.14
step
Run up the stairs |goto 60.26,35.54 < 15 |only if walking
kill Viscount Nicolae##159657 |q 57884/1 |goto 61.84,29.60
step
Enter the building |goto 59.22,30.23 < 7 |walk
talk Bogdan##159513
|tip Inside the building.
turnin Reclaiming Thornhill Manor##57884 |goto 58.83,29.88
accept A Discreet Entrance##57885 |goto 58.83,29.88
step
Enter the Ornate Mirror |q 57885/1 |goto 58.73,30.29
|tip Walk into the red swirling portal.
|tip Inside the building.
step
talk The Countess##159694
|tip Upstairs inside the building.
turnin A Discreet Entrance##57885 |goto 58.05,27.53 |region redelav_tower
accept A Meal and A Deal##57886 |goto 58.05,27.53 |region redelav_tower
step
click Ornate Chair
|tip Upstairs inside the building.
Sit in the Ornate Chair |q 57886/1 |goto 58.13,27.65 |region redelav_tower
step
Watch the dialogue
|tip Upstairs inside the building.
Listen to the Countess |q 57886/2 |goto 58.13,27.65 |region redelav_tower
step
click Grand Feast
|tip On the table.
|tip Upstairs inside the building.
Eat the Grand Feast |q 57886/3 |goto 58.13,27.65 |region redelav_tower
step
Watch the dialogue
|tip Upstairs inside the building.
Listen to the Countess |q 57886/4 |goto 58.13,27.65 |region redelav_tower
step
talk The Countess##159694
|tip Upstairs inside the building.
turnin A Meal and A Deal##57886 |goto 58.05,27.53 |region redelav_tower
accept Killing the Messenger##57887 |goto 58.05,27.53 |region redelav_tower
step
Enter the Ornate Mirror |goto 57.38,28.67 |region redelav_tower
|tip Walk into the red swirling portal.
|tip Upstairs inside the building.
Leave the Tower |goto 58.91,30.34 < 10 |noway |c |q 57887
step
kill Redelav Courier##159731
|tip Wait for him to run by this location.
|tip He will appear on your minimap as a yellow dot.
collect Treasonous Missive##173285 |q 57887/1 |goto 57.54,36.34
step
talk The Countess##159694
|tip Upstairs inside the building.
turnin Killing the Messenger##57887 |goto 58.05,27.53 |region redelav_tower
accept An Invitation to Treachery##57888 |goto 58.05,27.53 |region redelav_tower
accept "Accidental" Arson##57889 |goto 58.05,27.53 |region redelav_tower
accept Beautiful, But Deadly##57890 |goto 58.05,27.53 |region redelav_tower
stickystart "Collect_Duskmire_Mushrooms"
step
Follow the path up |goto 57.09,37.23 < 30 |only if walking
Enter the building |goto 56.26,35.95 < 7 |walk
kill Lord Andrei##159664 |q 57889/1 |goto 56.40,35.35
|tip Inside the building.
step
click Ornate Rug
|tip Inside the building.
Burn the Ornate Rug |q 57889/2 |goto 56.31,35.50
step
use the Invitations##173358
|tip Use them on the Fiendish Servant.
|tip In front of the building.
Deliver to Redelav |q 57888/4 |goto 55.26,34.93
step
use the Invitations##173358
|tip Use them on the Fiendish Servant.
|tip In front of the building.
Deliver to Darkvein |q 57888/1 |goto 53.07,37.01
step
use the Invitations##173358
|tip Use them on the Fiendish Servant.
|tip In front of the building.
Deliver to Duskmire |q 57888/2 |goto 54.30,38.83
step
use the Invitations##173358
|tip Use them on the Fiendish Servant.
|tip In front of the building.
Deliver to Primrose |q 57888/3 |goto 55.90,39.47
step
label "Collect_Duskmire_Mushrooms"
click Duskmire Mushroom+
|tip They look like clusters of small red balls on the ground around this area.
collect 50 Duskmire Mushroom##173286 |q 57890/1 |goto 55.47,36.49
step
talk The Countess##159694
|tip Upstairs inside the building.
turnin An Invitation to Treachery##57888 |goto 58.05,27.53 |region redelav_tower
turnin "Accidental" Arson##57889 |goto 58.05,27.53 |region redelav_tower
turnin Beautiful, But Deadly##57890 |goto 58.05,27.53 |region redelav_tower
accept Mix, Mingle, and Meddle##57891 |goto 58.05,27.53 |region redelav_tower
step
use the Duskmire Elixir##174923
|tip Upstairs inside the building.
Consume the Duskmire Elixir |q 57891/1 |goto 58.05,27.53 |region redelav_tower
step
Ride the elevator up |goto 57.40,33.45 < 15 |only if walking
talk NPC+
|tip They look like neutral NPC's around this area.
|tip They have various names.
Ask them _"Are you enjoying yourself?"_
|tip Some of them may attack you.
use the Duskmire Elixir##174923
|tip Make sure to keep the Duskmire Elixir buff active, so you can talk to them.
Question #10# Attendees |q 57891/2 |goto 55.34,31.35
step
talk The Countess##159946
turnin Mix, Mingle, and Meddle##57891 |goto 56.92,28.64
accept Enacting Immediate Justice##57892 |goto 56.92,28.64
step
talk The Countess##159946
Tell her _"House Primrose"_
Name the Traitorous House |q 57892/1 |goto 56.92,28.64
step
talk Chancellor Ladris##159884
Tell him _"You stand accused of conspiring to overthrow The Countess."_
Confront the House Leader |q 57892/2 |goto 55.13,30.52
step
kill Chancellor Ladris##159884
Defeat the Traitor |q 57892/3 |goto 55.13,30.52
step
talk The Countess##159946
turnin Enacting Immediate Justice##57892 |goto 56.93,28.64
accept Neither Enemy nor Ally##57893 |goto 56.93,28.64
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Neither Enemy nor Ally##57893 |goto Sinfall/0 51.78,37.63
step
Reach Renown Level 11 |condition covenant() == Venthyr and covenantrenown() >= 11
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
click Medallion of Avarice
|tip Inside the building.
accept Medallion of Avarice##60935 |goto Sinfall/0 54.88,31.04
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Medallion of Avarice##60935 |goto 51.77,37.62
accept The Curator##58842 |goto 51.77,37.62
step
talk The Curator##160941
Ask her _"What happened to the Medallion of Avarice?"_
Speak to the Curator |q 58842/1 |goto Revendreth/0 72.74,37.64
step
talk The Curator##160941
turnin The Curator##58842 |goto 72.74,37.64
accept Watcher Emil##58325 |goto 72.74,37.64
step
talk Guard Captain Elizabeta##161056
|tip Inside the building.
Tell her _"The Curator sent me. I'm looking for Watcher Emil."_
Consult the Catacombs Officer |q 58325/1 |goto 65.92,32.28
step
talk Guard Captain Elizabeta##161056
|tip Inside the building.
accept Break Out##58337 |goto 65.92,32.28
accept Combing the Catacombs##58326 |goto 65.92,32.28
stickystart "Return_Escaped_Captives"
stickystart "Kill_Sinstone_Rampagers"
stickystart "Slay_Manifestations"
step
Follow the path up |goto 64.52,31.57 < 20 |only if walking
Run down the stairs inside the building |goto 65.68,26.70 < 7 |c |q 58337
step
click Dorin's Journal
|tip Downstairs inside the building.
Find Guardsman Dorin |q 58325/2 |goto 65.06,26.85
step
label "Return_Escaped_Captives"
use the Chains of Regret##174040
|tip Use them on Escaped Captives.
|tip They look like spirits wearing dark cloaks on the ground around this area.
|tip They will start following you.
click Catacombs Cage+
|tip They look like large metal cages inside the buildings around this area.
|tip They will appear on your minimap as dots when you have a Captured Soul following you.
Return #6# Escaped Captives |q 58337/1 |goto 66.16,30.32
step
label "Kill_Sinstone_Rampagers"
kill 3 Sinstone Rampager##160716 |q 58326/2 |goto 66.16,30.32
step
label "Slay_Manifestations"
Kill enemies around this area
|tip Escaped Captives and Sinstone Rampagers won't count for the quest goal.
Slay #12# Manifestations |q 58326/1 |goto 66.16,30.32
step
Watch the dialogue
|tip In the doorway of the building.
Find Watcher Emil |q 58325/3 |goto 65.93,29.34
step
talk Watcher Emil##160956
|tip Inside the building.
turnin Watcher Emil##58325 |goto 65.93,28.84
accept Lead the Way##58372 |goto 65.93,28.84
step
talk Watcher Emil##160956
|tip Inside the building.
Tell him _"Let's go."_
Begin Following Watcher Emil |goto 65.93,28.84 > 15 |c |q 58372
step
Watch the dialogue
|tip Follow Watcher Emil as he walks.
|tip Stay within the white circle surrounding him.
|tip He eventually walks to this location.
Kill the enemies that attack
Escort Watcher Emil |q 58372/2 |goto 65.40,34.06
step
talk Guard Captain Elizabeta##161056
|tip Inside the building.
turnin Break Out##58337 |goto 65.92,32.27
turnin Combing the Catacombs##58326 |goto 65.92,32.27
step
Follow the path up |goto 68.06,37.51 < 30 |only if walking
talk The Curator##160941
turnin Lead the Way##58372 |goto 72.74,37.64
accept Special Access##58421 |goto 72.74,37.64
accept Crypt Crashers##58428 |goto 72.74,37.64
step
talk Watcher Emil##160956
accept An Eye for an Amulet##58424 |goto 72.60,37.54
stickystart "Collect_Death_Lotus_Powder"
stickystart "Kill_Excavation_Enforcers"
stickystart "Slay_Archivam_Instruders"
step
Cross the bridge |goto 74.13,37.79 < 15 |only if walking
kill Examiner Ionata##160849
collect Ionata's Fangs##174093 |q 58421/3 |goto 77.40,32.75
step
Enter the building |goto 79.75,37.24 < 7 |walk
kill Examiner Boian##160847
|tip Inside the building.
collect Boian's Fangs##174094 |q 58421/2 |goto 80.06,37.24
step
Enter the building |goto 80.40,40.30 < 7 |walk
kill Examiner Daciana##160848
|tip Inside the building.
collect Daciana's Fangs##174095 |q 58421/1 |goto 80.77,39.92
step
label "Collect_Death_Lotus_Powder"
click Stonebreaker Mallet+
|tip They look like small sledge hammers on the ground around this area.
click Crypt Door+
|tip They look like the doors of the smaller stone buildings around this area.
|tip You will lose your Stonebreaker Mallet after each Crypt Door you break, and will need a new one.
|tip They will appear on your minimap as dots.
click Powder Bag
|tip It looks like a brown sack.
|tip It will eventually be inside one of the crypts.
collect Death Lotus Powder##174098 |q 58428/1 |goto 78.02,36.92
step
label "Kill_Excavation_Enforcers"
kill 5 Excavation Enforcer##160845 |q 58424/2 |goto 78.02,36.92
step
label "Slay_Archivam_Instruders"
Kill Nefarious enemies around this area
Slay #12# Archivam Intruders |q 58424/1 |goto 78.02,36.92
step
talk Nourman##161298
|tip Outside, behind the building.
turnin Special Access##58421 |goto 77.58,39.28
accept The Traitor##60673 |goto 77.58,39.28
step
Enter the building |goto 77.48,39.10 < 7 |walk
kill Sinkeeper Mateo##160850
|tip Inside the building.
collect Mateo's Mirror Shard##174092 |q 60673/1 |goto 78.51,39.38
step
Leave the building |goto 77.48,39.11 < 7 |walk
Cross the bridge |goto 75.26,37.42 < 20 |only if walking
talk The Curator##160941
turnin The Traitor##60673 |goto 72.74,37.64
turnin Crypt Crashers##58428 |goto 72.74,37.64
step
talk Watcher Emil##160956
turnin An Eye for an Amulet##58424 |goto 72.60,37.54
step
talk The Curator##160941
accept Mirror, Mirror...##58440 |goto 72.74,37.64
step
Watch the dialogue
|tip In the doorway of the building.
Wait for the Curator to Complete the Mirror |q 58440/1 |goto 72.70,37.54
step
use the Death Lotus Powder##174179
Apply the Death Lotus Powder |q 58440/2 |goto 72.70,37.54
step
Enter the Mirror |q 58440/3 |goto 72.78,37.29
|tip Walk into the red swirling portal.
|tip Inside the building.
step
cast Door of Shadows##300728
|tip Place the green circle on the other side of barrier, where the spiked treasure chest is.
|tip Downstairs inside the building.
click Curator's Chest
collect Medallion of Avarice##174111 |q 58440/4 |goto 78.47,39.09
step
cast Door of Shadows##300728
|tip Place the green circle on the other side of barrier.
Escape the Protective Barrier |goto 78.13,38.74 < 10 |c |q 58440
step
Enter the Mirror |goto 77.82,38.43
|tip Walk into the red swirling portal.
|tip Inside the building.
Leave the Curator's Crypt |goto 72.73,37.47 < 10 |noway |c |q 58440
step
talk The Curator##160941
turnin Mirror, Mirror...##58440 |goto 72.74,37.64
accept Return to Sinfall##58444 |goto 72.74,37.64
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Return to Sinfall##58444 |goto Sinfall/0 51.80,37.61
step
Reach Renown Level 13 |condition covenant() == Venthyr and covenantrenown() >= 13
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Prince Renathal##158653
|tip Inside the building.
accept How to Wear Seven Medallions##61050 |goto 51.85,37.52
step
talk General Draven##161514
|tip Inside the building.
turnin How to Wear Seven Medallions##61050 |goto 44.51,46.52
accept Hidden Mirror##58530 |goto 44.51,46.52
step
Enter the cave |goto Bastion/0 51.38,31.59 < 7 |walk
use Laurent's Compact Looking Glass##180356
|tip Inside the cave.
Reveal the Hidden Mirror |q 58530/1 |goto Bastion/0 49.43,30.34
step
Watch the dialogue
talk General Draven##162213
|tip Inside the cave.
turnin Hidden Mirror##58530 |goto 49.66,30.16
accept A Tense Reunion##58555 |goto 49.66,30.16
step
Leave the cave |goto 51.38,31.59 < 7 |walk
Reach the Eternal Forge |q 58555/1 |goto 50.37,22.54
step
Watch the dialogue
talk General Draven##161526
turnin A Tense Reunion##58555 |goto 50.09,20.71
accept Right our Wrongs##58584 |goto 50.09,20.71
step
talk Mikanikos##160280
accept No Friend of Mine##58585 |goto 50.11,20.54
accept The Right Stuff##58586 |goto 50.11,20.54
step
Watch the dialogue
talk Theotar##161637
Tell him _"I am ready."_
Speak to Theotar |q 58584/1 |goto 50.14,20.35
stickystart "Collect_Purified_Metal"
step
Watch the dialogue
click Anima Siphon
|tip Theotar will make it appear.
Destroy the Anima Siphon |q 58584/2 |goto 50.43,18.32 |count 1
step
Watch the dialogue
click Anima Siphon
|tip Theotar will make it appear.
Destroy the Anima Siphon |q 58584/2 |goto 49.88,17.61 |count 2
step
Watch the dialogue
click Anima Siphon
|tip Theotar will make it appear.
Destroy the Anima Siphon |q 58584/2 |goto 50.23,17.47 |count 3
step
Watch the dialogue
click Anima Siphon
|tip Theotar will make it appear.
Destroy the Anima Siphon |q 58584/2 |goto 50.37,16.72 |count 4
step
Watch the dialogue
click Anima Siphon
|tip Theotar will make it appear.
Destroy the Anima Siphon |q 58584/2 |goto 51.59,17.88 |count 5
step
kill Famos##161704
collect Mikanikos' Tool Chest##174466 |q 58585/1 |goto 52.95,15.29
step
label "Collect_Purified_Metal"
Kill enemies around this area
collect Tainted Centurion Component##174465+ |n
use the Tainted Centurion Component##174465+
collect 5 Purified Metal##173880 |q 58586/1 |goto 51.60,17.95
step
talk Mikanikos##160280
turnin No Friend of Mine##58585 |goto 50.11,20.54
turnin The Right Stuff##58586 |goto 50.11,20.54
step
talk General Draven##161526
turnin Right our Wrongs##58584 |goto 50.09,20.71
step
Watch the dialogue
talk Mikanikos##160280
accept A Perfect Circle##58600 |goto 50.13,20.48
accept Phaestus, Genesis of Aeons##58603 |goto 50.13,20.48
step
Run up the stairs |goto 50.16,19.32 < 15 |only if walking
kill Overseer Atticus##160409
collect Phaestus, Genesis of Aeons##174061 |q 58603/1 |goto 49.00,15.54
step
Enter the building |goto 49.78,15.64 < 10 |walk
click Forge Materials+
|tip They look like metal and wooden treasure chests next to the wall on the ground around this area.
|tip It can be in any of the chests.
|tip You will be attacked or trapped if you choose the wrong chest.
|tip Inside the building.
collect Perfected Circlet Mold##174330 |q 58600/1 |goto 49.89,15.27
step
talk Mikanikos##160280
turnin A Perfect Circle##58600 |goto 50.13,20.47
turnin Phaestus, Genesis of Aeons##58603 |goto 50.13,20.47
accept Crown of the Harvesters##58630 |goto 50.13,20.47
step
click Anvil
Begin the Forging Process |q 58630/1 |goto 51.46,18.46
step
Watch the dialogue
Forge the Crown of the Harvesters |q 58630/2 |goto 51.46,18.46
step
talk Mikanikos##174587
turnin Crown of the Harvesters##58630 |goto 51.43,18.45
accept Heavy is the Head...##58656 |goto 51.43,18.45
step
click Crown of the Harvesters
Wear the Crown of the Harvesters |q 58656/1 |goto 51.46,18.45
stickystart "Test_The_Crown"
step
kill Operational Colossus##162123
|tip Use the abilities on your action bar.
Slay the Eastern Colossus |q 58656/3 |goto 53.08,16.71
step
kill Operational Colossus##170753
|tip Use the abilities on your action bar.
Slay the Northern Colossus |q 58656/4 |goto 51.05,15.43
step
kill Operational Colossus##170754
|tip Use the abilities on your action bar.
Slay the Western Colossus |q 58656/5 |goto 49.06,15.62
step
label "Test_The_Crown"
Kill enemies around this area
|tip Use the abilities on your action bar. |notinsticky
Test the Crown |q 58656/2 |goto 50.83,17.46
step
talk General Draven##161526
turnin Heavy is the Head...##58656 |goto 50.09,20.71
step
talk Mikanikos##160280
accept Citadel of Loyalty##60993 |goto 50.11,20.54
step
Run down the stairs and follow the road |goto 48.30,26.00 < 20 |only if walking
Run down the stairs |goto 27.10,30.42 < 15 |only if walking
Reach the Citadel of Loyalty |q 60993/1 |goto 24.29,29.84
step
Watch the dialogue
talk Mikanikos##171001
|tip He runs to this location.
turnin Citadel of Loyalty##60993 |goto 24.42,29.86
accept Lowering Their Defenses##60994 |goto 24.42,29.86
step
talk General Draven##170999
accept Disloyalty##60995 |goto 24.30,29.88
stickystart "Slay_Citadel_Forsworn"
step
Run down the stairs |goto 23.35,27.77 < 15 |only if walking
click Forsworn Barrier Source
Drain the Southern Barrier Source |q 60994/1 |goto 22.71,24.95
step
click Forsworn Barrier Source
Drain the Eastern Barrier Source |q 60994/3 |goto 24.78,23.20
step
Run up the stairs |goto 22.89,25.19 < 15 |only if walking
click Forsworn Barrier Source
Drain the Northern Barrier Source |q 60994/2 |goto 24.42,24.02
step
label "Slay_Citadel_Forsworn"
Kill enemies around this area
|tip Use the "Assist" ability to kill them easier.
|tip It appears as a button on the screen.
Slay #15# Citadel Forsworn |q 60995/1 |goto 25.21,25.36
step
talk Mikanikos##171001
turnin Lowering Their Defenses##60994 |goto 24.41,29.86
turnin Disloyalty##60995 |goto 24.41,29.86
step
Watch the dialogue
talk General Draven##171147
|tip He flies to this location.
accept Face Your Fears##60996 |goto 24.28,29.66
step
talk General Draven##171147
Tell him _"I am ready."_
Begin Flying with General Draven |goto 24.28,29.66 > 20 |c |q 60996
step
Watch the dialogue
Reach the Temple of Loyalty |q 60996/1 |goto 21.07,22.87 |notravel
step
Use the _"Blessing of Loyalty"_ ability
|tip It appears as a button on the screen.
Watch the dialogue
Purify the Crown of the Harvesters |q 60996/2 |goto 20.35,22.88
step
kill Echo of Denathrius##171160 |q 60996/3 |goto 20.50,22.88
step
talk General Draven##171175
turnin Face Your Fears##60996 |goto 21.12,22.87
accept The Prince's New Crown##59233 |goto 21.12,22.87
step
Return to Sinfall |q 59233/2 |goto Sinfall/0 51.80,37.63
step
talk Prince Renathal##158653
|tip Inside the building.
turnin The Prince's New Crown##59233 |goto Sinfall/0 51.80,37.63
step
Reach Renown Level 17 |condition covenant() == Venthyr and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Prince Renathal##158653
|tip Inside the building.
accept Confronting Sin##61077 |goto Sinfall/0 51.80,37.63
step
talk The Accuser##165291
|tip Downstairs inside the building.
turnin Confronting Sin##61077 |goto Sinfall/1 56.05,78.53
accept Someone Worth Saving##58382 |goto Sinfall/1 56.05,78.53
step
talk Sinfall Executor##169625
|tip Downstairs inside the building.
Tell him _"Release Kael'thas Sunstrider."_
Click Here After Telling Him to Release |confirm |goto 43.79,23.18 |q 58382
step
talk Sinfall Executor##169625
|tip Downstairs inside the building.
Tell him _"Release Kael'thas Sunstrider."_
Release Kael'thas Sunstrider |q 58382/1 |goto 48.20,24.27
step
Watch the dialogue
|tip Downstairs inside the building.
talk The Accuser##161158
turnin Someone Worth Saving##58382 |goto 46.42,32.17
accept The Many Sins of Kael'thas Sunstrider##58383 |goto 46.42,32.17
step
talk The Accuser##161158
|tip Downstairs inside the building.
Tell her _"Begin your inquisition."_
Begin the Ritual of Absolution |q 58383/1 |goto 46.42,32.17
step
Watch the dialogue
|tip Downstairs inside the building.
click Kael'thas Sunstrider
Identify the Sin of Kael'thas |q 58383/2 |goto 40.12,31.44 |count 1
step
Watch the dialogue
|tip Downstairs inside the building.
click Kael'thas Sunstrider
Identify the Sin of Kael'thas |q 58383/2 |goto 43.83,26.53 |count 2
step
Watch the dialogue
|tip Downstairs inside the building.
click Kael'thas Sunstrider
Identify the Sins of Kael'thas |q 58383/2 |goto 41.08,26.08 |count 5
step
talk The Accuser##161158
|tip Downstairs inside the building.
turnin The Many Sins of Kael'thas Sunstrider##58383 |goto 46.42,32.16
accept In the Shadow of our Failures##58426 |goto 46.42,32.16
step
Ride the elevator up |goto Revendreth/0 42.08,47.11 < 15 |only if walking
talk The Accuser##161208
turnin In the Shadow of our Failures##58426 |goto Revendreth/0 42.30,47.56
accept Dredgers Left Behind##58384 |goto Revendreth/0 42.30,47.56
accept Learning to Sacrifice##58385 |goto Revendreth/0 42.30,47.56
step
_Next to you:_
talk Kael'thas Sunstrider
accept Use My Strengths##58386
stickystart "Rescue_Darkfall_Captives"
step
clicknpc Dormant Legionnaire##161598
Watch the dialogue
Animate the Legionnaires |q 58385/1 |goto 44.93,48.79
step
clicknpc Vrednic##161225
Watch the dialogue
Animate Vrednic |q 58385/3 |goto 43.35,53.82
step
Enter the building |goto 42.55,52.66 < 10 |only if walking
clicknpc Dormant Messenger##161232
|tip Upstairs, on the balcony of the building.
Watch the dialogue
Animate the Messengers |q 58385/2 |goto 41.69,52.39
step
kill Usurper Simona##161240
|tip Outside, behind the building.
|tip She will eventually become stunned and escape.
Watch the dialogue
Confront Usurper Simona |q 58386/1 |goto 41.05,54.75
step
label "Rescue_Darkfall_Captives"
Rescue #10# Darkwall Captives |q 58384/1 |goto 43.78,50.94
|tip Walk near Darkwall Captives.
|tip They look like small friendly NPC's on the ground around this area.
|tip They will run to safety.
|tip If they attack a nearby enemy, help them kill it.
step
talk The Accuser##161278
turnin Dredgers Left Behind##58384 |goto 43.87,51.41
turnin Learning to Sacrifice##58385 |goto 43.87,51.41
turnin Use My Strengths##58386 |goto 43.87,51.41
accept We Each Must Carry Our Own Sins##58387 |goto 43.87,51.41
step
talk The Accuser##161278
Tell her _"Begin the ritual of extraction."_
Speak with the Accuser to Begin the Ritual |q 58387/1 |goto 43.87,51.41
step
Watch the dialogue
Complete the Ritual of Extraction |q 58387/2 |goto 43.87,51.41
step
talk The Accuser##161278
turnin We Each Must Carry Our Own Sins##58387 |goto 43.87,51.41
accept Continued Care of Kael'thas##58443 |goto 43.87,51.41
step
Ride the elevator down |goto 46.29,50.84 < 15 |only if walking
talk The Accuser##161421
turnin Continued Care of Kael'thas##58443 |goto 46.45,51.49
accept Blackbale Betrayers##58388 |goto 46.45,51.49
stickystart "Kill_Blackbale_Overseers"
step
Kill enemies around this area
accept Maldraxxian Weapons##58389 |goto 47.53,53.37
|tip You will eventually automatically accept this quest after looting.
step
_Next to you:_
talk Kael'thas Sunstrider
accept There's Always a Paper Trail##58518
stickystart "Collect_Maldraxxian_Weapons"
step
kill Lord Blackbale##161511
collect Orders from the Tithelord##174278 |q 58518/1 |goto 51.15,55.62
step
label "Kill_Blackbale_Overseers"
kill 4 Blackbale Overseer##161488 |q 58388/1 |goto 49.88,55.67
step
label "Collect_Maldraxxian_Weapons"
Kill enemies around this area
collect 8 Maldraxxian Weapon##174211 |q 58389/1 |goto 49.88,55.67
step
talk The Accuser##161421
turnin Blackbale Betrayers##58388 |goto 46.45,51.49
turnin Maldraxxian Weapons##58389 |goto 46.45,51.49
turnin There's Always a Paper Trail##58518 |goto 46.45,51.49
step
_Next to you:_
Watch the dialogue
talk Kael'thas Sunstrider##162077
accept Reconnaissance... for my, uh, Recovery##58391
step
Enter the building |goto 61.31,59.78 < 7 |c |q 58391
step
click Locked Door
|tip Downstairs inside the building.
Watch the dialogue
Find the Tithelord |q 58391/1 |goto 61.17,60.41
step
click The Tithelord's Carriage
|tip Outside.
Stowaway on the Tithelord's Carriage |q 58391/2 |goto 61.51,60.12
step
Watch the dialogue
Discover the Tithelord's Plan |q 58391/3 |goto 69.94,60.20 |notravel
step
talk Kael'thas Sunstrider##161572
turnin Reconnaissance... for my, uh, Recovery##58391 |goto 69.89,59.96
accept Death's End Destruction##58392 |goto 69.89,59.96
accept Strategic Executions##58393 |goto 69.89,59.96
stickystart "Disrupt_Deaths_End"
step
kill Heftor##161246 |q 58393/1 |goto 77.16,61.01
step
kill Stacka##161257 |q 58393/2 |goto 80.40,64.46
step
kill Big Shiny##161248 |q 58393/3 |goto 80.79,57.64
step
_Next to you:_
talk Kael'thas Sunstrider##161572
turnin Strategic Executions##58393
step
label "Disrupt_Deaths_End"
Kill enemies around this area
click Maldraxxi Anima Crystal+
|tip They look like large floating green crystals around this area.
Disrupt Death's End |q 58392/1 |goto 75.92,60.61
|tip Fill up the blue bar in the quest tracker area.
step
_Next to you:_
talk Kael'thas Sunstrider##161572
turnin Death's End Destruction##58392
accept Lady Ouix'Ara##58394
step
kill Lady Ouix'Ara##161770 |q 58394/1 |goto 78.85,62.82
|tip Up on the platform.
step
_Next to you:_
talk Kael'thas Sunstrider##161572
turnin Lady Ouix'Ara##58394
accept Enough Vengeance For One Day##58395
step
talk Prince Renathal##158653
|tip Inside the building.
turnin Enough Vengeance For One Day##58395 |goto Sinfall/0 51.77,37.58
step
Reach Renown Level 20 |condition covenant() == Venthyr and covenantrenown() >= 20
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Prince Renathal##158653
|tip Inside the building.
accept Stonevigil Unrest##57727 |goto Sinfall/0 51.77,37.58
step
Cross the bridge |goto Revendreth/0 60.64,62.39 < 10 |only if walking
talk Prince Renathal##167380
turnin Stonevigil Unrest##57727 |goto Revendreth/0 56.32,66.72
accept Fangs and Minds##57772 |goto Revendreth/0 56.32,66.72
step
talk Baroness Draka##167381
accept An Unwelcome Incursion##57771 |goto 56.34,66.59
accept Third Talon Vartox##60145 |goto 56.34,66.59
stickystart "Inspire_Stonevigil_Citizens"
stickystart "Drain_Stoneborn_Anima"
step
Kill enemies around this area
|tip You will eventually automatically accept this quest.
accept Disrupting the Chain##60265 |goto 56.47,69.10
step
Enter the building |goto 56.30,69.73 < 7 |walk
kill Third Talon Vartox##158361 |q 60145/1 |goto 56.57,68.88
|tip Downstairs inside the building.
step
click Manor Supply Carriage
Destroy the Manor Carriage |q 60265/2 |goto 56.75,71.29
step
click Darkhaven Supply Carriage
Destroy the Darkhaven Carriage |q 60265/1 |goto 58.50,68.57
step
label "Drain_Stoneborn_Anima"
Kill enemies around this area
|tip You can find more inside the buildings around this area. |notinsticky
Drain #12# Stoneborn Anima |q 57771/1 |goto 57.63,70.09
step
click Depleted Anima Well
Fill the Depleted Anima Well |q 57771/2 |goto 58.31,69.28
step
label "Inspire_Stonevigil_Citizens"
use Prince Renathal's Decree##178213
|tip Use it next to Stonevigil Citizens.
|tip They look like neutral venthyr NPC's standing on the ground around this area.
|tip They can also be inside the buildings around this area.
Inspire #8# Stonevigil Citizens |q 57772/1 |goto 57.63,70.09
step
Follow the path |goto 56.95,69.92 < 20 |only if walking
talk Baroness Draka##167381
turnin An Unwelcome Incursion##57771 |goto 56.34,66.59
turnin Third Talon Vartox##60145 |goto 56.34,66.59
step
talk Prince Renathal##167380
turnin Fangs and Minds##57772 |goto 56.32,66.73
turnin Disrupting the Chain##60265 |goto 56.32,66.73
step
Watch the dialogue
talk Baroness Draka##167381
accept After Them!##60183 |goto 56.34,66.59
step
clicknpc Deathfang##167382
Ride with Deathfang |invehicle |goto 56.34,66.32 |q 60183
step
Watch the dialogue
Chase the Carriage |q 60183/1 |goto 61.54,69.35 |notravel
step
kill Provisioner Kraus##167550 |q 60183/2 |goto 61.62,69.31
step
talk Prince Renathal##167620
|tip He floats to this location.
turnin After Them!##60183 |goto 61.60,69.65
accept To the Estate##57729 |goto 61.60,69.65
step
Watch the dialogue
|tip Follow Prince Renathal as he travels.
talk Prince Renathal##167689
turnin To the Estate##57729 |goto 71.92,68.86
accept The Tithelord##57646 |goto 71.92,68.86
step
talk Prince Renathal##167689
Tell him _"I am ready."_
Begin Following Prince Renathal |goto 71.92,68.86 > 15 |c |q 57646
step
Watch the dialogue
|tip Follow Prince
kill The Tithelord##158197
|tip He will eventually escape.
Click Here After He Escapes |confirm |goto 74.87,68.66 |q 57646
step
kill The Tithelord##158197
|tip He will eventually escape.
Click Here After He Escapes |confirm |goto 76.04,65.96 |q 57646
step
Watch the dialogue
kill The Tithelord##158197
collect Medallion of Envy##173976 |q 57646/1 |goto 77.60,70.21
step
talk Prince Renathal##158653
|tip Inside the building.
turnin The Tithelord##57646 |goto Sinfall/0 51.80,37.56
step
Reach Renown Level 22 |condition covenant() == Venthyr and covenantrenown() >= 22
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Laurent##158038
accept An Unfortunate Situation##57531 |goto Revendreth/0 26.42,48.95
step
kill Costel##158165
|tip Inside the building.
Recover Laurent's Belongings |q 57531/1 |goto 29.72,48.72
step
talk Laurent##158038
turnin An Unfortunate Situation##57531 |goto 26.43,48.95
accept Foraging for Fragments##57532 |goto 26.43,48.95
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/1 |goto 25.71,48.57
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/2 |goto 25.68,48.54
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/3 |goto 25.53,47.34
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/4 |goto 25.51,47.39
step
Watch the dialogue
|tip Follow Laurent as he walks.
|tip He walks to this location.
Follow Laurent |q 57532/5 |goto 24.98,47.98
step
click Mirror Fragment
collect Mirror Fragment##172085 |q 57532/6 |goto 25.00,48.04
step
Watch the dialogue
talk Laurent##158205
|tip He walks to this location.
turnin Foraging for Fragments##57532 |goto 24.25,49.41
accept Moving Mirrors##57571 |goto 24.25,49.41
step
click Mirror Trap+
|tip There are 3 of them surrounding Simone.
Free Simone |q 57571/1 |goto 24.07,49.67
step
Watch the dialogue
talk Simone##158088
|tip She walks to this location.
turnin Moving Mirrors##57571 |goto 24.22,49.48
accept Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
accept When Only Ash Remains##57534 |goto 24.25,49.42
stickystart "Kill_Ashen_Ravagers"
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 23.02,49.52 |count 1
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.20,48.11 |count 2
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 21.86,50.38 |count 3
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.88,50.00 |count 4
step
click Mirror Trap+
|tip There are 3 of them surrounding the Blistering Outcast.
Free the Blistering Outcast |q 57533/1 |goto 22.51,52.16 |count 5
step
label "Kill_Ashen_Ravagers"
kill 10 Ashen Ravager##164524 |q 57534/1 |goto 23.21,49.46
step
talk Simone##158088
turnin Light Punishment##57533 |goto 24.22,49.48
step
talk Laurent##158205
turnin When Only Ash Remains##57534 |goto 24.25,49.41
accept Escaping the Master##57535 |goto 24.25,49.41
step
talk Simone##158088
accept We Need More Power##59427 |goto 24.22,49.49
stickystart "Collect_Anima_59427"
step
Kill Shrouded enemies around this area
|tip You can find more inside the buildings around this area.
collect 10 Mirror Fragment##172220 |q 57535/1 |goto 23.79,53.09
step
label "Collect_Anima_59427"
click Anima Stores+
|tip They look like small metal burnt out lanterns on the ground around this area.
|tip You can find more inside the buildings around this area.
|tip Fill up the blue bar in the quest tracker area.
Collect Anima |q 59427/1 |goto 23.79,53.09
step
talk Simone##158088
turnin We Need More Power##59427 |goto 24.22,49.48
step
talk Laurent##158205
turnin Escaping the Master##57535 |goto 24.25,49.41
accept Mirror Making, Not Breaking##57536 |goto 24.25,49.41
step
Watch the dialogue
Follow Laurent and Simone |q 57536/1 |goto 24.80,50.26
step
talk Laurent##164420
Tell him _"I am ready."_
Speak to Laurent |q 57536/2 |goto 24.80,50.26
step
Kill the enemies that attack in waves
|tip Fill up the blue bar in the quest tracker area.
Defend Laurent and Simone |q 57536/3 |goto 24.73,50.38
step
talk Laurent##158505
turnin Mirror Making, Not Breaking##57536 |goto 24.80,50.26
step
talk Prince Renathal##158653
|tip Inside the building.
accept Mirror to Maldraxxus##58406 |goto Sinfall/0 51.82,37.54
step
talk Laurent##170532
turnin Mirror to Maldraxxus##58406 |goto Revendreth/0 27.27,40.39
step
talk General Draven##170543
accept The Medallion of Dominion##58407 |goto 27.42,40.33
step
Enter the Ornate Mirror
|tip Walk into the swirling red portal.
Teleport to Maldraxxus |scenariostart |goto 27.27,40.30 |q 58407
step
kill Adept Necromancer##162096+
|tip Avoid the green tornados and circles on the ground.
|tip Upstairs inside the building.
|tip You can find more downstairs inside the building.
|tip You will have to jump to get downstairs.
Watch the dialogue
Obtain the Information |scenariogoal 1/48394 |goto Maldraxxus Venthyr Scenario/0 74.85,33.65 |q 58407
step
Locate General Draven |goto 73.61,33.81 < 15 |c |q 58407
step
Watch the dialogue
talk General Draven##162226
Fly with General Draven |goto 73.61,33.81 > 15 |c |q 58407
step
Kill enemies around this area
|tip They are flying in the air.
|tip Use the abilities on your action bar.
|tip Fly near the large floating crystals around this area to heal General Draven.
Clear the Sky of #30# Enemies |scenariogoal 2/48395 |goto 69.68,29.89 |q 58407
step
Watch the dialogue
Speak with Your Allies on the Ground About How to Proceed |scenariogoal 3/48396 |goto 71.79,33.64 |q 58407 |notravel
step
click Anima Crystal
Reanimate the Allies |scenariogoal 4/48414 |goto 70.74,32.76 |q 58407 |count 4
step
click Anima Crystal
Reanimate the Allies |scenariogoal 4/48414 |goto 69.74,34.68 |q 58407 |count 8
step
click Anima Crystal
Reanimate the Ally |scenariogoal 4/48414 |goto 68.79,33.30 |q 58407 |count 9
step
click Anima Crystal
Reanimate the Ally |scenariogoal 4/48414 |goto 69.30,32.42 |q 58407 |count 10
step
click Anima Crystal
Reanimate the Ally |scenariogoal 4/48414 |goto 70.15,31.24 |q 58407 |count 11
step
click Anima Crystal
Reanimate the Ally |scenariogoal 4/48414 |goto 71.28,31.46 |q 58407 |count 12
step
Use the _"Call General Draven"_ ability
|tip Use it repeatedly on Maw Infernous as you fight.
|tip It appears as a button on the screen.
kill Maw Infernous##163213 |scenariogoal 5/47891 |goto 68.17,29.79 |q 58407
step
Enter the Portal |goto 68.15,29.84
|tip Walk into the swirling portal.
Teleport to Kel'Thuzad |goto 73.67,33.55 < 10 |noway |c |q 58407
step
Watch the dialogue
|tip Inside the building.
kill Kel'Thuzad##173066
Recover the Medallion of Dominion from Kel'Thuzad |scenariogoal 6/48399 |goto 74.58,33.65 |q 58407
step
Return to Sinfall |goto Revendreth/0 27.46,40.60 < 10 |noway |c |q 58407
step
talk Prince Renathal##158653
|tip Inside the building.
turnin The Medallion of Dominion##58407 |goto Sinfall/0 51.76,37.62
step
talk General Draven##161977
|tip Inside the building.
accept A Stalwart Ally##59325 |goto 46.12,14.73
step
talk General Draven##164856
|tip Inside the building.
Soulbind with General Draven |q 59325/1 |goto 43.69,17.51
step
talk General Draven##172004
|tip Inside the building.
turnin A Stalwart Ally##59325 |goto 43.65,17.49
step
Reach Renown Level 40 |condition covenant() == Venthyr and covenantrenown() >= 40
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
_Congratulations!_
You Reached Renown Level 40.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Necrolord Questline",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Necrolord\n"..
"\ncovenant quests and storyline.\n",
condition_suggested=function() return level >= 60 end,
startlevel=60.0,
endlevel=70.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Reach Level 60 |ding 60
|tip You must be level 60 before you can start your covenant questline.
|tip Use the Leveling guides to accomplish this.
step
Complete the "Choosing Your Purpose" Quest in Oribos |complete completedanyq(57878,62000) |future
|tip Use the "Shadowlands Intro & Main Questline" guide to accomplish this.
step
talk Tal-Inara##159478
accept Report to Mevix##63212 |goto Oribos/0 38.90,69.98
step
talk Secutor Mevix##171821
turnin Report to Mevix##63212 |goto 42.97,74.21
accept Taking The Seat##58609 |goto 42.97,74.21
step
Report to Baroness Draka in the Seat of the Primus |q 58609/2 |goto Seat of the Primus/0 49.51,21.81
step
talk Baroness Draka##158453
|tip Inside the building.
turnin Taking The Seat##58609 |goto 49.51,21.81
accept Welcome To Our House##59556 |goto 49.51,21.81
step
talk Baroness Draka##158453
|tip Inside the building.
Tell her _"I am ready."_
Speak with Baroness Draka |q 59556/1 |goto 49.49,21.82
step
Watch the dialogue
|tip Follow Baroness Draka as she walks.
|tip She eventually walks to this location.
|tip Inside the building.
Follow Baroness Draka |q 59556/2 |goto 49.69,43.84
step
Watch the dialogue
|tip Stand in the green circle on the ground.
|tip Inside the building.
Stand Before Draka |q 59556/3 |goto 49.68,42.29
step
Use the _"Raise the Runeblade"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
Join the Necrolord Covenant |q 59556/4 |goto 49.68,42.29
step
talk Baroness Draka##165182
|tip Inside the building.
turnin Welcome To Our House##59556 |goto 49.70,43.81
accept Power of the Primus##61359 |goto 49.70,43.81
step
Stand Before the Altar of the Primus |q 61359/1 |goto 49.68,54.66
|tip Inside the building.
step
Use the _"Power of the Primus"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
Receive the Power of the Primus |q 61359/2 |goto 49.68,54.66
step
Watch the dialogue
talk Baroness Draka##165182
|tip Inside the building.
turnin Power of the Primus##61359 |goto 49.70,43.84
accept A Hero of Great Renown##62833 |goto 49.70,43.84
step
talk Elspeth Larink##175998
|tip Inside the building.
turnin A Hero of Great Renown##62833 |goto 46.43,40.20
accept Glorious Ambition##62834 |goto 46.43,40.20
step
talk Elspeth Larink##175998
|tip Inside the building.
Ask her _"What is my Renown with the Necrolords?"_
Examine Your Renown |q 62834/1 |goto 46.43,40.20
step
talk Elspeth Larink##175998
|tip Inside the building.
turnin Glorious Ambition##62834 |goto 46.43,40.20
accept A Call to Service##62835 |goto 46.43,40.20
step
talk Tapani Nightwish##161994
|tip Inside the building.
home Seat of the Primus |goto 46.89,30.01 |q 62835
step
talk Sergeant Romark##158339
|tip Inside the building.
turnin A Call to Service##62835 |goto 47.63,28.74
accept A Calling in Maldraxxus##62694 |goto 47.63,28.74
accept Anima is Strength##62839 |goto 47.63,28.74
step
talk Arkadia Moa##161909
|tip Inside the building.
turnin Anima is Strength##62839 |goto 52.70,38.31
accept Into the Reservoir##62840 |goto 52.70,38.31
step
Complete #3# World Quests in Maldraxxus |q 62694/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
step
talk Sergeant Romark##158339
|tip Inside the building.
turnin A Calling in Maldraxxus##62694 |goto 47.63,28.74
step
use the Tribute of the Ambitious##181732
|tip You should have this from turning in the "A Calling in Maldraxxus" quest.
|tip You will be given an item worth 500 Anima.
|tip If you don't have this, complete world quests that reward Anima items, until you have 375 Anima worth of items.
Receive the Rewards |condition itemcount(181732) == 0 |q 62840 |future
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Click the "Deposit" button.
Deposit #375# Anima |q 62840/2 |goto 52.70,38.31
step
talk Arkadia Moa##161909
|tip Inside the building.
turnin Into the Reservoir##62840 |goto 52.70,38.31
accept Opportunity Strikes##61397 |goto 52.70,38.31
step
talk Osbourne Black##167748
|tip Inside the building.
turnin Opportunity Strikes##61397 |goto 46.64,42.35
accept The Soul Contact##62843 |goto 46.64,42.35
step
talk Ve'nari##162804
turnin The Soul Contact##62843 |goto The Maw/0 46.91,41.69
accept Setting the Ground Rules##62882 |goto The Maw/0 46.91,41.69
step
talk Ve'nari##162804
Ask her _"What are your ground rules for working together?"_
Watch the dialogue
Set the Ground Rules with Ve'nari |q 62882/1 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Setting the Ground Rules##62882 |goto 46.91,41.69
accept Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
stickystart "Collect_Granules_of_Stygia_60287"
step
kill Stone Prison##176145+
|tip They look like pyramids made of rocks on the ground around this area.
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap as white ghost icons.
click Soul+
|tip They look like white spirits that float out of the cages and stone prisons.
|tip You can also click Souls that other players free.
Take #5# Souls into the Soulkeeper |q 60287/1 |goto 40.16,42.42
step
label "Collect_Granules_of_Stygia_60287"
Kill enemies around this area
kill Stone Prison##176145+								|notinsticky
|tip They look like pyramids made of rocks on the ground around this area.		|notinsticky
click Soul Cage+									|notinsticky
|tip They look like tall grey metal cages on the ground around this area.		|notinsticky
|tip They will appear on your minimap as white ghost icons.				|notinsticky
click Soul+										|notinsticky
|tip They look like white spirits that float out of the cages and stone prisons.	|notinsticky
|tip You can also click Souls that other players free.					|notinsticky
collect 60 Granule of Stygia##180852 |q 60287/2 |goto 40.16,42.42
step
Follow the path down |goto 44.60,41.08 < 15 |only if walking
talk Ve'nari##162804
buy 1 Cypher of Relocation##180817 |q 60287/4 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin Rule 1: Have an Escape Plan##60287 |goto 46.91,41.69
accept Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 47.19,43.16 |count 1
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.41,41.84 |count 2
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 48.19,40.20 |count 3
step
click Soul Ward
Reinforce the Soul Ward |q 61355/1 |goto 46.93,39.48 |count 4
step
talk Ve'nari##162804
turnin Rule 2: Keep a Low Profile##61355 |goto 46.91,41.69
accept Rule 3: Trust is Earned##60289 |goto 46.91,41.69
step
click Signaling Beacon
Place the Signaling Beacon |q 60289/1 |goto 34.98,47.68
step
click Baine's Mace##364498
|tip You will be attacked.
collect Bloodhoof Warmace##184284 |q 60289/2 |goto 33.46,49.06
step
kill Tower Inquisitor##171626 |q 60289/3 |goto 33.46,49.06
step
use the Cypher of Relocation##180817
Return to Ve'nari |goto 46.22,41.25 < 10 |c |q 60289
step
talk Ve'nari##162804
turnin Rule 3: Trust is Earned##60289 |goto 46.91,41.69
accept Hopeful News##62837 |goto 46.91,41.69
step
talk Highlord Bolvar Fordragon##164079
turnin Hopeful News##62837 |goto Oribos/0 39.94,68.61
accept Return to Draka##62844 |goto Oribos/0 39.94,68.61
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Return to Draka##62844 |goto Seat of the Primus/0 49.75,50.68
accept Bringing It All Together##62845 |goto Seat of the Primus/0 49.75,50.68
step
talk Arkadia Moa##161909
|tip Inside the building.
turnin Bringing It All Together##62845 |goto 52.72,38.30
accept Sanctum Improvements##62846 |goto 52.72,38.30
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Choose whichever upgrade you like best, it doesn't matter, because you will eventually unlock them all over time.
|tip Click the "Activate" button.
Start a Sanctum Upgrade |q 62846/1 |goto 52.72,38.30
step
talk Arkadia Moa##161909
|tip Inside the building.
turnin Sanctum Improvements##62846 |goto 52.72,38.30
accept Collective Soul##59596 |goto 52.72,38.30
step
talk Plague Deviser Marileth##161904
|tip Inside the building.
turnin Collective Soul##59596 |goto 38.90,32.28
accept Come On, We're Simpatico!##59597 |goto 38.90,32.28
step
talk Plague Deviser Marileth##165333
|tip Inside the building.
Soulbind with Marileth |q 59597/1 |goto 38.90,32.28
step
talk Plague Deviser Marileth##161904
|tip Inside the building.
turnin Come On, We're Simpatico!##59597 |goto 38.89,32.28
accept A Journey Made Together##61388 |goto 38.89,32.28
step
click Forge of Bonds
|tip Follow the instructions on the screen, then click the Activate button.
|tip Inside the building.
Empower the Soulbind |q 61388/1 |goto 38.09,34.13
step
talk Plague Deviser Marileth##161904
|tip Inside the building.
turnin A Journey Made Together##61388 |goto 38.89,32.25
accept Conduits, What Are They For?##62848 |goto 38.89,32.25
step
click Forge of Bonds
|tip Use the 3 conduits in your bags.
|tip The conduits are different, depending on your class.
|tip Inside the building.
Add the Conduits to the Forge of Bonds |q 62848/1 |goto 38.09,34.13
step
click Forge of Bonds
|tip Look at the powers down the tree to figure out the path you want to take.
|tip Choose the conduit that leads to unlocking the power you like best.
|tip Inside the building.
Apply the Conduit to Plague Deviser Marileth |q 62848/2 |goto 38.09,34.13
step
talk Plague Deviser Marileth##161904
|tip Inside the building.
turnin Conduits, What Are They For?##62848 |goto 38.89,32.25
accept No Rest For the Dead##59609 |goto 38.89,32.25
step
talk Baroness Draka##161907
|tip Inside the building.
turnin No Rest For the Dead##59609 |goto 49.77,50.68
accept The Highlord Calls##63032 |goto 49.77,50.68
step
talk Rathan##162222
|tip Inside the building.
accept Rebellious Souls##58665 |goto 47.97,50.47
step
talk Highlord Bolvar Fordragon##164079
turnin The Highlord Calls##63032 |goto Oribos/0 39.94,68.59
step
talk Baroness Draka##161907
|tip Inside the building.
accept Securing the House##62448 |goto Seat of the Primus/0 49.77,50.68
step
Reach Renown Level 5 |q 62448/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Securing the House##62448 |goto 49.77,50.68
accept Enemy at the Door##59555 |goto 49.77,50.68
step
clicknpc Ragewing##165125
Ride Ragewing |q 59555/1 |goto Maldraxxus/0 52.89,67.73
stickystart "Slay_Enemies_59555"
step
kill Siege Ballista##165124+
|tip Use the abilities on your action bar.
Destroy #10# Siege Ballista |q 59555/3 |goto 50.39,59.75
step
label "Slay_Enemies_59555"
Kill enemies around this area
|tip Use the abilities on your action bar. |notinsticky
Slay #60# Enemies |q 59555/2 |goto 50.38,64.57
step
Watch the dialogue
Return to the Ground |outvehicle |goto 52.72,67.86 |q 59555
step
talk Baroness Draka##161907
turnin Enemy at the Door##59555 |goto Seat of the Primus/0 49.77,50.68
accept Eyes on the Problem##58007 |goto 49.77,50.68
step
talk Baroness Vashj##161985
Ask her _"What's your plan?"_
Speak with Vashj |q 58007/1 |goto 50.43,51.52
step
talk Baroness Vashj##164619
turnin Eyes on the Problem##58007 |goto Maldraxxus/0 50.82,24.49
accept Whisper of Hope##57649 |goto 50.82,24.49
accept Prying Eyes##59265 |goto 50.82,24.49
stickystart "Collect_Betrayers_Eyes"
step
use the Mark of Vashj##172371
|tip Use it on Wary Survivors.
|tip They look like friendly spider NPC's on the ground around this area.
Rally #5# Survivors with the Mark of Vashj |q 57649/1 |goto 50.32,21.37
step
label "Collect_Betrayers_Eyes"
Kill enemies around this area
collect 20 Betrayer's Eye##175795 |q 59265/1 |goto 50.32,21.37
step
talk Whisperer Vyn##160518
turnin Whisper of Hope##57649 |goto 49.73,17.85
turnin Prying Eyes##59265 |goto 49.73,17.85
accept Extra Limbs##61226 |goto 49.73,17.85
step
talk Baroness Vashj##164646
accept The Other Foot##61227 |goto 49.91,17.86
step
talk Khaliiq##171875
accept Outside Influence##61230 |goto 50.02,17.92
step
talk Ansid the Mechanic##159814
turnin The Other Foot##61227 |goto 48.64,18.58
accept Rage Against the Cage##61335 |goto 48.64,18.58
step
kill Toc the Incessant##159636
collect Toc's Key##173312 |q 61335/1 |goto 48.47,19.31
step
click Prisoner Cage
Release Ansid |q 61335/2 |goto 48.64,18.59
step
talk Ansid the Mechanic##159814
turnin Rage Against the Cage##61335 |goto 49.63,18.10
step
Follow the path up |goto 51.34,14.99 < 10 |only if walking
talk Navigator Xennir##158604
turnin Extra Limbs##61226 |goto 52.01,16.95
accept No Friend Left Behind##57644 |goto 52.01,16.95
step
talk Khaliiq##174343
turnin Outside Influence##61230 |goto 54.22,16.27
accept Call In a Favor##61252 |goto 54.22,16.27
step
talk Khaliiq##174343
turnin Outside Influence##61230 |goto 54.22,16.27
accept Call In a Favor##61252 |goto 54.22,16.27
step
use the Beacon Trigger##181162
Summon Helmsman Caliroux |q 61252/1 |goto 54.13,16.26
step
kill Helmsman Caliroux##171941
Defeat Helmsman Caliroux |q 61252/2 |goto 54.13,16.26
step
kill Boneweave Ambusher##159737+
collect 6 Venomous Solvent##181237 |q 57644/1 |goto 54.76,19.98
step
Follow the path up |goto 56.19,19.34 < 10 |only if walking
clicknpc Twigin##160571
Rescue Twigin |q 57644/2 |goto 56.81,20.01
step
Follow the path |goto 52.02,15.18 < 15 |only if walking
talk Navigator Xennir##158604
Ask him _"Will you offer your aid?"_
Return to Xennir |q 57644/3 |goto 52.01,16.95
step
talk Navigator Xennir##158604
turnin No Friend Left Behind##57644 |goto 49.96,18.04
step
talk Khaliiq##171875
turnin Call In a Favor##61252 |goto 50.02,17.92
step
talk Whisperer Vyn##158529
accept See What You've Done##61323 |goto 49.73,17.85
step
kill Gorgantus the Gutter##171814 |q 61323/1 |goto 50.37,15.71
|tip Your allies will help you fight.
step
talk Baroness Vashj##164619
|tip She walks to this location.
turnin See What You've Done##61323 |goto 50.21,15.56
step
talk Whisperer Vyn##160518
accept The Impossible Plan##57648 |goto 50.71,15.57
step
talk Baroness Draka##161907
|tip Inside the building.
turnin The Impossible Plan##57648 |goto Seat of the Primus/0 49.75,50.70
step
talk Baroness Draka##161907
|tip Inside the building.
accept Eyes to the Sky##62169 |goto 49.75,50.70
step
Reach Renown Level 8 |q 62169/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Eyes to the Sky##62169 |goto Seat of the Primus/0 49.75,50.70
accept The Maldraxxian Job##57778 |goto Seat of the Primus/0 49.75,50.70
step
Follow the path |goto Maldraxxus/0 50.56,17.79 < 20 |only if walking
talk Whisperer Vyn##160518
turnin The Maldraxxian Job##57778 |goto Maldraxxus/0 50.72,15.58
accept I'll Only Say This Once##61485 |goto Maldraxxus/0 50.72,15.58
step
talk Whisperer Vyn##160518
Ask her _"What's the plan?"_
Review the Plan with Whisperer Vyn |q 61485/1 |goto 50.72,15.58
step
clicknpc Twigin##172566
Tell him _"I'm ready. Take me to the foundry."_
Fly with Twigin |q 61485/2 |goto 50.87,15.29
step
Fly to the Foundry |goto 31.50,48.94 < 10 |c |q 61485 |notravel
step
talk Navigator Xennir##172574
turnin I'll Only Say This Once##61485 |goto 31.19,49.39
accept Follow Me##61518 |goto 31.19,49.39
step
talk Navigator Xennir##172574
Tell him _"Let's sneak together."_
Talk with Navigator Xennir |q 61518/1 |goto 31.19,49.39
step
Watch the dialogue
|tip Follow Navigator Xennir and protect him as he walks.
|tip Stay inside the purple circle on the ground to remain hidden.
|tip He eventually walks to this location.
Follow Navigator Xennir |q 61518/2 |goto 31.84,40.22
step
talk Navigator Xennir##172574
turnin Follow Me##61518 |goto 31.84,40.22
accept Cut to the Bone##60112 |goto 31.84,40.22
stickystart "Kill_Violent_Animates"
step
Kill Ossien enemies around this area
Eliminate #5# Ossien Workers |q 60112/1 |goto 29.55,46.09
step
label "Kill_Violent_Animates"
kill 10 Violent Animate##157096 |q 60112/2 |goto 29.55,46.14
step
talk Navigator Xennir##172574
turnin Cut to the Bone##60112 |goto 26.96,45.10
step
talk Khaliiq##172573
accept Set Me Free##61548 |goto 27.24,45.20
step
kill Ossein Strongarm##160264+
collect Ossein Key##181785 |q 61548/1 |goto 28.93,45.50
step
click Cage
|tip Upstairs.
Free Ansid |q 61548/2 |goto 28.55,47.97
step
talk Khaliiq##172573
turnin Set Me Free##61548 |goto 28.55,47.71
accept Crush 'Em All##61551 |goto 28.55,47.71
step
Use the _"Throw"_ ability
|tip Use it on Enforcer Borgulla.
|tip It appears as a button on the screen.
|tip You can use it more than once.
kill Enforcer Borgulla##172800 |q 61551/1 |goto 29.43,44.71
step
talk Khaliiq##172573
turnin Crush 'Em All##61551 |goto 30.05,43.54
step
talk Whisperer Vyn##172805
accept Keys the Ruin##61569 |goto 30.17,43.64
step
talk Twigin##172809
Tell him _"I'm ready. Fly me to the apex of the necropolis."_
Fly with Twigin to the Necropolis |q 61569/1 |goto 30.36,43.76
step
Fly to the Apex of the Necropolis |goto 29.80,44.43 < 10 |c |q 61569 |notravel
step
click Runic Keyhole
|tip You will be attacked.
|tip On top of the building.
Place the Runic Keystone |q 61569/2 |goto 29.53,44.40
step
kill Vo'treus the Keyguard##172873 |q 61569/3 |goto 29.46,44.48
|tip On top of the building.
step
talk Khaliiq##172573
|tip On top of the building.
turnin Keys the Ruin##61569 |goto 29.61,43.97
accept This Way Out##61594 |goto 29.61,43.97
step
talk Twigin##172901
|tip On top of the building.
Tell him _"I'm ready. Let's enter the necropolis."_
Fly with Twigin |q 61594/1 |goto 29.56,43.94
step
Fly into the Necropolis |goto 30.11,43.72 < 10 |c |q 61594 |notravel
step
talk Whisperer Vyn##172805
|tip Inside the building.
turnin This Way Out##61594 |goto 29.68,44.22
step
talk Whisperer Vyn##164679
|tip Inside the building.
accept Grand Theft Necropolis##59722
accept Search the Place##61869
step
_Inside the Necropolis:_
click Translocation Sphere: Zerekriss Upper Floor
|tip On either side of the room.
|tip Inside the building.
Use the Transport Pad: Zerekriss Upper Floor |q 61869/2
step
_Inside the Necropolis:_
click Foreman's Chest
|tip It looks like a treasure chest.
|tip Upstairs inside the building.
collect Bindings of Fleshcrafting##182249 |q 61869/1
step
_Inside the Necropolis:_
click Seat of the Primus
|tip It looks like a green portal.
|tip Upstairs inside the building.
Travel from the Zerekriss to the Seat of the Primus |q 59722/1
step
talk Khaliiq##173306
|tip Inside the building.
turnin Grand Theft Necropolis##59722 |goto Seat of the Primus/0 61.29,32.88
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Search the Place##61869 |goto 49.75,50.76
accept Bindings of Fleshcrafting##58820 |goto 49.75,50.76
step
click Bindings of Fleshcrafting
|tip Inside the building.
Return the Bindings to the Primus Statue |q 58820/1 |goto 49.66,54.51
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Bindings of Fleshcrafting##58820 |goto 49.76,50.66
step
Reach Renown Level 11 |condition covenant() == Necrolord and covenantrenown() >= 11
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Alexandros Mograine##161988
|tip Inside the building.
accept The Only Cure##59625 |goto Seat of the Primus/0 48.99,51.65
step
talk Khaliiq##173306
|tip Inside the building.
accept Dude, Where's My Necropolis?##60184 |goto 61.29,32.89
step
talk Xandria##165412
turnin The Only Cure##59625 |goto Bastion/0 40.69,55.03
accept Peace by Piece##59648 |goto Bastion/0 40.69,55.03
accept No Hesitation, No Surrender##59650 |goto Bastion/0 40.69,55.03
step
_Next to you:_
talk Alexandros Mograine
accept Death Rains##59645
stickystart "Slay_Maldraxxi_Renegades"
step
Reach the Northern Bulwark |q 59650/1 |goto 39.69,49.14
step
click Necrotic Bulwark
|tip You will be attacked.
Examine the Bulwark |q 59650/2 |goto 39.69,49.14
step
Kill the enemies that attack in waves
kill Shieldguard Okineda##165843
Disable the Bulwark |q 59650/3 |goto 39.69,49.14
step
talk Xandria##165412
turnin No Hesitation, No Surrender##59650 |goto 38.86,55.22
step
Reach the Southern Bulwark |q 59648/1 |goto 38.54,59.99
step
click Anima Battery
Disable the Anima Battery |q 59648/2 |goto 38.54,59.99 |count 1
step
click Anima Battery
Disable the Anima Battery |q 59648/2 |goto 38.85,60.42 |count 2
step
click Necrotic Bulwark
Destroy the Necrotic Bulwark |q 59648/3 |goto 38.44,60.61
step
label "Slay_Maldraxxi_Renegades"
Kill enemies around this area
|tip You can find them in the areas to the north and south of this location. |notinsticky
Slay #30# Maldraxxi Renegades |q 59645/1 |goto 39.48,55.15
step
_Next to you:_
talk Alexandros Mograine
turnin Death Rains##59645
step
talk Xandria##165412
turnin Peace by Piece##59648 |goto 38.86,55.22
accept Don't Cross Courage##59653 |goto 38.86,55.22
step
talk Xandria##165412
Tell her _"I'm ready to cross."_
Begin Flying with Xandria |goto 38.86,55.22 > 20 |c |q 59653
step
Watch the dialogue
Cross the Breach with Xandria |q 59653/1 |goto 35.96,55.33 |notravel
step
talk Xandria##165412
turnin Don't Cross Courage##59653 |goto 35.97,55.33
accept Aerial Absolution##59659 |goto 35.97,55.33
step
_Next to you:_
talk Alexandros Mograine
accept Sustain, In Vain##59678
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 35.52,56.28 |count 1
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 34.38,56.28 |count 2
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 34.91,54.26 |count 3
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 34.12,54.35 |count 4
step
kill Befouler Naux##165636 |q 59659/1 |goto 33.26,55.38
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 33.34,56.12 |count 5
step
click Necrotic Portal
Disable the Necrotic Portal |q 59678/1 |goto 33.60,58.17 |count 6
step
_Next to you:_
talk Alexandros Mograine
turnin Sustain, In Vain##59678
step
kill Befouler Ahnqat##165664 |q 59659/2 |goto 32.54,59.30
step
Cross the bridge |goto 31.99,57.59 < 15 |only if walking
kill Befouler Ghorout##165665 |q 59659/3 |goto 31.94,55.20
step
talk Xandria##165412
turnin Aerial Absolution##59659 |goto 29.97,55.20
accept Wipe the Slate Clean##59698 |goto 29.97,55.20
step
talk Xandria##165716
Begin Flying with Xandria |invehicle |goto 29.97,55.20 |q 59698
step
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Mete Justice |q 59698/1 |goto 33.60,55.98
|tip Fill up the blue bar in the quest tracker area.
step
Return to the Ground |goto 30.07,55.16 < 10 |c |q 59698 |notravel
step
talk Xandria##165412
turnin Wipe the Slate Clean##59698 |goto 29.97,55.20
accept The Last Labor##59700 |goto 29.97,55.20
step
talk Xandria##165412
Tell her _"I'm ready. Fly me to the necropolis."_
Begin Flying with Xandria |goto 29.97,55.20 > 20 |c |q 59700
step
Watch the dialogue
Reach the Necropolis with Xandria |q 59700/1 |goto 29.68,53.14 |notravel
step
kill Baroness Antolyte##165675 |q 59700/2 |goto 29.38,52.55
|tip Your allies will help you fight.
|tip Inside the building.
step
Watch the dialogue
talk Xandria##165412
|tip Inside the building.
turnin The Last Labor##59700 |goto 29.69,53.14
accept Afterlife Goes On##59709 |goto 29.69,53.14
step
talk Xandria##165412
Tell her _"I'm ready. Let's head back to the temple."_
Begin Flying with Xandria |goto 29.69,53.14 > 20 |c |q 59709
step
Fly with Xandria to the Temple of Courage |q 59709/1 |goto 41.65,55.18 |notravel
step
talk Xandria##165794
turnin Afterlife Goes On##59709 |goto 41.64,55.31
step
talk Alexandros Mograine##165795
accept No Peace In Death##59748 |goto 41.63,55.10
step
talk Xandria##165794
Tell her _"Alexandros feels that Bastion shares his values. What do you think?"_
Talk with Xandria |q 59748/1 |goto 41.64,55.31
step
Watch the dialogue
|tip Follow Xandria as she walks.
|tip She eventually walks to this location.
Walk with Xandria to Agitha's Repose |q 59748/2 |goto 46.47,62.93
step
talk Xandria##165794
turnin No Peace In Death##59748 |goto 46.47,62.93
accept All I Ever Will Be##59921 |goto 46.47,62.93
step
Use the _"Reflect"_ ability
|tip It appears as a button on the screen.
Meditate on the Scroll of Remembrance |q 59921/1 |goto 47.36,65.99
step
Use the _"Reflect"_ ability
|tip It appears as a button on the screen.
Meditate on the Scroll of Remembrance |q 59921/2 |goto 44.91,68.71
step
Use the _"Reflect"_ ability
|tip It appears as a button on the screen.
Meditate on the Scroll of Remembrance |q 59921/3 |goto 44.74,64.46
step
Watch the dialogue
kill Alexandros's Burden##166754 |q 59921/4 |goto 44.74,64.46
step
talk Xandria##165794
turnin All I Ever Will Be##59921 |goto 46.48,62.93
accept Do Not Forget##59922 |goto 46.48,62.93
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Do Not Forget##59922 |goto Seat of the Primus/0 49.75,50.74
step
talk Alexandros Mograine##161988
|tip Inside the building.
accept The Golden Dawn##59894 |goto 48.98,51.65
step
click Overlook, Seat of the Primus
|tip Inside the building.
Take the Portal to the Overlook |q 59894/1 |goto 58.80,22.98
step
Meet with Draka |q 59894/2 |goto Maldraxxus/0 50.40,70.56
|tip On top of the building.
step
talk Baroness Draka##166535
|tip On top of the building.
turnin The Golden Dawn##59894 |goto 50.40,70.56
accept Machinations of War##61586 |goto 50.40,70.56
step
Reach Renown Level 13 |q 61586/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Machinations of War##61586 |goto Seat of the Primus/0 49.76,50.77
accept Take The Fight To Them##61145 |goto 49.76,50.77
step
click Zerekriss, Maldraxxus
|tip Inside the building.
Take the Portal to the Zerekriss |q 61145/1 |goto 62.99,34.27
step
talk Baroness Draka##171483
|tip Upstairs inside the building.
turnin Take The Fight To Them##61145 |goto Maldraxxus/0 36.32,36.63
accept Fight and Flight##59910 |goto Maldraxxus/0 36.32,36.63
step
talk Xandria##171551
|tip Upstairs inside the building.
Begin Flying with Xandria |goto 36.32,36.36 > 40 |c |q 59910
step
Watch the dialogue
Fly with Xandria |q 59910/1 |goto 35.61,26.49
step
talk Xandria##166333
turnin Fight and Flight##59910 |goto 35.62,26.50
accept Justice from Above##60043 |goto 35.62,26.50
step
talk Apolon##168743
accept The Butchers of Bastion##59916 |goto 35.33,25.95
stickystart "Slay_House_Of_Constructs_Forces"
step
click Maldracite Core
Destroy the Maldracite Core |q 60043/1 |goto 34.04,25.82 |count 1
step
click Maldracite Core
Destroy the Maldracite Core |q 60043/1 |goto 33.68,25.89 |count 2
step
click Maldracite Core
Destroy the Maldracite Core |q 60043/1 |goto 34.58,23.75 |count 3
step
click Tattered Scroll
accept Dark Developments##61396 |goto 33.49,24.12
step
click Maldracite Core
Destroy the Maldracite Core |q 60043/1 |goto 32.79,24.04 |count 4
step
click Maldracite Core
Destroy the Maldracite Core |q 60043/1 |goto 32.18,23.93 |count 5
step
label "Slay_House_Of_Constructs_Forces"
Kill enemies around this area
Slay #10# House of Constructs Forces |q 59916/1 |goto 33.24,24.51
step
talk Apolon##168743
turnin The Butchers of Bastion##59916 |goto 35.32,25.95
step
talk Xandria##166333
turnin Justice from Above##60043 |goto 35.62,26.50
step
talk Artemede##168744
turnin Dark Developments##61396 |goto 35.16,26.90
accept Burn Before Reading##61180 |goto 35.16,26.90
step
talk Xandria##166333
accept Descended##60510 |goto 35.62,26.50
step
talk Apolon##168743
accept An Early End##61412 |goto 35.33,25.95
stickystart "Collect_Stitchflesh_Designs"
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 35.89,28.59 |count 1
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 35.15,28.79 |count 2
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 34.69,29.32 |count 3
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 34.63,30.53 |count 4
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 33.95,30.16 |count 5
step
kill Woeblade##168697 |q 60510/1 |goto 33.61,31.19
|tip Use the "Flames of Courage" ability as you fight.
|tip It appears as a button on the screen.
step
clicknpc Inert Butcher##173261
Destroy the Inert Butcher |q 61412/1 |goto 35.73,31.89 |count 6
step
label "Collect_Stitchflesh_Designs"
Kill enemies around this area
collect 6 Stitchflesh Design##180845 |q 61180/1 |goto 34.87,29.63
step
talk Artemede##168744
turnin Burn Before Reading##61180 |goto 35.16,26.90
step
talk Xandria##166333
turnin Descended##60510 |goto 35.62,26.50
step
talk Apolon##168743
turnin An Early End##61412 |goto 35.33,25.95
step
talk Kynthia##168860
accept Trouble on the Western Front##60050 |goto 35.45,26.50
step
talk Kynthia##168860
Tell her _"Could you fly me to the western gate?"_
Begin Flying with Kynthia |goto 35.45,26.50 > 20 |c |q 60050
step
Watch the dialogue
Fly to the Western Gate |q 60050/1 |goto 28.83,37.92 |notravel
step
talk Alexandros Mograine##166211
turnin Trouble on the Western Front##60050 |goto 28.81,38.21
accept Charging The Blade##60044 |goto 28.81,38.21
step
talk Baroness Vashj##167173
accept Grave Intent##61567 |goto 28.69,37.61
step
talk Emeni##167810
accept Aerial Advantage##60114 |goto 28.08,37.51
step
use the Riding Hook##180899
|tip Use it on the Battlesewn Roc.
Hook the Battlesewn Roc |q 60114/1 |goto 28.07,37.37
step
kill 6 Battlesewn Roc##171776 |q 60114/2 |goto 27.38,34.36
|tip They look like skeleton birds flying in the air around this area.
|tip They will appear on your minimap as yellow dots.
|tip Use the "Riding Hook" ability on your action bar on them to jump to them.
|tip Use the other abilties on your action bar to kill them.
|tip Jump to another one quickly when you see a message on your screen that they are panicking.
|tip You don't need to target them to jump to them.
If you fall, hook another Battlesewn Roc at [28.07,37.37]
step
talk Emeni##167810
|tip Click the yellow arrow to dismount the Battlesewn Roc, if you're still riding one.
turnin Aerial Advantage##60114 |goto 28.08,37.51
stickystart "Charge_The_Runeblade"
step
click Astral Projector
Destroy the Southwestern Projector |q 61567/1 |goto 24.84,37.62
step
click Astral Projector
Destroy the Northwestern Projector |q 61567/2 |goto 25.43,33.09
step
click Astral Projector
Destroy the Northeastern Projector |q 61567/3 |goto 27.90,32.91
step
label "Charge_The_Runeblade"
Kill enemies around this area
Charge the Runeblade |q 60044/1 |goto 26.95,35.42
step
talk Baroness Vashj##167173
turnin Grave Intent##61567 |goto 28.69,37.61
step
talk Alexandros Mograine##166211
turnin Charging The Blade##60044 |goto 28.81,38.21
accept Power of the Chosen##61246 |goto 28.81,38.21
step
talk Alexandros Mograine##166211
Tell him _"I am ready."_
Speak to Mograine |q 61246/1 |goto 28.81,38.21
step
Watch the dialogue
Destroy #4# Bilebloat Juggernauts |q 61246/2 |goto 27.77,37.42
|tip Use the ability on your action bar.
step
talk Alexandros Mograine##166211
turnin Power of the Chosen##61246 |goto 28.81,38.21
accept The End is Now##60098 |goto 28.81,38.21
step
talk Xandria##172002
turnin The End is Now##60098 |goto 31.78,30.32
accept Pursuit of Justice##60067 |goto 31.78,30.32
step
talk Xandria##172002
Tell her _"I am ready to assist you."_
Speak to Xandria |q 60067/1 |goto 31.78,30.32
step
Watch the dialogue
Kill the enemies that attack
|tip You will fight the smaller enemies while Xandria kills Margrave Gharmal.
kill Margrave Gharmal##167437 |q 60067/2 |goto 31.04,29.17
step
talk Xandria##173193
turnin Pursuit of Justice##60067 |goto 31.04,29.17
step
Watch the dialogue
talk Baroness Draka##173308
|tip She runs to this location.
accept An Abominable Discovery##57470 |goto 31.03,29.43
step
Enter the building |goto 27.88,24.42 < 10 |walk
Investigate Gharmal's Tower |q 57470/1 |goto 27.50,23.87
|tip Inside the building.
step
Watch the dialogue
talk Alexandros Mograine##173194
|tip Inside the building.
turnin An Abominable Discovery##57470 |goto 27.50,23.87
accept Gharmal's Tower##57530 |goto 27.50,23.87
step
click Chest
|tip Inside the building.
Search the Storeroom |q 57530/1 |goto 27.34,23.97
step
click Chest
|tip Upstairs inside the building.
Search the Alchemical Labratory |q 57530/2 |goto 27.27,23.65
step
Investigate the Top Floor |q 57530/3 |goto 27.28,23.36
|tip Upstairs inside the building.
step
talk Alexandros Mograine##173194
|tip He walks to this location.
|tip Upstairs inside the building.
turnin Gharmal's Tower##57530 |goto 27.32,23.80
accept Prized Possession##57473 |goto 27.32,23.80
step
click Chest
|tip Upstairs inside the building.
Loot the Chest |q 57473/1 |goto 27.36,23.87
step
talk Alexandros Mograine##173194
|tip Upstairs inside the building.
turnin Prized Possession##57473 |goto 27.32,23.80
accept The Mantle Returned##57475 |goto 27.32,23.80
step
talk Baroness Draka##161907
|tip Inside the building.
turnin The Mantle Returned##57475 |goto Seat of the Primus/0 49.75,50.76
accept Pride of Place##57636 |goto Seat of the Primus/0 49.75,50.76
step
click Mantle of Eternal Victory
|tip Inside the building.
Return the Mantle to the Primus Statue |q 57636/1 |goto 49.67,54.62
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Pride of Place##57636 |goto 49.75,50.67
step
talk Baroness Draka##161907
|tip Inside the building.
accept Blood from a Bone##62161 |goto Seat of the Primus/0 49.75,50.67
step
Reach Renown Level 17 |q 62161/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Blood from a Bone##62161 |goto 49.75,50.67
accept Accusatory Missive##58504 |goto 49.75,50.67
step
talk The Accuser##161461
turnin Accusatory Missive##58504 |goto Revendreth/0 72.08,41.15
accept You're Dead To Me##58523 |goto Revendreth/0 72.08,41.15
step
click The Accuser's Carriage
Enter the Accuser's Carriage |q 58523/1 |goto 72.37,41.08
step
Watch the dialogue
Reach the Maldraxxi Operation |q 58523/2 |goto 74.00,58.06 |notravel
step
Watch the dialogue
talk The Accuser##161694
|tip She walks to this location.
turnin You're Dead To Me##58523 |goto 73.78,57.38
accept A Farewell to Arms##58472 |goto 73.78,57.38
step
_Next to you:_
talk Baroness Draka
accept Drive A Dredge Between Them##58599
stickystart "Disrupt_Deaths_End"
step
kill Heftor##161246 |q 58599/3 |goto 77.16,61.01
step
kill Stacka##161257 |q 58599/1 |goto 80.40,64.46
step
kill Big Shiny##161248 |q 58599/2 |goto 80.79,57.64
step
_Next to you:_
talk Baroness Draka
turnin Drive A Dredge Between Them##58599
step
label "Disrupt_Deaths_End"
Kill enemies around this area
click Maldraxxi Anima Crystal+
|tip They look like large floating green crystals around this area.
Disrupt Death's End |q 58472/1 |goto 75.92,60.61
|tip Fill up the blue bar in the quest tracker area.
step
_Next to you:_
talk Baroness Draka
turnin A Farewell to Arms##58472
accept It's Treason, Then##58608
step
kill Lady Ouix'Ara##161770 |q 58608/1 |goto 78.85,62.82
|tip Up on the platform.
step
click Empowered Chest
collect Pauldrons of Imperium##182386 |q 58608/2 |goto 78.01,62.27
step
talk Baroness Draka##161865
turnin It's Treason, Then##58608 |goto 78.12,62.18
accept Pauldrons of Imperium##58624 |goto 78.12,62.18
step
click Pauldrons of Imperium
|tip Inside the building.
Return the Pauldrons of Imperium to the Primus Statue |q 58624/1 |goto Seat of the Primus/0 49.68,54.60
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Pauldrons of Imperium##58624 |goto 49.75,50.65
step
talk Baroness Draka##161907
|tip Inside the building.
accept House of Rituals##62388 |goto Seat of the Primus/0 49.75,50.65
step
Reach Renown Level 20 |q 62388/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin House of Rituals##62388 |goto 49.75,50.65
step
talk Balmedar##173172
|tip Inside the building.
accept The Wayward Baron##61739 |goto 49.80,49.70
step
Follow the path |goto Maldraxxus/0 55.64,29.66 < 40 |only if walking
click Balmedar's Supplies
Locate Balmedar's Supplies |q 61739/1 |goto Maldraxxus/0 59.34,33.00
step
talk Balmedar's Oculus##173420
turnin The Wayward Baron##61739 |goto 59.35,32.99
accept Playing Favorites##61740 |goto 59.35,32.99
accept Pilfered Power##61741 |goto 59.35,32.99
accept Burying Suspicion##62414 |goto 59.35,32.99
stickystart "Siphon_Anima"
stickystart "Slay_Lichsworn_Forces"
step
Follow the path |goto 61.46,32.73 < 20 |only if walking
Enter the cave |goto 62.81,29.28 < 15 |walk
kill Acolyte Nelesis##173433 |q 61740/1 |goto 63.27,27.27
|tip Inside the cave.
step
click Acolyte Nelesis
|tip She will be laying where you killed her.
|tip You will start dragging her corpse with a rope.
|tip Inside the cave.
Click Here Once You Start Dragging Her |confirm |goto 63.27,27.27 |q 61740
step
label "Siphon_Anima"
click Anima-Rich Spoils+
|tip They looke like variously shaped metal objects on the ground around this area.
Siphon Anima |q 61741/1 |goto 63.41,32.26
|tip Fill up the blue bar in the quest tracker area.
step
label "Slay_Lichsworn_Forces"
Kill enemies around this area
Slay #10# Lichsworn Forces |q 62414/1 |goto 63.41,32.26
step
_Next to you:_
talk Balmedar's Oculus##173422
turnin Pilfered Power##61741
turnin Burying Suspicion##62414
step
Follow the path |goto 62.53,33.19 < 30 |only if walking
Use the _"Drop Body"_ ability
|tip It appears as a button on the screen.
Place the Corpse in the Ritual Circle |q 61740/2 |goto 59.78,32.68
step
_Next to you:_
talk Balmedar's Oculus##173422
turnin Playing Favorites##61740
accept A Fitting Guise##61742
step
clicknpc Acolyte Nelesis##173435
Perform Balmedar's Ritual |q 61742/1 |goto 59.79,32.68
step
Enter the building |goto 65.65,33.49 < 7 |walk
talk Balmedar##173172
|tip Inside the building.
turnin A Fitting Guise##61742 |goto 66.21,32.15
accept The Pupil Returns##61743 |goto 66.21,32.15
step
Enter the building |goto 71.03,28.52 < 7 |walk
talk Kel'thuzad##172923
|tip Inside the building.
turnin The Pupil Returns##61743 |goto Maldraxxus/1 50.21,51.80
accept The Baron's Plan##61744 |goto Maldraxxus/1 50.21,51.80
step
talk Kel'thuzad##172923
|tip Inside the building.
Choose _<Walk with Kel'Thuzad.>_
Begin Following Kel'Thuzad |goto 50.21,51.80 > 20 |c |q 61744
step
Watch the dialogue
|tip Follow Kel'Thuzad as he walks.
|tip He eventually walks to this location.
|tip Inside the building.
Walk with Kel'Thuzad |q 61744/1 |goto 43.93,26.93
step
talk Kel'thuzad##172923
|tip Inside the building.
turnin The Baron's Plan##61744 |goto 43.93,26.93
accept Mistress of Tomes##61745 |goto 43.93,26.93
step
Run up the stairs and leave the building|goto 45.65,55.39 < 7 |walk
talk Captain Prateq##174020
accept A Fatal Failure##62297 |goto Maldraxxus/0 70.41,27.75
step
kill 7 Fatal Coalescence##172606+ |q 62297/1 |goto 71.56,27.28
step
talk Captain Prateq##174020
turnin A Fatal Failure##62297 |goto 70.41,27.75
step
talk Baroness Ninadar##172924
turnin Mistress of Tomes##61745 |goto 66.31,26.39
accept Cantrip Collections##61746 |goto 66.31,26.39
accept Errant Enchantments##61747 |goto 66.31,26.39
stickystart "Collect_Errant_Tomes"
stickystart "Collect_Mischievous_Quills"
step
talk Studious Acolyte##173503+
Choose _<Ask about Ninadar's scrolls.>_
|tip You may have to threaten some of them.
kill Studious Acolyte##173503+
|tip Some of them may attack you after you threaten them.
collect 6 Overdue Scroll##182609 |q 61746/1 |goto 65.86,26.67
step
label "Collect_Errant_Tomes"
clicknpc Errant Tome##173563+
|tip They look like books flying in the air around this area.
collect 4 Errant Tome##182615 |q 61747/1 |goto 65.86,26.67
step
label "Collect_Mischievous_Quills"
clicknpc Mischievous Quill##173564+
|tip They look like blue feathers floating in the air around this area.
collect Mischievous Quill##182616 |q 61747/2 |goto 65.86,26.67
step
talk Baroness Ninadar##172924
turnin Cantrip Collections##61746 |goto 66.31,26.39
turnin Errant Enchantments##61747 |goto 66.31,26.39
accept The Hall of Tomes##61748 |goto 66.31,26.39
step
Enter the building |goto 67.93,24.32 < 7 |walk
click Winged Arcanum
|tip Inside the building.
collect Winged Arcanum##182642 |q 61748/1 |goto 67.92,23.38
step
click Paths of the First Ones
|tip Inside the building.
collect Paths of the First Ones##182643 |q 61748/2 |goto 68.24,23.31
step
click Greater Wards and Barriers, Volume IV
|tip Inside the building.
collect Greater Wards and Barriers, Volume IV##182644 |q 61748/3 |goto 67.91,23.19
step
click Binding of the Banished One
|tip Inside the building.
collect Binding of the Banished One##182645 |q 61748/4 |goto 68.16,23.01
step
Enter the building |goto 71.02,28.52 < 7 |walk
talk Kel'thuzad##172923
|tip Inside the building.
turnin The Hall of Tomes##61748 |goto Maldraxxus/1 43.95,26.97
accept Necessary Ingredients##61749 |goto Maldraxxus/1 43.95,26.97
step
click Sorcerer's Note
|tip Inside the building.
accept Casting Doubt##62317 |goto 46.59,31.61
step
kill Sorcerer Vutral##174031 |q 62317/1 |goto 61.60,78.98
|tip You may need help with this.
|tip Inside the building.
step
Click the Complete Quest Box:
turnin Casting Doubt##62317
step
use Sorcerer's Blade##183397
Wear the Illusory Disguise |havebuff spell:339509 |q 61749
step
Run up the stairs and leave the building|goto 45.65,55.39 < 7 |walk
talk Jor'dan the Powerful##173492
turnin Necessary Ingredients##61749 |goto Maldraxxus/0 69.97,32.71
accept Heart of the Forest##61750 |goto Maldraxxus/0 69.97,32.71
accept Cage Free Spores##61751 |goto Maldraxxus/0 69.97,32.71
stickystart "Collect_Intact_Spore_Clusters"
step
talk Moret the Vogue##174120
accept Regalia de Rigueur##62320 |goto 71.69,32.89
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 71.28,31.41 |count 1
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 70.17,31.24 |count 2
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 70.16,31.23 |count 3
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 69.05,32.76 |count 4
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 68.98,33.68 |count 5
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 69.94,32.81 |count 6
step
Enter the building |goto 71.43,34.95 < 7 |walk
click Amethystine Powder
|tip Inside the building.
collect Amethystine Powder##183400 |q 62320/1 |goto 71.78,35.41 |count 7
step
click Amethystine Powder
|tip Inside the building.
collect Amethystine Powder##183400 |q 62320/1 |goto 71.62,35.59 |count 8
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 70.74,32.79 |count 9
step
label "Collect_Intact_Spore_Clusters"
kill Escaped Blightray##173582+
collect 6 Intact Spore Cluster |q 61751/1 |goto 70.13,33.00
step
talk Jor'dan the Powerful##173492
turnin Cage Free Spores##61751 |goto 69.97,32.71
step
click Amethystine Powder
collect Amethystine Powder##183400 |q 62320/1 |goto 68.05,29.88 |count 10
step
Follow the path up |goto 69.54,25.09 < 30 |only if walking
kill Elusive Veilwing##173608
collect Veilwing's Heart##182676 |q 61750/1 |goto 68.89,22.78
step
talk Moret the Vogue##174120
turnin Regalia de Rigueur##62320 |goto 71.69,32.89
step
talk Jor'dan the Powerful##173492
turnin Heart of the Forest##61750 |goto 69.97,32.71
accept The Final Reagent##61752 |goto 69.97,32.71
step
Enter the building |goto 66.88,31.67 < 10 |walk
talk Balmedar##173172
|tip Inside the building.
turnin The Final Reagent##61752 |goto 66.20,32.15
accept Explosive Schemes##61753 |goto 66.20,32.15
step
Run down the stairs |goto 61.43,32.72 < 20 |only if walking
Enter the building |goto 59.07,31.35 < 10 |walk
click Place Explosive
|tip Inside the building.
Place the Explosive |q 61753/1 |goto 57.76,30.38
step
Use the _"Hide and Wait"_ ability
|tip It appears as a button on the screen.
|tip Inside the building.
Watch the dialogue
Hide and Wait for the Caravan |q 61753/2 |goto 58.17,31.22
step
_Next to you:_
talk Balmedar's Oculus##173422
turnin Explosive Schemes##61753
accept No Crate Unturned##61754
accept Blinding the Brokers##61755
stickystart "Slay_Broker_Witnesses"
step
click Broker Shipment+
|tip They look like wooden boxes on the ground around this area.
Find the Mysterious Reagent |q 61754/1 |goto 58.01,30.67
step
label "Slay_Broker_Witnesses"
Kill enemies around this area
|tip Inside the building.
Slay #8# Broker Witnesses |q 61755/1 |goto 58.01,30.67
step
Enter the building |goto 65.65,33.49 < 7 |walk
talk Balmedar##173172
|tip Inside the building.
turnin No Crate Unturned##61754 |goto 66.21,32.14
turnin Blinding the Brokers##61755 |goto 66.21,32.14
accept Designed to Fail##61756 |goto 66.21,32.14
step
Enter the building |goto 71.03,28.52 < 7 |walk
talk Kel'thuzad##172923
|tip Inside the building.
turnin Designed to Fail##61756 |goto Maldraxxus/1 43.97,27.01
accept Caught in the Act##61757 |goto Maldraxxus/1 43.97,27.01
step
click Ritual Burner
|tip Inside the building.
Burn the Spore Clusters |q 61757/1 |goto 41.17,22.60 |count 1
step
click Ritual Burner
|tip Inside the building.
Burn the Spore Clusters |q 61757/1 |goto 43.28,20.76 |count 2
step
click Place Heart
|tip Inside the building.
Place the Veilwing Heart |q 61757/2 |goto 41.06,17.69
step
click Anima Coffer
|tip Inside the building.
Open the Anima Coffer |q 61757/3 |goto 45.00,20.03 |count 1
step
click Anima Coffer
|tip Inside the building.
Open the Anima Coffer |q 61757/3 |goto 46.20,23.41 |count 2
step
click Anima Coffer
|tip Inside the building.
Open the Anima Coffer |q 61757/3 |goto 41.05,27.43 |count 3
step
click Anima Coffer
|tip Inside the building.
Open the Anima Coffer |q 61757/3 |goto 39.82,24.51 |count 4
step
Watch the dialogue
|tip Inside the building.
Witness Kel'Thuzad's Ritual |q 61757/4 |goto 42.98,24.17
step
Click the Complete Quest Box:
turnin Caught in the Act##61757
accept Improvised Implements##61758
step
click Hand
|tip Inside the building.
Find Something to Help You Escape |q 61758/1 |goto 52.80,67.59
step
Click the Complete Quest Box:
turnin Improvised Implements##61758
accept A Helpful Hand##61759
step
Use the _"Animate Hand"_ ability
|tip Inside the building.
Help Balmedar Animate the Hand |q 61759/1 |goto 54.56,67.63
step
click Lever
|tip Inside the building.
|tip Jump onto the smaller crates and cross the webs and chains around the shelves to reach it.
Open the Cells |q 61759/2 |goto 53.82,60.89
step
talk Balmedar##173172
|tip Inside the building.
turnin A Helpful Hand##61759 |goto 52.64,63.69
accept The Traitor Unmasked##61760 |goto 52.64,63.69
step
Run up the stairs and leave the building |goto 44.33,56.06 < 7 |walk
Watch the dialogue
Confront Kel'thuzad |q 61760/1 |goto Maldraxxus/0 69.99,26.95
step
kill Sapphiron##173832 |q 61760/2 |goto 69.95,26.99
|tip Avoid standing in front of Sapphiron during Deep Breath.
step
_Next to you:_
talk Balmedar##173172
turnin The Traitor Unmasked##61760
accept The Better Part of Valor##61761
step
talk Baroness Draka##161907
|tip Inside the building.
turnin The Better Part of Valor##61761 |goto Seat of the Primus/0 49.75,50.69
step
talk Baroness Draka##161907
|tip Inside the building.
accept Mobilize Maldraxxus##62391 |goto Seat of the Primus/0 49.75,50.69
step
Reach Renown Level 22 |q 62391/1
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Mobilize Maldraxxus##62391 |goto 49.75,50.69
accept Calling in All Favors##58833 |goto 49.75,50.69
step
Cross the bridge |goto Maldraxxus/0 60.92,41.82 < 15 |only if walking
talk Baroness Draka##174179
turnin Calling in All Favors##58833 |goto Maldraxxus/0 62.16,41.04
accept The Third Fall of Kel'thuzad##59020 |goto Maldraxxus/0 62.16,41.04
step
talk Baroness Draka##174179
Tell her _"Begin the attack."_
Speak to Baroness Draka |q 59020/1 |goto 62.16,41.04
step
Begin the Scenario |scenariostart |q 59020
step
Watch the dialogue
|tip Follow Baroness Draka as she walks.
Confront Kel'Thuzad |scenariogoal 1/49272 |goto Maldraxxus Venthyr Scenario/0 64.09,35.61 |q 59020
step
Watch the dialogue
|tip Follow Baroness Draka as she walks.
Listen to Draka's Plan |scenariogoal 2/49273 |goto 63.14,32.97 |q 59020
step
kill Baroness Ninadar##172142 |scenariogoal 2/47890 |goto 65.16,29.84 |q 59020
|tip You allies will help you fight.
|tip Run behind an ice block when she casts "Shattering Lance."
stickystart "Defeat_Necromancer_Ritualists"
step
kill Ascended Lich##174325+
Defeat #3# Ascended Lichs |scenariogoal 3/49478 |goto 65.49,26.89 |q 59020
step
label "Defeat_Necromancer_Ritualists"
kill Necromancer Ritualist##163145+
Defeat #6# Necromancer Ritualists |scenariogoal 3/49477 |goto 65.49,26.89 |q 59020
step
kill Empowered Baroness Ninadar##165339
|tip Your allies will help you fight.
Defeat Empowered Baroness Ninadar |scenariogoal 4/47917 |goto 65.65,26.28 |q 59020
step
kill Thultain
|tip Nearby, channeling on the crystal.
clicknpc Shield Stabilization Crystal##165916
Destroy the Stabilization Crystal |scenariogoal 5/47898 |goto 66.50,29.90 |count 1 |q 59020
step
kill Fel'endae
|tip Nearby, channeling on the crystal.
clicknpc Shield Stabilization Crystal##165916
Destroy the Stabilization Crystal |scenariogoal 5/47898 |goto 68.05,32.05 |count 2 |q 59020
step
Use the _"Call General Draven"_ ability
|tip Use it on Maw Infernous repeatedly as you fight it.
|tip It appears as a button on the screen.
kill Maw Infernous##163213
|tip Your allies will help you fight.
Defeat the Maw Infernous |scenariogoal 6/47891 |goto 68.17,29.74 |q 59020
step
talk General Draven##173523
|tip He runs up to you.
Tell him _"Take me to Kel'Thuzad."_
Speak to General Draven |scenariogoal 7/49377 |goto 68.21,30.41 |q 59020
step
Fly with General Draven |goto 73.61,33.54 < 10 |c |q 59020 |notravel
step
Watch the dialogue
|tip Inside the building.
kill Kel'Thuzad##173066
|tip He will eventually escape.
Defeat Kel'Thuzad |scenariogoal 7/47893 |goto 74.57,33.64 |q 59020
step
Watch the dialogue
|tip Inside the building.
Listen to Margrave Sin'dane |scenariogoal 8/47897 |goto 74.42,33.64 |q 59020
step
click Portal to The Seat of the Primus
|tip Inside the building.
Use the Transport Pad |scenarioend |goto 74.21,34.52 |q 59020
Remove Kel'Thuzad from Maldraxxus |q 59020/2 |goto 74.21,34.52
step
_Inside the Necropolis:_
click Translocation Sphere: Zerekriss Upper Floor |goto 73.92,34.59
|tip On either side of the room.
|tip Inside the building.
Use the Transport Pad: Zerekriss Upper Floor |goto 74.94,34.33 < 5 |c |noway |q 59020
step
click Seat of the Primus
Use the Portal to Exit Exoramas |q 59020/4 |goto 75.28,34.20
step
Return to Baroness Draka at the Seat of the Primus |q 59020/3 |goto Seat of the Primus/0 49.76,50.69
step
talk Baroness Draka##161907
|tip Inside the building.
turnin The Third Fall of Kel'thuzad##59020 |goto Seat of the Primus/0 49.76,50.69
accept Staff of the Primus##62406 |goto Seat of the Primus/0 49.76,50.69
step
click Staff of the Primus
|tip Inside the building.
Return the Staff to the Primus Statue |q 62406/1 |goto 49.64,54.48
step
talk Baroness Draka##161907
|tip Inside the building.
turnin Staff of the Primus##62406 |goto 49.75,50.67
step
talk Bonesmith Heirmir##161905
|tip Inside the building.
accept Forging A Friendship##60111 |goto 42.81,32.02
step
talk Bonesmith Heirmir##174623
|tip Inside the building.
Soulbind with Bonesmith Heirmir |q 60111/1 |goto 42.81,32.02
step
talk Bonesmith Heirmir##161905
|tip Inside the building.
turnin Forging A Friendship##60111 |goto 42.83,31.98
step
Reach Renown Level 40 |condition covenant() == Necrolord and covenantrenown() >= 40
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
_Congratulations!_
You Reached Renown Level 40.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Transport Network",{
author="support@zygorguides.com",
description="\nThis guide will walk you through upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
Accept or Complete the "Enhancing the Hold" Quest |condition havequest(62794) or completedq(62794)
|tip Use the "Kyrian Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |q 63052 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1810) >= 1 |q 63052 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 1
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 1 |condition covenantfeature("Transport Network") >= 1 |goto Elysian Hold/0 42.59,53.02
step
talk Haephus##167745
accept Step of Faith##63052 |goto 42.59,53.07
step
click Elysian Scroll
Activate the Transport Network |q 63052/1 |goto 47.96,61.74
step
talk Khamsius##175907
turnin Step of Faith##63052 |goto 48.84,62.70
accept At a Moment's Notice##63053 |goto 48.84,62.70
step
click Eternal Gateway
|tip Click the "Hero's Rest, Bastion" gateway on the map.
Travel Using the Eternal Gateway |q 63053/1 |goto Bastion/0 51.75,46.81
step
click Eternal Gateway
|tip Click the "Elysian Hold, Bastion" gateway on the map.
Take an Eternal Gateway to Elysian Hold |q 63053/2 |goto Elysian Hold/0 47.91,61.64
step
talk Khamsius##175907
turnin At a Moment's Notice##63053 |goto 48.84,62.70
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 1000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1810) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 2
step
talk Haephus##167745
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 2 |condition covenantfeature("Transport Network") >= 2 |goto Elysian Hold/0 42.59,53.02
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1810) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 3
step
talk Haephus##167745
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 3 |condition covenantfeature("Transport Network") == 3 |goto Elysian Hold/0 42.59,53.02
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Transport Network",{
author="support@zygorguides.com",
description="\nThis guide will walk you through upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
Accept or Complete the "The First New Growth" Quest |condition havequest(62898) or completedq(62898)
|tip Use the "Night Fae Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |q 63073 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1865) >= 1 |q 63073 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 1
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 1 |condition covenantfeature("Transport Network") >= 1 |goto Heart of the Forest/1 39.40,54.32
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
accept A Mycelial Network##63073 |goto 39.40,54.32
|tip You will need to wait for 1 hour for the upgrade to complete before accepting this quest.
step
click Fae Scroll
Activate the Transportation Network |q 63073/1 |goto 54.45,31.40
step
talk Zaki##174609
turnin A Mycelial Network##63073 |goto 53.23,32.92
accept Silence in the Stalks##57454 |goto 53.23,32.92
step
talk Cortinarius##157710
turnin Silence in the Stalks##57454 |goto Ardenweald/0 33.23,36.39
accept Mushroom For Improvement##57455 |goto 33.23,36.39
accept Ring Repairs##57458 |goto 33.23,36.39
stickystart "Heal_Damaged_Mushrooms"
step
Kill enemies around this area
use the Pouch of Spores##171989
|tip Use it on the corpses of enemies you kill.
Plant #15# Mushrooms |q 57455/1 |goto 31.49,35.19
step
label "Heal_Damaged_Mushrooms"
clicknpc Damaged Mushroom##157772+
|tip They look like large mushrooms with jagged tops on the ground around this area.
|tip They appears as yellow dots on your minimap.
Use the _"Activate Beacon"_ ability
|tip Use it on Damaged Mushrooms around this area.
|tip It appears on-screen after clicking a Damaged Mushroom.
Heal #6# Damaged Mushrooms |q 57458/1 |goto 31.49,35.19
step
Enter the cave |goto 30.46,35.68 < 15 |walk
talk Cortinarius##157710
|tip Inside the cave.
turnin Mushroom For Improvement##57455 |goto 29.52,34.79
turnin Ring Repairs##57458 |goto 29.52,34.79
accept Fighting For Fungus##57459 |goto 29.52,34.79
step
talk Cortinarius##157710
|tip Inside the cave.
Tell him _"Then let us face them"_
Speak with Cortinarius |q 57459/1 |goto 29.52,34.79
step
kill Ruven the Exterminator##158068 |q 57459/2 |goto 29.52,34.79
|tip Inside the cave.
step
talk Marasmius##174800
|tip Inside the cave.
turnin Fighting For Fungus##57459 |goto 29.50,34.61
accept My Way or the Hyphae##57463 |goto 29.50,34.61
step
talk Marasmius##174800
|tip Inside the cave.
Tell it _"Let's ride."_
Begin Riding |invehicle |goto 29.50,34.61 |q 57463
step
kill 30 Masked Invader##158098 |q 57463/1 |goto 29.50,34.61
|tip Use the abilities on your action bar.
step
talk Marasmius##174800
|tip Inside the cave.
turnin My Way or the Hyphae##57463 |goto 29.50,34.61
accept Through the Veil##57583 |goto 29.50,34.61
step
click Marasmius
Plant the Talkative Spore |q 57583/1 |goto Heart of the Forest/1 55.38,26.56
step
talk Marasmius##166982
turnin Through the Veil##57583 |goto 55.38,26.56
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1865) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 2
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 2 |condition covenantfeature("Transport Network") >= 2 |goto Heart of the Forest/1 39.40,54.32
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1865) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 3
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 3 |condition covenantfeature("Transport Network") == 3 |goto Heart of the Forest/1 39.40,54.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Transport Network",{
author="support@zygorguides.com",
description="\nThis guide will walk you through upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
Accept or Complete the "Home Improvement" Quest |condition havequest(62915) or completedq(62915)
|tip Use the "Venthyr Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1864) >= 1
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 1
step
talk Foreman Flatfinger##172605
Tell him _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 1 |condition covenantfeature("Transport Network") >= 1 |goto Sinfall/0 55.63,26.27
step
talk Foreman Flatfinger##172605
accept Sanctum Upgrade: Mirror Network##63056 |goto Sinfall/0 55.62,26.24
step
click Scroll of Dark Empowerment
Activate the Mirror Network |q 63056/1 |goto 39.99,45.79
step
talk Prince Renathal##158653
turnin Sanctum Upgrade: Mirror Network##63056 |goto 51.76,37.60
step
talk Laurent##167160
accept Mirror Attunement: Pridefall Hamlet##60060 |goto 47.80,57.26
accept Mirror Attunement: The Eternal Terrace##60147 |goto 47.80,57.26
step
Enter the Mirror to Sinfall |q 60147/1 |goto Revendreth/0 56.74,32.46
|tip Walk into the swirling portal.
step
Enter the Mirror to Sinfall |q 60060/1 |goto Revendreth/0 70.76,75.48
|tip Walk into the swirling portal.
step
talk Laurent##167160
turnin Mirror Attunement: Pridefall Hamlet##60060 |goto Sinfall/0 47.80,57.26
turnin Mirror Attunement: The Eternal Terrace##60147 |goto Sinfall/0 47.80,57.26
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Soul |condition curcount(1864) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 2
step
talk Foreman Flatfinger##172605
Tell him _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 2 |condition covenantfeature("Transport Network") >= 2 |goto Sinfall/0 55.63,26.27
step
talk Laurent##167160
accept Mirror Attunement: Halls of Atonement##60159 |goto 47.80,57.26
accept Mirror Attunement: The Banewood##60160 |goto 47.80,57.26
step
Enter the Mirror to Sinfall |q 60159/1 |goto Revendreth/0 73.61,43.94
|tip Walk into the swirling portal.
step
Enter the Mirror to Sinfall |q 60160/1 |goto Revendreth/0 43.48,57.07
|tip Walk into the swirling portal.
step
talk Laurent##167160
turnin Mirror Attunement: Halls of Atonement##60159 |goto Sinfall/0 47.80,57.26
turnin Mirror Attunement: The Banewood##60160 |goto 47.80,57.26
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Soul |condition curcount(1864) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 3
step
talk Foreman Flatfinger##172605
Tell him _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 3 |condition covenantfeature("Transport Network") == 3 |goto Sinfall/0 55.63,26.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Necrolords Transport Network",{
author="support@zygorguides.com",
description="\nThis guide will walk you through upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
Accept or Complete the "Sanctum Improvements" Quest |condition havequest(62846) or completedq(62846)
|tip Use the "Necrolords Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1810) >= 1
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 1
step
talk Arkadia Moa##161909
Tell her _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 1 |condition covenantfeature("Transport Network") >= 1 |goto Seat of the Primus/0 52.75,38.27
step
talk Arkadia Moa##161909
accept Powering the Portals##63055 |goto 52.75,38.27
step
click Prime Scroll
Activate the Transport Network |q 63055/1 |goto 59.04,34.20
step
talk Serafina Von##175963
turnin Powering the Portals##63055 |goto 59.72,31.70
accept Blink of an Eye##63059 |goto 59.72,31.70
step
click Nurakkir, House of Eyes
Use the Nurakkir, House of Eyes Portal |q 63059/1 |goto Maldraxxus/0 51.14,16.37
step
click Seat of the Primus
Return Using the Seat of the Primus Portal |q 63059/2 |goto Seat of the Primus/0 58.92,34.24
step
talk Serafina Von##175963
turnin Blink of an Eye##63059 |goto 59.72,31.70
step
talk Khaliiq##173306
accept Dude, Where's My Necropolis?##60184 |goto 61.28,32.91
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1810) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 2
step
talk Arkadia Moa##161909
Tell her _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 2 |condition covenantfeature("Transport Network") >= 2 |goto 52.75,38.27
step
talk Khaliiq##173306
turnin Dude, Where's My Necropolis?##60184 |goto 61.28,32.91
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Transport Network") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1810) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Transport Network") < 3
step
talk Arkadia Moa##161909
Tell her _"Show me the Sanctum."_
|tip Select the "Transport Network" node and click the "Activate" button to begin the upgrade.
Upgrade your Transport Network to Tier 3 |condition covenantfeature("Transport Network") == 3 |goto Seat of the Primus/0 52.75,38.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Command Table",{
author="support@zygorguides.com",
description="\nThis guide will walk you through recruiting your covenant command table followers.",
condition_end=function() return completedq(61865) end,
},[[
step
Accept or Complete the "Enhancing the Hold" Quest |condition havequest(62794) or completedq(62794)
|tip Use the "Kyrian Questline" guide to accomplish this.
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Select the "Command Table" node and click the "Activate" button to begin the upgrade.
Upgrade your Command Table to Tier 1 |condition covenantfeature("Command Table") >= 1 |goto Elysian Hold/0 42.59,53.02
step
talk Haephus##167745
accept More Work?##57899 |goto 42.59,53.02
step
click Elysian Scroll
|tip Upstairs on The Eternal Watch.
Activate the Scouting Map |q 57899/1 |goto 43.62,41.77
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
turnin More Work?##57899 |goto 43.82,40.71
accept Across the Shadowlands##57900 |goto 43.82,40.71
step
click Command Table
|tip Choose a mission and folllow the instructions on-screen.
Start an Adventure |q 57900/1 |goto 43.34,41.24
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
turnin Across the Shadowlands##57900 |goto 43.82,40.71
step
Reach Renown Level 4 |condition covenant() == Kyrian and covenantrenown() >= 4
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Pelodis##61860 |goto 43.82,40.71
step
Reach Renown Level 12 |condition covenant() == Kyrian and covenantrenown() >= 12
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Sika##61861 |goto 43.82,40.71
step
Reach Renown Level 17 |condition covenant() == Kyrian and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Clora##61862 |goto 43.82,40.71
step
Reach Renown Level 27 |condition covenant() == Kyrian and covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Apolon##61863 |goto 43.82,40.71
step
Reach Renown Level 33 |condition covenant() == Kyrian and covenantrenown() >= 33
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Bron##61864 |goto 43.82,40.71
step
Reach Renown Level 38 |condition covenant() == Kyrian and covenantrenown() >= 38
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
step
talk Koros##160389
|tip Upstairs on The Eternal Watch.
accept Adventurer: Disciple Kosmas##61865 |goto 43.82,40.71
step
Reach Renown Level 40 |condition covenant() == Kyrian and covenantrenown() >= 40
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Kyrian Daily Quests" guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Command Table",{
author="support@zygorguides.com",
description="\nThis guide will walk you through recruiting your covenant command table followers.",
condition_end=function() return completedq(61857) end,
},[[
step
Accept or Complete the "The First New Growth" Quest |condition havequest(62898) or completedq(62898)
|tip Use the "Night Fae Questline" guide to accomplish this.
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Command Table" node and click the "Activate" button to begin the upgrade.
Upgrade your Command Table to Tier 1 |condition covenantfeature("Command Table") >= 1 |goto Heart of the Forest/1 39.40,54.32
step
talk Niya##160481
accept The Hunt Watches##61552 |goto Heart of the Forest/0 35.79,47.75
step
click Fae Scroll
Activate Adventures |q 61552/1 |goto Ardenweald/0 44.72,56.22
step
talk Watcher Vesperbloom##164023
turnin The Hunt Watches##61552 |goto 44.67,56.28
accept Know Where to Strike##61553 |goto 44.67,56.28
step
click Command Table
|tip Choose a mission and folllow the instructions on-screen.
Start an Adventure |q 61553/1 |goto 44.74,56.31
step
talk Watcher Vesperbloom##164023
turnin Know Where to Strike##61553 |goto 44.67,56.28
step
Reach Renown Level 4 |condition covenant() == NightFae and covenantrenown() >= 4
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Guardian Kota##61852 |goto 44.67,56.28
step
Reach Renown Level 12 |condition covenant() == NightFae and covenantrenown() >= 12
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Te'zan##61853 |goto 44.67,56.28
step
Reach Renown Level 17 |condition covenant() == NightFae and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Master Sha'lor##61854 |goto 44.67,56.28
step
Reach Renown Level 27 |condition covenant() == NightFae and covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Qadarin##61855 |goto 44.67,56.28
step
Reach Renown Level 33 |condition covenant() == NightFae and covenantrenown() >= 33
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Watcher Vesperbloom##61856 |goto 44.67,56.28
step
Reach Renown Level 38 |condition covenant() == NightFae and covenantrenown() >= 38
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Night Fae Daily Quests" guide to accomplish this.
step
talk Watcher Vesperbloom##164023
accept Adventurer: Groonoomcrooek##61857 |goto 44.67,56.28
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Command Table",{
author="support@zygorguides.com",
description="\nThis guide will walk you through recruiting your covenant command table followers.",
condition_end=function() return completedq(61792) end,
},[[
step
Accept or Complete the "Home Improvement" Quest |condition havequest(62915) or completedq(62915)
|tip Use the "Venthyr Questline" guide to accomplish this.
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Select the "Command Table" node and click the "Activate" button to begin the upgrade.
Upgrade your Command Table to Tier 1 |condition covenantfeature("Command Table") >= 1 |goto Sinfall/0 55.63,26.27
step
talk Foreman Flatfinger##172605
|tip Inside the building.
accept Sanctum Upgrade: Adventures Scouting Map##63064 |goto 55.63,26.27
step
click Scroll of Dark Empowerment
Activate the Adventures Scouting Map |q 63064/1 |goto 55.99,59.27
step
talk Tactician Sakaa##164741
|tip Inside the building.
turnin Sanctum Upgrade: Adventures Scouting Map##63064 |goto 58.10,59.78
accept Advancing Our Efforts##59319 |goto 58.10,59.78
step
click Command Table
|tip Choose a mission and folllow the instructions on-screen.
Start an Adventure |q 59319/1 |goto 55.85,61.16
step
talk Tactician Sakaa##164741
|tip Inside the building.
turnin Advancing Our Efforts##59319 |goto 58.10,59.78
step
Reach Renown Level 4 |condition covenant() == Venthyr and covenantrenown() >= 4
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Rahel##61729 |goto 58.10,59.78
step
Reach Renown Level 12 |condition covenant() == Venthyr and covenantrenown() >= 12
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Stonehead##61786 |goto 59.55,58.36
step
Reach Renown Level 17 |condition covenant() == Venthyr and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Simone##61788 |goto 59.55,58.36
step
Reach Renown Level 27 |condition covenant() == Venthyr and covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Lost Sybille##61789 |goto 58.10,59.78
step
Reach Renown Level 33 |condition covenant() == Venthyr and covenantrenown() >= 33
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Vulca##61790 |goto 58.10,59.78
step
Reach Renown Level 38 |condition covenant() == Venthyr and covenantrenown() >= 38
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Venthyr Daily Quests" guide to accomplish this.
step
talk Tactician Sakaa##164741
|tip Inside the building.
accept Adventurer: Bogdan##61792 |goto 58.10,59.78
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Necrolords Command Table",{
author="support@zygorguides.com",
description="\nThis guide will walk you through recruiting your covenant command table followers.",
condition_end=function() return completedq(62316) end,
},[[
step
Accept or Complete the "Sanctum Improvements" Quest |condition havequest(62846) or completedq(62846)
|tip Use the "Necrolords Questline" guide to accomplish this.
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Select the "Command Table" node and click the "Activate" button to begin the upgrade.
Upgrade your Command Table to Tier 1 |condition covenantfeature("Command Table") >= 1 |goto Seat of the Primus/0 52.75,38.27
step
talk Arkadia Moa##161909
|tip Inside the building.
accept Strength in Numbers##63054 |goto 52.75,38.27
step
click Prime Scroll
|tip Inside the building.
Activate the Command Table |q 63054/1 |goto 40.84,46.40
step
talk Merick Feldscar##165321
|tip Inside the building.
turnin Strength in Numbers##63054 |goto 38.75,48.52
accept In Shadowlands Service##59603 |goto 38.75,48.52
step
click Command Table
|tip Inside the building.
|tip Choose a mission and folllow the instructions on-screen.
Start an Adventure |q 59603/1 |goto 39.31,46.32
step
talk Merick Feldscar##165321
|tip Inside the building.
turnin In Shadowlands Service##59603 |goto 38.75,48.52
step
Reach Renown Level 4 |condition covenant() == Necrolord and covenantrenown() >= 4
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Secutor Mevix##62309 |goto 38.75,48.52
step
Reach Renown Level 12 |condition covenant() == Necrolord and covenantrenown() >= 12
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Gunn Gorgebone##62312 |goto 38.75,48.52
step
Reach Renown Level 17 |condition covenant() == Necrolord and covenantrenown() >= 17
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Rencissa the Dynamo##62313 |goto 38.75,48.52
step
Reach Renown Level 27 |condition covenant() == Necrolord and covenantrenown() >= 27
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Khaliiq##62314 |goto 38.75,48.52
step
Reach Renown Level 33 |condition covenant() == Necrolord and covenantrenown() >= 33
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Plaguey##62315 |goto 38.75,48.52
step
Reach Renown Level 38 |condition covenant() == Necrolord and covenantrenown() >= 38
|tip Increase your Renown by completing Covenant Sanctum quests.
|tip They are repeatable quests in your covenant base.
|tip Use the "Necrolord Daily Quests" guide to accomplish this.
step
talk Merick Feldscar##165321
|tip Inside the building.
accept Adventurer: Rathan##62316 |goto 38.75,48.52
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Anima Conductor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and upgrading your covenant Anima Conductor.",
condition_end=function() return covenantfeature("Anima Conductor") >= 3 end,
},[[
step
Accept or Complete the "Enhancing the Hold" Quest |condition havequest(62794) or completedq(62794)
|tip Use the "Kyrian Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1865) >= 1 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 1
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 1 |condition covenantfeature("Anima Conductor") >= 1 |goto Elysian Hold/0 42.59,53.02
step
talk Haephus##167745
accept All That Remains##57901 |goto 42.59,53.02
step
click Elysian Scroll
Activate the Anima Conductor |q 57901/1 |goto 47.20,65.52
step
talk Capheus##167196
turnin All That Remains##57901 |goto 37.89,67.50
accept Power in the Sky##57903 |goto 37.89,67.50
step
click Anima Conductor
|tip Click the location of preference on the map to channel anima to it for the day.
|tip Each day you can channel anima.
|tip Every 10 consecutive days spent channeling will allow you to permanently reinforce the area of your choice.
Channel Anima |q 57903/1 |goto 38.34,67.94
step
talk Capheus##167196
turnin Power in the Sky##57903 |goto 37.89,67.50
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1865) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 2
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 2 |condition covenantfeature("Anima Conductor") >= 2 |goto Elysian Hold/0 42.59,53.02
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1865) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 3
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 3 |condition covenantfeature("Anima Conductor") >= 3 |goto Elysian Hold/0 42.59,53.02
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Anima Conductor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and upgrading your covenant Anima Conductor.",
condition_end=function() return covenantfeature("Anima Conductor") >= 3 end,
},[[
step
Accept or Complete the "The First New Growth" Quest |condition havequest(62898) or completedq(62898)
|tip Use the "Night Fae Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1865) >= 1 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 1
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 1 |condition covenantfeature("Anima Conductor") >= 1 |goto Heart of the Forest/1 39.40,54.32
step
talk Zayhad, The Builder##165702
accept Root Restoration##63067 |goto 39.44,54.43
step
click Fae Scroll
Activate the Anima Conductor |q 63067/1 |goto 47.20,65.52
step
talk Sesselie##167196
turnin Root Restoration##63067 |goto 50.63,62.59
accept The Roots Thirst##60723 |goto 50.63,62.59
step
click Anima Conductor
|tip Click the location of preference on the map to channel anima to it for the day.
|tip Each day you can channel anima.
|tip Every 10 consecutive days spent channeling will allow you to permanently reinforce the area of your choice.
Channel Anima |q 60723/1 |goto 47.93,61.37
step
talk Sesselie##167196
turnin The Roots Thirst##60723 |goto 50.63,62.59
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1865) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 2
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 2 |condition covenantfeature("Anima Conductor") >= 2 |goto 39.40,54.32
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1865) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 3
step
talk Zayhad, The Builder##165702
|tip Downstairs inside the tree.
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 3 |condition covenantfeature("Anima Conductor") >= 3 |goto 39.40,54.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Anima Conductor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and upgrading your covenant Anima Conductor.",
condition_end=function() return covenantfeature("Anima Conductor") >= 3 end,
},[[
step
Accept or Complete the "Home Improvement" Quest |condition havequest(62915) or completedq(62915)
|tip Use the "Venthyr Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1865) >= 1 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 1
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 1 |condition covenantfeature("Anima Conductor") >= 1 |goto Sinfall/0 55.63,26.27
step
talk Foreman Flatfinger##172605
accept Sanctum Upgrade: Anima Conductor##63066 |goto 55.63,26.27
step
click Scroll of Dark Empowerment
Activate the Anima Conductor |q 63066/1 |goto Sinfall/1 49.52,52.97
step
talk Devahia##164739
turnin Sanctum Upgrade: Anima Conductor##63066 |goto 47.67,57.39
accept The Anima Must Flow##60721 |goto 47.67,57.39
step
click Anima Conductor
|tip Click the location of preference on the map to channel anima to it for the day.
|tip Each day you can channel anima.
|tip Every 10 consecutive days spent channeling will allow you to permanently reinforce the area of your choice.
Channel Anima |q 60721/1 |goto 46.95,54.77
step
talk Devahia##164739
turnin The Anima Must Flow##60721 |goto 47.67,57.39
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1865) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 2
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 2 |condition covenantfeature("Anima Conductor") >= 2 |goto Sinfall/0 55.63,26.27
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1865) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 3
step
talk Foreman Flatfinger##172605
|tip Inside the building.
Tell him _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 3 |condition covenantfeature("Anima Conductor") >= 3 |goto Sinfall/0 55.63,26.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Covenants\\Necrolords Anima Conductor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking and upgrading your covenant Anima Conductor.",
condition_end=function() return covenantfeature("Anima Conductor") >= 3 end,
},[[
step
Accept or Complete the "Sanctum Improvements" Quest |condition havequest(62846) or completedq(62846)
|tip Use the "Necrolords Questline" guide to accomplish this.
stickystart "Collect_a_Redeemed_Soul"
step
Collect #1000# Reservoir Anima |condition curcount(1813) >= 1000 |future
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 1
step
label "Collect_a_Redeemed_Soul"
Collect a Redeemed Soul |condition curcount(1865) >= 1 |future
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 1
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 1 |condition covenantfeature("Anima Conductor") >= 1 |goto Seat of the Primus/0 52.75,38.27
step
talk Arkadia Moa##161909
accept Restoring Power##63057 |goto 52.75,38.27
step
click Prime Scroll
|tip Inside the building.
Activate the Anima Conductor |q 63057/1 |goto 49.69,36.92
step
talk Yondare Hex##167205
|tip Inside the building.
turnin Restoring Power##63057 |goto 48.95,35.95
accept Tower Power##60722 |goto 48.95,35.95
step
click Anima Conductor
|tip Inside the building.
|tip Click the location of preference on the map to channel anima to it for the day.
|tip Each day you can channel anima.
|tip Every 10 consecutive days spent channeling will allow you to permanently reinforce the area of your choice.
Channel Anima |q 60722/1 |goto 49.70,34.37
step
talk Yondare Hex##167205
|tip Inside the building.
turnin Tower Power##60722 |goto 48.95,35.95
stickystart "Collect_8_Redeemed_Souls"
step
Collect #2500# Reservoir Anima |condition curcount(1813) >= 2500
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 2
step
label "Collect_8_Redeemed_Souls"
Collect #8# Redeemed Souls |condition curcount(1865) >= 8
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 2
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 2 |condition covenantfeature("Anima Conductor") >= 2 |goto Seat of the Primus/0 52.75,38.27
stickystart "Collect_22_Redeemed_Souls"
step
Collect #5000# Reservoir Anima |condition curcount(1813) >= 5000
|tip Collect anima by completing world quests, dungeons, covenant calling quests, killing rares, and opening treasures.
|only if covenantfeature("Anima Conductor") < 3
step
label "Collect_22_Redeemed_Souls"
Collect #22# Redeemed Souls |condition curcount(1865) >= 22
|tip Complete the "Return Lost Souls" weekly quest to earn these each week.
|only if covenantfeature("Anima Conductor") < 3
step
talk Arkadia Moa##161909
|tip Inside the building.
Tell her _"Show me the Sanctum."_
|tip Select the "Anima Conductor" node and click the "Activate" button to begin the upgrade.
Upgrade your Anima Conductor to Tier 3 |condition covenantfeature("Anima Conductor") >= 3 |goto Seat of the Primus/0 52.75,38.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Torghast\\Torghast Questline",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Torghast questline.",
condition_suggested=function() return level >= 60 end,
startlevel=60.0,
endlevel=70.0,
image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsIntro",
},[[
step
Complete "The Highlord Calls" Quest |condition completedanyq(63029,63032,63030,63033)
|tip Use your covenant questline guide to accomplish this.
step
talk Highlord Bolvar Fordragon##164079
accept Into Torghast##60136 |goto Oribos/0 39.93,68.62
step
talk Ve'nari##162804
Ask her _"How do I enter Torghast?"_
Ask Ve'nari about a Way into Torghast |q 60136/1 |goto The Maw/0 46.91,41.69
step
talk Ve'nari##162804
turnin Into Torghast##60136 |goto 46.91,41.69
accept The Search for Baine##61099 |goto 46.91,41.69
step
Use Ve'nari's Portal to Enter Torghast |q 61099/1 |goto 48.20,39.38
step
click Wayfinder
Choose _<Use the [Attuned Shard] with the Wayfinder.>_
|tip Enter the instance with the popup that displays.
Take the Attuned Shard to the Wayfinder and See Where it Leads |q 61099/2 |goto Torghast/0 37.96,47.08
step
Enter Arkoban Hall |goto Torghast/6 43.78,9.70 < 10 |noway |c |q 61099
step
Enter the Portal |goto Torghast/6 51.30,84.47
|tip Walk into the swirling portal.
Reach Floor 2 in Torghast |goto Torghast/7 36.19,61.10 < 10 |noway |c |q 61099
step
Follow the path |goto Torghast/7 54.08,52.39 < 10 |walk
Enter the Portal |goto Torghast/7 54.84,78.28
|tip Walk into the swirling portal.
Reach Floor 3 in Torghast |goto Torghast/8 50.69,85.55 < 10 |noway |c |q 61099
step
Enter the Portal |goto Torghast/8 72.38,54.51
|tip Walk into the swirling portal.
Reach Floor 4 in Torghast |goto Torghast/7 78.38,52.61 < 10 |noway |c |q 61099
step
Follow the path |goto Torghast/7 71.37,52.40 < 10 |walk
Run up the stairs |goto Torghast/7 62.90,35.51 < 10 |walk
Enter the Portal |goto Torghast/7 62.86,53.95
|tip Walk into the swirling portal.
Reach Floor 5 in Torghast |goto Torghast/9 54.13,18.73 < 10 |noway |c |q 61099
step
Follow the path |goto Torghast/9 37.27,58.44 < 15 |only if walking
Enter the Portal |goto Torghast/9 62.57,71.88
|tip Walk into the swirling portal.
Reach Floor 6 in Torghast |goto Torghast/10 75.86,76.65 < 10 |noway |c |q 61099
step
kill Warden Arkoban##175123 |q 61099/3 |goto Torghast/10 46.43,50.95
accept Prison of the Forgotten##60267 |goto Torghast/10 46.43,50.95
|tip You will automatically accept this quest after looting him.
step
clicknpc Baine Bloodhoof##175294
Rescue Baine |q 61099/4 |goto 34.79,56.25
step
Enter the Portal |goto 35.23,41.51
|tip Walk into the swirling portal.
Leave Arkoban Hall |goto Torghast/0 37.23,47.20 < 10 |noway |c |q 61099
step
talk Ve'nari##162804
Tell her _"This was carried by one of the Jailer's more powerful guards. Do you know what it does?"_
Speak with Ve'nari |q 60267/1 |goto The Maw/0 46.91,41.69
step
click Domination Lock
turnin Prison of the Forgotten##60267 |goto 15.96,62.97
step
talk Highlord Bolvar Fordragon##164079
turnin Arkoban Hall##61099 |goto Oribos/0 39.92,68.62
accept Explore Torghast##62932 |goto Oribos/0 39.92,68.62
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10 |c |q 62932
step
Use a Portal to Torghast |goto Torghast/0 55.32,29.56
|tip Walk into any of the swirling portals.
|tip Enter the instance with the popup that displays.
Enter Torghast |goto Torghast/0 49.69,26.66 > 10000 |noway |c |q 62932
step
_Inside Torghast:_
Kill the final boss
|tip It is on floor 6.
collect Soul-Touched Key##184198 |n
Find Information |q 62932/1
step
_Inside Torghast:_
Leave Torghast |goto Torghast/0 37.23,47.20 < 10 |noway |c |q 62932
|tip Walk into the swirling portal nearby.
step
talk Highlord Bolvar Fordragon##164079
turnin Explore Torghast##62932 |goto Oribos/0 39.92,68.62
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10 |c |q 62935 |future
step
_Inside Torghast:_
|tip You will eventually automatically accept this quest when you enter Torghast.
|tip This quest is time gated.
accept Remnants of Hope##62935 |goto Torghast/0 16.29,47.08
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62935
step
Enter the Portal |goto 55.46,24.51
|tip Walk into the swirling portal.
|tip Choose any layer, it doesn't matter.
Enter the Fractured Chambers |goto 55.46,24.51 > 10000 |noway |c |q 62935
step
_Inside the Fractured Chambers:_
clicknpc Bound Soul Remnant##157561+
|tip They look like ghosts chained to the floor or locked in cages.
|tip There are usually many of them on floor 3.
Free #10# Soul Remnants |q 62935/1
step
_Inside the Fractured Chambers:_
|tip Reach floor 6 and kill the boss.
|tip Walk into the swirling portal nearby.
|tip You can also exit back to Torghast at the start of any floor.
Leave the Fractured Chambers |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 62935
step
talk Highlord Bolvar Fordragon##164079
turnin Remnants of Hope##62935 |goto Oribos/0 39.92,68.62
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62938 |future
step
_Inside Torghast:_
|tip You will eventually automatically accept this quest when you enter Torghast.
|tip This quest is time gated.
accept Information for a Price##62938 |goto Torghast/0 16.29,47.08
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62938
step
Enter the Portal |goto 55.46,24.51
|tip Walk into the swirling portal.
|tip Choose any layer, it doesn't matter.
Enter the Fractured Chambers |goto 55.46,24.51 > 10000 |noway |c |q 62938
step
_Inside the Fractured Chambers:_
talk Broker Ve'ken##152594
|tip He's on floor 3.
buy Coded Notes##184200 |n
Purchase Useful Information from Ve'ken |q 62938/1
step
_Inside the Fractured Chambers:_
talk Broker Ve'nott##170257
|tip He's on floor 6.
buy Ice-Encrusted Debris##184199 |n
Purchase a Useful Object from Ve'nott |q 62938/2
step
_Inside the Fractured Chambers:_
|tip Kill the boss on floor 6.
|tip Walk into the swirling portal nearby.
Leave the Fractured Chambers |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 62938
step
talk Highlord Bolvar Fordragon##164079
turnin Information for a Price##62938 |goto Oribos/0 39.92,68.62
accept Torment Chamber: Jaina##60139 |goto Oribos/0 39.92,68.62
step
click Wayfinder
Choose _<Use the [Attuned Shard] to begin your search for Jaina Proudmoore.>_
|tip Enter the instance with the popup that displays.
Use the Attuned Shard at the Wayfinder in Torghast |q 60139/1 |goto Torghast/0 37.96,47.08
step
_Inside Torment Chamber: Jaina:_
kill Tractus the Icebreaker##175234
|tip He is on floor 6.
Rescue Lady Jaina Proudmoore |q 60139/2
step
_Inside Torment Chamber: Jaina:_
|tip Walk into the swirling portal nearby, after rescuing Jaina.
Leave Torghast with Jaina |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 60139
step
talk Highlord Bolvar Fordragon##164079
turnin Torment Chamber: Jaina##60139 |goto Oribos/0 39.92,68.62
step
_Inside Torghast:_
|tip You will eventually automatically accept this quest when you enter Torghast.
|tip This quest is time gated.
accept Finding a Witness##62966 |goto Torghast/0 16.29,47.08
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62966
step
Enter the Portal |goto Torghast/0 49.69,26.66
|tip Walk into the swirling portal.
|tip Choose any layer, it doesn't matter.
Enter Skoldus Hall |goto Torghast/0 49.69,26.66 > 10000 |noway |c |q 62966
step
_Inside Skoldus Hall:_
talk Captive Dredger##175542
|tip He is on floor 1.
Ask him _"Have you seen any mortal prisoners brought through here?"_
Find the Informant |q 62966/1
step
_Inside Skoldus Hall:_
|tip Kill the boss on floor 6.
|tip Walk into the swirling portal nearby.
|tip You can also exit back to Torghast at the start of any floor.
Leave Skoldus Hall |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 62966
step
talk Highlord Bolvar Fordragon##164079
turnin Finding a Witness##62966 |goto Oribos/0 39.92,68.62
step
_Inside Torghast:_
|tip You will eventually automatically accept this quest when you enter Torghast.
|tip This quest is time gated.
accept Lest the Trail Go Cold##62969 |goto Torghast/0 16.29,47.08
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62969
step
Enter the Portal |goto Torghast/0 69.41,38.41
|tip Walk into the swirling portal.
|tip Choose any layer, it doesn't matter.
Enter Coldheart Interstitia |goto Torghast/0 69.41,38.41 > 10000 |noway |c |q 62969
step
_Inside Coldheart Interstitia:_
|tip Kill the boss on floor 6.
|tip The boss is random.
collect Burnt Totem##184242 |n
Find a Clue to Thrall's Location |q 62969/1
step
_Inside Coldheart Interstitia:_
|tip Walk into the swirling portal nearby.
Leave Coldheart Interstitia |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 62969
step
talk Highlord Bolvar Fordragon##164079
turnin Lest the Trail Go Cold##62969 |goto Oribos/0 39.92,68.62
accept Torment Chamber: Thrall##60146 |goto Oribos/0 39.92,68.62
step
click Wayfinder
Choose _<Use the [Attuned Shard] to begin your search for Thrall.>_
|tip Enter the instance with the popup that displays.
Use the Attuned Shard at the Wayfinder in Torghast |q 60146/1 |goto Torghast/0 37.96,47.08
step
_Inside Torment Chamber: Thrall:_
kill Arch-Tyrant Zerios##175238
|tip He is on floor 6.
Defeat Thrall's Captors |q 60146/2
step
_Inside Torment Chamber: Thrall:_
clicknpc Thrall##171128
|tip He appears nearby to where you killed the boss.
Rescue Thrall |q 60146/3
step
_Inside Torment Chamber: Thrall:_
|tip Walk into the swirling portal nearby, after rescuing Thrall.
Leave Torghast with Thrall |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 60146
step
talk Highlord Bolvar Fordragon##164079
turnin Torment Chamber: Thrall##60146 |goto Oribos/0 39.92,68.62
step
talk Highlord Bolvar Fordragon##164079
|tip This quest is time gated.
accept Signs of the Lion##62836 |goto 39.92,68.62
step
Enter Torghast |goto Torghast/0 16.29,47.08 < 10000 |c |q 62836
step
Enter the Portal |goto Torghast/0 55.38,69.82
|tip Walk into the swirling portal.
|tip Choose any layer, it doesn't matter.
Enter the Twisting Corridors |goto Torghast/0 55.38,69.82 > 10000 |noway |c |q 62836
step
_Inside the Twisting Corridors:_
|tip Kill the boss on floor 6.
|tip The boss is random.
collect Royal Ring##184278 |n
Find a Clue |q 62836/1
step
_Inside the Twisting Corridors:_
|tip Kill the boss on floor 12.
|tip The boss is random.
collect Lion Emblem##184277 |n
Find the Second Clue |q 62836/2
step
_Inside the Twisting Corridors:_
|tip Kill the boss on floor 18.
|tip The boss is random.
collect Length of Light-Infused Chain##184276 |n
Find the Third Clue |q 62836/3
step
_Inside the Twisting Corridors:_
|tip Walk into the swirling portal nearby, after killing the boss on floor 18.
Leave the Twisting Corridors |goto Torghast/0 16.29,47.08 < 10000 |noway |c |q 62836
step
talk Highlord Bolvar Fordragon##164079
turnin Signs of the Lion##62836 |goto Oribos/0 39.92,68.62
accept The Captive King##61730 |goto Oribos/0 39.92,68.62
step
click Helm of Domination
Use the Helm of Domination to Peer into Torghast |q 61730/1 |goto 39.50,69.27
step
talk Highlord Bolvar Fordragon##164079
turnin The Captive King##61730 |goto 39.92,68.62
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Shadowlands (50-60)\\Legendary Runecarving\\Unlocking the Runecarver",{
author="support@zygorguides.com",
description="\nThis guide will assist you in unlocking the Runecarver\n"..
"\nto allow runecarving legendaries.",
condition_suggested=function() return level >= 60 end,
startlevel=60.0,
endlevel=70.0,
image=ZGV.DIR.."\\Guides\\Images\\ShadowlandsIntro",
},[[
step
Complete the "Prison of the Forgotten" Quest |q 60267 |future
|tip Use your covenant questline guide to accomplish this.
step
talk Runecarver##164937
accept Deep Within##60268 |goto The Runecarver/0 50.36,54.22
step
talk Runecarver##164937
Ask him _"Who are you? Why are you here?"_
Learn More About the Prisoner |q 60268/1 |goto 50.17,53.83
step
talk Runecarver##164937
turnin Deep Within##60268 |goto 50.17,53.83
accept Reawakening##60269 |goto 50.17,53.83
step
Return to Torghast |goto Torghast/0 16.09,57.84 < 10 |c |q 60137
step
Follow the path |goto The Maw/0 44.56,41.13 < 15 |only if walking
kill Odalrik##172207
collect Runecarver's Memory##178561 |q 60269/1 |goto 38.63,28.84
step
talk Runecarver##164937
turnin Reawakening##60269 |goto The Runecarver/0 50.17,53.83
accept A Damned Pact##60270 |goto 50.17,53.83
step
talk Ve'nari##162804
turnin A Damned Pact##60270 |goto The Maw/0 46.91,41.69
accept A Grave Chance##60271 |goto 46.91,41.69
stickystart "Collect_50_Stygia"
step
Kill enemies around this area
|tip Enemies that are on fire will drop Molten Anima.
collect 5 Molten Anima##178562 |q 60271/2 |goto 37.76,39.29
step
label "Collect_50_Stygia"
Collect #50# Stygia |condition curcount(1767) >= 50 |q 60271
|tip Stygia is a reward from world quests, daily quests, bonus objectives and rare spawns in The Maw.
step
talk Ve'nari##162804
buy 1 Anima Supricifer##181324 |q 60271/1 |goto 46.91,41.69
step
talk Ve'nari##162804
turnin A Grave Chance##60271 |goto 46.91,41.69
accept The Weak Link##60272 |goto 46.91,41.69
step
talk Runecarver##164937
Tell him _"I've found a way, but we only have one shot at it. Let's get you free!"_
Break the Chain |q 60272/1 |goto The Runecarver/0 50.17,53.83
step
talk Runecarver##164937
turnin The Weak Link##60272 |goto 50.72,54.13
step
talk Runecarver##164937
accept Ashes of the Tower##62700 |goto 50.72,54.13
accept The Final Pieces##62719 |goto 50.72,54.13
accept The Vessels of Jewels##62800 |goto 50.72,54.13 |only if skill("Shadowlands Jewelcrafting") >= 1
accept The Vessels of Leather and Bone##62798 |goto 50.72,54.13 |only if skill("Shadowlands Leatherworking") >= 1
accept The Vessels of Metal##62797 |goto 50.72,54.13 |only if skill("Shadowlands Blacksmithing") >= 1
accept The Vessels of the Thread##62799 |goto 50.72,54.13 |only if skill("Shadowlands Tailoring") >= 1
stickystart "Acquire_a_Rune_Vessel"
stickystart "Obtain_2_Different_Missives"
stickystart "Collect_1250_Soul_Ash"
step
talk Appraiser Au'vesk##156670
Bring the Memory Back to Appraiser Au'vesk |q 62800/1 |goto Oribos/0 35.20,41.35
|only if havequest(62800) or completedq(62800)
step
talk Tanner Au'qil##156669
Bring the Memory Back to Tanner Au'qil |q 62798/1 |goto 42.27,26.60
|only if havequest(62798) or completedq(62798)
step
talk Smith Au'berk##156666
Bring the Memory Back to Smith Au'berk |q 62797/1 |goto 40.50,31.50
|only if havequest(62797) or completedq(62797)
step
talk Stitcher Au'phes##156681
Bring the Memory Back to Stitcher Au'phes |q 62799/1 |goto 45.47,31.78
|only if havequest(62799) or completedq(62799)
step
talk Appraiser Au'vesk##156670
turnin The Vessels of Jewels##62800 |goto Oribos/0 35.20,41.35
|only if havequest(62800) or completedq(62800)
step
talk Tanner Au'qil##156669
turnin The Vessels of Leather and Bone##62798 |goto 42.27,26.60
|only if havequest(62798) or completedq(62798)
step
talk Smith Au'berk##156666
turnin The Vessels of Metal##62797 |goto 40.50,31.50
|only if havequest(62797) or completedq(62797)
step
talk Stitcher Au'phes##156681
turnin The Vessels of the Thread##62799 |goto 45.47,31.78
|only if havequest(62799) or completedq(62799)
step
talk Runecarver##164937
turnin The Vessels of Jewels##62800 |goto 50.72,54.13
turnin The Vessels of Leather and Bone##62798 |goto 50.72,54.13
turnin The Vessels of Metal##62797 |goto 50.72,54.13
turnin The Vessels of the Thread##62799 |goto 50.72,54.13
turnin The Final Pieces##62719 |goto 50.72,54.13 |only if readyq(62719)
turnin Ashes of the Tower##62700 |goto 50.72,54.13 |only if readyq(62700)
step
label "Acquire_a_Rune_Vessel"
Acquire a Rune Vessel |q 62719/1
|tip Craft one with professions or purchase it from the Auction House.
|tip Plate vessels are named Shadowghast.
|tip Mail vessels are named Boneshatter.
|tip Leather vessels are named Umbrahide.
|tip Cloth vessels are named Grim-Veiled.
|tip Neck and ring vessels are named Shadowghast.
step
label "Obtain_2_Different_Missives"
Obtain #2# Different Missives |q 62719/2
|tip Craft them with Inscription or purchase them from the Auction House.
|tip There are missives of Haste, Critical Strike, Mastery, and Versatility.
step
talk Runecarver##164937
turnin The Final Pieces##62719 |goto 50.72,54.13
turnin Ashes of the Tower##62700 |goto 50.72,54.13 |only if readyq(62700)
step
label "Collect_1250_Soul_Ash"
Collect #1250# Soul Ash |q 62700/1
|tip Run Torghast Tower to collect Soul Ash.
|tip Soul Ash will be dropped by the final boss upon full completion.
step
talk Runecarver##164937
turnin Ashes of the Tower##62700 |goto 50.72,54.13
]])
