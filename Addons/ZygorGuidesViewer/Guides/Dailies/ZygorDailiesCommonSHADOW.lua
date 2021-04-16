local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Ardenweald World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Ardenweald.",
condition_suggested=function() return level >= 50 end,
condition_valid=function() return level >= 50 and completedanyq(62899,57904,59609,59324) end,
condition_valid_msg="Valid Message",
startlevel=50.0,
worldquestzone={1550,1565},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-60872
accept A Dangerous Harvest##60872 |goto Ardenweald/0 50.90,38.01
|tip You will accept this quest automatically.
step
Transform into an Ardenmoth |invehicle |goto 50.90,38.01 |q 60872
|tip Use the "Ardenmoth Transformation" ability that appears on-screen.
step
click Animacone##353874+
|tip They look like glowing blue acorns on the ground around this area.
collect 10 Animacone##180447 |q 60872/1 |goto 50.90,38.01
|next "Shadow_World_Quest_Emissaries"
step
label quest-60950
accept A Matter of Stealth##60950 |goto Ardenweald/0 70.94,33.05
|tip You will accept this quest automatically.
step
talk Amberfoot##170928
Tell her _"I'm ready for the disguise."_
Obtain a Disguise from Amberfoot |q 60950/1 |goto 70.94,33.05
step
click Dread Rose Bush+
|tip They look like clusters of shrubs on the ground around this area.
Enrage #8# Fallen Sylvar |q 60950/2 |goto 72.15,34.95
|tip Avoid the large purple circles surrounding Blighted Hunters.
|tip Use the "Shake it Off!" ability that appears on-screen after clicking Dread Rose Bushes near Fallen Sylvar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60899
accept A Night in the Woods##60899 |goto Ardenweald/0 27.30,58.05
|tip You will accept this quest automatically.
step
Search around for the patrol
|tip They appear on your minimap as a yellow dot.
|tip A group of six NPCs walk around.
Kill enemies around this area
|tip They will attack your patrol.
|tip They are elite, so you may need help with this.
Go on patrol |q 60899/1 |goto Ardenweald/0 27.30,58.05
|next "Shadow_World_Quest_Emissaries"
step
label quest-60649
accept A Thorn In Their Side##60649 |goto Ardenweald/0 45.26,72.35
|tip You will accept this quest automatically.
step
click Pulsing Animacone##353194+
|tip They look like white acorns on the ground around this area.
use the Pulsing Animacone##180170+
|tip Use them standing on top of Enervated Spirits around this area.
Kill enemies around this area
Disrupt the Drust's Efforts |q 60649/1 |goto 45.26,72.35
|next "Shadow_World_Quest_Emissaries"
step
label quest-61948
accept Airborne Defense Force##61948 |goto Ardenweald/0 51.27,44.07
|tip You will accept this quest automatically.
step
talk Faryl##173377
Tell him _"Begin pet battle."_
Defeat Faryl in a Pet Battle |q 61948/1 |goto 51.27,44.07
|next "Shadow_World_Quest_Emissaries"
step
label quest-61595
accept Alchemy: Potion of Hibernal Rest##61595 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 18 Fresh Dreamroot Trimmings##181985 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 9 Powdered Dreamroot>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 9 Powdered Dreamroot##181984 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 3 Liquid Sleep>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Liquid Sleep##181983 |goto 48.33,51.28 |q 61595
step
Open Your Alchemy Crafting Panel:
_<Create 1 Potion of Hibernal Rest>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Potion of Hibernal Rest##181375 |goto 48.33,51.28 |q 61595
|next "Shadow_World_Quest_Emissaries"
step
label quest-61949
accept Ardenweald's Tricksters##61949 |goto Ardenweald/0 40.17,28.74
|tip You will accept this quest automatically.
step
clicknpc Rascal##173381
Defeat Rascal in a Pet Battle |q 61949/1 |goto 40.17,28.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-61435
accept Blacksmithing: Stalker Arrowheads##61435 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Wooden Arrowhead Mold##181789 |goto 48.33,51.28 |q 61435
collect 5 Borrowed Twilight Bark##181860 |goto 48.33,51.28 |q 61435
collect 10 Borrowed Phaedrum Ore##181783 |goto 48.33,51.28 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Molten Phaedrum>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 5 Molten Phaedrum##181787 |goto 48.50,51.66 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Unrefined Arrowheads>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 5 Unrefined Arrowheads##181788 |goto 48.50,51.66 |q 61435
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Bundle of Stalker Arrowheads>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Bundle of Stalker Arrowheads##181784 |goto 48.50,51.66 |q 61435
|next "Shadow_World_Quest_Emissaries"
step
label quest-61596
accept Cooking: Arden Apple Pie##61596 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Sack of Arden Oats##181988 |goto 48.33,51.28 |q 61596
collect 3 Fresh Arden Apples##181987 |goto 48.33,51.28 |q 61596
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
<Create 1 Oat Pie Crust>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Oat Pie Crust##182101 |goto 48.33,51.28 |q 61596
step
Open Your Cooking Crafting Panel:
_<Create 3 Sliced Arden Apples>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 3 Sliced Arden Apples##181986 |goto 48.33,51.28 |q 61596
step
Open Your Cooking Crafting Panel:
_<Create 1 Arden Apple Pie>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Arden Apple Pie##181381 |goto 48.33,51.28 |q 61596
|next "Shadow_World_Quest_Emissaries"
step
label quest-61631
accept Drust Between You and Me##61631 |goto Ardenweald/0 45.31,63.99
|tip You will accept this quest automatically.
stickystart "Slay_15_Drust_Forces"
step
kill Ingra Krazic##174732 |q 61631/2 |goto 45.26,65.76
step
label "Slay_15_Drust_Forces"
Kill enemies around this area
Slay #15# Drust Forces |q 61631/1 |goto 45.31,63.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-61440
accept Enchanting: Boundless Basket##61440 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
step
click Crafter's Basket##356878
collect Antique Stalker's Bow##181991 |goto 48.33,51.28 |q 61440
step
cast Disenchant##324750
|tip Cast it on the Antique Stalker's Bow in your bags.
collect 1 Twilight Dust##181990 |goto 48.33,51.28 |q 61440
step
Open Your Enchanting Crafting Panel:
_<Create 1 Boundless Basket>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Boundless Basket##181384 |goto 48.33,51.28 |q 61440
|next "Shadow_World_Quest_Emissaries"
step
label quest-61597
accept Engineering: Bug Zapifier##61597 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 5 Machined Phaedrum Bar##181994 |goto 48.33,51.28 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 5 Electro Cable>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 5 Electro Cable##181992 |goto 48.53,51.66 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 2 Energized Battery>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Energized Battery##181993 |goto 48.53,51.66 |q 61597
step
Open Your Engineering Crafting Panel:
_<Create 1 Bug Zapifier>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Bug Zapifier##181385 |goto 48.53,51.66 |q 61597
|next "Shadow_World_Quest_Emissaries"
step
label quest-61598
accept Fishing: Speckled Flametail##61598 |goto Ardenweald/0 56.61,54.80
|tip You will accept this quest automatically.
|polish
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 10 Speckled Flametail##181387 |q 61598/1 |goto 56.61,54.80
|next "Shadow_World_Quest_Emissaries"
step
label quest-60855
accept Gormageddon##60855 |goto Ardenweald/0 60.73,31.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Wrath of Nature" ability to transform into a cat if you wish.
Clear the Dusty Burrows |q 60855/1 |goto 60.73,31.76
|next "Shadow_World_Quest_Emissaries"
step
label quest-62068
accept Gormling Piper: Crumbled Ridge##62068 |goto Ardenweald/0 64.86,38.95
|tip You will accept this quest automatically.
|polish
step
talk Master Sha'lor##158969
Tell her _"I need a flute."_
collect Fae Flute##182611 |q 62068/1 |goto 64.86,38.95
step
use the Fae Flute##182611
|tip Use it near Fresh Gormling Burrows.
|tip They look like piles of loose dirt on the ground around this area.
clicknpc Burrowing Gormling##173561+
Coax and Bag #8# Burrowing Gormlings |q 62068/2 |goto 71.97,35.77
|next "Shadow_World_Quest_Emissaries"
step
label quest-61717
accept Gormling Piper: Tranquil Pools##61717 |goto Ardenweald/0 64.86,38.95
|tip You will accept this quest automatically.
|polish
step
talk Master Sha'lor##158969
Tell her _"I need a flute."_
collect Fae Flute##182189 |q 61717/1 |goto 64.86,38.95
step
use the Fae Flute##182189
|tip Use it near Fresh Gormling Burrows.
|tip They look like piles of loose dirt on the ground around this area.
Coax and Bag #8# Burrowing Gormlings |q 61717/2 |goto 62.36,40.97
|next "Shadow_World_Quest_Emissaries"
step
label quest-62051
accept Gormling Toss: Spirit Glen##62051 |goto Ardenweald/0 65.30,38.66
|tip You will accept this quest automatically.
|polish
step
clicknpc Gormling##173520
collect Gormling in a Bag##182600 |q 62051/1 |goto 65.30,38.66
step
Follow the path up |goto 66.94,38.91 < 30 |only if walking
use the Gormling in a Bag##182600
|tip Use it on Wayward Gormlings.
|tip They look like green and yellow glowing slugs on objects around this area.
clicknpc Wayward Gormling##168254
|tip Click them after knocking them down to bag them.
Knock and Bag #8# Wayward Gormlings |q 62051/2 |goto 67.58,33.53
|next "Shadow_World_Quest_Emissaries"
step
label quest-61394
accept Gormling Toss: Tranquil Pools##61394 |goto Ardenweald/0 65.30,38.78
|tip You will accept this quest automatically.
|polish
step
clicknpc Gormling##172175
collect Gormling in a Bag##181284 |q 61394/1 |goto 65.30,38.78
step
use the Gormling in a Bag##181284
|tip Use it on Wayward Gormlings.
|tip They look like green and yellow glowing slugs on objects around this area.
clicknpc Wayward Gormling##168254
|tip Click them after knocking them down to bag them.
Knock and Bag #8# Wayward Gormlings |q 61394/2 |goto 63.79,40.61
|next "Shadow_World_Quest_Emissaries"
step
label quest-61543
accept Herbalism: Lambent Vigil's Torch##61543 |goto Ardenweald/0 39.42,55.14
|tip You will accept this quest automatically.
|polish
step
click Lambent Vigil's Torch##356538+
|tip They look like glowing pink flowers on the ground around this area.
collect 10 Lambent Vigil's Torch##181757 |q 61543/1 |goto 39.42,55.14
|next "Shadow_World_Quest_Emissaries"
step
label quest-61599
accept Inscription: Hymnal of Reprise##61599 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 10 Twilight Parchment##182286 |goto 48.33,51.28 |q 61599
collect 10 Ardenberry Pigment##181997 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 10 Ardenberry Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Ardenberry Ink##181996 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Calming Lyrics>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Calming Lyrics##181995 |goto 48.33,51.28 |q 61599
step
Open Your Inscription Crafting Panel:
_<Create 1 Hymnal of Respite>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Hymnal of Respite##181375 |goto 48.33,51.28 |q 61599
|next "Shadow_World_Quest_Emissaries"
step
label quest-61303
accept It's Raining Sparkles##61303 |goto Ardenweald/0 68.47,57.32
|tip You will accept this quest automatically.
|polish
step
talk Lady Moonberry##171946
Tell her _"I'm ready to rain sparkly terror."_
Speak to Lady Moonberry |q 61303/1 |goto 68.47,57.32
step
Kill Mustering enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Mustering Enemies |q 61303/2 |goto 70.26,54.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-61601
step
accept Jewelcrafting: Gem Studded Bangle##61601 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Polished Phedrum Rod##182000 |goto 48.33,51.28 |q 61601
collect 3 Handful of Glimmering Gemstones##182289 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Engraved Phaedrum Band>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Engraved Phaedrum Band##181998 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Polished Gemstones>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Polished Gemstones##181999 |goto 48.33,51.28 |q 61601
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Gem Studded Bangle>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Gem Studded Bangle##181431 |goto 48.33,51.28 |q 61601
|next "Shadow_World_Quest_Emissaries"
step
label quest-61602
accept Leatherworking: Stalker's Leather Quiver##61602 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 1 Bottle of Leather Dye##182290 |goto 48.33,51.28 |q 61602
collect 3 Runestag Leather##182003 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Dyed Runestag Leather>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Dyed Runestag Leather##182002 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Runestag Leather Strap>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Runestag Leather Strap##182001 |goto 48.33,51.28 |q 61602
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Stalker's Leather Quiver>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Stalker's Leather Quiver##181434 |goto 48.33,51.28 |q 61602
|next "Shadow_World_Quest_Emissaries"
step
label quest-61947
accept Lurking In The Shadows##61947 |goto Ardenweald/0 39.96,64.49
|tip You will accept this quest automatically.
step
clicknpc Nightfang##173376
Defeat Nightfang in a Pet Battle |q 61947/1 |goto 39.96,64.49
|next "Shadow_World_Quest_Emissaries"
step
label quest-61530
accept Mining: Ligneous Phaedrum Cluster##61530 |goto Ardenweald/0 52.23,37.19
|tip You will accept this quest automatically.
|polish
step
click Ligneous Phaedrum Deposit##356400+
|tip They look like crystal-covered roots coming out of the ground around this area.
collect 10 Ligneous Phaedrum Ore##181718 |q 61530/1 |goto 52.23,37.19
|next "Shadow_World_Quest_Emissaries"
step
label quest-61946
accept Natural Defenders##61946 |goto Ardenweald/0 58.23,56.91
|tip You will accept this quest automatically.
step
talk Glitterdust##173372
Tell it _"Begin pet battle."_
Defeat Glitterdust in a Pet Battle |q 61946/1 |goto 58.23,56.91
|next "Shadow_World_Quest_Emissaries"
step
label quest-61411
accept Our Heart Will Go On##61411 |goto Ardenweald/0 67.71,24.74
|tip You will accept this quest automatically.
step
talk Zayhad, The Builder##172185
Tell it _"I'll take this acorn and recover memories within Heartwood Grove."_
Speak to Zayhad |q 61411/1 |goto 67.71,24.74
stickystart "Slay_Drust_Invaders_61411"
step
Collect #3# Good Memories |q 61411/3 |goto 68.90,25.90
|tip Use the "Recovering Memories" ability that appears on-screen at memory spots.
|tip They appear on your minimap as yellow dots.
step
label "Slay_Drust_Invaders_61411"
Kill enemies around this area
Slay #12# Drust Invaders |q 61411/2 |goto 68.90,25.90
step
talk Zayhad, The Builder##172185
Tell it _"Here are the joyful memories I collected from Heartwood Grove."_
Return the Good Memories to Zayhad |q 61411/4 |goto 67.71,24.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-58975
accept Pest Removal##58975 |goto Ardenweald/0 54.66,49.10
|tip You will accept this quest automatically.
stickystart "Slay_Mature_Gorm_58975"
step
clicknpc Burrowing Mite Leg##163197+
|tip They look like wiggling bug legs sticking out of the ground around this area.
|tip Run away after clicking them to pull them out of the ground.
|tip A burrowing mite will attack you after extraction.
Extract #8# Burrowing Mites |q 58975/1 |goto 54.66,49.10
step
label "Slay_Mature_Gorm_58975"
Kill Darkwarren enemies around this area
Slay #12# Mature Gorm |q 58975/2 |goto 54.66,49.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60337
accept Pupa Trooper##60337 |goto Ardenweald/0 54.51,64.01
|tip You will accept this quest automatically.
|polish
step
label "Borrow_a_Pair_of_Enchanted_Wings"
click Basket of Enchanted Wings
|tip They appear on your minimap as yellow dots.
Borrow a Pair of Enchanted Wings |havebuff spell:313053 |goto 52.67,57.52 |q 60337 |or
'|condition completedq(60337) |or
step
click Ardenmoth Cocoon##352047+
|tip They look like large brown cocoons hanging underneath trees and platforms in the air around this area.
collect 10 Ardenmoth Cocoon##178717 |q 60337/2 |goto 52.60,60.15 |or
'|condition not hasbuff("spell:313053") and not completedq(60337) and questactive(60337) |next "Borrow_a_Pair_of_Enchanted_Wings" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59600
accept Rotbriar Trouble##59600 |goto Ardenweald/0 62.36,24.23
|tip You will accept this quest automatically.
step
clicknpc Nature Soul##165320+
|tip They look like small sparkling animals on the ground around this area.
Kill enemies around this area
Defend the Grove of Memory |q 59600/1 |goto Ardenweald/0 62.36,24.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-60476
accept Seize the Means of Production##60476 |goto Ardenweald/0 55.34,27.52
|tip You will accept this quest automatically.
step
Use the _"Sprigganize"_ ability
|tip It appears as a button on the screen.
Shrink to Spriggan Size |havebuff spell:347565 |goto 55.34,27.52 |q 60476
step
kill Brittlebark Mischief-Maker##168490+
Click objects around this area
|tip Look for small weapons laying on tables and benches around this area.
Collect #20# Spriggan-Sized Weaponry |q 60476/1 |goto 55.34,27.52
|next "Shadow_World_Quest_Emissaries"
step
label quest-60574
accept Shaking 'Shrooms##60574 |goto Ardenweald/0 31.42,35.25
|tip You will accept this quest automatically.
stickystart "Slay_Invading_Fae_60574"
step
click Swollen Mushroom Stalk+
|tip They look like tall green mushrooms on the ground around this area.
Shake #8# Swollen Mushroom Stalks |q 60574/1 |goto 31.42,35.25
step
label "Slay_Invading_Fae_60574"
Kill enemies around this area
Slay #16# Invading Fae |q 60574/2 |goto 31.42,35.25
|next "Shadow_World_Quest_Emissaries"
step
label quest-61603
accept Skinning: Thick Gormhide##61603 |goto Ardenweald/0 51.72,76.33
|tip You will accept this quest automatically.
|polish
step
Kill Gorm enemies around this area
|tip Skin their corpses.
collect 10 Thick Gormhide##181452 |q 61603/1 |goto 51.72,76.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-60770
accept Squish and Burn##60770 |goto Ardenweald/0 60.32,32.25
|tip You will accept this quest automatically.
stickystart "Squish_Larvae_60770"
step
use the Torch##180274
|tip Use it on the white egg sacks on the ground around this area.
Burn #12# Gorm Eggs |q 60770/1 |goto 60.32,32.25
step
label "Squish_Larvae_60770"
Squish #50# Larvae |q 60770/2 |goto 60.32,32.25
|tip Walk or ride over them.
|next "Shadow_World_Quest_Emissaries"
step
label quest-58993
accept Swarm Defense##58993 |goto Ardenweald/0 50.97,72.67
|tip You will accept this quest automatically.
step
clicknpc Veilwing Sentry##163633
Mount the Veilwing Sentry |q 58993/1 |goto 50.97,72.67
step
kill 45 Rootstinger Swarmling##163616 |q 58993/2 |goto 50.97,72.67
|tip They are in the air.
|tip Use the ability on your action bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60786
accept Swarm Defense##60786 |goto Ardenweald/0 25.04,60.90
|tip You will accept this quest automatically.
step
clicknpc Veilwing Sentry##163633
Mount the Veilwing Sentry |q 60786/1 |goto 25.04,60.90
step
kill 45 Rootstinger Swarmling##163616 |q 60786/2
|tip They fly through the air towards you.
|tip Use the abilities on your action bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61604
accept Tailoring: Cloak of Camouflage##61604 |goto Ardenweald/0 48.33,51.28
|tip You will accept this quest automatically.
|polish
step
click Crafter's Basket##356878
collect 13 Spool of Ardensilk##182006 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 6 Ardensilk Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 6 Ardensilk Cloth##182005 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Ardensilk Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 3 Bolt of Ardensilk Cloth##182004 |goto 48.33,51.28 |q 61604
step
Open Your Tailoring Crafting Panel:
_<Create 1 Cloak of Camouflage>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Cloak of Camouflage##181453 |goto 48.33,51.28 |q 61604
|next "Shadow_World_Quest_Emissaries"
step
label quest-60533
accept Terrors in Tirna Scithe##60533 |goto Ardenweald/0 32.45,55.21
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Cleanse Tirna Scithe |q 60533/1 |goto 32.45,55.21
|next "Shadow_World_Quest_Emissaries"
step
label quest-60564
accept Three Gorm Enter, No One Leaves##60564 |goto Ardenweald/0 51.65,76.27
|tip You will accept this quest automatically.
stickystart "Kill_Contender_Brahn"
stickystart "Kill_Contender_Melia"
step
kill Contender Karnek##169041 |q 60564/1 |goto 51.65,76.27
step
label "Kill_Contender_Brahn"
kill Contender Brahn##169042 |q 60564/2 |goto 51.45,75.34
step
label "Kill_Contender_Melia"
kill Contender Melia##169043 |q 60564/3 |goto 52.19,75.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-60842
accept To Serve Spriggan##60842 |goto Ardenweald/0 39.32,56.27
|tip You will accept this quest automatically.
step
Use the _"Throw Frog"_ ability
|tip It appears as a button on the screen.
|tip Use it on weakened Sicklethorn enemies.
collect 10 Bagged Frog##180439 |goto 39.32,56.27 |q 60842
step
Use the _"Throw Frog"_ ability
|tip It appears as a button on the screen.
Feed #10# Spriggan to The Craw |q 60842/1 |goto 40.47,52.70
|next "Shadow_World_Quest_Emissaries"
step
label quest-60739
accept Tough Crowd##60739 |goto Ardenweald/0 41.60,46.46
|tip You will accept this quest automatically.
step
Click NPCs around this area
|tip Keep clicking them until one of them reacts to you.
Kill enemies around this area
|tip Some of them will become hostile and attack you.
Slay #8# Exposed Boggart |q 60739/1 |goto 41.60,46.46
|next "Shadow_World_Quest_Emissaries"
step
label quest-60597
accept Trouble at the Gormling Corral##60597 |goto Ardenweald/0 48.01,24.26
|tip You will accept this quest automatically.
step
click Modified Gormling Lure
Take the Modified Gormling Lure |q 60597/1 |goto 48.01,24.26
step
Collect #8# Gormdaughters |havebuff 8 spell:309806 |goto 45.45,25.14 |q 60597
|tip Walk near Gormdaughters.
|tip They look like smaller neutral Gorms.
step
Deliver #8# Gormdaughters to the Wrangler |q 60597/2 |goto 47.07,28.69
|tip Run into the yellow circle.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60475
accept We'll Workshop It##60475 |goto Ardenweald/0 55.65,26.48
|tip You will accept this quest automatically.
|polish
step
click Supply Baskets##352089+
|tip They look like light-colored containers and sacks on the ground around this area.
collect 12 Sack of Supplies##178876 |q 60475/1 |goto 55.65,26.48
step
Click NPCs around this area
Tell them _"I would like you to have the supplies."_
Deliver the Supplies |q 60475/2 |goto 50.98,33.43 |future
|next "Shadow_World_Quest_Emissaries"
step
label quest-60609
accept Who Devours the Devourers?##60609 |goto Ardenweald/0 27.04,48.03
|tip You will accept this quest automatically.
step
label "Collect_Resonating_Anima_Core"
Kill enemies around this area
collect Resonating Anima Mote##180009 |n
|tip Five Resonating Anima Motes are required to make one core.
use the Resonating Anima Mote##180009
collect Resonating Anima Core##180008 |goto 27.04,48.03
step
use the Resonating Anima Core##180008
|tip Use them on the Devourer Rifts around this area.
|tip They look like giant swirling blue portals around this area.
|tip They appear on your minimap as yellow dots.
Close #5# Devourer Rifts |q 60609/1 |goto 27.04,48.03 |or
'|condition not completedq(60609) and questactive(60609) and itemcount(180008) == 0 |next "Collect_Resonating_Anima_Core" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60837
accept Wrath of Aliothe##60837 |goto Ardenweald/0 39.33,55.77
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip You can use the button that appears on-screen to turn into a bear if you wish.
Cleanse the Garden of Night |q 60837/ |goto 39.33,55.77
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Bastion World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Bastion.",
condition_suggested=function() return level >= 50 end,
condition_valid=function() return level >= 50 and completedanyq(62899,57904,59609,59324) end,
condition_valid_msg="Valid Message",
startlevel=50.0,
worldquestzone={1550,1533,1690},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-61593
accept A Crisis of Memory##61593 |goto Bastion/0 43.39,26.09
|tip You will accept this quest automatically.
step
kill Iristia the Unburdened##172913 |q 61593/3 |goto 41.08,26.78
|tip Inside the building.
|tip Neutral mobs may become hostile if you approach too closely.
step
kill Sybigone the Awakened##172914 |q 61593/2 |goto 43.34,25.74
|tip Neutral mobs may become hostile if you approach too closely.
|tip She flies around this area.
step
kill Olyssion the Reclaimer##172912 |q 61593/1 |goto Path of Wisdom/0 48.11,9.82
|tip All the way in the back of the building.
|tip Neutral mobs may become hostile if you approach too closely.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61689
accept A Crisis of Memory##61689 |goto Bastion/0 42.98,26.10
|tip You will accept this quest automatically.
stickystart "Slay_Hostile_Memories_61689"
step
kill Doubtful Acolyte##172872
|tip They will surrender before they die.
Subdue #8# Doubtful Acolytes |q 61689/1 |goto 42.98,26.10
step
label "Slay_Hostile_Memories_61689"
Kill enemies around this area
Slay #24# Hostile Memories |q 61689/2 |goto 42.98,26.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-60565
accept A Steward for Every Occasion##60565 |goto Bastion/0 52.66,46.81 |region heros_rest
|tip You will accept this quest automatically.
step
talk Helpful Steward##169078
|tip They look like large walking owls around this area.
Ask it _"Can you help me with something?_"
|tip This will cause it to follow you.
Ask it _"Can you help with this problem?_"
|tip You need to be standing near one of the various glowing NPCs around this area.
|tip The steward with the basket catches the scrolls.
|tip The steward with the hammer repairs the malfunctioning NPC.
|tip The steward with the broom sweeps the glass.
|tip The steward with the crate provides drink to the Thirsty Aspirant.
|tip The steward with the basket catches the scrolls.
Do #6# Chores |q 60565/1 |goto 52.66,46.81 |region heros_rest
|next "Shadow_World_Quest_Emissaries"
step
label quest-60623
accept AHHH! Real Monsters!##60623 |goto Bastion/0 67.53,30.18
|tip You will accept this quest automatically.
step
talk Aspirant Thetes##171834
Tell her _"I will accompany you."_
Assist Aspirant Thetes |q 60623/1 |goto 66.63,31.43
step
clicknpc Terrified Shrine Tender##171480+
|tip They look like cowering giant owls on the ground around this area.
clicknpc Gleaming Phalynx##169563+
|tip They look like cat-shaped constructs on the ground around this area.
Kill enemies around this area
Repel the Devourer threat |q 60623/2 |goto 67.53,30.18
|next "Shadow_World_Quest_Emissaries"
step
label quest-61220
accept AHHH! Real Monsters!##61220 |goto Bastion/0 66.63,31.43
|tip You will accept this quest automatically.
|polish
step
talk Aspirant Thetes##171834
Tell her _"I will accompany you."_
Assist Aspirant Thetes |q 61220/1 |goto 66.63,31.43
step
clicknpc Terrified Shrine Tender##171480+
|tip They look like cowering giant owls on the ground around this area.
clicknpc Gleaming Phalynx##169563+
|tip They look like cat-shaped constructs on the ground around this area.
Kill enemies around this area
Repel the Devourer threat |q 61220/2 |goto 67.53,30.18
|next "Shadow_World_Quest_Emissaries"
step
label quest-61148
accept AHHH! Real Monsters!##61148 |goto Bastion/0 67.54,30.25
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 100 Devoured Anima##180789 |q 61148/1 |goto 67.54,30.25
step
click Devourer Rift
|tip Use the "Create Rift" ability that appears on-screen.
Enter a Rift |q 61148/2
step
kill Visk the All-Consuming##171513 |q 61148/3 |goto 67.11,27.92
|tip Running over orbs on the ground will grant you a stacking buff.
|tip Each stack will increase your speed, damage, and healing.
|tip Stacks will also increase your damage taken.
step
click Devourer Rift
Exit the Rift |q 61148/4 |goto 67.31,28.49
|next "Shadow_World_Quest_Emissaries"
step
label quest-60929
accept Air Supremacy##60929 |goto Bastion/0 40.92,55.54
|tip You will accept this quest automatically.
step
click Weapon Rack
collect Xandria's Reach##180465 |q 60929/1 |goto 40.92,55.54
step
Kill enemies around this area
|tip Look up and target Flayedwing Wraiths.
|tip Use the "Xandria's Reach" ability that appears on-screen to reach them.
|tip After killing the rider, use the ability again to reach another rider.
Slay #5# Flayedwing Riders |q 60929/2 |goto 39.60,55.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61434
accept Alchemy: Flask of Measured Discipline##61434 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 3 Fresh Breezebloom Trimmings##182027 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 3 Pulverized Breezebloom>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Pulverized Breezebloom##182026 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 1 Distilled Resolve>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Distilled Resolve##182025 |goto 52.43,46.53 |region heros_rest |q 61434
step
Open Your Alchemy Crafting Panel:
_<Create 1 Flask of Measured Discipline>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Flask of Measured Discipline##181859 |goto 52.43,46.53 |region heros_rest |q 61434
|next "Shadow_World_Quest_Emissaries"
step
label quest-62235
accept Allay Their Fears##62235 |goto Bastion/0 51.29,59.60
|tip You will accept this quest automatically.
step
click Korinna's Allaying Crook##357754
collect Korinna's Allaying Crook##183045 |q 62235/1 |goto 51.29,59.60
step
Kill enemies around this area
use Korinna's Allaying Crook##183045
|tip Use it near floating blue orbs and enemy corpses around this area.
Charge the Allaying Crook |q 62235/2 |goto 50.06,57.43
step
Complete the Allaying Ritual |q 62235/3 |goto 49.59,59.88
|tip Stand here and use the "Korinna's Release" ability that appears on-screen.
|next "Shadow_World_Quest_Emissaries"
step
label quest-59601
accept Assault on the Vestibule##59601 |goto Bastion/0 43.38,78.75
|tip You will accept this quest automatically.
|polish
stickystart "Collect_Centurion_Armor_Fragment"
step
click Depleted Anima Canister##348830+
|tip They look like large brown and blue canisters on the ground around this area.
collect 3 Weak Anima Mote##172451 |q 59601/2 |goto 43.38,78.75
step
label "Collect_Centurion_Armor_Fragment"
Kill Forsworn enemies around this area
collect 3 Centurion Armor Fragment##176805 |q 59601/1 |goto 43.38,78.75
step
clicknpc Herculon##165467
Empower Herculon |q 59601/3 |goto 42.69,80.41
step
Kill enemies around this area
|tip Follow Herculon and protect him, killing anything that attacks him.
Assist Herculon |q 59601/4 |goto 41.79,78.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-62451
accept Assault on the Vestibule##62451 |goto Bastion/0 44.43,79.20
|tip You will accept this quest automatically.
step
clicknpc Steward Mechanic##174303
Take the Colossal Core |q 62451/1 |goto 44.43,79.20
step
Kill Forsworn enemies around this area
Charge the Colossal Core |q 62451/2 |goto 42.36,78.48
step
clicknpc Centurion Colossus##174305
Insert the Colossal Core |q 62451/3 |goto 42.80,78.54
step
clicknpc Centurion Colossus##174318
Enter the Centurion Colossus |invehicle |goto 42.46,78.39 |q 62451
step
Push the Button |q 62451/4 |goto 42.46,78.39
|tip Use "The Button" ability on your action bar.
step
Cross the bridge |goto 40.65,77.66 < 30 |only if walking
kill Andromede, Herald of the Forsworn##174307 |q 62451/5 |goto 37.81,76.56
|next "Shadow_World_Quest_Emissaries"
step
label quest-61564
accept Blacksmithing: Polished Kyrian Shield##61564 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 5 Shattered Kyrian Shield Fragment##181793 |goto 52.43,46.53 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Reforged Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Reforged Kyrian Shield##181790 |goto 52.48,46.77 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Tarnished Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Tarnished Kyrian Shield##181792 |goto 52.48,46.77 |region heros_rest |q 61564
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Polished Kyrian Shield>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Polished Kyrian Shield##181791 |goto 52.48,46.77 |region heros_rest |q 61564
|next "Shadow_World_Quest_Emissaries"
step
label quest-62058
accept Centurions, Assemble!##62058 |goto Bastion/0 50.11,20.55
|tip You will accept this quest automatically.
step
Select a Centurion |q 62058/1 |goto 50.11,20.55
|tip Click any centurion you wish to select it.
step
Watch the dialogue
Pilot your Centurion |q 62058/2 |goto 50.11,20.55
stickystart "Repel_the_Forsworn_Threat_62058"
step
Follow the path up |goto 50.69,16.62 < 30 |walk
kill Overseer Phoneira##173575 |q 62058/4 |goto 48.99,15.53
step
label "Repel_the_Forsworn_Threat_62058"
Kill enemies around this area
Repel the Forsworn Threat |q 62058/3 |goto 51.10,17.11
|next "Shadow_World_Quest_Emissaries"
step
label quest-61784
accept Cliffs of Bastion##61784 |goto Bastion/0 34.83,62.83
|tip You will accept this quest automatically.
step
talk Stratios##173131
Tell him _"Begin pet battle."_
Defeat Stratios in a Pet Battle |q 61784/1 |goto 34.83,62.83
|next "Shadow_World_Quest_Emissaries"
step
label quest-61439
accept Cooking: Steward Stew##61439 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 1 Grazer Bones##182024 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Carrots##182098 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Turnips##182099 |goto 52.43,46.53 |region heros_rest |q 61439
collect 1 Fresh Mushrooms##182100 |goto 52.43,46.53 |region heros_rest |q 61439
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Grazer Bone Broth>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Grazer Bone Broth##182023 |goto 52.48,46.77 |region heros_rest |q 61439
step
Open Your Cooking Crafting Panel:
_<Create 1 Diced Vegetables>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Diced Vegetables##182022 |goto 52.48,46.77 |region heros_rest |q 61439
step
Open Your Cooking Crafting Panel:
_<Create 1 Steward Stew>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Steward Stew##181945 |goto 52.48,46.77 |region heros_rest |q 61439
|next "Shadow_World_Quest_Emissaries"
step
label quest-60534
accept Disloyal Denizens##60534 |goto Bastion/0 26.82,23.34
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Click objects around this area
|tip Various glowing objects will give credit towards the objective.
Disrupt the Citadel of Loyalty |q 60534/1 |goto 26.82,23.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61549
accept Drought Conditions##61549 |goto Bastion/0 51.51,41.14
|tip You will accept this quest automatically.
stickystart "Slay_Etherwyrms_61549"
step
talk Trapped Caretaker##172714
Tell them _"I've cleared a path for you. You should leave."_
Evacuate #8# Caretakers |q 61549/2 |goto 51.51,41.14
step
label "Slay_Etherwyrms_61549"
Kill Etherwyrm enemies around this area
Slay #15# Etherwyrms |q 61549/1 |goto 51.51,41.14
|next "Shadow_World_Quest_Emissaries"
step
label quest-61629
accept Enchanting: True Aim##61629 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect Antique Kyrian Javelin##182021 |goto 52.43,46.53 |region heros_rest |q 61629
step
cast Disenchant##324750
|tip Cast it on the Antique Kyrian Javelin in your bags.
collect 1 Transcendent Dust##182020 |goto 52.43,46.53 |region heros_rest |q 61629
step
Open Your Enchanting Crafting Panel:
_<Create 1 Enchant: True Aim>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Enchant: True Aim##181948 |goto 52.43,46.53 |region heros_rest |q 61629
|next "Shadow_World_Quest_Emissaries"
step
label quest-61520
accept Enemy of My Mnemis##61520 |goto Bastion/0 50.71,20.71
|tip You will accept this quest automatically.
step
click Inert Centurion Core##356395
collect Inert Centurion Core##181710 |q 61520/1 |goto 50.71,20.71
step
Kill enemies around this area
|tip Keep killing enemies until the bar that appears on-screen is full.
Charge the Core |q 61520/2 |goto 51.62,17.67
step
Activate Forge-Keeper Mnemis |q 61520/3 |goto 51.01,20.63
|tip Use the "Charge Unit" ability on Forge-Keeper Mnemis.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61441
accept Engineering: Power Hammer##61441 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 14 Machined Solenium Bar##182018 |goto 52.43,46.53 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 2 Hardened Bolts>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Hardened Bolts##182017 |goto 52.48,46.77 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 1 Piston Assembly>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Piston Assembly##182016 |goto 52.48,46.77 |region heros_rest |q 61441
step
Open Your Engineering Crafting Panel:
_<Create 1 Power Hammer>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Power Hammer##181951 |goto 52.48,46.77 |region heros_rest |q 61441
|next "Shadow_World_Quest_Emissaries"
step
label quest-61442
accept Fishing: Glorious Shimmerfin##61442 |goto Bastion/0 53.66,32.50
|tip You will accept this quest automatically.
|polish
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Glorious Shimmerfin##181954 |q 61442/1 |goto 53.66,32.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-60844
accept Flight School: Falling With Style##60844 |goto Bastion/0 58.02,29.37
|tip You will accept this quest automatically.
step
label "Gain_Soaring_Ambition_Buff"
Launch Yourself into the Air |havebuff spell:331960 |goto 58.02,29.37
|tip Click the "Soaring Ambition" button that appears on-screen.
step
Earn #100# Points |q 60844/1 |goto 58.02,29.37 |or
|tip As you float towards the ground, fly through the rings floating in the air.
|tip Each ring is worth 10 points.
|tip Gold rings are worth 20 points.
'|condition not hasbuff("spell:331963") and not hasbuff("spell:331960") and not completedq(60844) and questactive(60844) |next "Gain_Soaring_Ambition_Buff" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60911
accept Flight School: Flapping Frenzy##60911 |goto Bastion/0 58.84,10.61
|tip You will accept this quest automatically.
|polish
step
label "Speak_to_Instructor_Malo_60911"
talk Instructor Malo##170721
Tell her _"I'd like a lighter course today."_
Speak to Instructor Malo |invehicle |goto 58.84,10.61 |q 60911
step
Reach the Goal |q 60911/2 |goto 45.90,3.06 |or
|tip Use the "Flap" ability to gain a slight amount of elevation.
|tip Avoid the fire and the obstacles on your way to the destination.
'|condition not invehicle() and not completedq(60911) and questactive(60911) |next "Speak_to_Instructor_Malo_60911" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60858
accept Flight School: Up and Away!##60858 |goto Bastion/0 41.66,23.33
|tip You will accept this quest automatically.
step
label "Enter_the_Updraft"
Enter the Updraft |havebuff spell:332463 |goto 41.63,23.13 |q 60858
|tip Walk onto the white air current.
step
Reach the Temple |q 60858/2 |goto 39.46,18.76 |or |notravel
|tip Bounce on top of each of the flowers, following the spiral upward path.
'|condition not hasbuff("spell:332463") and not completedq(60858) and questactive(60858) |next "Enter_the_Updraft" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59804
accept Gateways of Horror##59804 |goto Bastion/0 47.02,63.38
|tip You will accept this quest automatically.
|polish
step
click Vesper of History
Ring the Vesper of History |q 59804/1 |goto 47.02,63.38
step
click Void Gateway+
|tip They look like large void portals around this area.
|tip Kill any enemies and stand still while channeling.
Close #3# Void Gateways |q 59804/2 |goto 45.84,66.45
|next "Shadow_World_Quest_Emissaries"
step
label quest-61443
accept Herbalism: Windswept Rising Glory##61443 |goto Bastion/0 36.24,48.04
|tip You will accept this quest automatically.
|polish
step
click Windswept Rising Glory##356536+
|tip They look like white plants growing out of the ground around this area.
collect 40 Windswept Rising Glory##181749 |q 61443/1 |goto 36.24,48.04
|next "Shadow_World_Quest_Emissaries"
step
label quest-59771
accept History of Corruption##59771 |goto Bastion/0 47.03,63.38
|tip You will accept this quest automatically.
step
click Vesper of History
Ring the Vesper of History |q 59771/1 |goto 47.03,63.38
stickystart "Kill_Voidbound_Defenders_59771"
step
use the Wingpierce Javelin##177836
|tip Throw it at enemies to weaken them.
kill 4 Corrupted Cloudfeather##158256 |q 59771/2 |goto 45.85,65.30
step
label "Kill_Voidbound_Defenders_59771"
kill 6 Voidbound Defender##166120 |q 59771/3 |goto 45.85,65.30
|next "Shadow_World_Quest_Emissaries"
step
label quest-61446
accept Inscription: Invocation of Duty##61446 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 10 Borrowed Parchment##182202 |goto 52.43,46.53 |region heros_rest |q 61446
collect 10 Opalescent Pigment##182015 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 10 Opalescent Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Opalescent Ink##182014 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 10 Poem on Duty>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Poem on Duty##182013 |goto 52.43,46.53 |region heros_rest |q 61446
step
Open Your Inscription Crafting Panel:
_<Create 1 Invocation of Duty>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Invocation of Duty##181957 |goto 52.43,46.53 |region heros_rest |q 61446
|next "Shadow_World_Quest_Emissaries"
step
label quest-61447
accept Jewelcrafting: Gleaming Kyranite Necklace##61447 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 5 Borrowed Solenium Nugget##182012 |goto 52.43,46.53 |region heros_rest |q 61447
collect 3 Borrowed Kyranite##182197 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Solenium Wire>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 5 Solenium Wire##182011 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Kyranite Dangle>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Kyranite Dangle##182010 |goto 52.43,46.53 |region heros_rest |q 61447
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Gleaming Kyranite Necklace>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Gleaming Kyranite Necklace##181960 |goto 52.43,46.53 |region heros_rest |q 61447
|next "Shadow_World_Quest_Emissaries"
step
label quest-61449
accept Leatherworking: Steelhide Leather Harness##61449 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 1 Thick Steelhide Leather##182193 |goto 52.43,46.53 |region heros_rest |q 61449
collect 6 Steelhide Sinew##182194 |goto 52.43,46.53 |region heros_rest |q 61449
collect 6 Fresh Steelhide##182009 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Steelhide Leather Strap>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 6 Steelhide Leather Strap##182008 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Steelhide Leather Belt>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 3 Steelhide Leather Belt##182007 |goto 52.43,46.53 |region heros_rest |q 61449
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Steelhide Leather Harness>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Steelhide Leather Harness##181965 |goto 52.43,46.53 |region heros_rest |q 61449
|next "Shadow_World_Quest_Emissaries"
step
label quest-59578
accept Let's Get Ready to Humble##59578 |goto Bastion/0 51.16,80.41
|tip You will accept this quest automatically.
|polish
step
talk Sparring Aspirant##159505+
Ask them _"Will you spar with me?"_
|tip Defeat them in a sparring duel.
Spar with #8# Aspirants |q 59578/1 |goto 51.16,80.41
step
kill Archilon##158867 |q 59578/2 |goto 50.52,82.20
step
kill Straticus##158870 |q 59578/4 |goto 50.07,80.52
step
kill Epilon##158869 |q 59578/3 |goto 50.53,78.83
step
kill Athanos##158891 |q 59578/5 |goto 51.26,80.48
|next "Shadow_World_Quest_Emissaries"
step
label quest-62280
accept Limbo##62280 |goto Bastion/0 66.41,47.64
|tip You will accept this quest automatically.
|polish
step
click Pass to Shadowlands
Assess the First Soul |q 62280/1 |goto 66.47,47.60
step
click Return to Life
Assess the Second Soul |q 62280/2 |goto 66.39,47.73
step
click Return to Life
Assess the Third Soul |q 62280/3 |goto 66.39,47.73
|next "Shadow_World_Quest_Emissaries"
step
label quest-61337
accept March of the Eternal Protector##61337 |goto Bastion/0 57.14,54.23
|tip Search up and down this road for Heraclor.
|tip Heraclor is a giant boss-level construct that patrols the road.
|tip You will accept this quest automatically.
step
Kill enemies around Heraclor
|tip Waves of enemies will attack relentlessly.
|tip You may need help with this.
Defend Heraclor |q 61337/1 |goto 57.14,54.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-61783
accept Mega Bite##61783 |goto Bastion/0 36.51,31.70
|tip You will accept this quest automatically.
step
clicknpc Jawbone##173133
Defeat Jawbone in a Pet Battle |q 61783/1 |goto 36.51,31.70
|next "Shadow_World_Quest_Emissaries"
step
label quest-61787
accept Micro Defense Force##61787 |goto Bastion/0 51.40,38.33
|tip You will accept this quest automatically.
step
talk Zolla##173130
Tell it _"Begin pet battle."_
Defeat Zolla in a Pet Battle |q 61787/1 |goto 51.40,38.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-61467
accept Mining: Luminous Solenium Cluster##61467 |goto Bastion/0 53.35,73.61
|tip You will accept this quest automatically.
|polish
step
click Luminous Solenium Deposit##356393+
|tip They look like gold-covered rocks on the ground around this area.
collect 10 Luminous Solenium Ore##181450 |q 61467/1 |goto 53.35,73.61
|next "Shadow_World_Quest_Emissaries"
step
label quest-61967
accept Remedial Lessons##61967 |goto Bastion/0 64.06,43.61
|tip You will accept this quest automatically.
stickystart "Slay_Manifestations_of_Pride_61967"
step
label "Collect_Mirror_of_Ancient_Teachings_61967"
Kill enemies around this area
|tip Everything but Aberration mobs drop fragments.
collect Mirror Fragment##182457+ |n
|tip Three fragments are required to make one mirror.
use the Mirror Fragment##182457
collect 3 Mirror of Ancient Teachings##182458 |goto 64.06,43.61 |q 61967
step
click Instruction Dais+
|tip They look like stone platforms on the ground around this area.
|tip They appear on your minimap as yellow dots.
Restore #3# Instructors |q 61967/1 |goto 64.06,43.61 |or
'|condition not completedq(61967,1) and questactive(61967) and itemcount(182458) == 0 |next "Collect_Mirror_of_Ancient_Teachings_61967" |or
step
label "Slay_Manifestations_of_Pride_61967"
Kill Pride enemies around this area
Slay #15# Manifestations of Pride |q 61967/2 |goto 64.06,43.61
step
talk Voitha##156327
Tell her _"I will retrieve the scrolls."_
Speak to Voitha |q 61967/3 |goto 66.04,47.09
step
Watch the dialogue
|tip The Disciple of Humility will carry you to the archive.
click Sacred Text##357469+
|tip They look like rolled up scrolls on shelves on the side of the building.
|tip Wait for the Disciple of Humility to stop at each shelf.
collect 5 Sacred Text##182477 |q 61967/4 |goto 67.73,42.96
|next "Shadow_World_Quest_Emissaries"
step
label quest-61468
accept Skinning: Plush Copperfur Pelts##61468 |goto Bastion/0 42.48,59.62
|tip You will accept this quest automatically.
|polish
step
kill Copperfur Vulpin##169390+
|tip Skin their corpses.
collect 7 Plush Copperfur Pelts##181968 |q 61468/1 |goto 42.48,59.62
|next "Shadow_World_Quest_Emissaries"
step
label quest-62258
accept Soaring Over Bastion##62258 |goto Bastion/0 57.53,44.69
|tip You will accept this quest automatically.
step
kill Gilded Cloudstrider##159298+
collect 4 Cloudstrider Antler##183140 |q 62258/1 |goto 57.53,44.69
step
Follow the path up |goto Bastion/0 56.69,43.23 < 30 |only if walking
click Tray
Place the Antlers |q 62258/2 |goto 56.94,39.33
step
label "Mount_Andira"
clicknpc Andira##160255
Mount Andira |invehicle |goto 56.88,39.35
step
Fly Through the Rings |q 62258/4 |goto 56.86,44.15 |or
|tip Fly through the blue rings in the air around this area.
|tip If you go more than 10 seconds without flying through a ring, Andira will lose patience and throw you off.
'|condition not invehicle() and not completedq(62258) and questactive(62258) |next "Mount_Andira" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61469
accept Tailoring: Woven Gossamer Tunic##61469 |goto Bastion/0 52.43,46.53 |region heros_rest
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356553
collect 19 Gossamer Thread##182104 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 9 Gossamer Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 9 Gossamer Cloth##182103 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 3 Bolt of Woven Gossamer>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 3 Bolt of Woven Gossamer##182102 |goto 52.43,46.53 |region heros_rest |q 61469
step
Open Your Tailoring Crafting Panel:
_<Create 1 Woven Gossamer Tunic>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Woven Gossamer Tunic##181971 |goto 52.43,46.53 |region heros_rest |q 61469
|next "Shadow_World_Quest_Emissaries"
step
label quest-61791
accept Thenia's Loyal Companions##61791 |goto Bastion/0 54.55,56.10
|tip You will accept this quest automatically.
step
talk Thenia##173129
Tell her _"Begin pet battle."_
Defeat Thenia in a Pet Battle |q 61791/1 |goto 54.55,56.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-59717
accept Things Remembered##59717 |goto Bastion/0 59.66,62.02
|tip You will accept this quest automatically.
|polish
step
click Forgotten Memorandum##349274+
|tip They look like rolled up scrolls around this area.
collect 10 Forgotten Memorandum##177186 |q 59717/1 |goto 59.66,62.02
|next "Shadow_World_Quest_Emissaries"
step
label quest-59705
accept Things Remembered##59705 |goto Bastion/0 56.06,62.21
|tip You will accept this quest automatically.
|polish
step
click Forgotten Memorandum##349136+
|tip They look like small scrolls on the ground around this area.
collect 10 Forgotten Memorandum##177186 |q 59705/1 |goto 56.06,62.21
|next "Shadow_World_Quest_Emissaries"
step
label quest-62241
accept Training Regimen##62241 |goto Bastion/0 55.30,41.94
|tip You will accept this quest automatically.
step
clicknpc Gatamatos##159697
Retreive Gatamatos |q 62241/1 |goto 55.39,42.05
stickystart "Kill_Agitated_Etherwyrms_62241"
step
Enter the building |goto 55.69,42.88 < 10 |walk
Use the _"Order Search"_ ability
|tip Inside the building.
|tip It appears as a button on-screen.
|tip Follow Gatamatos to the gem.
Retreive #6# Training Gems |q 62241/3 |goto 55.69,42.88
step
label "Kill_Agitated_Etherwyrms_62241"
kill 8 Agitated Etherwyrm##159610 |q 62241/2 |goto 55.69,42.88
|tip Inside the building.
step
Leave the building |goto 55.70,42.84 < 10 |walk
talk Pelodis##158765
Tell him _"I'm ready for formation training."_
Speak to Pelodis |q 62241/4 |goto 54.96,41.38
step
clicknpc Gatamatos##173806
Complete the First Formation |q 62241/5 |goto 55.06,41.56
step
clicknpc Gatamatos##173803
Complete the Second Formation |q 62241/6 |goto 55.02,41.71
step
clicknpc Gatamatos##173803
Complete the Third Formation |q 62241/7 |goto 55.21,41.55
step
clicknpc Gatamatos##159675
Place Gatamatos |q 62241/8 |goto 55.39,42.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-59680
accept Vesiphone's Vicious Vesper##59680 |goto Bastion/0 59.54,74.33
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Purity Charm" ability that appears on-screen and kill enemies near the bell.
Empower the Purity Chime |q 59680/1 |goto 59.54,74.33
step
Cross the bridge |goto 60.89,74.69 < 20
kill Coalesced Fury##165720 |q 59680/2 |goto 63.96,71.95
|tip Use the "Empowered Purity Charm" ability that appears on-screen next to the Coalesced Fury.
|tip Images created by "Externalized Rage" will stun you if they reach you.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60958
accept We Send Only You##60958 |goto Bastion/0 40.01,50.80
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Click objects around this area
|tip Large bone spikes look like bony fingers coming out of the ground around this area.
|tip Banners are large flags with skulls and chains on them on the ground around this area.
|tip Noxious Barrels look like bone-covered barrels on the ground around this area.
Rip and Tear |q 60958/ |goto 40.01,50.80
|next "Shadow_World_Quest_Emissaries"
step
label quest-59585
accept We'll Make an Aspirant Out of You##59585 |goto Bastion/0 45.63,80.24
|tip You will accept this quest automatically.
step
click Training Spear
Equip Yourself |q 59585/1 |goto 45.47,80.44
step
Follow the instructions
|tip Trainer Ikaros will tell you which ability to use.
|tip If you have chat bubbles enabled, they will also appear over her head.
|tip Completing four in a row successfully will give you a boost to your progress.
Complete the Training Session |q 59585/2 |goto 45.62,80.11
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Maldraxxus World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Maldraxxus.",
condition_suggested=function() return level >= 50 end,
condition_valid=function() return level >= 50 and completedanyq(62899,57904,59609,59324) end,
condition_valid_msg="Valid Message",
startlevel=50.0,
worldquestzone={1550,1536},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-57205
accept A Few Bumps Along the Way##57205 |goto Maldraxxus/0 37.59,50.90
|tip You will accept this quest automatically.
step
Kill enemies inside the yellow circle
|tip Each enemy killed will increase your progress.
Defend the Artillery Location |q 57205/1 |goto 37.59,50.90 |count 1
step
Kill enemies inside the yellow circle
|tip Each enemy killed will increase your progress.
Defend the Artillery Location |q 57205/1 |goto 37.13,47.83 |count 2
|next "Shadow_World_Quest_Emissaries"
step
label quest-59703
accept Abombing Run##59703 |goto Maldraxxus/0 37.34,29.36
|tip You will accept this quest automatically.
|polish
step
talk Kynthia##160272
Tell her _"Let us begin."_
Speak with Kynthia |q 59703/1 |goto 37.34,29.36
step
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #50# Lumbering Siegebeasts |q 59703/2 |goto 29.02,32.97
step
kill Anima Conduit##165684 |q 59703/3 |goto 28.64,24.32
|tip Use the ability on your action bar.
step
kill Champion Shenrak##165747 |q 59703/4 |goto 27.43,23.66
|tip Inside the building.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61605
accept Alchemy: Draught of Grotesque Strength##61605 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 6 Bones of Defeated Enemies##182049 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 6 Crushed Bones>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 6 Crushed Bones##182048 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 2 Brutal Oil>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 2 Brutal Oil##182047 |goto 50.26,53.26 |q 61605
step
Open Your Alchemy Crafting Panel:
_<Create 1 Draught of Grotesque Strength>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Draught of Grotesque Strength##181858 |goto 50.26,53.26 |q 61605
|next "Shadow_World_Quest_Emissaries"
step
label quest-61352
accept All Will Be Consumed##61352 |goto Maldraxxus/0 45.32,34.22
|tip You will accept this quest automatically.
|polish
step
kill Enraged Glutton##163415+
Slay #10# Devourers |q 61352/1 |goto 45.32,34.22
step
kill Gurg##172074 |q 61352/2 |goto 41.92,32.23
|tip It patrols this area.
|tip It will appear on your minimap as a yellow dot.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61353
accept All Will Be Consumed##61353 |goto Maldraxxus/0 44.27,29.86
|tip You will accept this quest automatically.
|polish
step
click Shimmering Rift+
|tip They look like large blue and white portals around this area.
Kill enemies around this area
Stop the Devourer Invasion |q 61353/1 |goto 44.27,29.86
|next "Shadow_World_Quest_Emissaries"
step
label quest-58605
accept Amateur Night##58605 |goto Maldraxxus/0 50.37,47.27
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Elite enemies will spawn one at a time in the center of the arena.
|tip You may need a group for this.
Slay #2# Arena Opponents |q 58605/1 |goto 50.37,47.27
|next "Shadow_World_Quest_Emissaries"
step
label quest-59836
accept Battles Won Long Ago##59836 |goto Maldraxxus/0 46.16,59.08
|tip You will accept this quest automatically.
step
Kill Unbound enemies around this area
Kill #15# Iron Trench Enemies |q 59836/1 |goto 46.16,59.08
step
click Banner of Remembrance
Plant the Banner at the Iron Trench |q 59836/2 |goto 47.24,58.63
step
kill Mierina##161537 |q 59836/3 |goto 47.04,58.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-61343
accept Battles Won Long Ago##61343 |goto Maldraxxus/0 44.66,32.64
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Kill #15# Sepulcher of Knowledge Enemies |q 61343/1 |goto 44.66,32.64
step
click Banner of Remembrance
Plant the Banner at the Sepulcher of Knowledge |q 61343/2 |goto 43.49,33.26
step
kill Asmorda##161531 |q 61343/3 |goto 43.43,32.97
|next "Shadow_World_Quest_Emissaries"
step
label quest-61342
accept Battles Won Long Ago##61342 |goto Maldraxxus/0 27.63,59.06
|tip You will accept this quest automatically.
|polish
step
Kill Unbound enemies around this area
Kill #15# Burning Thicket Enemies |q 61342/1 |goto 27.63,59.06
step
click Banner of Remembrance
Plant the Banner at the Burning Thicket |q 61342/2 |goto 27.63,59.06
step
kill Sycorex##157510 |q 61342/3 |goto 27.63,59.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-57650
accept Better Off Dead##57650 |goto Maldraxxus/0 50.39,63.04
|tip You will accept this quest automatically.
|polish
stickystart "Destroy_Siege_Artillery_57650"
stickystart "Slay_Enemy_Troops_57650"
step
kill Siegemaster Traxon##161410 |q 57650/3 |goto 50.37,63.23
step
label "Destroy_Siege_Artillery_57650"
click Necrotic Charge+
|tip They look like small yellow landmines on the ground around this area.
Destroy #5# Siege Artillery |q 57650/2 |goto 50.39,63.04
step
label "Slay_Enemy_Troops_57650"
Kill enemies around this area
Slay #15# Enemy Troops |q 57650/1 |goto 50.39,63.04
|next "Shadow_World_Quest_Emissaries"
step
label quest-61606
accept Blacksmithing: Soul Razor##61606 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 5 Borrowed Oxxein Ore##182088 |goto 50.26,53.26 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Soft Heavy Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Soft Heavy Razor##182087 |goto 49.96,52.46 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Hardened Heavy Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Hardened Heavy Razor##182086 |goto 49.96,52.46 |q 61606
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Soul Razor>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Soul Razor##181862 |goto 49.96,52.46 |q 61606
|next "Shadow_World_Quest_Emissaries"
step
label quest-58207
accept Buggin' Out##58207 |goto Maldraxxus/0 53.01,22.57
|tip You will accept this quest automatically.
step
clicknpc Twigin##160349
Gain Twigin's Aid |q 58207/1 |goto 53.01,22.57
stickystart "Slay_Bony_Spindel_Insects_58207"
step
clicknpc Injured Scout##159739+
|tip They look like wounded bugs on the ground around this area.
|tip Use the "Twigin's Wings" button on-screen to fly high in the air.
|tip Use it again to crash down to the ground, dealing damage.
Save #6# Injured Spinners |q 58207/2 |goto 54.75,20.20
step
label "Slay_Bony_Spindel_Insects_58207"
Kill enemies around this area
|tip Use the "Twigin's Wings" button on-screen to fly high in the air. |notinsticky
|tip Use it again to crash down to the ground, dealing damage. |notinsticky
Slay #12# Bony Spindel Insects |q 58207/3 |goto 54.75,20.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-61477
accept Calling the Champions##61477 |goto Maldraxxus/0 50.10,55.69
|tip You will accept this quest automatically.
step
label "Retrieve_the_Flame_1"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 50.10,55.69 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 54.30,54.23 |count 1 |or
'|condition not hasbuff("spell:336414") and countremains(61477,5) and questactive(61477) |next "Retrieve_the_Flame_1" |or
step
label "Retrieve_the_Flame_2"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 54.30,54.23 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 56.25,44.23 |count 2 |or
'|condition not hasbuff("spell:336414") and countremains(61477,4) and questactive(61477) |next "Retrieve_the_Flame_2" |or
step
label "Retrieve_the_Flame_3"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 56.25,44.23 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 49.84,39.11 |count 3 |or
'|condition not hasbuff("spell:336414") and countremains(61477,3) and questactive(61477) |next "Retrieve_the_Flame_3" |or
step
label "Retrieve_the_Flame_4"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 49.84,39.11 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 44.77,45.01 |count 4 |or
'|condition not hasbuff("spell:336414") and countremains(61477,2) and questactive(61477) |next "Retrieve_the_Flame_4" |or
step
label "Retrieve_the_Flame_5"
click Brazier of Challenge
Retrieve the Flame |havebuff spell:336414 |goto 44.77,45.01 |q 61477
step
click Unlit Brazier of Challenge
|tip Follow the road.
|tip DO NOT MOUNT, you will lose the flame buff.
|tip Walk over the yellow circle runes that appear on the ground to increase your speed.
|tip Avoid the Slimelets as you run, they will make you lose the flame buff.
Light the Flame of Challenge |q 61477/1 |goto 46.58,53.63 |count 5 |or
'|condition not hasbuff("spell:336414") and countremains(61477,1) and questactive(61477) |next "Retrieve_the_Flame_5" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-60531
Follow the path |goto Maldraxxus/0 41.84,59.54 < 75 |only if walking
Continue following the path |goto 39.97,66.52 < 30 |only if walking
accept Chosen Champions##60531 |goto 34.92,75.46
|tip You will accept this quest automatically.
step
Click objects around this area
|tip Various objects glowing around this area will grant you buffs.
Kill enemies around this area
Disrupt the House of the Chosen |q 60531/1 |goto 34.92,75.46
|next "Shadow_World_Quest_Emissaries"
step
label quest-61607
accept Cooking: Spider Jerky##61607 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 1 Grave Dust##181946 |goto 50.26,53.26 |q 61607
collect 3 Thick Spider Legs##182045 |goto 50.26,53.26 |q 61607
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 3 Thick Spider Meat>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 3 Thick Spider Meat##182044 |goto 50.26,53.26 |q 61607
step
Open Your Cooking Crafting Panel:
_<Create 1 Spider Jerky>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Spider Jerky##181946 |goto 50.26,53.26 |q 61607
|next "Shadow_World_Quest_Emissaries"
step
label quest-58490
accept Deadly Reminder##58490 |goto Maldraxxus/0 50.37,64.66
|tip You will accept this quest automatically.
step
click Empowering Crystal+
|tip They look like large floating green crystals around this area.
Kill enemies around this area
Eliminate the Lich Forces |q 58490/1 |goto 50.37,64.66
|next "Shadow_World_Quest_Emissaries"
step
label quest-61141
accept Deathfang's Favorite Toy##61141 |goto Maldraxxus/0 55.30,53.62
|tip You will accept this quest automatically.
|polish
step
Kill Bloodtusk enemies around this area
collect Throwin' Skull##180810 |q 61141/1 |goto 55.30,53.62
step
clicknpc Deathfang##171450
|tip If you lose the skull after using it, click Deathfang again to retrieve it.
use the Throwin' Skull##180810
|tip Throw it nearby.
Play with Deathfang #5# Times |q 61141/2 |goto 55.30,53.62
|next "Shadow_World_Quest_Emissaries"
step
label quest-61708
accept Drawing Out the Poison##61708 |goto Maldraxxus/0 53.94,31.31
|tip You will accept this quest automatically.
|polish
step
clicknpc Grimshadow##160917
Choose _<Ride Grimshadow.>_
Ride Grimshadow to the Flayedwing Nesting Grounds |q 61708/1 |goto 53.94,31.31
step
Watch the dialogue
Reach the Flayedwing Nesting Grounds |nobuff spell:313986 |q 61708
step
click Golden Egg+
|tip They look like giant yellow eggs on the ground around this area.
collect Phylactery of Arin'gore##174043 |q 61708/2 |goto 58.75,26.68
step
use the Phylactery of Arin'gore##174043
Destroy the Phylactery of Arin'gore |q 61708/3
step
kill Arin'gore##161196 |q 61708/4 |goto 59.43,27.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-61608
accept Unbreakable Crystal##61608 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect Antique Necromancer's Staff##182043 |goto 50.26,53.26 |q 61608
step
cast Disenchant##324750
|tip Cast it on the Antique Necromancer's Staff in your bags.
collect 1 Necrotic Essence##182042 |goto 50.26,53.26 |q 61608
step
Open Your Enchanting Crafting Panel:
_<Create 1 Unbreakable Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Unbreakable Crystal##181949 |goto 50.26,53.26 |q 61608
|next "Shadow_World_Quest_Emissaries"
step
label quest-61609
accept Engineering: Boneclad Stake Launcher##61609 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 9 Machined Oxxein Bar##182040 |goto 50.26,53.26 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 2 Bone Reinforced Oxxein Tubing>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 2 Bone Reinforced Oxxein Tubing##182038 |goto 49.96,52.46 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 5 Handful of Oxxein Bolts>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 5 Handful of Oxxein Bolts##182039 |goto 49.96,52.46 |q 61609
step
Open Your Engineering Crafting Panel:
_<Create 1 Boneclad Stake Launcher>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Boneclad Stake Launcher##181952 |goto 49.96,52.46 |q 61609
|next "Shadow_World_Quest_Emissaries"
step
label quest-61867
accept Extra Pieces##61867 |goto Maldraxxus/0 34.01,55.27
|tip You will accept this quest automatically.
step
talk Rotgut##173263
Tell it _"Begin pet battle."_
Defeat Rotgut in a Pet Battle |q 61867/1 |goto 34.01,55.27
|next "Shadow_World_Quest_Emissaries"
step
label quest-61870
accept Failed Experiment##61870 |goto Maldraxxus/0 54.07,28.06
|tip You will accept this quest automatically.
step
clicknpc Gorgemouth##173274
Defeat Gorgemouth in a Pet Battle |q 61870/1 |goto 54.07,28.06
|next "Shadow_World_Quest_Emissaries"
step
label quest-61610
accept Fishing: Skeletal Mudskipper##61610 |goto Maldraxxus/0 51.47,20.22
|tip You will accept this quest automatically.
|polish
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Skeletal Mudskipper##181955 |q 61610/1 |goto 51.47,20.22
|next "Shadow_World_Quest_Emissaries"
step
label quest-61667
Follow the path up |goto Maldraxxus/0 44.27,63.49 < 30 |only if walking
Enter the cave |goto 44.59,65.46 < 20 |walk
accept Forged in Secret##61667 |goto 44.45,67.81
|tip You will accept this quest automatically.
step
talk Specialist Entra##166129
Ask her _"What should I do?"_
Speak with the Forgemaster |q 61667/1 |goto 44.45,67.81
step
Kill enemies that attack in waves
Protect the Forgemaster |q 61667/2 |goto 44.51,67.74
step
kill Nasho##166437 |q 61667/3 |goto 44.51,67.74
|next "Shadow_World_Quest_Emissaries"
step
label quest-61189
accept Further Gelatinous Research##61189 |goto Maldraxxus/0 65.38,54.92
|tip You will accept this quest automatically.
step
talk Project Lead Allen##171747
Tell him _"I will assit you."_
Acquire the Accumulator |q 61189/1 |goto 65.38,54.92
step
Kill enemies around this area
use the Aqueous Material Accumulator##180876
|tip Use it on tiny slimes that spawn after killing large slimes around this area.
Gather #30# Slimes |q 61189/2 |goto 63.92,52.48
|next "Shadow_World_Quest_Emissaries"
step
label quest-58221
accept Gettin' Even##58221 |goto Maldraxxus/0 50.26,21.38
|tip You will accept this quest automatically.
stickystart "Slay_Bonefused_Constructs_58221"
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |condition hasbuff("spell:346686") or not havequest(58221) |goto 51.10,19.12
step
kill Bonefused Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 3 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 3
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |condition hasbuff("spell:346686") or not havequest(58221) |goto 51.10,19.12
step
kill Bonefused Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 6 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 6
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |condition hasbuff("spell:346686") or not havequest(58221) |goto 51.10,19.12
step
kill Bonefused Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 9 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 9
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |condition hasbuff("spell:346686") or not havequest(58221) |goto 51.10,19.12
step
kill Bonefused Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 12 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |count 12
step
click Crate of Salvaged Explosives+
|tip They look like crates encased in bone on the ground around this area.
Pick Up Some Explosives |condition hasbuff("spell:346686") or not havequest(58221) |goto 51.10,19.12
step
kill Bonefused Hauler##164798+
|tip They fly around this area.
|tip Target one and use the "Throw Bomb" ability that appears on-screen.
collect 15 Stolen Equipment##184576 |q 58221/2 |goto 50.26,21.38 |or
step
label "Slay_Bonefused_Constructs_58221"
Kill enemies around this area
Slay #12# Bonefused Constructs |q 58221/1 |goto 50.26,21.38
step
kill Loose Stitch##165568 |q 58221/3 |goto 49.18,24.53
|tip It walks around this area.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61545
accept Herbalism: Engorged Marrowroot##61545 |goto Maldraxxus/0 63.22,35.02
|tip You will accept this quest automatically.
|polish
step
click Engorged Marrowroot##356540+
|tip They look like tumors with claws on the ground around this area.
collect 20 Lush Marrowroot##181388 |q 61545/1 |goto 63.22,35.02
|next "Shadow_World_Quest_Emissaries"
step
label quest-61611
accept Inscription: Litany of Might##61611 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 10 Flayed Flesh##182297 |goto 50.26,53.26 |q 61611
collect 10 Necrotic Pigment##182037 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 10 Necrotic Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Necrotic Ink##182036 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Unyielding Strength>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Unyielding Strength##182035 |goto 50.26,53.26 |q 61611
step
Open Your Inscription Crafting Panel:
_<Create 1 Litany of Might>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Litany of Might##181958 |goto 50.26,53.26 |q 61611
|next "Shadow_World_Quest_Emissaries"
step
label quest-61612
accept Jewelcrafting: Carved Crystal Ring##61612 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 1 Jagged Necrotic Crystal##182034 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Faceted Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Faceted Crystal##182033 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Hollowed Crystal>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Hollowed Crystal##182032 |goto 50.26,53.26 |q 61612
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Carved Crystal Ring>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Carved Crystal Ring##181961 |goto 50.26,53.26 |q 61612
|next "Shadow_World_Quest_Emissaries"
step
label quest-61540
accept Just Winging It##61540 |goto Maldraxxus/0 59.34,33.73
|tip You will accept this quest automatically.
step
Follow the path up |goto 59.34,33.73 < 15 |only if walking
talk Taloned Flayedwing##172871
Choose _<Ride the flayedwing back to the seat of the Primus.>_
Ride the Flayedwing |q 61540/1 |goto 59.03,33.98
step
Tame the Flayedwing |q 61540/2
|tip Use the first ability when it gets scared.
|tip Use the second ability when it tries to shake you off.
|tip Use the third ability when it is flying smoothly.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61613
accept Leatherworking: Bonestudded Fists##61613 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
step
click Crafter's Crate##356879
collect 2 Corpsestitch Thread##182029 |goto 50.26,53.26 |q 61613
collect 6 Unused Flesh##182031 |goto 50.26,53.26 |q 61613
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Cleaned Hide>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 6 Cleaned Hide##182030 |goto 50.26,53.26 |q 61613
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Bonestudded Fist>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Bonestudded Fist##181966 |goto 50.26,53.26 |q 61613
|next "Shadow_World_Quest_Emissaries"
step
label quest-61539
accept Liches Get Stitches##61539 |goto Maldraxxus/0 67.17,28.54
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Sin'dane's Forces |q 61539/1 |goto 67.17,28.54
|next "Shadow_World_Quest_Emissaries"
step
label quest-61866
accept Mighty Minions of Maldraxxus##61866 |goto Maldraxxus/0 46.86,50.00
|tip You will accept this quest automatically.
step
talk Caregiver Maximillian##173257
Tell him _"Begin pet battle."_
Defeat Caregiver Maximillian in a Pet Battle |q 61866/1 |goto 46.86,50.00
|next "Shadow_World_Quest_Emissaries"
step
label quest-61537
accept Mining: Monolithic Oxxein Cluster##61537 |goto Maldraxxus/0 37.77,49.50
|tip You will accept this quest automatically.
|polish
step
click Monolithic Oxxein Deposit##356401+
|tip They look like green orbs stuck in stone on the ground around this area.
collect 30 Monolithic Oxxein Ore##181719 |q 61537/1 |goto 37.77,49.50
|next "Shadow_World_Quest_Emissaries"
step
label quest-59234
accept Mixing A Mess##59234 |goto Maldraxxus/0 60.71,77.24
|tip You will accept this quest automatically.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 1
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 1
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 2
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 2
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 59234/1 |goto 60.71,77.24 |count 3
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 59234/2 |goto 58.43,74.31 |count 3
|tip Walk near the pool of blood.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61816
accept Mortanis##61816 |goto Maldraxxus/0 32.26,67.13
|tip You will accept this quest automatically.
step
kill Necrotic Ritualist##173414+
|tip Killing the ritualists will spawn Mortanis.
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in the path of "Spine Crawl." |grouprole EVERYONE
|tip Move out of "Unruly Remains" areas on the ground. |grouprole EVERYONE
|tip When affected by "Screaming Skull," group up with the raid. |grouprole EVERYONE
|tip Dispel "Unholy Frenzy" on Mortanis whenever possible. |grouprole EVERYONE
_TANK:_ |grouprole TANK
|tip Stack with the other tanks to split damage from "Bone Cleave." |grouprole TANK
kill Mortanis##167525 |q 61816/1 |goto 32.04,66.98 |future
|next "Shadow_World_Quest_Emissaries"
step
label quest-61841
click Translocation Sphere: House of Plagues |goto Maldraxxus/0 59.79,71.22 < 7 |only if walking
Enter the House of Plagues |goto 62.03,68.46 < 40 |c |noway |q 61699 |future
accept Not Much to Goo On##61841 |goto 65.14,66.36
|tip You will accept this quest automatically.
|polish
stickystart "Kill_Green_Slimes_61841"
step
kill Compressed Plague##157509 |q 61841/2 |goto 65.14,66.36
step
label "Kill_Green_Slimes_61841"
kill 10 Green Slime##166358 |q 61841/1 |goto 64.81,66.45
|next "Shadow_World_Quest_Emissaries"
step
label quest-61699
click Translocation Sphere: House of Plagues |goto Maldraxxus/0 59.79,71.22 < 7 |only if walking
Enter the House of Plagues |goto 62.03,68.46 < 40 |c |noway |q 61699 |future
|polish
step
accept Not Much to Goo On##61699 |goto Maldraxxus/0 65.14,66.36
|tip You will accept this quest automatically.
step
click Unbroken Plague Sample+
|tip They look like large bottles on the ground around this area.
Kill enemies around this area
Reclaim the House of Plagues |q 61699/1 |goto 65.14,66.36
|next "Shadow_World_Quest_Emissaries"
step
label quest-58437
accept Parts to a Whole##58437 |goto Maldraxxus/0 25.55,33.23
|tip You will accept this quest automatically.
step
Kill enemies around this area
use the Disassembly Flag##174110
|tip use it on the corpses of the enmies you kill.
Mark #15# Corpses for Harvesting |q 58437/1 |goto 25.55,33.23
|next "Shadow_World_Quest_Emissaries"
step
label quest-58505
accept Planned Demise##58505 |goto Maldraxxus/0 53.76,66.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Lich Battle Plan##174231 |q 58505/1 |goto 53.76,66.01
step
Kill enemies around this area
collect Construct Field Plan##174233 |q 58505/3 |goto 51.71,64.62
step
Kill enemies around this area
collect Varyz Tactical Plan##174232 |q 58505/2 |goto 48.76,64.71
|next "Shadow_World_Quest_Emissaries"
step
label quest-59642
accept Pulling Hairs##59642 |goto Maldraxxus/0 55.30,37.03
|tip You will accept this quest automatically.
stickystart "Collect_Stringy_Growth_59642"
stickystart "Collect_Corpselouse_Bristles_59642"
step
kill Sour Suckle##165549
collect Sour Suckle's Antenni##176847 |q 59642/3 |goto 55.30,37.03
step
label "Collect_Stringy_Growth_59642"
clicknpc Stringy Growth##165440+
|tip They look like tall thin weeds on the ground around this area.
|tip Run away after clicking them to pull them out of the ground.
|tip They appear on your minimap as yellow dots.
collect 8 Stringy Growth##176808 |q 59642/1 |goto 55.88,38.33
step
label "Collect_Corpselouse_Bristles_59642"
Kill Corpselouse enemies around this area
collect 8 Corpselouse Bristles##176846 |q 59642/2 |goto 55.88,38.33
|next "Shadow_World_Quest_Emissaries"
step
label quest-61614
accept Skinning: Rugged Carapace##61614 |goto Maldraxxus/0 54.00,58.99
|tip You will accept this quest automatically.
|polish
step
kill Virulent Pest##159856+
|tip Skin their corpses.
collect 10 Rugged Carapace##181969 |q 61614/1 |goto 54.00,58.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-61060
accept Spore Losers##61060 |goto Maldraxxus/0 76.10,55.83
|tip You will accept this quest automatically.
step
click Fungret Mushroom
Eat the Fungret Mushroom |q 61060/1 |goto 76.10,55.83
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Use the "Fungarian Furor" ability near Fungret Mushrooms.
Get Revenge for the Fungrets |q 61060/2 |goto 73.17,51.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-61615
accept Tailoring: Haunting Hood##61615 |goto Maldraxxus/0 50.26,53.26
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356879
collect 13 Bleakthread##182028 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 4 Bleakcloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 4 Bleakcloth##182117 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 2 Bolt of Bleakcloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 2 Bolt of Bleakcloth##182116 |goto 50.26,53.26 |q 61615
step
Open Your Tailoring Crafting Panel:
_<Create 1 Haunting Hood>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Haunting Hood##181972 |goto 50.26,53.26 |q 61615
|next "Shadow_World_Quest_Emissaries"
step
label quest-59743
accept The Spider on the Wall##59743 |goto Maldraxxus/0 31.69,59.44
|tip You will accept this quest automatically.
step
label "Speak_with_Khaliiq"
talk Khaliiq##165966
Tell it _"Hide me in the shadows, Khaliiq."_
|tip If you lose your buff, use the "Strategic Retreat" button on-screen to return to Khaliiq.
Speak with Khaliiq |havebuff spell:323591 |goto 31.69,59.44 |q 59743
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Requisitioner Kem to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Requisitioner's Scroll##177693 |q 59743/2 |goto 37.54,73.35 |or
'|condition not hasbuff("spell:323591") and havequest(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Captain Hawken to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Patrol Schedule##177710 |q 59743/3 |goto 35.40,79.44 |or
'|condition not hasbuff("spell:323591") and havequest(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
step
Use the _"Widow Venom"_ ability
|tip It appears as a button on the screen.
|tip Use it on Mel'san to loot him without having to kill him.
|tip Avoid enemies with blue circles around them as you move.
collect Envoy's Letter##177712 |q 59743/4 |goto 33.54,74.10 |or
'|condition not hasbuff("spell:323591") and havequest(59743) and not completedq(59743) |next "Speak_with_Khaliiq" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61868
accept Uncomfortably Undercover##61868 |goto Maldraxxus/0 63.23,46.88
|tip You will accept this quest automatically.
step
talk Dundley Stickyfingers##173267
Tell him _"Begin pet battle."_
Defeat Dundley Stickyfingers in a Pet Battle |q 61868/1 |goto 63.23,46.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-58601
accept Web of Information##58601 |goto Maldraxxus/0 55.65,18.83
|tip You will accept this quest automatically.
step
click Necrotic Sentry+
|tip The circle in the center will show you how close you are to a hidden Necrosentry.
|tip The closer to 100/100 you are, the closer you are to the sentry.
|tip They look like skulls that are invisible around this area.
Destroy #5# Necrotic Sentries |q 58601/1 |goto 55.65,18.83
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Shadowlands (50-60)\\Revendreth World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Revendreth.",
condition_suggested=function() return level >= 50 end,
condition_valid=function() return level >= 50 and completedanyq(62899,57904,59609,59324) end,
condition_valid_msg="Valid Message",
startlevel=50.0,
worldquestzone={1550,1525},
patch='90001',
},[[
step
label "Choose_World_Quest"
#include "Shadow_Choose_World_Quests"
step
label quest-61619
accept Alchemy: Elixir of Humility##61619 |goto Revendreth/0 32.68,49.02
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 3 Fresh Bramblethorn Trimmings##182073 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 3 Bramblethorn Juice>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 3 Bramblethorn Juice##182072 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 1 Refined Submission>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Refined Submission##182071 |goto 32.68,49.02 |q 61619
step
Open Your Alchemy Crafting Panel:
_<Create 1 Elixir of Humility>_
|tip It is in the Quest Recipes category under Shadowlands Alchemy.
collect 1 Elixir of Humility##181857 |goto 32.68,49.02 |q 61619
|next "Shadow_World_Quest_Emissaries"
step
label quest-59904
accept A Curious Cache##59904 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59904/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-59905
accept A Curious Cache##59905 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59905/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-59902
accept A Curious Cache##59902 |goto Revendreth/0 45.21,67.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #10# Banewood Wildlife |q 59902/1 |goto 45.21,67.20
|next "Shadow_World_Quest_Emissaries"
step
label quest-60655
accept A Stolen Stone Fiend##60655 |goto Revendreth/0 57.23,39.76
|tip You will accept this quest automatically.
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
click Lid
Find the Missing Stone Fiend |q 60655/1 |goto 57.23,39.76
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
Enter the building |goto 54.49,38.88 < 7 |walk
click Lid
|tip Inside the building.
Find the Missing Stone Fiend |q 60655/2 |goto 54.31,38.33
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
Enter the building |goto 52.64,47.20 < 7 |walk
click Lid
|tip Inside the building.
Find the Missing Stone Fiend |q 60655/3 |goto 52.46,46.92
step
use the Stone Fiend Tracker##180249
|tip Use it to display a trail leading to the Missing Stone Fiend.
click Lid
Find the Missing Stone Fiend |q 60655/4 |goto 46.53,48.44
step
kill Edgar the Collector##170079
Rescue the Missing Stone Fiend |q 60655/5 |goto 46.08,48.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-60657
accept Aid From Above##60657 |goto Revendreth/0 71.44,41.08
|tip You will accept this quest automatically.
step
clicknpc Darkwing Legionnaire##
Ride the Legionnaire |invehicle |goto 71.44,41.08 |q 60657
step
Deliver #10# Supplies |q 60657/1 |goto 67.21,43.89
|tip Use the "Deploy Supplier" ability on your action bar directly over the blue circles with arrows over them around this area.
|tip You have to drop the supplier in the circles to get credit.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60658
accept An Endless Appetite##60658 |goto Revendreth/0 63.09,56.06
|tip You will accept this quest automatically.
|polish
step
click Endmire Blossom
|tip It looks like a glowing red and orange flower on the ground around this area.
collect Endmire Blossom##181496 |q 60658/1 |goto 64.51,56.24
step
talk Morgan##172495
Choose _<Give the Endmire Blossom to Morgan.>_
Speak to Morgan |q 60658/2 |goto 59.25,59.92
step
label "Become_the_Ravenous_Devourer"
talk Morgan##172495
Tell her _"I am ready."_
Become the Ravenous Devourer |invehicle |goto 59.25,59.92 |q 60658
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Use the "Devour Flower" ability on glowing red an orange flowers to restore health and your docility bar.
Devour Enemies |q 60658/3 |goto 58.95,56.51 |or
You can find more around [65.13,56.37]
'|condition not invehicle() and not completedq(60658) and questactive(60658) |next "Become_the_Ravenous_Devourer" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61879
accept Ashes Will Fall##61879 |goto Revendreth/0 25.26,38.00
|tip You will accept this quest automatically.
step
clicknpc Scorch##173303
Defeat Scorch in a Pet Battle |q 61879/1 |goto 25.26,38.00
|next "Shadow_World_Quest_Emissaries"
step
label quest-58144
accept Battered and Bruised##58144 |goto Revendreth/0 24.37,38.68
|tip You will accept this quest automatically.
step
click Iron Chains
Collect the Chains |q 58144/1 |goto 24.37,38.68
stickystart "Slay_Ash_Ghouls_58144"
step
clicknpc Neglected Soul##160400
|tip Each soul will give you a debuff increasing your damage taken by 20%.
Retrieve #8# Neglected Souls |q 58144/2 |goto 22.71,35.96
Return the souls to [24.30,38.63]
step
label "Slay_Ash_Ghouls_58144"
Kill enemies around this area
Slay #12# Ash Ghouls |q 58144/3 |goto 22.71,35.96
|next "Shadow_World_Quest_Emissaries"
step
label quest-61620
accept Blacksmithing: Prideful Manacles##61620 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 1 Enchanted Rivets##182089 |goto 32.67,48.98 |q 61620
collect 2 Borrowed Sinvyr Bar##182091 |goto 32.67,48.98 |q 61620
collect 3 Borrowed Sinvyr Rod##182094 |goto 32.67,48.98 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Soft Manacle Chains>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 3 Soft Manacle Chains##182093 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Tempered Manacle Chains>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Tempered Manacle Chains##182092 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Binding Cuffs>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 2 Binding Cuffs##182090 |goto 32.62,49.31 |q 61620
step
Open Your Blacksmithing Crafting Panel:
_<Create 1 Prideful Manacles>_
|tip It is in the Quest Recipes category under Shadowlands Blacksmithing.
collect 1 Prideful Manacles##181378 |goto 32.62,49.31 |q 61620
|next "Shadow_World_Quest_Emissaries"
step
label quest-61621
accept Cooking: Skewered Meats##61621 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 1 Ember Chilis##182096 |goto 32.67,48.98 |q 61621
collect 4 Fresh Beast Steak##182070 |goto 32.67,48.98 |q 61621
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Ember Sauce>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Ember Sauce##182068 |goto 32.67,48.98 |q 61621
step
Open Your Cooking Crafting Panel:
_<Create 4 Seared Cutlets>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 4 Seared Cutlets##182069 |goto 32.67,48.98 |q 61621
step
Open Your Cooking Crafting Panel:
_<Create 1 Skewered Meats>_
|tip It is in the Quest Recipes category under Shadowlands Cooking.
|tip Stand next to the fire while cooking.
collect 1 Skewered Meats##181947 |goto 32.67,48.98 |q 61621
|next "Shadow_World_Quest_Emissaries"
step
label quest-60601
accept Darkwing Drills##60601 |goto Revendreth/0 58.64,43.28
|tip You will accept this quest automatically.
|polish
step
talk Darkwing Assassin##169419
_Or_
talk Darkwing Aggressor##169420
Tell it _"I am ready."_
Choose a Trainee |q 60601/1 |goto 58.64,43.28
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Train the Trainee |q 60601/2 |goto 58.91,49.55
|next "Shadow_World_Quest_Emissaries"
step
label quest-60532
Cross the bridge |goto Revendreth/0 40.11,30.38 < 30 |only if walking
accept Destroy the Dominant##60532 |goto Revendreth/0 33.03,20.99
|tip You will accept this quest automatically.
|tip This quest is elite, so you may need a group.
|polish
step
Kill enemies around this area
|tip Avoid the large stone watchers that look like gargoyles.
Disrupt Dominance Keep |q 60532/1 |goto 33.03,20.99
|next "Shadow_World_Quest_Emissaries"
step
label quest-57443
accept Dirty Job: Demolition Detail##57443 |goto Revendreth/0 53.64,73.49
|tip You will accept this quest automatically.
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Grab a Dredger |q 57443/1 |goto 53.64,73.49
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Demolish #3# Rubble Wreckages |q 57443/2 |goto 53.64,73.49
|tip Use the "Throw Dredger" ability on-screen to toss a dredger at the piles of rocks.
|tip Defend the dredger from any enemies that attack it until it destroys the tree.
|next "Shadow_World_Quest_Emissaries"
step
label quest-57465
accept Dirty Job: Wood Work##57465 |goto Revendreth/0 73.97,75.44
|tip You will accept this quest automatically.
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Grab a Dredger |q 57465/1 |goto 74.13,75.18
step
clicknpc Ripened Laborer##172929+
|tip They look like small humanoids around this area.
Destroy #3# Infested Horror Saps |q 57465/2 |goto 74.13,75.18
|tip Use the "Throw Dredger" ability on-screen to toss a dredger at the giant trees.
|tip Defend the dredger from any enemies that attack it until it destroys the tree.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61630
accept Enchanting: Everburning Brand##61630 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
step
click Crafter's Crate##356880
collect 1 Antique Duelist's Rapier##182067 |goto 32.67,48.98 |q 61630
step
cast Disenchant##324750
|tip Cast it on the Antique Duelist's Rapier in your bags.
collect 1 Sanguine Crystal##182066 |goto 32.67,48.98 |q 61630
step
Open Your Enchanting Crafting Panel:
_<Create 1 Everburning Brand>_
|tip It is in the Quest Recipes category under Shadowlands Enchanting.
collect 1 Everburning Brand##181950 |goto 32.67,48.98 |q 61630
|next "Shadow_World_Quest_Emissaries"
step
label quest-61622
accept Engineering: Duelist's Pistol##61622 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 8 Machined Sinvyr Bar##182064 |goto 32.67,48.98 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Sinvyr Barrel>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Sinvyr Barrel##182062 |goto 32.62,49.31 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Sinvyr Trigger Mechanism>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Sinvyr Trigger Mechanism##182063 |goto 32.62,49.31 |q 61622
step
Open Your Engineering Crafting Panel:
_<Create 1 Duelist's Pistol>_
|tip It is in the Quest Recipes category under Shadowlands Engineering.
collect 1 Duelist's Pistol##181953 |goto 32.62,49.31 |q 61622
|next "Shadow_World_Quest_Emissaries"
step
label quest-61885
accept Eyegor's Special Friends##61885 |goto Revendreth/0 67.63,66.08
|tip You will accept this quest automatically.
step
talk Eyegor##173324
Tell him _"Begin pet battle."_
Defeat Eyegor in a Pet Battle |q 61885/1 |goto 67.63,66.08
|next "Shadow_World_Quest_Emissaries"
step
label quest-61623
accept Fishing: Bloodthroated Grouper##61623 |goto Revendreth/0 68.99,61.53
|tip You will accept this quest automatically.
|polish
step
cast Fishing##131474
|tip Fish in the water until you catch enough fish.
collect 5 Bloodthroated Grouper##181956 |q 61623/1 |goto 68.99,61.53
|next "Shadow_World_Quest_Emissaries"
step
label quest-61544
accept Herbalism: Lush Widowbloom##61544 |goto Revendreth/0 40.97,78.00
|tip You will accept this quest automatically.
|polish
step
click Lush Widowbloom##356539+
|tip They look like red and white flowers on the ground around this area.
collect 35 Lush Widowbloom##181762 |q 61544/1 |goto 40.97,78.00
step
label quest-61624
accept Inscription: Catalog of Sins##61624 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 10 Rigid Vellum##182309 |goto 32.67,48.98 |q 61624
collect 10 Prideful Pigment##182061 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 10 Prideful Ink>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Prideful Ink##182060 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 10 Scroll of Castigation>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 10 Scroll of Castigation##182059 |goto 32.67,48.98 |q 61624
step
Open Your Inscription Crafting Panel:
_<Create 1 Catalog of Sins>_
|tip It is in the Quest Recipes category under Shadowlands Inscription.
collect 1 Catalog of Sins##181959 |goto 32.67,48.98 |q 61624
|next "Shadow_World_Quest_Emissaries"
step
label quest-59643
accept It's Race Day in the Ramparts!##59643 |goto Revendreth/0 40.56,46.88
|tip You will accept this quest automatically.
|polish
step
talk Grand Marshal Mudrag##165419
Speak to Grand Marshal Mudrag |q 59643/1 |goto 40.56,46.88
step
label "Hop_in_a_Wheelbarrow"
talk Grand Marshal Mudrag##165419
Hop in a Wheelbarrow |invehicle |goto 40.56,46.88 |q 59643
step
Follow the path down |goto 39.20,50.93 < 30 |walk
Continue down the path |goto 40.57,55.61 < 30 |walk
Continue down the path |goto 40.83,57.27 < 30 |walk
Win the Wheelbarrow Race |q 59643/2 |or |goto 39.99,59.06
|tip Avoid the bubbling black tar spots on the ground.
|tip Pick up the speed boosts that look like boots with wings on them.
|tip Run over shiny piles of rubble to enable the "Throw Rubble" ability.
|tip Use the "Throw Rubble" ability on your action bar to disrupt your opponent's progress.
'|condition outvehicle() and not completedq(59643) and questactive(59643) |next "Hop_in_a_Wheelbarrow" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61625
accept Jewelcrafting: Sinister Choker##61625 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 5 Polished Sinvyr Bar##182058 |goto 32.67,48.98 |q 61625
collect 3 Garnet Shard##182308 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Fine Sinvyr Chain>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 5 Fine Sinvyr Chain##182057 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 3 Brilliant Bauble>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 3 Brilliant Bauble##182056 |goto 32.67,48.98 |q 61625
step
Open Your Jewelcrafting Crafting Panel:
_<Create 1 Sinister Choker>_
|tip It is in the Quest Recipes category under Shadowlands Jewelcrafting.
collect 1 Sinister Choker##181964 |goto 32.67,48.98 |q 61624
|next "Shadow_World_Quest_Emissaries"
step
label quest-61626
accept Leatherworking: Courtly Leather Boots##61626 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 8 Ragged Sinrunner Leather##182055 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Softened Leather>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 8 Softened Leather##182054 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Tortured Sole>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 2 Tortured Sole##182053 |goto 32.67,48.98 |q 61626
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Courtly Leather Boots>_
|tip It is in the Quest Recipes category under Shadowlands Leatherworking.
collect 1 Courtly Leather Boots##181967 |goto 32.67,48.98 |q 61626
|next "Shadow_World_Quest_Emissaries"
step
label quest-60659
accept Light Defense##60659 |goto Revendreth/0 38.32,39.79
|tip You will accept this quest automatically.
step
label "Secure_the_Mirror"
click Ornate Mirror
Secure the Mirror |invehicle |goto 38.32,39.79 |q 60659
step
Kill enemies around this area
|tip Use the abilities on your action bar to shine the light on them.
|tip Carved Tricksters will appear and attempt to attack you.
|tip Shine the light on the Carved Tricksters first.
Slay #50# Enemies |q 60659/2 |goto 38.32,39.79 |or
'|condition outvehicle() and not completedq(60659) and questactive(60659) |next "Secure_the_Mirror" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-62203
accept Major Mirror Disruptions##62203 | |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 62203 |future
step
Enter the Right Mirror |goto 30.91,48.43 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Left Mirror |goto 31.10,46.37 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Right Mirror |goto 32.01,46.88 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Front-Center Mirror |goto 31.09,47.96 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 62203 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62203)
step
Enter the Left Mirror |goto 31.80,47.50 < 2
Reach the End of the Maze |q 62203/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 62203/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-62204
accept Major Mirror Disruptions##62204 |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 62204 |future
step
Enter the Left Mirror |goto 31.11,47.70 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Center Mirror |goto 31.11,46.63 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Front-Right Mirror |goto 32.01,46.88 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Front-Left Mirror |goto 31.12,47.71 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 62204 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(62204)
step
Enter the Right Mirror |goto 31.80,48.38 < 2
Reach the End of the Maze |q 62204/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 62204/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-59855
accept Major Mirror Disruptions##59855 |goto Revendreth/0 31.98,46.71
|tip You will accept this quest automatically.
|polish
step
label "Enter_The_Forgotten_Chamber"
Run down the stairs |goto 32.00,46.69 < 15 |walk |only if dist("Revendreth/0 31.25,46.68") > 45
Enter the Mirror |goto 31.12,46.68 < 2
|tip Downstairs inside the building.
Enter the Forgotten Chamber |goto 30.82,47.95 < 5 |c |noway |q 59855 |future
step
Enter the Right-Front Mirror |goto 31.12,48.21 < 2
Enter the Second Chamber |goto 30.86,46.63 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.86,46.63 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Left Mirror |goto 30.91,46.17 < 2
Enter the Third Chamber |goto 31.70,46.62 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 31.70,46.62 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Left Mirror |goto 31.80,46.15 < 2
Enter the Fourth Chamber |goto 30.85,47.96 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Front-Center Mirror |goto 31.12,47.96 < 2
Enter the Fifth Chamber |goto 31.75,47.96 < 5 |c |noway |q 59855 |or
'|goto 31.25,46.68 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
'|goto 30.85,47.96 > 100 |c |noway |next "Enter_The_Forgotten_Chamber" |or |only if questactive(59855)
step
Enter the Front-Left Mirror |goto 31.98,47.71 < 2
Reach the End of the Maze |q 59855/1 |goto 31.80,48.38 |or
step
kill Krengaath##163921 |q 59855/2 |goto 26.58,58.88
|next "Shadow_World_Quest_Emissaries"
step
label quest-61538
accept Mining: Menacing Sinvyr Cluster##61538 |goto Revendreth/0 31.39,51.72
|tip You will accept this quest automatically.
|polish
step
click Menacing Sinvyr Deposit##356402+
|tip They look like spiked blue and red rocks on the ground around this area.
collect 10 Menacing Sinvyr Ore##181720 |q 61538/1 |goto 31.39,51.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-60653
accept Mirror Restoration##60653 |goto Revendreth/0 24.12,52.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 10 Glass Shard##175384 |q 60653/1 |goto 24.12,52.56
step
Enter the building |goto 24.79,53.45 < 7 |walk
click Broken Mirror
|tip Downstairs inside the building.
Restore the Broken Mirror |q 60653/2 |goto 24.57,52.52
step
Enter the Ornate Mirror |q 60653/3 |goto 24.57,52.52
step
kill Torval##169885 |q 60653/4 |goto 32.04,45.28
|next "Shadow_World_Quest_Emissaries"
step
label quest-59808
accept Muck It Up##59808 |goto Revendreth/0 35.55,32.37
|tip You will accept this quest automatically.
stickystart "Kill_Primordial_Sludge_59808"
step
kill Primordial Sludge##166206+
collect Primordial Muck##177880 |n
use the Primordial Muck##177880
Throw #5# Recovered Primordial Mucks |q 59808/1 |goto 35.55,32.37
step
label "Kill_Primordial_Sludge_59808"
kill 8 Primordial Sludge##166206 |q 59808/2 |goto 35.55,32.37
|next "Shadow_World_Quest_Emissaries"
step
label quest-59718
accept Parasol Peril##59718 |goto Revendreth/0 57.65,55.64
|tip You will accept this quest automatically.
|polish
step
click "Totally Safe" Anima-Draining Parasol
Collect a "Totally Safe" Anima-Draining Parasol |q 59718/1 |goto 57.65,55.64
step
Land Safely |q 59718/2 |goto 56.51,62.50
|tip Use the ability that appears on-screen to begin.
|tip Fly through red anima orbs to gain a slight altitude boost and fill your anima bar.
|next "Shadow_World_Quest_Emissaries"
step
label quest-61883
accept Resilient Survivors##61883 |goto Revendreth/0 39.98,52.59
|tip You will accept this quest automatically.
step
talk Sylla##173315
|tip Up on the platform.
Tell her _"Begin pet battle."_
Defeat Sylla in a Pet Battle |q 61883/1 |goto 39.98,52.59
|next "Shadow_World_Quest_Emissaries"
step
label quest-59599
accept Retaining the Court##59599 |goto Revendreth/0 42.67,41.37
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Court_Attackers_59599"
step
click Anima Container+
|tip They look like small to large lanerns filled with red anima around this area.
click Darkwing Rebel+
|tip They look like large winged stone legion statues on the ground around this area.
|tip You need 10-15 anima on your bar to awaken a Darkwing Rebel.
Awaken #4# Darkwing Rebels |q 59599/1 |goto 42.67,41.37
step
label "Slay_Court_Attackers_59599"
Kill enemies around this area
Slay #12# Court Attackers |q 59599/2 |goto 42.67,41.37
|next "Shadow_World_Quest_Emissaries"
step
label quest-60602
accept Secret Service##60602 |goto Revendreth/0 56.81,32.37
|tip You will accept this quest automatically.
step
label "Acquire_the_Servant's_Basic_Kit"
click Servant's Basic Kit##349089
|tip Inside the building.
Acquire the Servant's Basic Kit |invehicle |goto 56.81,32.37 |q 60602
step
kill Muck Rat##169623+
|tip When they appear, use the "Left Hook" ability on them.
|tip Avoid the patrolling Stone Legion Security.
|tip Use "Serve Food," and "Serve Drink" abilities on guests.
|tip Guests that are in dire need will have three red warning lines above their head.
|tip Guests that that can wait longer will have three yellow warning lines above their head.
|tip Check their buff to see if they need food or a drink.
|tip Use the "Clean" ability on muck piles on the ground around this area.
Make the Guests Happy |q 60602/2 |goto 55.95,30.39 |or
'|condition outvehicle() and not completedq(60602) and questactive(60602) |next "Acquire_the_Servant's_Basic_Kit" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61627
accept Skinning: Horrific Leather Hide##61627 |goto Revendreth/0 73.48,75.91
|tip You will accept this quest automatically.
|polish
step
Kill Bonemauler enemies around this area
|tip Skin their corpses.
collect 10 Horrific Leather Hide##181970 |q 61627/1 |goto 73.48,75.91
|next "Shadow_World_Quest_Emissaries"
step
label quest-58084
accept Soul Snares##58084 |goto Revendreth/0 41.61,78.30
|tip You will accept this quest automatically.
stickystart "Slay_Dreadhollow_Threats_58084"
step
click Soul Snare+
|tip They look like tall pointed urns with Snared Souls shackled to them on the ground around this area.
Liberate #8# Souls |q 58084/2 |goto 41.61,78.30
step
label "Slay_Dreadhollow_Threats_58084"
Kill enemies around this area
Slay #12# Dreadhollow Threats |q 58084/1 |goto 41.61,78.30
|next "Shadow_World_Quest_Emissaries"
step
label quest-59617
accept Stone Fiend Saboteurs##59617 |goto Revendreth/0 55.70,37.36
|tip You will accept this quest automatically.
step
kill Stone Fiend Saboteur##165373+
|tip They fly all over this area.
collect Stolen Missive##176582 |n
Deliver #7# Stolen Missives |q 59617/1 |goto 55.70,37.36
|tip Use the "Deliver Missive" ability on-screen next to mailboxes with Fiendish Servants on top.
|tip They appear on your minimap as yellow dots.
|next "Shadow_World_Quest_Emissaries"
step
label quest-60656
accept Summon Your Sins##60656 |goto Revendreth/0 65.74,30.70
|tip You will accept this quest automatically.
|polish
step
click Sinstone Fragment##353655+
|tip They look like small broken stone tablets on the ground around this area.
Kill Sinstone enemies around this area
collect 20 Sinstone Fragment##180279 |q 60656/1 |goto 65.74,30.70
step
Enter the building |goto 65.93,29.37 < 7 |walk
Click an object on the table
|tip Inside the building.
Choose a Catalyst |q 60656/2 |goto 65.69,29.15
step
talk Alchemist Leticia##170291
|tip Inside the building.
Tell him _"I am ready."_
Watch the dialogue
Create an Amalgamation |q 60656/3 |goto 65.74,28.98
|next "Shadow_World_Quest_Emissaries"
step
label quest-60654
accept Swarming Souls##60654 |goto Revendreth/0 50.84,31.99
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Manifestations_60654"
step
clicknpc Lost Soul##169916+
|tip They look like floating ghosts around this area.
|tip You can only lead one to the ritualist at a time.
talk Avowed Ritualist##169917
Tell him _"I have a soul for you."_
Recover #6# Lost Souls |q 60654/1 |goto 50.84,31.99
Return them to [49.02,34.86]
step
label "Slay_Manifestations_60654"
Kill Manifestation enemies around this area
Slay #15# Manifestations |q 60654/2 |goto 50.00,33.34
|next "Shadow_World_Quest_Emissaries"
step
label quest-61628
accept Tailoring: Looming Tapestry##61628 |goto Revendreth/0 32.67,48.98
|tip You will accept this quest automatically.
|polish
step
click Crafter's Crate##356880
collect 32 Thread of Pride##182052 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 10 Prideweave Cloth>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 10 Prideweave Cloth##182050 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 5 Bolt of Prideweave>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 5 Bolt of Prideweave##182051 |goto 32.67,48.98 |q 61628
step
Open Your Tailoring Crafting Panel:
_<Create 1 Looming Tapestry>_
|tip It is in the Quest Recipes category under Shadowlands Tailoring.
collect 1 Looming Tapestry##181973 |goto 32.67,48.98 |q 61628
|next "Shadow_World_Quest_Emissaries"
step
label quest-59852
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Gubbins and Tubbins##59852 |goto 31.33,57.42
|tip You will accept this quest automatically.
step
label "Hear_Gubbins_and_Tubbins'_Story"
clicknpc Tubbins##166558
|tip Inside the building.
Ask Gubbins and Tubbins to Tell Their Story |invehicle |goto 31.33,57.42 |q 59852
step
click Tubbins's Lost Teapot
Find the Lost Teapot |q 59852/2 |goto 35.09,57.79 |or
'|condition outvehicle() and not completedq(59852) and questactive(59852) and havequest(59852) |next "Hear_Gubbins_and_Tubbins'_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party On Time |q 59852/3 |goto 31.33,57.42 |or
'|condition outvehicle() and not completedq(59852) and questactive(59852) and havequest(59852) |next "Hear_Gubbins_and_Tubbins'_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59853
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Lost Sybille##59853 |goto 30.88,57.28
|tip You will accept this quest automatically.
step
label "Hear_Sybille's_Story"
Enter the building |goto 31.15,57.12 < 10 |walk
clicknpc Lost Sybille##166538
|tip Inside the building.
Ask Lost Sybille to Tell Her Story |invehicle |goto 30.88,57.28 |q 59853
step
kill Smug Francise##166819
collect Theotar's Parasol##177947 |q 59853/2 |goto 35.51,52.90 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
click Theotar's Parasol
Place Theotar's Parasol |q 59853/3 |goto 34.98,52.33 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
collect Vulca's Lost Toolkit##177948 |q 59853/4 |goto 33.89,61.35 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
click Vulca's Glazier Toolkit
Place Vulca's Toolkit |q 59853/5 |goto 35.28,60.35 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
click Tubbins's Lucky Teapot
collect Tubbins's Lost Teapot##177949 |q 59853/6 |goto 38.21,61.34 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
click Tubbins's Lucky Teapot
Place Tubbins's Teapot |q 59853/7 |goto 35.10,57.80 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party |q 59853/8 |goto 30.89,57.26 |or
'|condition outvehicle() and not completedq(59853) and questactive(59853) and havequest(59853) |next "Hear_Sybille's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59848
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Theotar##59848 |goto 31.03,57.47
|tip You will accept this quest automatically.
step
label "Hear_Theotar's_Story"
clicknpc Theotar##166555
|tip Inside the building.
Ask Theotar to Tell His Story |invehicle |goto 31.03,57.47 |q 59848
stickystart "Kill_Scorched_Scavenger_59848"
stickystart "Slay_Very_Rude_Ash_Ghouls_59848"
step
click Theotar's Parasol
Recover the Stolen Parasol |q 59848/2 |goto 34.98,52.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana.
|tip Use "Bolt of Madness" for single-target ranged attacking.
|tip Use "Dude's Descent" for AoE damage and stuns.
|tip Try to stay close to objects out of bright light.
'|condition outvehicle() and not completedq(59848) and questactive(59848) and havequest(59848) |next "Hear_Theotar's_Story" |or
step
label "Kill_Scorched_Scavenger_59848"
kill 5 Scorched Scavenger##157731 |q 59848/3 |goto 34.95,57.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana. |notinsticky
|tip Use "Bolt of Madness" for single-target ranged attacking. |notinsticky
|tip Use "Dude's Descent" for AoE damage and stuns. |notinsticky
|tip Use the "Raise Parasol" ability out-of-combat to shield yourself from the sun. |notinsticky
'|condition outvehicle() and not completedq(59848) and questactive(59848) and havequest(59848) |next "Hear_Theotar's_Story" |or
step
label "Slay_Very_Rude_Ash_Ghouls_59848"
Slay #5# Very Rude Ash Ghouls |q 59848/4 |goto 34.95,57.32 |or
|tip Use the "Spot of Tea" ability out-of-combat to recover health and mana. |notinsticky
|tip Use "Bolt of Madness" for single-target ranged attacking. |notinsticky
|tip Use "Dude's Descent" for AoE damage and stuns. |notinsticky
|tip Use the "Raise Parasol" ability out-of-combat to shield yourself from the sun. |notinsticky
'|condition outvehicle() and not completedq(59848) and questactive(59848) and havequest(59848) |next "Hear_Theotar's_Story" |or
step
Follow the path down |goto 31.12,56.46 < 20 |only if walking
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party On Time |q 59848/5 |goto 31.03,57.47 |or
'|condition outvehicle() and not completedq(59848) and questactive(59848) and havequest(59848) |next "Hear_Theotar's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-59850
Enter the building |goto Revendreth/0 31.15,57.12 < 10 |walk
accept Tea Tales: Vulca##59850 |goto 31.17,57.59
|tip You will accept this quest automatically.
step
label "Hear_Vulca's_Story"
clicknpc Vulca##166556
|tip Inside the building.
Ask Vulca to Tell Her Story |invehicle |goto 31.17,57.59 |q 59850
stickystart "Slay_Ash_Ghouls_59850"
step
click Vulca's Glazier Toolkit
|tip Avoid areas of direct light.
Recover Glazier's Toolkit |q 59850/2 |goto 35.28,60.35 |or
'|condition outvehicle() and not completedq(59850) and questactive(59850) and havequest(59850) |next "Hear_Vulca's_Story" |or
step
label "Slay_Ash_Ghouls_59850"
Kill Ash Ghoul enemies around this area
|tip Use the abilities on your action bar.
|tip Avoid areas of direct light.
Slay #10# Ash Ghouls |q 59850/3 |goto 35.96,58.58 |or
'|condition outvehicle() and not completedq(59850) and questactive(59850) and havequest(59850) |next "Hear_Vulca's_Story" |or
step
Enter the building |goto 31.15,57.12 < 10 |walk
Watch the dialogue
Get to the Tea Party |q 59850/4 |goto 31.17,57.59 |or
'|condition outvehicle() and not completedq(59850) and questactive(59850) and havequest(59850) |next "Hear_Vulca's_Story" |or
|next "Shadow_World_Quest_Emissaries"
step
label quest-61886
accept The Mind Games of Addius##61886 |goto Revendreth/0 61.29,41.10
|tip You will accept this quest automatically.
step
talk Addius the Tormentor##173331
Tell him _"Begin pet battle."_
Defeat Addius the Tormentor in a Pet Battle |q 61886/1 |goto 61.29,41.10
|next "Shadow_World_Quest_Emissaries"
step
label quest-59581
accept The Strength of Sinfall##59581 |goto Revendreth/0 49.97,50.72
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Chalice Dredger##161258+
|tip They look like small humanoids around this area.
click Anima Stores+
|tip They look like small metal cages on the ground around this area.
Disrupt the Chalice District |q 59581/1 |goto 49.97,50.72
|next "Shadow_World_Quest_Emissaries"
step
label quest-59789
accept Tithe and Taxes##59789 |goto Revendreth/0 73.50,68.89
|tip You will accept this quest automatically.
step
click Misplaced Anima Collector
Obtain the Anima Collector |q 59789/1 |goto 73.50,68.89
stickystart "Slay_Manor_Guests_59789"
stickystart "Kill_Cruel_Collector_59789"
step
kill 3 Callous Peacekeeper##165830 |q 59789/2 |goto 76.91,68.43
|tip Use the "Siphon" ability on-screen to weaken them.
step
label "Slay_Manor_Guests_59789"
Kill enemies around this area
Slay #12# Manor Guests |q 59789/3 |goto 75.12,67.88
step
label "Kill_Cruel_Collector_59789"
kill 5 Cruel Collector##165831 |q 59789/4 |goto 75.12,67.88
|tip Use the "Siphon" ability on-screen to weaken them.
|next "Shadow_World_Quest_Emissaries"
step
label quest-57328
accept Trashin' the Camp##57328 |goto Revendreth/0 45.83,59.05
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Soul Cage Key##171249+ |n
|tip They drop from enemies around this area.
click Soul Cage+
|tip They look like large metal cages on the ground around this area.
clicknpc Inert Stonestalker##157477+
|tip They look like sleeping white bears around this area.
Assault Stalker's Lodge |q 57328/1 |goto 45.83,59.05
step
Run down the stairs |goto 46.29,57.14 < 15 |walk
kill Sara Wight##157405 |q 57328/2 |goto 45.39,57.17
|next "Shadow_World_Quest_Emissaries"
step
label "Shadow_World_Quest_Emissaries"
#include "Shadow_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Ve'nari Daily Quests (The Maw)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests in The Maw.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Ve'nari##162804
accept A Dark Song##60902 |goto The Maw/0 46.91,41.69 |only if questactive(60902) or completedq(60902)
accept A Suitable Demise##60775 |goto 46.91,41.69 |only if questactive(60775) or completedq(60775)
accept Misery Business##60646 |goto 46.91,41.69 |only if questactive(60646) or completedq(60646)
accept Death Motes##60762 |goto 46.91,41.69 |only if questactive(60762) or completedq(60762)
accept Dust to Dust##61088 |goto 46.91,41.69 |only if questactive(61088) or completedq(61088)
accept Grathalax, The Extractor##61104 |goto 46.91,41.69 |only if questactive(61104) or completedq(61104)
accept Thin Their Numbers##61103 |goto 46.91,41.69 |only if questactive(61103) or completedq(61103)
accept Eye of the Scryer##60622 |goto 46.91,41.69 |only if questactive(60622) or completedq(60622)
accept The Jailer's Share##61079 |goto 46.91,41.69 |only if questactive(61079) or completedq(61079)
accept A Spark of Light##61075 |goto 46.91,41.69 |only if questactive(61075) or completedq(61075)
accept Power of the Colossus##62234 |goto 46.91,41.69 |only if questactive(62234) or completedq(62234)
accept Words of Warding##61765 |goto 46.91,41.69 |only if questactive(61765) or completedq(61765)
accept Soulless Husks##63206 |goto 46.91,41.69 |only if questactive(63206) or completedq(63206)
accept Forces of Perdition##62214 |goto 46.91,41.69 |only if questactive(62214) or completedq(62214)
|only if anyquestactive(60902,60775,60646,60762,61088,61104,61103,60622,61079,61075,62234,61765,63206,62214) or completedanyq(60902,60775,60646,60762,61088,61104,61103,60622,61079,61075,62234,61765,63206,62214)
step
click Broker Journal
accept What They Know##63069 |goto The Maw/0 46.44,62.27
|only if questactive(63069)
step
click Torn Pages##364991+
|tip They look like small pieces of paper on the ground around this area.
collect 18 Torn Journal Page##184579 |q 63069/1 |goto 46.98,66.13
|only if questactive(63069)
step
click Spectral Pick
accept Acquisition: Stygic Ore##63072 |goto 47.18,82.66
|only if questactive(63072)
step
click Stygic Ore Vein##364995+
|tip They look like glowing blue veins of ore on rock around this area.
collect Stygic Ore##184585 |q 63072/1 |goto 47.65,81.61
|only if questactive(63072)
step
Enter the cave |goto 30.56,59.24 < 10 |walk
talk Deceased Broker##175797
accept Guaranteed Delivery##63040 |goto 30.73,58.35 |only if questactive(63040)
accept Guaranteed Delivery##63038 |goto 30.73,58.35 |only if questactive(63038)
|only if anyquestactive(63040,63038)
stickystart "Send_8_Imprisoned_Essences"
stickystart "Send_3_Tools_of_Constraint"
stickystart "Send_5_Scrolls_of_Subjugation"
step
kill Spectral Assassin##170694
|tip You may need a group for this.
collect 1 Assassin's Soulcloak##182303 |q 61765 |goto 33.56,67.41
|only if havequest(61765) and not readyq(61765) and not completedq(61765)
step
label "Put_on_the _Assassin's_Soulcloak"
use Assassin's Soulcloak##182303
Put on the Assassin's Soulcloak |havebuff spell:338784 |q 61765
|only if havequest(61765) and not readyq(61765) and not completedq(61765)
step
'|use Assassin's Soulcloak##182303
click Cloaked Ward+
|tip They look like blue runes with floating black orbs above them on the ground around this area.
|tip Dispelling a rune will remove your cloak.
|tip Reapplying your cloak will drop threat.
Dispel #4# Cloaked Wards |q 61765/2 |goto 31.28,62.44 |or
'|condition not hasbuff("spell:338784") and not readyq(61765) |next "Put_on_the _Assassin's_Soulcloak" |or
|only if havequest(61765) and not readyq(61765) and not completedq(61765)
stickystart "Kill_3_Mawsworn_Instructors"
stickystart "Kill_5_Mawsworn_Myrmidons"
step
kill Mawsworn Eviscerator##175700 |q 62214/3 |goto 29.76,61.40
|tip It walks around this area.
|tip You may need a group for this.
|only if havequest(62214)
step
label "Send_8_Imprisoned_Essences"
use the Containment Orb##184513
|tip Use it on Imprisoned Essences.
|tip They look like brown urns on the ground around this area.
Send #8# Imprisoned Essences |q 63038/1 |goto 31.56,62.76
|only if havequest(63038)
step
label "Send_3_Tools_of_Constraint"
use the Containment Orb##184513
|tip Use it on Tools of Constraint.
|tip They look like hook-bladed knives on the ground around this area.
Send #3# Tools of Constraint |q 63040/2 |goto 31.56,62.76
|only if havequest(63040)
step
label "Send_5_Scrolls_of_Subjugation"
use the Containment Orb##184513 |notinsticky
|tip Use it on Scrolls of Subjugation. |notinsticky
|tip They look like open scrolls floating above the ground around this area. |notinsticky
Send #5# Scrolls of Subjugation |q 63040/1 |goto 31.56,62.76
|only if havequest(63040)
step
label "Kill_3_Mawsworn_Instructors"
kill 3 Mawsworn Instructor##175707 |q 62214/2 |goto 29.76,61.40
|tip You may need a group for this. |notinsticky
|only if havequest(62214)
step
label "Kill_5_Mawsworn_Myrmidons"
kill 5 Mawsworn Myrmidon##175701 |q 62214/1 |goto 29.76,61.40
|tip You may need a group for this. |notinsticky
|only if havequest(62214)
step
talk Vengeful Soul##175866
accept Feed Your Soul##63045 |goto 25.11,66.63
|only if questactive(63045)
step
kill Soulsteel Colossus##169286
|tip You may need a group for this.
collect Colossal Power Core##183042 |q 62234/1 |goto 22.76,65.34
|only if havequest(62234)
step
Kill enemies around this area
click Sealed Urns+
|tip They look like small and large jars on the ground around this area.
Strengthen the Vengeful Soul with Anima |q 63045/1 |goto 24.45,68.87
|only if havequest(63045)
step
Enter the building |goto 23.02,68.39 < 15 |walk
kill Inquisitor Moorlac##175863 |q 63045/2 |goto Altar of Domination/0 25.70,54.64
|tip Inside the building.
|only if havequest(63045)
stickystart "Destroy_5_Soulforged_Cores"
stickystart "Disrupt_the_Mawsworn"
step
talk Doomed Soul##176164
accept Disrupting the Flow##60732 |goto The Maw/0 39.30,45.85
|only if questactive(60732)
step
click Blazing Ingot
accept Acquisiton: Blazing Ingots##63050 |goto 38.90,39.90
|only if questactive(63050)
stickystart "Collect_12_Blazing_Ingots"
step
Kill Stygian enemies around this area
collect Stygian Hammer##184622 |q 63206/1 |goto 38.16,38.88
|only if questactive(63206)
step
use the Stygian Hammer##184622
|tip Use it on Armored Husks.
|tip They look like Suits of Stygian armor on the ground around this area.
Destroy #10# Armored Husks |q 63206/2 |goto 38.16,38.88
You can find more around [34.71,41.69]
|only if questactive(63206)
step
label "Collect_12_Blazing_Ingots"
click Blazing Ingot+
|tip They look like small flaming metal bars on the ground around this area.
collect 12 Blazing Ingot##184556 |q 63050/1 |goto 40.69,42.30
You can find more around [35.40,43.52]
|only if havequest(63050)
step
label "Destroy_5_Soulforged_Cores"
Kill Soulforger enemies around this area
collect Soulforged Core##180280 |n
use the Soulforged Core##180280
|tip Throw them in a Soulsteel Forge.
|tip They look like giant skulls with flames in the mouth around this area.
Destroy #5# Soulforged Cores |q 60775/1 |goto 35.34,43.42
You can find a forge at [36.39,43.68]
|only if havequest(60775)
step
label "Disrupt_the_Mawsworn"
Kill enemies around this area
Disrupt the Mawsworn |q 60732/1 |goto 34.75,39.96
|only if havequest(60732)
stickystart "Collect_Essences_of_Misery"
step
click Misery Conduit
Destroy the Northern Misery Conduit |q 60646/3 |goto 35.30,26.08
|only if havequest(60646)
step
talk Disciple Kimonas##176144
accept Drowned and Torn Asunder##63179 |goto 38.88,23.55
|only if questactive(63179)
step
click Grasping Tentacle+
|tip They look like tentacles grasping Kyrian NPCs on the ground around this area.
Release #8# Drowned Kyrian |q 63179/1 |goto 44.55,22.34
|only if havequest(63179)
step
talk Disciple Kimonas##176144
turnin Drowned and Torn Asunder##63179 |goto 38.88,23.55
|only if readyq(63179) or completedq(63179)
stickystop "Collect_Essences_of_Misery"
stickystart "Rescue_Half-Buried_Souls"
stickystart "Kill_Mawsworn_Shacklers"
stickystart "Kill_Mawsworn_Deadeyes"
stickystart "Disable_Pain_Conduits"
step
talk Trapped Soul##175813
accept Sundered Souls##63043 |goto 28.11,14.68
|only if questactive(63043)
step
label "Rescue_Half-Buried_Souls"
click Dirt Pile+
|tip They look like light brown piles of loose dirt on the ground around this area.
Rescue #6# Half-Buried Souls |q 61088/1 |goto 29.68,15.18
|only if havequest(61088)
step
label "Kill_Mawsworn_Shacklers"
kill 8 Mawsworn Shackler##167322 |q 61103/1 |goto 29.68,15.18
|only if havequest(61103)
step
label "Kill_Mawsworn_Deadeyes"
kill 4 Mawsworn Deadeye##167323 |q 61103/2 |goto 29.68,15.18
|only if havequest(61103)
step
click Soulrend Trap+
|tip They look like square tiles with smoking purple centers on the ground around this area.
Disable #10# Soulrend Traps |q 63043/1 |goto 28.26,14.97
|only if havequest(63043)
step
Click the Complete Quest Box
turnin Sundered Souls##63043
|only if readyq(63043) or completedq(63043)
step
label "Disable_Pain_Conduits"
click Pain Conduit##354937+
|tip They look like large spiked stone pedestals on the ground around this area.
|tip They appear on your minimap as yellow dots.
Disable #3# Pain Conduits |q 61104/1 |goto 28.82,14.55
|only if havequest(61104)
step
talk Tormented Soul##176029
accept A Shadowed Fate##63166 |goto 29.71,20.91
|only if questactive(63166)
step
kill Grathalax##171307 |q 61104/2 |goto Extractor's Sanatorium/0 62.09,33.31
|tip Inside the building.
|tip You may need a group for this.
|only if havequest(61104)
stickystart "Release_6_Tormented_Souls"
stickystart "Collect_9_Runeforged_Shackles"
stickystart "Collect_12_Death_Motes"
step
click Runeforged Shackles##364921+
accept Acquisiton: Runeforged Shackles##63047 |goto The Maw/0 25.62,24.21
|only if questactive(63047)
step
label "Release_6_Tormented_Souls"
click Circle of Agony+
|tip They look like circles of runes surrounded by stones with spirits inside on the ground around this area.
kill Tormented Shade##176025+
|tip They sometimes spawn from Circles of Agony.
Release #6# Tormented Souls |q 63166/1 |goto 26.50,24.96
|only if havequest(63166)
step
label "Collect_9_Runeforged_Shackles"
click Runeforged Shackles##364921+
|tip They look like long chains hanging from objects around this area.
collect 9 Runeforged Shackles##184552 |q 63047/1 |goto 26.47,26.00
|only if havequest(63047)
step
label "Collect_12_Death_Motes"
clicknpc Death Mote##170169+
|tip They look like swirling black and white orbs floating above the ground around this area.
Collect #12# Death Motes |q 60762/1 |goto 27.30,24.65
|only if havequest(60762)
step
talk Tormented Soul##176029
turnin A Shadowed Fate##63166 |goto 29.71,20.91
|only if readyq(63166) or completedq(63166)
step
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 26.98,31.73 |count 1
|only if havequest(61079)
step
Enter the cave |goto 25.51,32.61 < 20 |walk
kill Leerok the Scryer##169551
|tip Inside the cave.
collect Eye of the Scryer##180035 |q 60622/1 |goto 24.83,36.79
|only if havequest(60622)
step
Enter the cave |goto 25.51,32.61 < 20 |walk |only if not havequest(60622)
click Stygia Conduit
|tip Inside the cave.
Place the Stygia Conduit |q 61079/1 |goto 24.12,37.35 |count 2
|only if havequest(61079)
step
Leave the cave |goto 25.51,32.61 < 20 |walk
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 22.89,34.73 |count 3
|only if havequest(61079)
step
click Crystallized Stygia##364900
accept Acquisition: Crystallized Stygia##63031 |goto 21.17,34.12
|only if questactive(63031)
stickystart "Collect_10_Crystallized_Stygia"
step
click Stygia Conduit
Place the Stygia Conduit |q 61079/1 |goto 19.44,34.39 |count 4
|only if havequest(61079)
step
label "Collect_10_Crystallized_Stygia"
click Crystallized Stygia##364900+
|tip They look like blue and white crystals on the ground around this area.
collect 10 Crystallized Stygia##184510 |q 63031/1 |goto 21.44,34.97
|only if havequest(63031)
stickystart "Collect_Essences_of_Misery"
step
talk Hopeless Vessel##176069
accept Misery's Company##63100 |goto 24.73,45.37
|only if questactive(63100)
step
kill Hopeless Vessel##176027 |q 63100/1 |goto 24.07,44.52
|tip They spawn all along the River of Souls.
|only if havequest(63100)
step
Click the Complete Quest Box
turnin Misery's Company##63100
|only if readyq(63100) or completedq(63100)
step
click Misery Conduit
Destroy the Southern Misery Conduit |q 60646/2 |goto 21.52,48.76
|only if havequest(60646)
stickystart "Kill_8_Crucible_Soulseekers"
step
talk Knight of the Ebon Blade##175807
|tip On the bridge.
accept A Monument to Vengeance##63039 |goto 22.17,47.94
|only if questactive(63039)
step
click Ebon Runeblade##364901+
|tip They look like discarded weapons laying on the ground around this area.
collect 8 Ebon Runeblade##184511 |q 63039/1 |goto 19.48,48.48
|only if havequest(63039)
step
label "Kill_8_Crucible_Soulseekers"
kill 8 Crucible Soulseeker##171179 |q 61075/1 |goto 19.48,48.48
|only if havequest(61075)
step
use the Cypher of Melody##180626
Lure Souls East of the River |q 60902/2 |goto The Maw/0 19.80,54.35
|only if havequest(60902)
step
click Twisted Mawstone
turnin A Monument to Vengeance##63039 |goto 23.39,49.85
|only if havequest(63039) or completedq(63039)
step
use the Cypher of Melody##180626
Lure Souls West of the River |q 60902/1 |goto The Maw/0 18.27,50.44
|only if havequest(60902)
step
click Phasic Siphoner
accept Torment for the Taking##63062 |goto 27.99,46.98
|only if questactive(63062)
step
click Soul Fissure+
|tip They look like white patches surrounded by black stones on the ground around this area.
Fill the Phasic Siphoner |q 63062/1 |goto 27.95,46.98
|only if havequest(63062)
step
label "Collect_Essences_of_Misery"
kill Resonant Misery##169780+
collect 10 Essence of Misery##184614 |q 60646/1 |goto 33.24,29.93
|only if havequest(60646)
step
talk Ve'nari##162804
turnin A Dark Song##60902 |goto The Maw/0 46.91,41.69 |only if readyq(60902) or completedq(60902)
turnin A Suitable Demise##60775 |goto The Maw/0 46.91,41.69 |only if readyq(60775) or completedq(60775)
turnin Misery Business##60646 |goto 46.91,41.69 |only if readyq(60646) or completedq(60646)
turnin Death Motes##60762 |goto 46.91,41.69 |only if readyq(60762) or completedq(60762)
turnin Dust to Dust##61088 |goto 46.91,41.69 |only if readyq(61088) or completedq(61088)
turnin Grathalax, The Extractor##61104 |goto 46.91,41.69 |only if readyq(61104) or completedq(61104)
turnin Disrupting the Flow##60732 |goto 46.91,41.69 |only if readyq(60732) or completedq(60732)
turnin Thin Their Numbers##61103 |goto 46.91,41.69 |only if readyq(61103) or completedq(61103)
turnin Eye of the Scryer##60622 |goto 46.91,41.69 |only if readyq(60622) or completedq(60622)
turnin The Jailer's Share##61079 |goto 46.91,41.69 |only if readyq(61079) or completedq(61079)
turnin A Spark of Light##61075 |goto 46.91,41.69 |only if readyq(61075) or completedq(61075)
turnin Acquisiton: Blazing Ingots##63050 |goto 46.91,41.69 |only if readyq(63050) or completedq(63050)
turnin Acquisiton: Runeforged Shackles##63047 |goto 46.91,41.69 |only if readyq(63047) or completedq(63047)
turnin Acquisition: Crystallized Stygia##63031 |goto 46.91,41.69 |only if readyq(63031) or completedq(63031)
turnin Torment for the Taking##63062 |goto 46.91,41.69 |only if readyq(63062) or completedq(63062)
turnin Guaranteed Delivery##63040 |goto 46.91,41.69 |only if readyq(63040) or completedq(63040)
turnin Guaranteed Delivery##63038 |goto 46.91,41.69 |only if readyq(63038) or completedq(63038)
turnin Feed Your Soul##63045 |goto 46.91,41.69 |only if readyq(63045) or completedq(63045)
turnin Power of the Colossus##62234 |goto 46.91,41.69 |only if readyq(62234) or completedq(62234)
turnin Words of Warding##61765 |goto 46.91,41.69 |only if readyq(61765) or completedq(61765)
turnin What They Know##63069 |goto 46.91,41.69 |only if readyq(63069) or completedq(63069)
turnin Acquisition: Stygic Ore##63072 |goto 46.91,41.69 |only if readyq(63072) or completedq(63072)
turnin Soulless Husks##63206 |goto 46.91,41.69 |only if readyq(63206) or completedq(63206)
turnin Forces of Perdition##62214 |goto 46.91,41.69 |only if readyq(62214) or completedq(62214)
|only if readyanyq(60775,60646,60762,61088,61104,60732,61103,60622,61079,61075,63050,63047,63031,63062,63040,63038,63045,62234,61765,63069,63072,63206,62214) or completedanyq(60775,60646,60762,61088,61104,60732,61103,60622,61079,61075,63050,63047,63031,63062,63040,63038,63045,62234,63069,63072,63206,62214)
step
You have completed all daily quests in The Maw
|tip This guide will reset when more become available.
'|condition not completedanyq(63062,63050,63179,63043,63047,63166,63031,63100,63040,63038,63045,63069,63072,60732,63039) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Kyrian Covenant.",
condition_suggested=function() return level >= 60 and completedq(57904) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Haephus##167745
accept Replenish the Reservoir##61982 |goto Elysian Hold/0 42.57,53.11
step
talk Soulguide Daelia##160212
|tip Downstairs inside the Sanctum of Binding.
accept Storm the Maw##60454 |goto Elysian Hold/1 59.52,34.26 |only if questactive(60454) or completedq(60454)
accept Anima Salvage##60458 |goto Elysian Hold/1 59.52,34.26 |only if questactive(60458) or completedq(60458)
accept Return Lost Souls##61332 |goto Elysian Hold/1 59.52,34.26 |only if covenant() == Kyrian and covenantrenown() < 15
accept Return Lost Souls##62861 |goto Elysian Hold/1 59.52,34.26 |only if covenant() == Kyrian and covenantrenown() >= 15 and covenantrenown() < 24
accept Return Lost Souls##62862 |goto Elysian Hold/1 59.52,34.26 |only if covenant() == Kyrian and covenantrenown() >= 24 and covenantrenown() < 32
accept Return Lost Souls##62863 |goto Elysian Hold/1 59.52,34.26 |only if covenant() == Kyrian and covenantrenown() >= 32
|only if anyquestactive(60454,60458,61332,62861,62862,62863) or completedanyq(60454,60458,61332,62861,62862,62863)
step
talk Kalisthene##168517
accept Training in Ardenweald##60403 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60403) or completedq(60403)
accept Training in Maldraxxus##60407 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60407) or completedq(60407)
accept Training in Revendreth##60412 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60412) or completedq(60412)
accept Training Our Forces##60404 |goto Elysian Hold/0 37.09,61.17 |only if questactive(60404) or completedq(60404)
|only if anyquestactive(60403,60407,60412,60404) or completedanyq(60403,60407,60412,60404)
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
accept A Call to Ardenweald##60424 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60424) or completedq(60424)
accept A Call to Revendreth##60434 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60434) or completedq(60434)
accept A Call to Maldraxxus##60430 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60430) or completedq(60430)
accept Troubles at Home##60425 |goto Elysian Hold/0 55.64,41.96 |only if questactive(60425) or completedq(60425)
|only if anyquestactive(60424,60434,60430,60425) or completedanyq(60424,60434,60430,60425)
step
talk Xandria##154627
|tip Upstairs on Archon's Rise.
accept Challenges in Ardenweald##60439 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60439) or completedq(60439)
accept Challenges in Bastion##60442 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60442) or completedq(60442)
accept Challenges in Maldraxxus##60447 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60447) or completedq(60447)
accept Challenges in Revendreth##60450 |goto Elysian Hold/0 62.21,37.77 |only if questactive(60450) or completedq(60450)
|only if anyquestactive(60439,60442,60447,60450) or completedanyq(60439,60442,60447,60450)
step
talk Hermestes##160387
accept Aiding Ardenweald##60391 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60391) or completedq(60391)
accept Aiding Bastion##60392 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60392) or completedq(60392)
accept Aiding Maldraxxus##60395 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60395) or completedq(60395)
accept Aiding Revendreth##60400 |goto Elysian Hold/0 40.95,40.90 |only if questactive(60400) or completedq(60400)
|only if anyquestactive(60391,60392,60395,60400) or completedanyq(60391,60392,60395,60400)
step
talk Capheus##158773
accept Anima Appeal##60465 |goto Elysian Hold/0 37.89,67.50
|only if questactive(60465) or completedq(60465)
step
talk Sika##168519
accept A Wealth of Wealdwood##60372 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60372) or completedq(60372)
accept Gildenite Grab##60358 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60358) or completedq(60358)
accept A Source of Sorrowvine##60380 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60380) or completedq(60380)
accept Rare Resources##60415 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60415) or completedq(60415)
accept Bonemetal Bonanza##60377 |goto Elysian Hold/0 33.67,44.60 |only if questactive(60377) or completedq(60377)
|only if anyquestactive(60372,60358,60380,60415,60377) or completedanyq(60372,60358,60380,60415,60377)
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defend_Bastion"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Ardenweald"
stickystart "Defend_Maldraxxus"
stickystart "Defend_Revendreth"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60403/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60403) or completedq(60403)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60407/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60407) or completedq(60407)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60412/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60412) or completedq(60412)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60404/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60404) or completedq(60404)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60391/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60391) or completedq(60391)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60392/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60392) or completedq(60392)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60395/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60395) or completedq(60395)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60400/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60400) or completedq(60400)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60439/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60439) or completedq(60439)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60442/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60442) or completedq(60442)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60447/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60447) or completedq(60447)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60450/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60450) or completedq(60450)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60424/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if havequest(60424) or completedq(60424)
step
label "Defend_Bastion"
Defend Bastion |q 60425/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if havequest(60425) or completedq(60425)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60430/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if havequest(60430) or completedq(60430)
step
label "Defend_Revendreth"
Defend Revendreth |q 60434/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if havequest(60434) or completedq(60434)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60358/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if havequest(60358) or completedq(60358)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60377/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if havequest(60377) or completedq(60377)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60380/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if havequest(60380) or completedq(60380)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60372/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if havequest(60372) or completedq(60372)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60415/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if havequest(60415) or completedq(60415)
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
stickystart "Collect_150_Soul_Embers_from_Torghast"
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #5# Lost Souls in the Maw |q 61332/1 |goto The Maw/0 39.52,46.74
|only if havequest(61332) or completedq(61332)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #10# Lost Souls in the Maw |q 62861/1 |goto The Maw/0 39.52,46.74
|only if havequest(62861) or completedq(62861)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #15# Lost Souls in the Maw |q 62862/1 |goto The Maw/0 39.52,46.74
|only if havequest(62862) or completedq(62862)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls in the Maw |q 62863/1 |goto The Maw/0 39.52,46.74
|only if havequest(62863) or completedq(62863)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60454/1
|tip Encounters periodically show on the map in The Maw.
|only if havequest(60454) or completedq(60454)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60458/1
|tip Run Torghast and collect them from the final boss.
|only if havequest(60458) or completedq(60458)
step
talk Soulguide Daelia##160212
|tip Downstairs inside the Sanctum of Binding.
turnin Storm the Maw##60454 |goto Elysian Hold/1 59.52,34.26 |only if readyq(60454) or completedq(60454)
turnin Anima Salvage##60458 |goto Elysian Hold/1 59.52,34.26 |only if readyq(60458) or completedq(60458)
turnin Return Lost Souls##61332 |goto Elysian Hold/1 59.52,34.26 |only if readyq(61332) or completedq(61332)
turnin Return Lost Souls##62861 |goto Elysian Hold/1 59.52,34.26 |only if readyq(62861) or completedq(62861)
turnin Return Lost Souls##62862 |goto Elysian Hold/1 59.52,34.26 |only if readyq(62862) or completedq(62862)
turnin Return Lost Souls##62863 |goto Elysian Hold/1 59.52,34.26 |only if readyq(62863) or completedq(62863)
|only if readyanyq(60454,60458,61332,62861,62862,62863) or completedanyq(60454,60458,61332,62861,62862,62863)
step
talk Xandria##154627
|tip Upstairs on Archon's Rise.
turnin Challenges in Ardenweald##60439 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60439) or completedq(60439)
turnin Challenges in Bastion##60442 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60442) or completedq(60442)
turnin Challenges in Maldraxxus##60447 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60447) or completedq(60447)
turnin Challenges in Revendreth##60450 |goto Elysian Hold/0 62.21,37.77 |only if readyq(60450) or completedq(60450)
|only if readyanyq(60439,60442,60447,60450) or completedanyq(60439,60442,60447,60450)
step
talk Kalisthene##168517
turnin Training in Ardenweald##60403 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60403) or completedq(60403)
turnin Training in Maldraxxus##60407 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60407) or completedq(60407)
turnin Training in Revendreth##60412 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60412) or completedq(60412)
turnin Training Our Forces##60404 |goto Elysian Hold/0 37.09,61.17 |only if readyq(60404) or completedq(60404)
|only if readyanyq(60403,60407,60412,60404) or completedanyq(60403,60407,60412,60404)
step
talk Polemarch Adrestes##160037
|tip Upstairs on Archon's Rise.
turnin A Call to Ardenweald##60424 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60424) or completedq(60424)
turnin A Call to Revendreth##60434 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60434) or completedq(60434)
turnin A Call to Maldraxxus##60430 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60430) or completedq(60430)
turnin Troubles at Home##60425 |goto Elysian Hold/0 55.64,41.96 |only if readyq(60425) or completedq(60425)
|only if readyanyq(60424,60434,60430,60425) or completedanyq(60424,60434,60430,60425)
step
talk Sika##168519
turnin A Wealth of Wealdwood##60372 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60372) or completedq(60372)
turnin Gildenite Grab##60358 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60358) or completedq(60358)
turnin A Source of Sorrowvine##60380 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60380) or completedq(60380)
turnin Rare Resources##60415 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60415) or completedq(60415)
turnin Bonemetal Bonanza##60377 |goto Elysian Hold/0 33.67,44.60 |only if readyq(60377) or completedq(60377)
|only if readyanyq(60372,60358,60380,60415,60377) or completedanyq(60372,60358,60380,60415,60377)
step
talk Hermestes##160387
turnin Aiding Ardenweald##60391 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60391) or completedq(60391)
turnin Aiding Bastion##60392 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60392) or completedq(60392)
turnin Aiding Maldraxxus##60395 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60395) or completedq(60395)
turnin Aiding Revendreth##60400 |goto Elysian Hold/0 40.95,40.90 |only if readyq(60400) or completedq(60400)
|only if readyanyq(60391,60392,60395,60400) or completedanyq(60391,60392,60395,60400)
stickystart "Deposit_1500_Anima_in_the_Reservoir"
step
talk Haephus##167745
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #400# Anima in the Anima Reservoir |q 60465/1 |goto Elysian Hold/0 42.60,53.06 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|condition countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies" |or
|only if havequest(60465) or completedq(60465)
step
talk Haephus##167745
turnin Anima Appeal##60465 |goto Elysian Hold/0 42.60,53.06
|only if readyq(60465) or completedq(60465)
step
label "Deposit_1500_Anima_in_the_Reservoir"
talk Haephus##167745 |notinsticky
Tell him _"Show me the Sanctum."_ |notinsticky
|tip Click the "Deposit" button to deposit anima from your bags. |notinsticky
Deposit #1500# Anima in the Anima Reservoir |q 61982/1 |goto Elysian Hold/0 42.60,53.06 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|condition countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies" |or
|only if havequest(61982) or completedq(61982)
step
talk Haephus##167745
turnin Replenish the Reservoir##61982 |goto Elysian Hold/0 42.60,53.06
|only if readyq(61982) or completedq(61982)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|condition countcompletedq(60458,60415,60358,60439,60442,60447,60450,60403,60407,60412,60404,60424,60434,60377,60430,60425,60380,60372,60465,60391,60392,60395,60400,60454) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Necrolord Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Necrolord Covenant.",
condition_suggested=function() return level >= 60 and completedq(59609) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Osbourne Black##167748
accept Return Lost Souls##61333 |goto Seat of the Primus/0 46.66,42.38 |only if covenant() == Necrolord and covenantrenown() < 15
accept Return Lost Souls##62864 |goto Seat of the Primus/0 46.66,42.38 |only if covenant() == Necrolord and covenantrenown() >= 15 and covenantrenown() < 24
accept Return Lost Souls##62865 |goto Seat of the Primus/0 46.66,42.38 |only if covenant() == Necrolord and covenantrenown() >= 24 and covenantrenown() < 32
accept Return Lost Souls##62866 |goto Seat of the Primus/0 46.66,42.38 |only if covenant() == Necrolord and covenantrenown() >= 32
|only if anyquestactive(61333,62864,62865,62866) or completedanyq(61333,62864,62865,62866)
step
talk Arkadia Moa##161909
accept Replenish the Reservoir##61983 |goto Seat of the Primus/0 52.74,38.28
step
talk Sabbath Nightshade##167207
accept Storm the Maw##60455 |goto Seat of the Primus/0 43.18,47.80 |only if questactive(60455) or completedq(60455)
accept Soul Salvage##60459 |goto Seat of the Primus/0 43.18,47.80 |only if questactive(60459) or completedq(60459)
|only if anyquestactive(60455,60459) or completedanyq(60455,60459)
step
talk Niall Kugal##167209
accept Training in Ardenweald##60402 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60402) or completedq(60402)
accept Training in Bastion##60405 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60405) or completedq(60405)
accept Training in Revendreth##60411 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60411) or completedq(60411)
accept Training Our Forces##60408 |goto Seat of the Primus/0 51.82,28.76 |only if questactive(60408) or completedq(60408)
|only if anyquestactive(60402,60405,60411,60408) or completedanyq(60402,60405,60411,60408)
step
talk Tabulator Killham##167210
accept A Call to Ardenweald##60423 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60423) or completedq(60423)
accept A Call to Bastion##60426 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60426) or completedq(60426)
accept A Call to Revendreth##60433 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60433) or completedq(60433)
accept Troubles at Home##60429 |goto Seat of the Primus/0 59.97,43.53 |only if questactive(60429) or completedq(60429)
|only if anyquestactive(60423,60426,60433,60429) or completedanyq(60423,60426,60433,60429)
step
talk Grandmaster Vole##167208
accept Challenges in Ardenweald##60440 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60440) or completedq(60440)
accept Challenges in Bastion##60443 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60443) or completedq(60443)
accept Challenges in Maldraxxus##60445 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60445) or completedq(60445)
accept Challenges in Revendreth##60449 |goto Seat of the Primus/0 56.62,43.92 |only if questactive(60449) or completedq(60449)
|only if anyquestactive(60440,60443,60445,60449) or completedanyq(60440,60443,60445,60449)
step
talk Sergeant Romark##158339
accept Aiding Ardenweald##60390 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60390) or completedq(60390)
accept Aiding Bastion##60393 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60393) or completedq(60393)
accept Aiding Maldraxxus##60396 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60396) or completedq(60396)
accept Aiding Revendreth##60398 |goto Seat of the Primus/0 47.62,28.72 |only if questactive(60398) or completedq(60398)
|only if anyquestactive(60390,60393,60396,60398) or completedanyq(60390,60393,60396,60398)
step
talk Yondare Hex##167205
accept Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if questactive(60464) or completedq()
step
talk Gatherer Zaya##167201
accept A Wealth of Wealdwood##60371 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60371) or completedq(60371)
accept A Source of Sorrowvine##60379 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60379) or completedq(60379)
accept Gildenite Grab##60363 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60363) or completedq(60363)
accept Rare Resources##60416 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60416) or completedq(60416)
accept Bonemetal Bonanza##60376 |goto Seat of the Primus/0 46.69,38.51 |only if questactive(60376) or completedq(60376)
|only if anyquestactive(60371,60379,60363,60416,60376) or completedanyq(60371,60379,60363,60416,60376)
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defend_Maldraxxus"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Ardenweald"
stickystart "Defend_Bastion"
stickystart "Defend_Revendreth"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60402/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60402) or completedq(60402)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60405/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60405) or completedq(60405)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60411/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60411) or completedq(60411)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60408/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60408) or completedq(60408)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60390/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60390) or completedq(60390)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60393/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60393) or completedq(60393)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60396/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60396) or completedq(60396)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60398/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60398) or completedq(60398)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60440/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60440) or completedq(60440)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60443/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60443) or completedq(60443)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60445/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60445) or completedq(60445)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60449/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60449) or completedq(60449)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60423/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if havequest(60423) or completedq(60423)
step
label "Defend_Bastion"
Defend Bastion |q 60426/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if havequest(60426) or completedq(60426)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60433/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if havequest(60433) or completedq(60433)
step
label "Defend_Revendreth"
Defend Revendreth |q 60429/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if havequest(60429) or completedq(60429)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60363/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if havequest(60363) or completedq(60363)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60376/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if havequest(60376) or completedq(60376)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60379/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if havequest(60379) or completedq(60379)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60371/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if havequest(60371) or completedq(60371)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60416/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if havequest(60416) or completedq(60416)
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
stickystart "Collect_150_Soul_Embers_from_Torghast"
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #5# Lost Souls in the Maw |q 61333/1 |goto The Maw/0 39.52,46.74
|only if havequest(61333) or completedq(61333)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #10# Lost Souls in the Maw |q 62864/1 |goto The Maw/0 39.52,46.74
|only if havequest(62864) or completedq(62864)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #15# Lost Souls in the Maw |q 62865/1 |goto The Maw/0 39.52,46.74
|only if havequest(62865) or completedq(62865)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls in the Maw |q 62866/1 |goto The Maw/0 39.52,46.74
|only if havequest(62866) or completedq(62866)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60455/1
|tip Encounters periodically show on the map in The Maw.
|only if havequest(60455) or completedq(60455)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60459/1
|tip Run Torghast and collect them from the final boss.
|only if havequest(60459) or completedq(60459)
step
talk Sabbath Nightshade##167207
turnin Storm the Maw##60455 |goto Seat of the Primus/0 43.18,47.80 |only if readyq(60455) or completedq(60455)
turnin Soul Salvage##60459 |goto Seat of the Primus/0 43.18,47.80 |only if readyq(60459) or completedq(60459)
|only if readyanyq(60455,60459) or completedanyq(60455,60459)
step
talk Osbourne Black##167748
turnin Return Lost Souls##61333 |goto Seat of the Primus/0 46.66,42.38 |only if readyq(61333) or completedq(61333)
turnin Return Lost Souls##62864 |goto Seat of the Primus/0 46.66,42.38 |only if readyq(62864) or completedq(62864)
turnin Return Lost Souls##62865 |goto Seat of the Primus/0 46.66,42.38 |only if readyq(62865) or completedq(62865)
turnin Return Lost Souls##62866 |goto Seat of the Primus/0 46.66,42.38 |only if readyq(62866) or completedq(62866)
|only if readyanyq(61333,62864,62865,62866) or completedanyq(61333,62864,62865,62866)
step
talk Arkadia Moa##161909
turnin Replenish the Reservoir##61983 |goto Seat of the Primus/0 52.74,38.28
|only if readyq(61983) or completedq(61983)
step
talk Grandmaster Vole##167208
turnin Challenges in Ardenweald##60440 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60440) or completedq(60440)
turnin Challenges in Bastion##60443 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60443) or completedq(60443)
turnin Challenges in Maldraxxus##60445 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60445) or completedq(60445)
turnin Challenges in Revendreth##60449 |goto Seat of the Primus/0 56.62,43.92 |only if readyq(60449) or completedq(60449)
|only if readyanyq(60440,60443,60445,60449) or completedanyq(60440,60443,60445,60449)
step
talk Niall Kugal##167209
turnin Training in Ardenweald##60402 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60402) or completedq(60402)
turnin Training in Bastion##60405 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60405) or completedq(60405)
turnin Training in Revendreth##60411 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60411) or completedq(60411)
turnin Training Our Forces##60408 |goto Seat of the Primus/0 51.82,28.76 |only if readyq(60408) or completedq(60408)
|only if readyanyq(60402,60405,60411,60408) or completedanyq(60402,60405,60411,60408)
step
talk Tabulator Killham##167210
turnin A Call to Ardenweald##60423 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60423) or completedq(60423)
turnin A Call to Bastion##60426 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60426) or completedq(60426)
turnin A Call to Revendreth##60433 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60433) or completedq(60433)
turnin Troubles at Home##60429 |goto Seat of the Primus/0 59.97,43.53 |only if readyq(60429) or completedq(60429)
|only if readyanyq(60423,60426,60433,60429) or completedanyq(60423,60426,60433,60429)
step
talk Gatherer Zaya##167201
turnin A Wealth of Wealdwood##60371 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60371) or completedq(60371)
turnin A Source of Sorrowvine##60379 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60379) or completedq(60379)
turnin Gildenite Grab##60363 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60363) or completedq(60363)
turnin Rare Resources##60416 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60416) or completedq(60416)
turnin Bonemetal Bonanza##60376 |goto Seat of the Primus/0 46.69,38.51 |only if readyq(60376) or completedq(60376)
|only if readyanyq(60371,60379,60363,60416,60376) or completedanyq(60371,60379,60363,60416,60376)
step
talk Sergeant Romark##158339
turnin Aiding Ardenweald##60390 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60390) or completedq(60390)
turnin Aiding Bastion##60393 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60393) or completedq(60393)
turnin Aiding Maldraxxus##60396 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60396) or completedq(60396)
turnin Aiding Revendreth##60398 |goto Seat of the Primus/0 47.62,28.72 |only if readyq(60398) or completedq(60398)
|only if readyanyq(60390,60393,60396,60398) or completedanyq(60390,60393,60396,60398)
step
talk Yondare Hex##167205
turnin Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if readyq(60464) or completedq(60464)
stickystart "Deposit_1500_Anima_in_the_Reservoir"
step
talk Arkadia Moa##161909
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #400# Anima in the Anima Reservoir |q 60464/1 |goto Seat of the Primus/0 52.71,38.30 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|condition countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies" |or
|only if havequest(60464) or completedq(60464)
step
talk Yondare Hex##167205
turnin Anima Appeal##60464 |goto Seat of the Primus/0 48.95,35.95
|only if readyq(60464) or completedq(60464)
step
label "Deposit_1500_Anima_in_the_Reservoir"
talk Arkadia Moa##161909 |notinsticky
|tip Click the "Deposit" button to deposit anima from your bags. |notinsticky
Deposit #1500# Anima in the Anima Reservoir |q 61983/1 |goto Seat of the Primus/0 52.71,38.30 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|condition countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies" |or
|only if havequest(61983) or completedq(61983)
step
talk Osbourne Black##167748
turnin Replenish the Reservoir##61983 |goto Seat of the Primus/0 46.66,42.38
|only if readyq(61983) or completedq(61983)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|condition countcompletedq(60459,60440,60443,60445,60449,60402,60405,60411,60408,60423,60426,60376,60433,60429,60371,60379,60416,60363,60390,60393,60396,60398,60464,60455) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Night Fae Covenant.",
condition_suggested=function() return level >= 60 and completedq(62899) end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Elder Shaper An'wyn##168513
accept A Wealth of Wealdwood##60369 |goto Ardenweald/0 43.56,52.43	|only if questactive(60369) or completedq(60369)
accept Gildenite Grab##60364 |goto Ardenweald/0 43.56,52.43		|only if questactive(60364) or completedq(60364)
accept A Source of Sorrowvine##60373 |goto Ardenweald/0 43.56,52.43	|only if questactive(60373) or completedq(60373)
accept Rare Resources##60414 |goto Ardenweald/0 43.56,52.43		|only if questactive(60414) or completedq(60414)
accept Bonemetal Bonanza##60374 |goto Ardenweald/0 43.56,52.43		|only if questactive(60374) or completedq(60374)
|only if anyquestactive(60369,60364,60373,60414,60374) or completedanyq(60369,60364,60373,60414,60374)
step
talk Lord Herne##158544
|tip He walks around this area.
accept Training in Bastion##60387 |goto Heart of the Forest/0 39.66,71.34	|only if questactive(60387) or completedq(60387)
accept Training in Maldraxxus##60386 |goto Heart of the Forest/0 39.66,71.34	|only if questactive(60386) or completedq(60386)
accept Training in Revendreth##60385 |goto Heart of the Forest/0 39.66,71.34	|only if questactive(60385) or completedq(60385)
accept Training Our Forces##60388 |goto Heart of the Forest/0 39.66,71.34	|only if questactive(60388) or completedq(60388)
|only if anyquestactive(60387,60386,60385,60388) or completedanyq(60387,60386,60385,60388)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
accept Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.62,62.62	|only if not completedq(61984)
accept Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62		|only if questactive(60462) or completedq(60462)
|only if questactive(60462) or completedq(60462,61984) or not completedq(61984)
step
talk Flutterby##158553
accept Return Lost Souls##61331 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(61331) or completedq(61331)
accept Return Lost Souls##62858 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(62858) or completedq(62858)
accept Return Lost Souls##62859 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(62859) or completedq(62859)
accept Return Lost Souls##62860 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(62860) or completedq(62860)
accept Anima Salvage##60457 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(60457) or completedq(60457)
accept Storm the Maw##60452 |goto Heart of the Forest/0 33.91,43.49		|only if questactive(60452) or completedq(60452)
|only if anyquestactive(61331,62858,62859,62860,60457,60452) or completedanyq(61331,62858,62859,62860,60457,60452)
step
talk Yanlar##167206
accept Challenges in Ardenweald##60438 |goto 36.84,25.12	|only if questactive(60438) or completedq(60438)
accept Challenges in Bastion##60437 |goto 36.84,25.12		|only if questactive(60437) or completedq(60437)
accept Challenges in Maldraxxus##60436 |goto 36.84,25.12	|only if questactive(60436) or completedq(60436)
accept Challenges in Revendreth##60435 |goto 36.84,25.12	|only if questactive(60435) or completedq(60435)
|only if anyquestactive(60438,60437,60436,60435) or completedanyq(60438,60437,60436,60435)
step
talk Featherlight##167193
accept A Call to Revendreth##60421 |goto 60.04,31.87	|only if questactive(60421) or completedq(60421)
accept A Call to Bastion##60418 |goto 60.04,31.87	|only if questactive(60418) or completedq(60418)
accept A Call to Maldraxxus##60420 |goto 60.04,31.87	|only if questactive(60420) or completedq(60420)
accept Troubles at Home##60419 |goto 60.04,31.87	|only if questactive(60419) or completedq(60419)
|only if anyquestactive(60421,60418,60420,60419) or completedanyq(60421,60418,60420,60419)
step
talk Blodwyn##167195
accept Aiding Ardenweald##60381 |goto 53.81,5.98	|only if questactive(60381) or completedq(60381)
accept Aiding Bastion##60384 |goto 53.81,5.98		|only if questactive(60384) or completedq(60384)
accept Aiding Maldraxxus##60383 |goto 53.81,5.98	|only if questactive(60383) or completedq(60383)
accept Aiding Revendreth##60382 |goto 53.81,5.98	|only if questactive(60382) or completedq(60382)
|only if anyquestactive(60381,60384,60383,60382) or completedanyq(60381,60384,60383,60382)
stickystart "Complete_World_Quests_in_Ardenweald_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defend_Ardenweald"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Bastion"
stickystart "Defend_Maldraxxus"
stickystart "Defend_Revendreth"
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60387/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60387) or completedq(60387)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60386/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60386) or completedq(60386)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60385/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60385) or completedq(60385)
step
label "Complete_World_Quests_in_Ardenweald_with_Trainee"
Complete #3# World Quests in Ardenweald with Your Trainee |q 60388/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60388) or completedq(60388)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60381/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60381) or completedq(60381)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60384/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60384) or completedq(60384)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60383/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60383) or completedq(60383)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60382/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60382) or completedq(60382)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60438/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60438) or completedq(60438)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60437/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60437) or completedq(60437)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60436/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60436) or completedq(60436)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60435/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60435) or completedq(60435)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60419/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if havequest(60419) or completedq(60419)
step
label "Defend_Bastion"
Defend Bastion |q 60418/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if havequest(60418) or completedq(60418)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60420/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if havequest(60420) or completedq(60420)
step
label "Defend_Revendreth"
Defend Revendreth |q 60421/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if havequest(60421) or completedq(60421)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60364/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if havequest(60364) or completedq(60364)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60374/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if havequest(60374) or completedq(60374)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60373/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if havequest(60373) or completedq(60373)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60369/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if havequest(60369) or completedq(60369)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60414/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if havequest(60414) or completedq(60414)
stickystart "Collect_150_Soul_Embers_from_Torghast"
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls from the Maw |q 61331/1 |goto The Maw/0 39.52,46.74
|only if havequest(61331) or completedq(61331)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls from the Maw |q 62858/1 |goto The Maw/0 39.52,46.74
|only if havequest(62858) or completedq(62858)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls from the Maw |q 62859/1 |goto The Maw/0 39.52,46.74
|only if havequest(62859) or completedq(62859)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls from the Maw |q 62860/1 |goto The Maw/0 39.52,46.74
|only if havequest(62860) or completedq(62860)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60457/1
|tip Run Torghast and collect them from the final boss.
|only if havequest(60457) or completedq(60457)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses |q 60452/1
|tip Encounters periodically show on the map in The Maw.
|only if havequest(60452) or completedq(60452)
step
talk Blodwyn##167195
turnin Aiding Ardenweald##60381 |goto Heart of the Forest/0 53.81,5.98 |only if readyq(60381) or completedq(60381)
turnin Aiding Bastion##60384 |goto 53.81,5.98 |only if readyq(60384) or completedq(60384)
turnin Aiding Maldraxxus##60383 |goto 53.81,5.98 |only if readyq(60383) or completedq(60383)
turnin Aiding Revendreth##60382 |goto 53.81,5.98 |only if readyq(60382) or completedq(60382)
|only if readyanyq(60381,60384,60383,60382) or completedanyq(60381,60384,60383,60382)
step
talk Featherlight##167193
turnin A Call to Revendreth##60421 |goto 60.04,31.87 |only if readyq(60421) or completedq(60421)
turnin A Call to Bastion##60418 |goto 60.04,31.87 |only if readyq(60418) or completedq(60418)
turnin A Call to Maldraxxus##60420 |goto 60.04,31.87 |only if readyq(60420) or completedq(60420)
turnin Troubles at Home##60419 |goto 60.04,31.87 |only if readyq(60419) or completedq(60419)
|only if readyanyq(60421,60418,60420,60419) or completedanyq(60421,60418,60420,60419)
step
talk Yanlar##167206
turnin Challenges in Ardenweald##60438 |goto 36.84,25.12 |only if readyq(60438) or completedq(60438)
turnin Challenges in Bastion##60437 |goto 36.84,25.12 |only if readyq(60437) or completedq(60437)
turnin Challenges in Maldraxxus##60436 |goto 36.84,25.12 |only if readyq(60436) or completedq(60436)
turnin Challenges in Revendreth##60435 |goto 36.84,25.12 |only if readyq(60435) or completedq(60435)
|only if readyanyq(60438,60437,60436,60435) or completedanyq(60438,60437,60436,60435)
step
talk Flutterby##158553
turnin Return Lost Souls##61331 |goto 33.91,43.49 |only if readyq(61331) or completedq(61331)
turnin Return Lost Souls##62858 |goto 33.91,43.49 |only if readyq(62858) or completedq(62858)
turnin Return Lost Souls##62859 |goto 33.91,43.49 |only if readyq(62859) or completedq(62859)
turnin Return Lost Souls##62860 |goto 33.91,43.49 |only if readyq(62860) or completedq(62860)
turnin Anima Salvage##60457 |goto 33.91,43.49 |only if readyq(60457) or completedq(60457)
turnin Storm the Maw##60452 |goto 33.91,43.49 |only if readyq(60452) or completedq(60452)
|only if readyanyq(61331,62858,62859,62860,60457,60452) or completedanyq(61331,62858,62859,62860,60457,60452)
step
talk Lord Herne##158544
|tip He walks around this area.
turnin Training in Bastion##60387 |goto 39.66,71.34 |only if readyq(60387) or completedq(60387)
turnin Training in Maldraxxus##60386 |goto 39.66,71.34 |only if readyq(60386) or completedq(60386)
turnin Training in Revendreth##60385 |goto 39.66,71.34 |only if readyq(60385) or completedq(60385)
turnin Training Our Forces##60388 |goto 39.66,71.34 |only if readyq(60388) or completedq(60388)
|only if readyanyq(60387,60386,60385,60388) or completedanyq(60387,60386,60385,60388)
step
talk Elder Shaper An'wyn##168513
turnin A Wealth of Wealdwood##60369 |goto Ardenweald/0 43.56,52.43 |only if readyq(60369) or completedq(60369)
turnin Gildenite Grab##60364 |goto 43.56,52.43 |only if readyq(60364) or completedq(60364)
turnin A Source of Sorrowvine##60373 |goto 43.56,52.43 |only if readyq(60373) or completedq(60373)
turnin Rare Resources##60414 |goto 43.56,52.43 |only if readyq(60414) or completedq(60414)
turnin Bonemetal Bonanza##60374 |goto 43.56,52.43 |only if readyq(60374) or completedq(60374)
|only if readyanyq(60369,60364,60373,60414,60374) or completedanyq(60369,60364,60373,60414,60374)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62 |only if readyq(60462) or completedq(60462)
turnin Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.60,62.63 |only if readyq(61984) or completedq(61984)
|only if readyanyq(60462) or completedanyq(60462)
stickystart "Deposit_1500_Anima_in_the_Reservoir"
step
talk Zayhad, The Builder##165702
Tell it _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #400# Anima in the Anima Reservoir |q 60462/1 |goto Heart of the Forest/1 38.93,54.72 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|condition countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies" |or
|only if havequest(60462) or completedq(60462)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Anima Appeal##60462 |goto Heart of the Forest/1 50.62,62.62
|only if readyq(60462) or completedq(60462)
step
label "Deposit_1500_Anima_in_the_Reservoir"
talk Zayhad, The Builder##165702 |notinsticky
Tell it _"Show me the Sanctum."_ |notinsticky
|tip Click the "Deposit" button to deposit anima from your bags. |notinsticky
Deposit #1500# Anima in the Anima Reservoir |q 61984/1 |goto Heart of the Forest/1 38.93,54.72 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|condition countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies" |or
|only if havequest(61984) or completedq(61984)
step
talk Sesselie##167196
|tip Downstairs inside the tree.
turnin Replenish the Reservoir##61984 |goto Heart of the Forest/1 50.60,62.63
|only if readyq(61984) or completedq(61984)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|condition countcompletedq(60457,60369,60373,60414,60364,60438,60437,60436,60435,60387,60386,60374,60385,60388,60421,60418,60420,60419,60381,60384,60383,60382,60462,60452) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Fungal Terminus Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing Fungal Terminus daily quests unlocked "..
"by upgrading your covenant transport network.",
condition_suggested=function() return level >= 60 end,
},[[
step
label "Begin_Dailies"
talk Marasmius##167455
accept Hyphae Patrol: Eventide Grove##62614 |goto Fungal Terminus/0 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: Gossamer Cliffs##62615 |goto 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: Heartwood Grove##62611 |goto 50.75,53.29 |only if questpossible |or
accept Hyphae Patrol: The Stalks##62610 |goto 50.75,53.29 |only if questpossible |or
accept A Taste of Tirna Noch##60175 |goto 50.75,53.29 |only if questpossible |or
accept Glittering Gritty Goodness##62607 |goto 50.75,53.29 |only if questpossible |or
accept A Royal Treat##62608 |goto 50.75,53.29 |only if questpossible |or
accept A Blackthorn Blend##62606 |goto 50.75,53.29 |only if questpossible |or
accept Into the Unknown##60153 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 2 |or 2
accept Into the Unknown##62296 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 2 |or 2
accept Into the Unknown##62382 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 2 |or 2
accept Into the Unknown##62453 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 2 |or 2
accept Go Beyond!##62459 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##62400 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##62417 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##62466 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##60188 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##62263 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
accept Go Beyond!##62465 |goto 50.75,53.29 |only if questpossible() and covenantfeature("Transport Network") >= 3 |or 3
Accept the Daily Quest |condition false |goto 50.75,53.29 |only if covenantfeature("Transport Network") == 1 |or
Accept the Daily Quests |condition false |goto 50.75,53.29 |only if covenantfeature("Transport Network") == 2 |or 2
Accept the Daily Quests |condition false |goto 50.75,53.29 |only if covenantfeature("Transport Network") == 3 |or 3
'|condition completedanyq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465) |or
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62615
|only if (havequest(62615) or completedq(62615)) and not readyq(62615)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62611
|only if (havequest(62611) or completedq(62611)) and not readyq(62611)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62614
|only if (havequest(62614) or completedq(62614)) and not readyq(62614)
step
talk Marasmius##167455
Tell it _"Let's ride."_
Speak to Marasmius |invehicle |goto 50.75,53.29 |q 62610
|only if (havequest(62610) or completedq(62610)) and not readyq(62610)
step
Kill enemies around this area
Slay #30# Possessed Invaders |q 62614/2 |goto Ardenweald/0 45.89,73.33 |notravel
|tip Use the abilities on your action bar.
|only if havequest(62614) or completedq(62614)
step
Kill enemies around this area
Slay #30# Blackthorn Assailants |q 62615/2 |goto Ardenweald/0 36.69,28.30 |notravel
|tip Use the abilities on your action bar.
|only if havequest(62615) or completedq(62615)
step
Kill enemies around this area
Slay #30# Possessed Desecrators |q 62611/2 |goto 69.55,23.41 |notravel
|tip Use the abilities on your action bar.
|only if havequest(62611) or completedq(62611)
step
Kill enemies around this area
Slay #30# Masked Invaders |q 62610/2 |goto Ardenweald/0 30.72,35.47 |notravel
|tip Use the abilities on your action bar.
|only if havequest(62610) or completedq(62610)
step
Use the _"Traverse to the Unknown"_ ability |goto Fungal Terminus/0 60.27,52.90
|tip It appears as a button on-screen.
Travel to the Unknown |goto Ardenweald/0 47.12,55.72 < 30 |c |noway |q 60153
|only if havequest(60153) or completedq(60153)
step
Approach the Young Matriarch |q 60153/1 |goto Ardenweald/0 47.12,55.72
|only if havequest(60153) or completedq(60153)
stickystart "Destroy_Pulsing_Gorm_Eggs"
step
kill Young Matriarch##161971 |q 60153/2 |goto Ardenweald/0 47.12,54.89
|only if havequest(60153) or completedq(60153)
step
label "Destroy_Pulsing_Gorm_Eggs"
click Pulsing Gorm Eggs
|tip They look like large wiggling eggs on the ground inside the cave.
Destroy #6# Pulsing Gorm Eggs |q 60153/3 |goto 47.12,54.89
|only if havequest(60153) or completedq(60153)
step
Use the _"Traverse to The Ring"_ ability |goto 47.12,55.65
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 60153
|only if havequest(60153) or completedq(60153)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62296/1 |goto Fungal Terminus/0 60.27,52.90
|only if havequest(62296) or completedq(62296)
step
kill 20 Scouring Dustlet##173766 |q 62296/2 |goto The Root Cellar/0 56.52,42.26
|only if havequest(62296) or completedq(62296)
step
Use the _"Traverse to The Ring"_ ability |goto 50.14,73.20
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62296
|only if havequest(62296) or completedq(62296)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62382/1 |goto Fungal Terminus/0 60.27,52.90
|only if havequest(62382) or completedq(62382)
step
kill Bagoom##174131 |q 62382/2 |goto The Root Cellar/1 54.88,31.86
|tip Inside the cave.
|only if havequest(62382) or completedq(62382)
step
Use the _"Traverse to The Ring"_ ability |goto 48.25,72.90
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62382
|only if havequest(62382) or completedq(62382)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Unknown |q 62453/1 |goto Fungal Terminus/0 60.27,52.90
|only if havequest(62453) or completedq(62453)
step
clicknpc Squeezums##174362
collect 1 Gorm "Juice"##183961 |goto The Root Cellar/3 48.31,59.54 |q 62453
|only if havequest(62453) or completedq(62453)
step
talk Daffodil##174365
Choose the following options:
_"How can I help?"_
_"Its three maws agog?"_
_"Before his next quest!"_
_"Oh night fae in unity?"_
Relax! |q 62453/2 |goto 43.73,32.82 |count 1
|only if havequest(62453) or completedq(62453)
step
click Harp
|tip Stand still until you finish playing.
Relax! |q 62453/2 |goto The Root Cellar/3 51.50,29.92 |count 2
|only if havequest(62453) or completedq(62453)
step
talk Mixy Mak##174371
Choose the following options:
_"Can you make me something special??"_
_"Here's your gorm juice. This won't kill me will it?"_
Relax! |q 62453/2 |goto The Root Cellar/3 62.93,32.81 |count 3
|only if havequest(62453) or completedq(62453)
step
Use the _"Traverse to The Ring"_ ability |goto 50.48,76.36
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62453
|only if havequest(62453) or completedq(62453)
step
click Pile of Loam##350997+
|tip They look like small piles of brown dirt on the ground around this area.
collect 6 Leafy Loam##178215 |q 60175/1 |goto Ardenweald/0 70.81,54.62
|only if havequest(60175) or completedq(60175)
step
click Cracked Vertosol##358528+
|tip They look like piles of loose dirt on the ground around this area.
collect 6 Blackthorn Clay##183840 |q 62606/1 |goto 42.43,32.71
|only if havequest(62606) or completedq(62606)
step
click Shimmering Soil##358526+
|tip They look like pale patches of soil on the ground around this area.
collect 6 Shimmersilt##183836 |q 62607/1 |goto 52.51,61.14
|only if havequest(62607) or completedq(62607)
step
click Rich Topsoil##358527+
|tip They look like small patches of brown soil on the ground around this area.
collect 6 Royal Peat##183837 |q 62608/1 |goto 38.99,57.84
|only if havequest(62608) or completedq(62608)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62459/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62459) or completedq(62459)
step
use the Moth Net##183725
|tip Use it on Selenia Moths around this area.
|tip They look like tiny moths flying above the ground around this area.
|tip Get close to them to catch them with the net.
Net #8# Selenia Moths |q 62459/2 |goto Ardenweald/0 20.35,37.67
|only if havequest(62459) or completedq(62459)
step
Use the _"Traverse to The Ring"_ ability |goto 19.39,36.72
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62459
|only if havequest(62459) or completedq(62459)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62400/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62400) or completedq(62400)
step
click Portal from Thros
|tip They look like large black and blue swirling portals on the ground around this area.
|tip Various glittering objects such as moths and portals will cleanse the pools.
Kill enemies around this area
|tip Use the "Bomblete" ability that appears on-screen to inflict heavy damage.
Cleanse the Faraway Pools |q 62400/2 |goto Ardenweald/0 25.30,74.16
|only if havequest(62400) or completedq(62400)
step
Use the _"Traverse to The Ring"_ ability |goto 26.69,73.68
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62400
|only if havequest(62400) or completedq(62400)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62417/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62417) or completedq(62417)
step
click Night Lily+
|tip They look like small blue flowers on the ground around this area.
collect 8 Night Lily##183697 |q 62417/2 |goto Ardenweald/0 49.02,8.34
|only if havequest(62417) or completedq(62417)
step
Use the _"Traverse to The Ring"_ ability |goto 50.92,7.45
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62417
|only if havequest(62417) or completedq(62417)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62466/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62466) or completedq(62466)
step
talk Arkelios##173939
Ask it _"How can I help?"_
Speak with Arkelios |q 62466/2 |goto Ardenweald/0 54.25,91.76
|only if havequest(62466) or completedq(62466)
step
click Fear Focus
Find the Fear Focus |q 62466/3 |goto 52.34,90.59
|only if havequest(62466) or completedq(62466)
step
click Sadness Focus
Find the Sadness Focus |q 62466/4 |goto 54.09,89.21
|only if havequest(62466) or completedq(62466)
step
click Acceptance Focus
Find the Acceptance Focus |q 62466/5 |goto 54.52,89.86
|only if havequest(62466) or completedq(62466)
step
click Fear Focus
Place the Place the Fear Focus |q 62466/6 |goto 54.18,91.73
|only if havequest(62466) or completedq(62466)
step
click Sadness Focus
Place the Sadness Focus |q 62466/7 |goto 54.17,91.78
|only if havequest(62466) or completedq(62466)
step
click Acceptance Focus
Place the Acceptance Focus |q 62466/8 |goto 54.17,91.83
|only if havequest(62466) or completedq(62466)
step
Use the _"Traverse to The Ring"_ ability |goto 54.21,93.66
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62466
|only if havequest(62466) or completedq(62466)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 60188/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(60188) or completedq(60188)
step
click Discarded Harp##351425
collect Discarded Harp##178464 |goto Ardenweald/0 18.62,39.89 |q 60188
|only if havequest(60188) or completedq(60188)
step
use Discarded Harp##178464
Soothe the Lonely Matriarch |q 60188/2 |goto 18.11,37.65
|only if havequest(60188) or completedq(60188)
step
click Very Large Silk Bundle##351427
collect Giant Silk Bundle##178465 |q 60188/3 |goto 18.27,37.60
|only if havequest(60188) or completedq(60188)
step
Use the _"Traverse to The Ring"_ ability |goto 19.39,36.72
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 60188
|only if havequest(60188) or completedq(60188)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62263/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62263) or completedq(62263)
step
talk Arkelios##173939
Ask it _"How can I help?"_
Speak with Arkelios |q 62263/2 |goto Ardenweald/0 54.25,91.76
|only if havequest(62263) or completedq(62263)
step
click Compassion Focus
Find the Compassion Focus |q 62263/3 |goto 52.97,90.60
|only if havequest(62263) or completedq(62263)
step
click Forgiveness Focus
Find the Forgiveness Focus |q 62263/4 |goto 53.73,89.38
|only if havequest(62263) or completedq(62263)
step
click Patience Focus
Find the Patience Focus |q 62263/5 |goto 54.53,89.92
|only if havequest(62263) or completedq(62263)
step
click Compassion Focus
Place the Place the Compassion Focus |q 62263/6 |goto 54.18,91.73
|only if havequest(62263) or completedq(62263)
step
click Forgiveness Focus
Place the Forgiveness Focus |q 62263/7 |goto 54.17,91.78
|only if havequest(62263) or completedq(62263)
step
click Patience Focus
Place the Patience Focus |q 62263/8 |goto 54.19,91.84
|only if havequest(62263) or completedq(62263)
step
Use the _"Traverse to The Ring"_ ability |goto 54.21,93.63
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62263
|only if havequest(62263) or completedq(62263)
step
Use the _"Traverse to the Unknown"_ ability
|tip It appears as a button on-screen.
Travel to the Great Unknown |q 62465/1 |goto Fungal Terminus/0 38.81,55.29
|only if havequest(62465) or completedq(62465)
step
talk Lyri##174417
Ask her _"How can I help?"_
Speak with Lyri |q 62465/2 |goto Ardenweald/0 50.46,7.54
|only if havequest(62465) or completedq(62465)
stickystart "Collect_6_Pilfered_Materials"
step
kill Shifting Dread##174383
collect Artisan's Implement##183792 |q 62465/4 |goto 48.92,9.25
|only if havequest(62465) or completedq(62465)
step
label "Collect_6_Pilfered_Materials"
Kill Stranded enemies around this area
collect 6 Pilfered Materials##183791 |q 62465/3 |goto 49.10,8.32
|only if havequest(62465) or completedq(62465)
step
talk Lyri##174417
Tell her _"Here are your things."_
Return with Lyri |q 62465/5 |goto 50.46,7.54
|only if havequest(62465) or completedq(62465)
step
Use the _"Traverse to The Ring"_ ability |goto 50.90,7.44
|tip It appears as a button on-screen.
Return to The Ring |goto Fungal Terminus/0 65.75,73.60 < 100 |c |noway |q 62465
|only if havequest(62465) or completedq(62465)
step
talk Marasmius##167455
turnin Hyphae Patrol: Eventide Grove##62614 |goto Fungal Terminus/0 50.75,53.29 |only if readyq(62614) or completedq(62614)
turnin Hyphae Patrol: Gossamer Cliffs##62615 |goto 50.75,53.29 |only if readyq(62615) or completedq(62615)
turnin Hyphae Patrol: Heartwood Grove##62611 |goto 50.75,53.29 |only if readyq(62611) or completedq(62611)
turnin Hyphae Patrol: The Stalks##62610 |goto 50.75,53.29 |only if readyq(62610) or completedq(62610)
turnin A Taste of Tirna Noch##60175 |goto 50.75,53.29 |only if readyq(60175) or completedq(60175)
turnin Glittering Gritty Goodness##62607 |goto 50.75,53.29 |only if readyq(62607) or completedq(62607)
turnin A Royal Treat##62608 |goto 50.75,53.29 |only if readyq(62608) or completedq(62608)
turnin A Blackthorn Blend##62606 |goto 50.75,53.29 |only if readyq(62606) or completedq(62606)
turnin Into the Unknown##60153 |goto 50.75,53.29 |only if readyq(60153) or completedq(60153)
turnin Into the Unknown##62296 |goto 50.75,53.29 |only if readyq(62296) or completedq(62296)
turnin Into the Unknown##62382 |goto 50.75,53.29 |only if readyq(62382) or completedq(62382)
turnin Into the Unknown##62453 |goto 50.75,53.29 |only if readyq(62453) or completedq(62453)
turnin Go Beyond!##62459 |goto 50.75,53.29 |only if readyq(62459) or completedq(62459)
turnin Go Beyond!##62400 |goto 50.75,53.29 |only if readyq(62400) or completedq(62400)
turnin Go Beyond!##62417 |goto 50.75,53.29 |only if readyq(62417) or completedq(62417)
turnin Go Beyond!##62466 |goto 50.75,53.29 |only if readyq(62466) or completedq(62466)
turnin Go Beyond!##60188 |goto 50.75,53.29 |only if readyq(60188) or completedq(60188)
turnin Go Beyond!##62263 |goto 50.75,53.29 |only if readyq(62263) or completedq(62263)
turnin Go Beyond!##62465 |goto 50.75,53.29 |only if readyq(62465) or completedq(62465)
|only if readyanyq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465) or completedanyq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465)
step
You have completed all Fungal Terminus daily quests
|tip This guide will reset when more become available.
'|condition not completedanyq(62614,62615,62610,60153,62296,62382,62453,62611,62607,60175,62608,62606,62459,62400,62417,62466,60188,62263,62465) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests for the Venthyr Covenant.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
talk Tenaval##164738
accept Return Lost Souls##61334 |goto Sinfall/0 45.41,28.47 |only if covenant() == Venthyr and covenantrenown() < 15
accept Return Lost Souls##62867 |goto 45.41,28.47 |only if covenant() == Venthyr and covenantrenown() >= 15 and covenantrenown() < 24
accept Return Lost Souls##62868 |goto 45.41,28.47 |only if covenant() == Venthyr and covenantrenown() >= 24 and covenantrenown() < 32
accept Return Lost Souls##62869 |goto 45.41,28.47 |only if covenant() == Venthyr and covenantrenown() >= 32
accept Storm the Maw##60456 |goto 45.41,28.47 |only if questactive(60456) or completedq(60456)
accept Soul Salvage##60460 |goto 45.41,28.47 |only if questactive(60460) or completedq(60460)
|only if anyquestactive(61334,62867,62868,62869,60456,60460) or completedanyq(61334,62867,62868,62869,60456,60460)
step
talk Foreman Flatfinger##172605
accept Replenish the Reservoir##61981 |goto 55.70,26.04
step
talk Tactician Sakaa##164741
accept Training in Ardenweald##60401 |goto 58.10,59.69 |only if questactive(60401) or completedq(60401)
accept Training in Maldraxxus##60409 |goto 58.10,59.69 |only if questactive(60409) or completedq(60409)
accept Training in Bastion##60406 |goto 58.10,59.69 |only if questactive(60406) or completedq(60406)
accept Training Our Forces##60410 |goto 58.10,59.69 |only if questactive(60410) or completedq(60410)
|only if anyquestactive(60401,60409,60406,60410) or completedanyq(60401,60409,60406,60410)
step
talk Prince Renathal##158653
accept A Call to Ardenweald##60422 |goto 51.77,37.54 |only if questactive(60422) or completedq(60422)
accept A Call to Bastion##60427 |goto 51.77,37.54 |only if questactive(60427) or completedq(60427)
accept A Call to Maldraxxus##60431 |goto 51.77,37.54 |only if questactive(60431) or completedq(60431)
accept Troubles at Home##60432 |goto 51.77,37.54 |only if questactive(60432) or completedq(60432)
|only if anyquestactive(60422,60427,60431,60432) or completedanyq(60422,60427,60431,60432)
step
talk The Curator##158713
accept Rare Resources##60417 |goto Sinfall/1 61.67,66.72 |only if questactive(60417) or completedq(60417)
accept A Wealth of Wealdwood##60370 |goto 61.67,66.72 |only if questactive(60370) or completedq(60370)
accept A Source of Sorrowvine##60378 |goto 61.67,66.72 |only if questactive(60378) or completedq(60378)
accept Gildenite Grab##60358 |goto 61.67,66.72 |only if questactive(60358) or completedq(60358)
accept Bonemetal Bonanza##60375 |goto 61.67,66.72 |only if questactive(60375) or completedq(60375)
|only if anyquestactive(60417,60370,60378,60358,60375) or completedanyq(60417,60370,60378,60358,60375)
step
talk The Accuser##165291
accept Challenges in Ardenweald##60441 |goto 56.02,78.61 |only if questactive(60441) or completedq(60441)
accept Challenges in Bastion##60444 |goto 56.02,78.61 |only if questactive(60444) or completedq(60444)
accept Challenges in Maldraxxus##60446 |goto 56.02,78.61 |only if questactive(60446) or completedq(60446)
accept Challenges in Revendreth##60448 |goto 56.02,78.61 |only if questactive(60448) or completedq(60448)
|only if anyquestactive(60441,60444,60446,60448) or completedanyq(60441,60444,60446,60448)
step
talk Rendle##165302
accept Aiding Ardenweald##60389 |goto 62.44,76.57 |only if questactive(60389) or completedq(60389)
accept Aiding Bastion##60394 |goto 62.44,76.57 |only if questactive(60394) or completedq(60394)
accept Aiding Maldraxxus##60397 |goto 62.44,76.57 |only if questactive(60397) or completedq(60397)
accept Aiding Revendreth##60399 |goto 62.44,76.57 |only if questactive(60399) or completedq(60399)
|only if anyquestactive(60389,60394,60397,60399) or completedanyq(60389,60394,60397,60399)
step
talk Devahia##164739
accept Anima Appeal##60463 |goto 47.67,57.39
|only if questactive(60463) or completedq(60463)
stickystart "Complete_World_Quests_in_Revendreth_with_Trainee"
stickystart "Complete_World_Quests_in_Revendreth"
stickystart "Defeat_the_Powerful_Foes_of_Revendreth"
stickystart "Defend_Revendreth"
stickystart "Collect_4_Gildenite"
stickystart "Collect_4_Bonemetal"
stickystart "Collect_4_Sorrowvine"
stickystart "Collect_4_Wealdwood"
stickystart "Collect_Coins_of_Brokerage"
stickystart "Complete_World_Quests_in_Maldraxxus_with_Trainee"
stickystart "Complete_World_Quests_in_Bastion_with_Trainee"
stickystart "Complete_World_Quests_in_Ardenweald"
stickystart "Complete_World_Quests_in_Bastion"
stickystart "Complete_World_Quests_in_Maldraxxus"
stickystart "Defeat_the_Powerful_Foes_of_Ardenweald"
stickystart "Defeat_the_Powerful_Foes_of_Bastion"
stickystart "Defeat_the_Powerful_Foes_of_Maldraxxus"
stickystart "Defend_Ardenweald"
stickystart "Defend_Bastion"
stickystart "Defend_Maldraxxus"
step
Complete #3# World Quests in Ardenweald with Your Trainee |q 60401/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60401) or completedq(60401)
step
label "Complete_World_Quests_in_Maldraxxus_with_Trainee"
Complete #3# World Quests in Maldraxxus with Your Trainee |q 60409/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60409) or completedq(60409)
step
label "Complete_World_Quests_in_Bastion_with_Trainee"
Complete #3# World Quests in Bastion with Your Trainee |q 60406/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60406) or completedq(60406)
step
label "Complete_World_Quests_in_Revendreth_with_Trainee"
Complete #3# World Quests in Revendreth with Your Trainee |q 60410/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60410) or completedq(60410)
step
label "Complete_World_Quests_in_Ardenweald"
Complete #3# World Quests in Ardenweald |q 60389/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Ardenweald map to load the guide for it.
|only if havequest(60389) or completedq(60389)
step
label "Complete_World_Quests_in_Bastion"
Complete #3# World Quests in Bastion |q 60394/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Bastion map to load the guide for it.
|only if havequest(60394) or completedq(60394)
step
label "Complete_World_Quests_in_Maldraxxus"
Complete #3# World Quests in Maldraxxus |q 60397/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Maldraxxus map to load the guide for it.
|only if havequest(60397) or completedq(60397)
step
label "Complete_World_Quests_in_Revendreth"
Complete #3# World Quests in Revendreth |q 60399/1
|tip Use the World Quests guide to accomplish this.
|tip Click a world quest on the Revendreth map to load the guide for it.
|only if havequest(60399) or completedq(60399)
step
label "Defeat_the_Powerful_Foes_of_Ardenweald"
Defeat the Powerful Foes of Ardenweald |q 60441/1
|tip Complete the "Terrors in Tirna Scithe" world quest in Ardenweald using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Mists of Tirna Scithe" or "De Other Side" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60441) or completedq(60441)
step
label "Defeat_the_Powerful_Foes_of_Bastion"
Defeat the Powerful Foes of Bastion |q 60444/1
|tip Complete the "Disloyal Denizens" world quest in Bastion using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Spires of Ascension Dungeon" or "Necrotic Wake" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60444) or completedq(60444)
step
label "Defeat_the_Powerful_Foes_of_Maldraxxus"
Defeat the Powerful Foes of Maldraxxus |q 60446/1
|tip Complete the "Chosen Champions" world quest in Maldraxxus using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Theater of Pain" or "Plaguefall" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60446) or completedq(60446)
step
label "Defeat_the_Powerful_Foes_of_Revendreth"
Defeat the Powerful Foes of Revendreth |q 60448/1
|tip Complete the "Destroy the Dominant" world quest in Revendreth using the world quest guide if it is active.
|tip Alternatively, you may also complete the "Sanguine Depths" or "Halls of Atonement" dungeons using their respective dungeon guides.
|tip Completing any one of these will fulfill the quest requirements.
|only if havequest(60448) or completedq(60448)
step
label "Defend_Ardenweald"
Defend Ardenweald |q 60422/1
|tip You can accomplish this several ways.
|tip Complete world quests in Ardenweald using the "Ardenweald World Quests" guide.
|tip Loot treasures or kill rare enemies across Ardenweald.
|tip You can also kill bosses in the "Mists of Tirna Scithe" and "De Other Side" dungeons using their respective dungeon guides.
|only if havequest(60422) or completedq(60422)
step
label "Defend_Bastion"
Defend Bastion |q 60427/1
|tip You can accomplish this several ways.
|tip Complete world quests in Bastion using the "Bastion World Quests" guide.
|tip Loot treasures or kill rare enemies across Bastion.
|tip You can also kill bosses in the "Spires of Ascension" and "Necrotic Wake" dungeons using their respective dungeon guides.
|only if havequest(60427) or completedq(60427)
step
label "Defend_Maldraxxus"
Defend Maldraxxus |q 60431/1
|tip You can accomplish this several ways.
|tip Complete world quests in Maldraxxus using the "Maldraxxus World Quests" guide.
|tip Loot treasures or kill rare enemies across Maldraxxus.
|tip You can also kill bosses in the "Plaguefall" and "Theatre of Pain" dungeons using their respective dungeon guides.
|only if havequest(60431) or completedq(60431)
step
label "Defend_Revendreth"
Defend Revendreth |q 60432/1
|tip You can accomplish this several ways.
|tip Complete world quests in Revendreth using the "Revendreth World Quests" guide.
|tip Loot treasures or kill rare enemies across Revendreth.
|tip You can also kill bosses in the "Sanguine Depths" and "Halls of Atonement" dungeons using their respective dungeon guides.
|only if havequest(60432) or completedq(60432)
step
label "Collect_4_Gildenite"
collect 3 Gildenite##179321 |q 60358/1
|tip This ore drops from rare spawns and treasures all over Bastion.
|only if havequest(60358) or completedq(60358)
step
label "Collect_4_Bonemetal"
collect 3 Bonemetal##179317 |q 60375/1
|tip This drops from rare spawns and treasures all over Maldraxxus.
|only if havequest(60375) or completedq(60375)
step
label "Collect_4_Sorrowvine"
collect 3 Sorrowvine##179318 |q 60378/1
|tip Loot treasures or kill rare enemies across Revendreth.
|only if havequest(60378) or completedq(60378)
step
label "Collect_4_Wealdwood"
collect 3 Wealdwood##179320 |q 60370/1
|tip Loot treasures or kill rare enemies across Ardenweald.
|only if havequest(60370) or completedq(60370)
step
label "Collect_Coins_of_Brokerage"
collect 3 Coin of Brokerage##179327 |q 60417/1
|tip These coins drop from rare spawns and treasures all over Shadowlands zones.
|only if havequest(60417) or completedq(60417)
stickystart "Collect_150_Soul_Embers_from_Torghast"
stickystart "Defeat_3_Rare_or_Special_Encounter_Bosses"
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #5# Lost Souls in the Maw |q 61334/1 |goto The Maw/0 39.52,46.74
|only if havequest(61334) or completedq(61334)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #10# Lost Souls in the Maw |q 62867/1 |goto The Maw/0 39.52,46.74
|only if havequest(62867) or completedq(62867)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #15# Lost Souls in the Maw |q 62868/1 |goto The Maw/0 39.52,46.74
|only if havequest(62868) or completedq(62868)
step
kill Stone Prison##176145+
click Soul Cage+
|tip They look like tall grey metal cages on the ground around this area.
|tip They will appear on your minimap.
clicknpc Caged Soul##174182+
|tip They look like white spirits that float out of the cages.
|tip You can also click Caged Souls that come out of cages other players opened.
Rescue #20# Lost Souls in the Maw |q 62869/1 |goto The Maw/0 39.52,46.74
|only if havequest(62869) or completedq(62869)
step
label "Collect_150_Soul_Embers_from_Torghast"
Gather #150# Anima Embers from Torghast, Tower of the Damned |q 60460/1
|tip Run Torghast and collect them from the final boss.
|only if havequest(60460) or completedq(60460)
step
label "Defeat_3_Rare_or_Special_Encounter_Bosses"
Defeat #3# Rare or Special Encounter Bosses in the Maw |q 60456/1
|tip Encounters periodically show on the map in The Maw.
|only if havequest(60456) or completedq(60456)
step
talk Tenaval##164738
turnin Storm the Maw##60456 |goto Sinfall/0 45.41,28.47 |only if readyq(60456) or completedq(60456)
turnin Return Lost Souls##61334 |goto 45.41,28.47 |only if readyq(61334) or completedq(61334)
turnin Return Lost Souls##62867 |goto 45.41,28.47 |only if readyq(62867) or completedq(62867)
turnin Return Lost Souls##62868 |goto 45.41,28.47 |only if readyq(62868) or completedq(62868)
turnin Return Lost Souls##62869 |goto 45.41,28.47 |only if readyq(62869) or completedq(62869)
turnin Soul Salvage##60460 |goto 45.41,28.47 |only if readyq(60460) or completedq(60460)
|only if readyanyq(60456,61334,62867,62868,62869,60460) or completedanyq(60456,61334,62867,62868,62869,60460)
step
talk Foreman Flatfinger##172605
turnin Replenish the Reservoir##61981 |goto 55.70,26.04
|only if readyq(61981) or completedq(61981)
step
talk Tactician Sakaa##164741
turnin Training in Ardenweald##60401 |goto 58.10,59.69 |only if readyq(60401) or completedq(60401)
turnin Training in Maldraxxus##60409 |goto 58.10,59.69 |only if readyq(60409) or completedq(60409)
turnin Training in Bastion##60406 |goto 58.10,59.69 |only if readyq(60406) or completedq(60406)
turnin Training Our Forces##60410 |goto 58.10,59.69 |only if readyq(60410) or completedq(60410)
|only if readyanyq(60401,60409,60406,60410) or completedanyq(60401,60409,60406,60410)
step
talk Prince Renathal##158653
turnin A Call to Ardenweald##60422 |goto 51.77,37.54 |only if readyq(60422) or completedq(60422)
turnin A Call to Bastion##60427 |goto 51.77,37.54 |only if readyq(60427) or completedq(60427)
turnin A Call to Maldraxxus##60431 |goto 51.77,37.54 |only if readyq(60431) or completedq(60431)
turnin Troubles at Home##60432 |goto 51.77,37.54 |only if readyq(60432) or completedq(60432)
|only if readyanyq(60422,60427,60431,60432) or completedanyq(60422,60427,60431,60432)
step
talk Devahia##164739
turnin Anima Appeal##60463 |goto Sinfall/1 47.67,57.39
|only if readyq(60463) or completedq(60463)
step
talk The Curator##158713
turnin Rare Resources##60417 |goto 61.67,66.72 |only if readyq(60417) or completedq(60417)
turnin A Wealth of Wealdwood##60370 |goto 61.67,66.72 |only if readyq(60370) or completedq(60370)
turnin A Source of Sorrowvine##60378 |goto 61.67,66.72 |only if readyq(60378) or completedq(60378)
turnin Gildenite Grab##60358 |goto 61.67,66.72 |only if readyq(60358) or completedq(60358)
turnin Bonemetal Bonanza##60375 |goto 61.67,66.72 |only if readyq(60375) or completedq(60375)
|only if readyanyq(60417,60370,60378,60358,60375) or completedanyq(60417,60370,60378,60358,60375)
step
talk The Accuser##165291
turnin Challenges in Ardenweald##60441 |goto 56.02,78.61 |only if readyq(60441) or completedq(60441)
turnin Challenges in Bastion##60444 |goto 56.02,78.61 |only if readyq(60444) or completedq(60444)
turnin Challenges in Maldraxxus##60446 |goto 56.02,78.61 |only if readyq(60446) or completedq(60446)
turnin Challenges in Revendreth##60448 |goto 56.02,78.61 |only if readyq(60448) or completedq(60448)
|only if readyanyq(60441,60444,60446,60448) or completedanyq(60441,60444,60446,60448)
step
talk Rendle##165302
turnin Aiding Ardenweald##60389 |goto 62.44,76.57 |only if readyq(60389) or completedq(60389)
turnin Aiding Bastion##60394 |goto 62.44,76.57 |only if readyq(60394) or completedq(60394)
turnin Aiding Maldraxxus##60397 |goto  |only if readyq(60397) or completedq(60397)
turnin Aiding Revendreth##60399 |goto Sinfall/1  |only if readyq(60399) or completedq(60399)
|only if readyanyq(60389,60394,60397,60399) or completedanyq(60389,60394,60397,60399)
stickystart "Deposit_1500_Anima_in_the_Reservoir"
step
talk Foreman Flatfinger##172605
Tell him _"Show me the Sanctum."_
|tip Click the "Deposit" button to deposit anima from your bags.
Deposit #400# Anima in the Anima Reservoir |q 60463/1 |goto Sinfall/0 55.70,26.04 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands.
'|condition countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies" |or
|only if havequest(60463) or completedq(60463)
step
talk Devahia##164739
turnin Anima Appeal##60463 |goto Sinfall/1 47.67,57.39
|only if readyq(60463) or completedq(60463)
step
label "Deposit_1500_Anima_in_the_Reservoir"
talk Foreman Flatfinger##172605 |notinsticky
Tell him _"Show me the Sanctum."_ |notinsticky
|tip Click the "Deposit" button to deposit anima from your bags. |notinsticky
Deposit #1500# Anima in the Anima Reservoir |q 61981/1 |goto Sinfall/0 55.70,26.04 |or
|tip Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands. |notinsticky
'|condition countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies" |or
|only if readyq(61981) or completedq(61981)
step
talk Foreman Flatfinger##172605
turnin Replenish the Reservoir##61981 |goto 55.70,26.04
|only if readyq(61981) or completedq(61981)
step
You have completed all covenant daily quests
|tip This guide will reset when more become available.
'|condition countcompletedq(60460,60401,60409,60406,60410,60422,60427,60431,60432,60463,60417,60370,60375,60378,60358,60441,60444,60446,60448,60389,60394,60397,60399,60456) < 3 |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Kyrian Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Kyrian Anima Conductor.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Where There's a Quill...##61156 |only if questpossible
accept Signs of Demise##61159 |only if questpossible
accept Straight to the Point##61157 |only if questpossible
accept Arms Day##61199 |only if questpossible
accept Reduce, Reuse, Recycle##61166 |only if questpossible
accept A Light Touch##61193 |only if questpossible
accept Pollen Your Weight##61182 |only if questpossible
accept Manifesting Power##61146 |only if questpossible
accept The Secret Ingredient##61196 |only if questpossible
accept A Somber Melody##61209 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Bastion/0 50.29,21.28
stickystart "Collect_20_Resonant_Alloy"
step
Kill Forsworn enemies around this area
collect 20 Forsworn Insignia##180816 |q 61159/1 |goto Bastion/0 50.94,17.68
You can find more around [58.20,74.96]
|only if havequest(61159) or completedq(61159)
step
label "Collect_20_Resonant_Alloy"
click Goliath Parts
|tip They look like mechanical goliath parts on the ground around this area.
Kill enemies around this area
collect 20 Resonant Alloy##180830 |q 61166/1 |goto 51.84,17.19
|only if havequest(61166) or completedq(61166)
stickystart "Collect_30_Twirlpetal_Pollen"
step
Kill flying enemies around this area
|tip Any mob that flies will drop quills.
collect 30 Shimmerflight Quill##180796 |q 61156/1 |goto 55.28,24.26
|only if havequest(61156) or completedq(61156)
step
label "Collect_30_Twirlpetal_Pollen"
click Blooming Twirlpetal##355425+
|tip They look like sparkling and rotating flowers floating above the ground around this area.
collect 30 Twirlpetal Pollen##180851 |q 61182/1 |goto Bastion/0 53.01,25.77
You can find more around:
[46.44,41.92]
[62.64,34.71]
[58.45,51.47]
|only if havequest(61182) or completedq(61182)
stickystart "Collect_15_Firstborne's_Light"
stickystart "Collect_12_Elysian_Horns"
stickystart "Collect_20_Blessed_Armaments"
stickystart "Collect_15_Condensed_Essences"
stickystart "Collect_15_Ephemeral_Draught"
step
map Bastion/0
path follow smart; loop on; ants curved; dist 30
path	49.99,25.31	52.76,27.56	54.41,32.59	56.61,36.37	58.11,37.26
path	59.88,43.57	59.13,47.44	57.78,50.27	57.70,52.32	54.96,56.90
path	52.35,62.34	50.26,61.45	46.45,59.28	45.67,56.56	43.88,54.91
path	44.67,50.74	44.80,47.75	44.96,42.31	44.50,36.94	43.61,31.74
path	44.25,30.23	46.02,29.30	46.89,27.10	48.61,25.85
use the Eonian Lyre##180990
|tip Use it on Passing Echoes along the road.
|tip They look like ghostly blue winged humans along the road.
Dissipate #15# Kyrian Echoes |q 61209/1
|only if havequest(61209) or completedq(61209)
step
label "Collect_15_Firstborne's_Light"
click Firstborne's Light##355450+
|tip They look like light purple flowers with white light emitting from the tops in the water around this area.
collect 15 Firstborne's Light##180897 |q 61193/1 |goto 43.91,30.18
You can find more around:
[50.73,39.58]
[50.16,57.67]
[53.92,73.64]
[58.07,75.63]
|only if havequest(61193) or completedq(61196)
step
label "Collect_12_Elysian_Horns"
kill Silverplume Ridgeback##172200+
collect 12 Elysian Horn##180809 |q 61157/1 |goto Bastion/0 37.71,28.09
You can find more around [65.68,36.10]
|only if havequest(61157) or completedq(61157)
step
label "Collect_20_Blessed_Armaments"
click Blessed Armament##355497+
|tip They look like weapons sticking out of the ground around this area.
collect 20 Blessed Armament##180946 |q 61199/1 |goto Bastion/0 26.78,22.79
|only if havequest(61199) or completedq(61199)
step
label "Collect_15_Condensed_Essences"
Enter the building |goto Bastion/0 47.71,71.64 < 20 |walk
Kill Aberration enemies around this area
|tip Inside the building.
collect 15 Condensed Essence##180785 |q 61146/1 |goto Bastion/1 47.04,55.11
You can find more around [Bastion/0 58.86,75.57]
|only if havequest(61146) or completedq(61146)
step
label "Collect_15_Ephemeral_Draught"
click Ephemeral Draught##355453+
|tip They look like bottles filled various colored liquids on the ground around this area.
collect 15 Ephemeral Draught##180898 |q 61196/1 |goto Bastion/0 58.33,75.10
You can find more around [41.66,23.32]
|only if havequest(61196) or completedq(61196)
step
talk Galakamos##171676
turnin Where There's a Quill...##61156 |goto Bastion/0 50.37,21.31 |only if readyq(61156) or completedq(61156)
turnin Signs of Demise##61159 |goto Bastion/0 50.37,21.31 |only if readyq(61159) or completedq(61159)
turnin Straight to the Point##61157 |goto Bastion/0 50.37,21.31 |only if readyq(61157) or completedq(61157)
|only if readyanyq(61156,61159,61157) or completedanyq(61156,61159,61157)
step
talk Kofi##171671
turnin Arms Day##61199 |goto Bastion/0 50.33,21.35 |only if readyq(61199) or completedq(61199)
turnin Reduce, Reuse, Recycle##61166 |goto Bastion/0 50.33,21.35 |only if readyq(61166) or completedq(61166)
turnin A Light Touch##61193 |goto Bastion/0 50.33,21.35 |only if readyq(61193) or completedq(61193)
turnin Pollen Your Weight##61182 |goto Bastion/0 50.33,21.35 |only if readyq(61182) or completedq(61182)
|only if readyanyq(61199,61166,61193,61182) or completedanyq(61199,61166,61193,61182)
step
talk Forgelite Selene##171677
turnin Manifesting Power##61146 |goto Bastion/0 50.22,21.27 |only if readyq(61146) or completedq(61146)
turnin The Secret Ingredient##61196 |goto Bastion/0 50.22,21.27 |only if readyq(61196) or completedq(61196)
turnin A Somber Melody##61209 |goto 50.21,21.27 |only if readyq(61209) or completedq(61209)
|only if readyanyq(61146,61196,61209) or completedanyq(61146,61196,61209)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|condition not completedanyq(61156,61159,61157,61199,61166,61193,61182,61146,61196,61209) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Necrolords Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Necrolords Anima Conductor.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Boared to Death##62403 |only if questpossible
accept Body Count##62390 |only if questpossible
accept Volatile Reactions##62362 |only if questpossible
accept Queens And Future Kings##58260 |only if questpossible
accept Heavy Lifting##62363 |only if questpossible
accept Dire Learning##62364 |only if questpossible
accept Back Again!##62563 |only if questpossible
accept Revenge Is Easy##57964 |only if questpossible
accept See With My Eyes##60482 |only if questpossible
accept Spider's Lair##60505 |only if questpossible
accept Pumped Up##58211 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Maldraxxus/0 51.30,16.52
step
clicknpc Twigin##168615
Gain Twigin's Aid |q 58260/1 |goto 51.39,16.44
|only if havequest(58260) or completedq(58260)
step
kill Gorgantus the Gutter##171814 |q 62563/1 |goto 50.35,15.73
|only if havequest(62563) or completedq(62563)
stickystart "Collect_10_Hidden_Weapons"
stickystart "Slay_8_Razorweb_Weavers"
step
kill Manipulator Zalisar##168723 |q 60505/2 |goto Sightless Hold/0 79.81,84.34
|only if havequest(60505) or completedq(60505)
step
label "Collect_10_Hidden_Weapons"
use Sightless Vision##178993
|tip Use it as often as needed to maintain the buff.
click Hidden Weapon##352443+
|tip They look like various types of weapons in the building around this area.
|tip They glow red through objects while the buff is active.
collect 10 Hidden Weapons##178992 |q 60482/1 |goto 57.29,55.81
|only if havequest(60482) or completedq(60482)
step
label "Slay_8_Razorweb_Weavers"
Kill Razorweb enemies around this area
Slay #8# Razorweb Weavers |q 60505/1 |goto 57.29,56.06
|only if havequest(60505) or completedq(60505)
stickystart "Slay_15_Bonefused_Forces"
step
use the Sludge Pump##173881
|tip Use it near Bubbling Sludge spots.
kill Irritated Sludge##160702+
|tip They spawn from the Sludge Pump.
click Salvaged Gear##339387+
|tip They drop after killing Irritated Sludges.
collect 15 Mysterious Hooks##173899 |q 58211/1 |goto Maldraxxus/0 51.18,19.02
|only if havequest(58211) or completedq(58211)
step
label "Slay_15_Bonefused_Forces"
Kill Bonefused enemies around this area
Slay #15# Bonefused Forces |q 57964/1 |goto 50.21,20.80
|only if havequest(57964) or completedq(57964)
stickystart "Collect_10_Marrowbore_Larva"
step
kill 5 Marrowbore Queen##159747 |q 58260/2 |goto 54.77,18.39
|tip Use the "Twigin's Wings" ability on-screen to fly up in the air and engage Marrowbore Queens.
|only if havequest(58260) or completedq(58260)
step
label "Collect_10_Marrowbore_Larva"
Kill Marrowbore enemies around this area
|tip They fly around this area.
collect 10 Marrowbore Larva##173942 |q 58260/3 |goto 55.08,21.67
|only if havequest(58260) or completedq(58260)
stickystart "Collect_15_Animated_Catalyst"
step
click Tome of Rituals+
|tip They look like open books floating above the ground around this area.
Destroy #15# Tomes of Rituals |q 62364/1 |goto 67.35,29.33
You can find more around:
[69.58,51.63]
[62.78,43.29]
|only if havequest(62364) or completedq(62364)
step
label "Collect_15_Animated_Catalyst"
kill Flawed Rancor##169992+
collect 15 Animated Catalyst##183436 |q 62362/1 |goto 69.80,51.68
You can find more around [63.42,44.00]
|only if havequest(62362) or completedq(62362)
stickystart "Slay_15_Bonefused_Forces"
step
Kill Boar enemies around this area
collect 25 Bloody Tusks##183620 |q 62403/1 |goto 55.72,38.35
|only if havequest(62403) or completedq(62403)
step
talk Au'narim##159830
accept Spoiling For A Fight##58454 |goto 53.60,47.51
|only if questactive(58454) or completedq(58454)
step
kill Sabriel the Bonecleaver##168147 |q 58454/1 |goto 50.36,47.28
|tip Kill champions in the Theater of Pain until Sabriel spawns.
|tip It will spawn following the Drolkrad encounter.
|only if havequest(58454) or completedq(58454)
step
Click the Complete Quest Box
turnin Spoiling For A Fight##58454
|only if readyq(58454) or completedq(58454)
step
Kill Chosen enemies around this area
Slay #20# House of the Chosen Warriors |q 62363/1 |goto 38.93,65.13
|only if havequest(62363) or completedq(62363)
step
click Barrel of Parts##358341+
|tip They look like bone-clad barrels on the ground around this area.
click Spare Part##358342++
|tip They look like random body parts on the ground around this area.
collect 30 Abomination Parts##183600 |q 62390/1 |goto 29.44,30.72
|only if havequest(62390) or completedq(62390)
step
talk Varzisk Lidless##168675
turnin See With My Eyes##60482 |goto 51.16,16.89 |only if readyanyq(60482) or completedq(60482)
turnin Spider's Lair##60505 |goto 51.16,16.89 |only if readyanyq(60505) or completedq(60505)
turnin Pumped Up##58211 |goto 51.16,16.89 |only if readyanyq(58211) or completedq(58211)
|only if readyanyq(60482,60505,58211) or completedanyq(60482,60505,58211)
step
talk Fixer Bixie##167603
turnin Boared to Death##62403 |goto 51.24,16.81 |only if readyq(62403) or completedq(62403)
turnin Body Count##62390 |goto 51.24,16.81 |only if readyq(62390) or completedq(62390)
turnin Volatile Reactions##62362 |goto 51.24,16.81 |only if readyq(62362) or completedq(62362)
turnin Queens And Future Kings##58260 |goto 51.24,16.81 |only if readyq(58260) or completedq(58260)
turnin Heavy Lifting##62363 |goto 51.24,16.81 |only if readyq(62363) or completedq(62363)
turnin Dire Learning##62364 |goto 51.24,16.81 |only if readyq(62364) or completedq(62364)
|only if readyanyq(62403,62390,62362,58260,62363,62364) or completedanyq(62403,62390,62362,58260,62363,62364)
step
talk Cyrin Smirk##160523
turnin Back Again!##62563 |goto 51.42,16.10 |only if readyq(62563) or completedq(62563)
turnin Revenge Is Easy##57964 |goto 51.42,16.10 |only if readyq(57964) or completedq(57964)
|only if readyanyq(62563,57964) or completedanyq(62563,57964)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|condition not completedanyq(60482,60505,58211,62403,62390,62362,58260,62363,62364,62563,57964) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Night Fae Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Night Fae Anima Conductor.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept A Bundle of Lilies##62160 |only if questpossible
accept Catch A Star##62188 |only if questpossible
accept Doing the Dew##61875 |only if questpossible
accept Wake The Sleepers##61985 |only if questpossible
accept A Thread Of Hope##62224 |only if questpossible
accept Just Wing It##61968 |only if questpossible
accept Return Those Animacones!##62081 |only if questpossible
accept Hunting the Wilds##61950 |only if questpossible
accept Those Who Hunger##62057 |only if questpossible
accept Runestone Roundup##62155 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Ardenweald/0 59.67,52.81
step
Kill Gormling enemies around this area
Slay #25# Gormlings |q 62057/1 |goto 66.63,55.88
|only if havequest(62057) or completedq(62057)
stickystart "Collect_40_Thistledrop_Dew"
step
clicknpc Glittering Starfly##173656+
|tip They look like sparkling butterflies flying around this area.
Capture #15# Glittering Starflies |q 62188/1 |goto 57.35,59.35
You can find more around [50.97,45.79]
|only if havequest(62188) or completedq(62188)
step
label "Collect_40_Thistledrop_Dew"
click Thistledrop Frond##357255+
|tip They look like green and blue plants shaped like a question mark on the ground around this area.
collect 40 Thistledrop Dew##182333 |q 61875/1 |goto 53.02,59.27
|only if havequest(61875) or completedq(61875)
step
Kill Drustcrazed and Possessed enemies around this area
collect 20 Runestone Spike##182647 |q 62155/1 |goto 37.88,68.93
|only if havequest(62155) or completedq(62155)
stickystart "Collect_15_Night_Lilly"
stickystart "Collect_12_Feral_Anima"
step
clicknpc Slumbering Soul##173452+
|tip They look like sparkling blue animals on the ground around this area.
Awaken #10# Slumbering Souls |q 61985/1 |goto 57.53,43.66
You can find more around:
[46.93,63.33]
[32.51,53.27]
|only if havequest(61985) or completedq(61985)
step
label "Collect_12_Feral_Anima"
kill Runestag##165907+
collect 12 Feral Anima##182387 |q 61950/1 |goto 57.71,42.46
|only if havequest(61950) or completedq(61950)
step
label "Collect_15_Night_Lilly"
click Night Lilly##357582+
|tip They look like translucent blue and purple flowers around this area.
|tip You can find them near areas of water.
collect 15 Night Lilly##182659 |q 62160/1 |goto 61.89,40.92
You can find more around:
[56.84,52.85]
[61.25,56.89]
[62.48,52.79]
|only if havequest(62160) or completedq(62160)
stickystart "Collect_30_Perfect_Ardenmoth_Wing_Scale"
step
click Collector##357729+
|tip They look like twisted branches with blue silk on them around this area.
|tip They appear on your minimap as yellow dots.
collect 15 Anima Infused Silk##183041 |q 62224/1 |goto 70.53,30.99
You can find more around [43.50,35.56]
|only if havequest(62224) or completedq(62224)
step
label "Collect_30_Perfect_Ardenmoth_Wing_Scale"
kill Withering Ardenmoth##170730+
collect 30 Perfect Ardenmoth Wing Scale##182450 |q 61968/1 |goto 63.47,27.79
|only if havequest(61968) or completedq(61968)
step
Kill Bristlebark and Rotbriar enemies around this area
collect 50 Looted Animacone##182619 |q 62081/1 |goto 56.73,26.10
You can find more around [62.16,24.23]
|only if havequest(62081) or completedq(62081)
step
talk Teendynneetll##173277
turnin A Bundle of Lilies##62160 |goto 59.64,52.76 |only if readyq(62160) or completedq(62160)
turnin Catch A Star##62188 |goto 59.64,52.76 |only if readyq(62188) or completedq(62188)
turnin Doing the Dew##61875 |goto 59.64,52.76 |only if readyq(61875) or completedq(61875)
turnin Wake The Sleepers##61985 |goto 59.64,52.76 |only if readyq(61985) or completedq(61985)
turnin A Thread Of Hope##62224 |goto 59.64,52.76 |only if readyq(62224) or completedq(62224)
|only if readyanyq(62160,62188,61875,61985,62224) or completedanyq(62160,62188,61875,61985,62224)
step
talk Guardian Dazzlewing##173282
turnin Just Wing It##61968 |goto 59.72,52.76 |only if readyq(61968) or completedq(61968)
turnin Return Those Animacones!##62081 |goto 59.72,52.76 |only if readyq(62081) or completedq(62081)
turnin Hunting the Wilds##61950 |goto 59.72,52.76 |only if readyq(61950) or completedq(61950)
turnin Those Who Hunger##62057 |goto 59.72,52.76 |only if readyq(62057) or completedq(62057)
turnin Runestone Roundup##62155 |goto 59.72,52.76 |only if readyq(62155) or completedq(62155)
|only if readyanyq(61968,62081,61950,62057,62155) or completedanyq(61968,62081,61950,62057,62155)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|condition not completedanyq(62160,62188,61875,61985,62224,61968,62081,61950,62057,62155) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Shadowlands (50-60)\\Covenants\\Venthyr Anima Conductor Daily Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests unlocked through the Venthyr Anima Conductor.",
condition_suggested=function() return level >= 60 end,
patch='90001',
},[[
step
label "Begin_Dailies"
Talk to NPCs around this area
accept Awaken Our Allies##61735 |only if questpossible
accept Edict of Doom: Devourers##61845 |only if questpossible
accept Edict of Doom: Sinstone Golems##61848 |only if questpossible
accept Edict of Doom: Dredbats##61846 |only if questpossible
accept Census of Sins##61734 |only if questpossible
accept Old Habits Never Die##61732 |only if questpossible
accept Overdue Purging##61847 |only if questpossible
accept Crumbled Reality##61707 |only if questpossible
accept Take the Bite Out of 'Em##61849 |only if questpossible
accept Big Bag of Creepers##61733 |only if questpossible
Click Here After Accepting the Available Dailies |confirm always |goto Revendreth/0 71.84,75.98
stickystart "Collect_100_Infused_Rubble"
stickystart "Slay_20_Devourers"
stickystart "Destroy_30_Manifestations"
stickystart "Collect_40_Venthyr_Fangs"
stickystart "Pillage_10_Hoarded_Anima_Cages"
stickystart "Awaken_15_Stoneborn_Allies"
stickystart "Destroy_4_Sinstone_Golems"
stickystart "Collect_20_Mire_Creepers"
stickystart "Slay_25_Dreadbats"
step
click High Priestess Navi DeRolan |goto 74.02,76.96
Inspect #7# Lost Sinstones |q 61734/1 |count 1
|only if havequest(61734) or completedq(61734)
step
click Sentinel Shal'raven |goto 75.28,75.09
Inspect #7# Lost Sinstones |q 61734/1 |count 2
|only if havequest(61734) or completedq(61734)
step
click Tazerath of Seven Seas of Sand |goto 70.08,70.21
Inspect #7# Lost Sinstones |q 61734/1 |count 3
|only if havequest(61734) or completedq(61734)
step
click Archetus the Mad Designer |goto 71.70,61.19
Inspect #7# Lost Sinstones |q 61734/1 |count 4
|only if havequest(61734) or completedq(61734)
step
label "Collect_100_Infused_Rubble"
click Infused Rubble##356882+
|tip They look like large piles of stone on the ground around this area.
collect 100 Infused Rubble##182158 |q 61707/1 |goto 66.05,60.85
You can find more around:
[56.53,68.90]
[74.53,75.23]
|only if havequest(61707) or completedq(61707)
step
label "Slay_20_Devourers"
Slay Devourer enemies around this area
Slay #20# Devourers |q 61845/1 |goto 66.08,59.76
|only if havequest(61845) or completedq(61845)
step
label "Destroy_30_Manifestations"
Kill Manifestation enemies around this area
Destroy #30# Manifestations |q 61847/1 |goto 66.14,59.33
|only if havequest(61847) or completedq(61847)
step
label "Collect_40_Venthyr_Fangs"
Kill Depraved enemies around this area
collect 40 Venthyr Fang##182692 |q 61849/1 |goto 70.05,54.21
|only if havequest(61849) or completedq(61849)
step
click Prophet Kheva |goto 69.67,53.34
Inspect #7# Lost Sinstones |q 61734/1 |count 5
|only if havequest(61734) or completedq(61734)
step
label "Pillage_10_Hoarded_Anima_Cages"
click Hoarded Anima Cage+
|tip They look like small cages filled with red anima near objects around this area.
Pillage #10# Hoarded Anima Cages |q 61732/1 |goto 71.92,49.85
|only if havequest(61732) or completedq(61732)
step
click Lord Valthalak |goto 75.29,47.16
Inspect #7# Lost Sinstones |q 61734/1 |count 6
|only if havequest(61734) or completedq(61734)
step
click General Dugall |goto 78.49,36.18
Inspect #7# Lost Sinstones |q 61734/1 |count 7
|only if havequest(61734) or completedq(61734)
step
label "Awaken_15_Stoneborn_Allies"
click Stoneborn Ally+
|tip They look like statues of Stoneborn perched on ledges around this area.
Awaken #15# Stoneborn Allies |q 61735/1 |goto 57.62,37.25
You can find more around:
[53.81,48.12]
[41.24,41.53]
|only if havequest(61735) or completedq(61735)
step
label "Destroy_4_Sinstone_Golems"
kill 4 Sinstone Construct##159233 |q 61848/1 |goto 30.26,20.61
|only if havequest(61848) or completedq(61848)
step
label "Collect_20_Mire_Creepers"
click Mire Creeper+
|tip They look like tiny hunched-over humanoids walking in watery areas around this area.
collect 20 Mire Creeper##182583 |q 61733/1 |goto 46.12,68.41
You can find more around [62.54,52.80]
|only if havequest(61733) or completedq(61733)
step
label "Slay_25_Dreadbats"
Slay Dreadbat enemies around this area
|tip They fly or perch on objects around this area.
Slay #25# Dreadbats |q 61846/1 |goto 49.94,70.24
|only if havequest(61846) or completedq(61846)
step
talk Ironwing Fraado##173087
turnin Overdue Purging##61847 |goto 71.49,76.29
|only if readyq(61847) or completedq(61847)
step
talk John the Reanimator##173038
turnin Awaken Our Allies##61735 |goto 71.54,76.36
|only if readyq(61735) or completedq(61735)
step
talk Lord Harris##173248
turnin Edict of Doom: Devourers##61845 |goto 71.64,76.94 |only if readyq(61845) or completedq(61845)
turnin Edict of Doom: Sinstone Golems##61848 |goto 71.64,76.94 |only if readyq(61848) or completedq(61848)
turnin Edict of Doom: Dredbats##61846 |goto 71.64,76.94 |only if readyq(61846) or completedq(61846)
|only if readyanyq(61845,61848,61846) or completedanyq(61845,61848,61846)
step
talk Lady Sinrender##173532
turnin Census of Sins##61734 |goto 72.26,75.83
|only if readyq(61734) or completedq(61734)
step
talk Second Talon Shenraa##173042
turnin Old Habits Never Die##61732 |goto 72.37,76.03
|only if readyq(61732) or completedq(61732)
step
talk Thickman##173036
turnin Crumbled Reality##61707 |goto 71.33,74.45 |only if readyq(61707) or completedq(61707)
turnin Big Bag of Creepers##61733 |goto 71.33,74.45 |only if readyq(61733) or completedq(61733)
|only if readyanyq(61707,61733) or completedanyq(61707,61733)
step
talk Partially-eaten Iger##173630
turnin Take the Bite Out of 'Em##61849 |goto 71.21,74.34
|only if readyq(61849) or completedq(61849)
step
You have completed all Anima Conductor daily quests
|tip This guide will reset when more become available.
'|condition not completedanyq(61847,61735,61845,61848,61846,61734,61732,61707,61733,61849) |next "Begin_Dailies"
]])
