local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Shadowlands Alchemy 1-175",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Alchemy profession from 1-175.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Alchemy') >= 175 end,
condition_suggested=function() return skill('Shadowlands Alchemy') > 0 and skill('Shadowlands Alchemy') < 175 and level >= 50 end,
},[[
step
talk Elixirist Au'pyr##156687
Train Alchemy |skillmax Alchemy,300 |goto Oribos/0 39.24,40.37
step
talk Elixirist Au'pyr##156687
Train Shadowlands Alchemy |skillmax Shadowlands Alchemy,175 |goto 39.24,40.37
step
talk Distributor Au'naci##156689
buy 140 Rune Etched Vial##180732 |goto 38.92,39.43
|only if skill("Shadowlands Alchemy") < 100
step
collect 40 Death Blossom##169701
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 15
step
Open Your Alchemy Crafting Panel:
_<Create 20 Spiritual Healing Potion>_
Reach Level 15 Shadowlands Alchemy |skill Shadowlands Alchemy,15
step
talk Elixirist Au'pyr##156687
Train Ground Death Blossom |learn Ground Death Blossom##307120 |goto 39.24,40.37
step
collect 10 Death Blossom##169701
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 20
step
Open Your Alchemy Crafting Panel:
_<Create 5 Ground Death Blossom>_
|tip Save these, you will need them later.
Reach Level 20 Shadowlands Alchemy |skill Shadowlands Alchemy,20
step
talk Elixirist Au'pyr##156687
Train Ground Rising Glory |learn Ground Rising Glory##307124 |goto 39.24,40.37
step
collect 26 Rising Glory##168586
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 30
step
Open Your Alchemy Crafting Panel:
_<Create 13 Ground Rising Glory>_
Reach Level 30 Shadowlands Alchemy |skill Shadowlands Alchemy,30
step
talk Elixirist Au'pyr##156687
Train Potion of the Hidden Spirit |learn Potion of the Hidden Spirit##261424 |goto 39.24,40.37
step
collect 50 Death Blossom##169701
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 50
step
collect 75 Rising Glory##168586
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 50
step
Open Your Alchemy Crafting Panel:
_<Create 25 Potion of the Hidden Spirit>_
Reach Level 50 Shadowlands Alchemy |skill Shadowlands Alchemy,50
step
talk Elixirist Au'pyr##156687
Train Potion of Soul Purity |learn Potion of Soul Purity##256134 |goto 39.24,40.37
step
collect 75 Death Blossom##169701
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 75
step
collect 105 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 75
step
Open Your Alchemy Crafting Panel:
_<Create 35 Potion of Soul Purity>_
Reach Level 75 Shadowlands Alchemy |skill Shadowlands Alchemy,75
step
talk Elixirist Au'pyr##156687
Train Ground Nightshade |learn Ground Nightshade##307125 |goto 39.24,40.37
step
collect 10 Nightshade##171315
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 80
step
Open Your Alchemy Crafting Panel:
_<Create 55 Ground Nightshade>_
|tip Save these, you will need them later.
Reach Level 80 Shadowlands Alchemy |skill Shadowlands Alchemy,80
step
talk Elixirist Au'pyr##156687
Train Ground Vigil's Torch |learn Ground Vigil's Torch##307121 |goto 39.24,40.37
step
collect 60 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 100
step
Open Your Alchemy Crafting Panel:
_<Create 30 Ground Vigil's Torch>_
Reach Level 100 Shadowlands Alchemy |skill Shadowlands Alchemy,100
step
talk Elixirist Au'pyr##156687
Train Potion of Spiritual Clarity |learn Potion of Spiritual Clarity##307095 |goto 39.24,40.37
step
collect 25 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 105
step
Open Your Alchemy Crafting Panel:
_<Create 5 Potion of Spiritual Clarity>_
Reach Level 105 Shadowlands Alchemy |skill Shadowlands Alchemy,105
step
talk Elixirist Au'pyr##156687
Train Ground Widowbloom |learn Ground Widowbloom##307122 |goto 39.24,40.37
step
collect 40 Widowbloom##168583
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 120
step
Open Your Alchemy Crafting Panel:
_<Create 20 Ground Widowbloom>_
Reach Level 120 Shadowlands Alchemy |skill Shadowlands Alchemy,120
step
collect 40 Vigil's Torch##170554
step
Open Your Alchemy Crafting Panel:
_<Create 8 Potion of Spiritual Clarity>_
Reach Level 125 Shadowlands Alchemy |skill Shadowlands Alchemy,125
step
talk Elixirist Au'pyr##156687
Train Potion of Divine Awakening |learn Potion of Divine Awakening##307383 |goto 39.24,40.37
step
collect 30 Rising Glory##168586
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 135
step
collect 30 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 135
step
Open Your Alchemy Crafting Panel:
_<Create 10 Potion of Divine Awakening>_
Reach Level 135 Shadowlands Alchemy |skill Shadowlands Alchemy,135
step
talk Elixirist Au'pyr##156687
Train Potion of Deathly Fixation |learn Potion of Deathly Fixation##307384 |goto 39.24,40.37
step
collect 54 Widowbloom##168583
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 150
step
collect 54 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 150
step
Open Your Alchemy Crafting Panel:
_<Create 18 Potion of Deathly Fixation>_
Reach Level 150 Shadowlands Alchemy |skill Shadowlands Alchemy,150
step
talk Elixirist Au'pyr##156687
Train Potion of Spectral Stamina |learn Potion of Spectral Stamina##307097 |goto 39.24,40.37
step
collect 75 Vigil's Torch##170554
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 165
step
Open Your Alchemy Crafting Panel:
_<Create 15 Potion of Spectral Stamina>_
Reach Level 165 Shadowlands Alchemy |skill Shadowlands Alchemy,165
step
talk Elixirist Au'pyr##156687
Train Shadowghast Ingot |learn Shadowghast Ingot##307142 |goto 39.24,40.37
step
collect 190 Death Blossom##169701
|tip These can be collected, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Alchemy") < 175
step
Open Your Alchemy Crafting Panel:
_<Create 95 Ground Death Blossom>_
collect 100 Ground Death Blossom##171287
|only if skill("Shadowlands Alchemy") < 175
step
Open Your Alchemy Crafting Panel:
_<Create 10 Shadowghast Ingot>_
Reach Level 175 Shadowlands Alchemy |skill Shadowlands Alchemy,175
step
_Congratulations!_
You Reached 175 Shadowlands Alchemy Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Shadowlands Blacksmithing 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Blacksmithing profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Blacksmithing') >= 100 end,
condition_suggested=function() return skill('Shadowlands Blacksmithing') > 0 and skill('Shadowlands Blacksmithing') < 100 and level >= 50 end,
},[[
step
talk Smith Au'berk##156666
Train Blacksmithing |skillmax Blacksmithing,300 |goto Oribos/0 40.50,31.48
step
talk Smith Au'berk##156666
Train Shadowlands Blacksmithing |skillmax Shadowlands Blacksmithing,100 |goto 40.50,31.48
step
talk Distributor Au'til##156777
buy 1 Manual Metal Shaper##177033 |goto 38.58,33.48 |condition itemcount(177033) == 1 or itemcount(5956) == 1 or itemcount(157585) == 1 or itemcount(174280) == 1
step
collect 15 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 5
step
talk Distributor Au'til##156777
buy 100 Luminous Flux##180733 |goto 38.58,33.48
|only if skill("Shadowlands Blacksmithing") < 100
step
Open Your Blacksmithing Crafting Panel:
_<Create 3 Ceremonious Shanker>_
Reach Level 5 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,5 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Ceremonious Waistguard |learn Ceremonious Waistguard##307669 |goto 40.50,31.48
step
collect 54 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 15
step
Open Your Blacksmithing Crafting Panel:
_<Create 9 Ceremonious Waistguard>_
Reach Level 15 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,15 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Laestrite Skeleton Key |learn Laestrite Skeleton Key##307721 |goto 40.50,31.48
step
collect 26 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 28
step
Open Your Blacksmithing Crafting Panel:
_<Create 13 Laestrite Skeleton Key>_
Reach Level 28 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,28 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Ceremonious Axe |learn Ceremonious Axe##307672 |goto 40.50,31.48
step
collect 56 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 35
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Ceremonious Axe>_
Reach Level 36 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,36 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Ceremonious Blade |learn Ceremonious Blade##307679 |goto 40.50,31.48
step
collect 35 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 50
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Ceremonious Blade>_
Reach Level 50 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,50 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Shadowghast Ingot |learn Shadowghast Ingot##307611 |goto 40.50,31.48
step
collect 60 Solenium Ore##171829
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 90
step
collect 60 Sinvyr Ore##171832
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 90
step
collect 60 Phaedrum Ore##171831
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 90
step
collect 60 Oxxein Ore##171830
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 90
step
Open Your Blacksmithing Crafting Panel:
_<Create 60 Shadowghast Ingot>_
|tip Save these, you will need them later.
Reach Level 90 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,90 |goto 40.52,31.94
step
talk Smith Au'berk##156666
Train Shadowsteel Greaves |learn Shadowsteel Greaves##322591 |goto 40.50,31.48
step
collect 60 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 100
step
collect 120 Shadowghast Ingot##171428
|tip These were created in a previous step.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 100
step
collect 20 Elethium Ore##171833
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Blacksmithing") < 100
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Shadowsteel Greaves>_
Reach Level 100 Shadowlands Blacksmithing |skill Shadowlands Blacksmithing,100 |goto 40.52,31.94
step
_Congratulations!_
You Reached 100 Shadowlands Blacksmithing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Shadowlands Cooking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Cooking profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Cooking') >= 100 end,
condition_suggested=function() return skill('Shadowlands Cooking') > 0 and skill('Shadowlands Cooking') < 100 and level >= 50 end,
},[[
step
talk Chef Au'krut##156672
Train Cooking |skillmax Cooking,300 |goto Oribos/0 46.25,25.64
step
talk Chef Au'krut##156672
Train Shadowlands Cooking |skillmax Shadowlands Cooking,100 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 30 Smuggled Azerothian Produce##172058 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 11
step
talk Distributor Au'van##168353
buy 20 Inconceivably Aged Vinegar##172057 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 11
step
collect 50 Aethereal Meat##172052
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 11
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Pickled Meat Smoothie>_
|tip Save these, you will need them later.
Reach Level 11 Shadowlands Cooking |skill Shadowlands Cooking,11
step
talk Chef Au'krut##156672
Train Sweet Silvergill Sausages |learn Sweet Silvergill Sausages##308425 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 50 Medley of Transplanar Spices##172056 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 20
step
collect 40 Silvergill Pike##173034
|tip These can be fished up in Bastion, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 20
step
collect 10 Raw Seraphic Wing##172054
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 20
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Sweet Silvergill Sausages>_
Reach Level 20 Shadowlands Cooking |skill Shadowlands Cooking,20
step
talk Chef Au'krut##156672
Train Meaty Apple Dumplings |learn Meaty Apple Dumplings##308412 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 10 Smuggled Azerothian Produce##172058 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 25
step
talk Distributor Au'van##168353
buy 5 Medley of Transplanar Spices##172056 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 25
step
talk Distributor Au'van##168353
buy 5 Lusterwheat Flour##178786 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 25
step
talk Distributor Au'van##168353
buy 5 Rich Grazer Milk##172059 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 25
step
collect 15 Shadowy Shank##179315
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 25
step
collect 10 Lost Sole##173032
|tip These can be fished up in Ardenweald, Bastion, and Maldraxxus, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 25
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 5 Meaty Apple Dumplings>_
Reach Level 25 Shadowlands Cooking |skill Shadowlands Cooking,25
step
talk Chef Au'krut##156672
Train Butterscotch Marinated Ribs |learn Butterscotch Marinated Ribs##308397 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 30 Rich Grazer Milk##172059 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 35
step
talk Distributor Au'van##168353
buy 10 Inconceivably Aged Vinegar##172057 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 35
step
talk Distributor Au'van##168353
buy 10 Smuggled Azerothian Produce##172058 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 35
step
collect 40 Tenebrous Ribs##172053
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 35
step
collect 10 Silvergill Pike##173034
|tip These can be fished up in Bastion, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 35
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Butterscotch Marinated Ribs>_
Reach Level 35 Shadowlands Cooking |skill Shadowlands Cooking,35
step
talk Chef Au'krut##156672
Train Candied Amberjack Cakes |learn Candied Amberjack Cakes##308411 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 40 Lusterwheat Flour##178786 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 45
step
talk Distributor Au'van##168353
buy 30 Medley of Transplanar Spices##172056 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 45
step
talk Distributor Au'van##168353
buy 30 Smuggled Azerothian Produce##172058 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 45
step
collect 50 Iridescent Amberjack##173033
|tip These can be fished up in Ardenweald, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 45
step
collect 50 Pocked Bonefish##173035
|tip These can be fished up in Maldraxxus, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 45
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Candied Amberjack Cakes>_
Reach Level 45 Shadowlands Cooking |skill Shadowlands Cooking,45
step
talk Chef Au'krut##156672
Train Steak a la Mode |learn Steak a la Mode##308426 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 40 Rich Grazer Milk##172059 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 55
step
talk Distributor Au'van##168353
buy 30 Medley of Transplanar Spices##172056 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 55
step
talk Distributor Au'van##168353
buy 30 Inconceivably Aged Vinegar##172057 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 55
step
collect 80 Shadowy Shank##179315
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 55
step
collect 20 Raw Seraphic Wing##172054
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 55
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Steak a la Mode>_
Reach Level 55 Shadowlands Cooking |skill Shadowlands Cooking,55
step
talk Chef Au'krut##156672
Train Tenebrous Crown Roast Aspic |learn Tenebrous Crown Roast Aspic##308405 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 30 Medley of Transplanar Spices##172056 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 60
step
talk Distributor Au'van##168353
buy 20 Rich Grazer Milk##172059 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 60
step
collect 30 Tenebrous Ribs##172053
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 60
step
collect 20 Iridescent Amberjack##173033
|tip These can be fished up in Ardenweald, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 60
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 5 Tenebrous Crown Roast Aspic>_
Reach Level 60 Shadowlands Cooking |skill Shadowlands Cooking,60
step
talk Chef Au'krut##156672
Train Phantasmal Souffle and Fries |learn Phantasmal Souffle and Fries##308400 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 160 Smuggled Azerothian Produce##172058 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 75
step
talk Distributor Au'van##168353
buy 40 Inconceivably Aged Vinegar##172057 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 75
step
collect 120 Phantasmal Haunch##172055
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 75
step
collect 80 Spinefin Piranha##173036
|tip These can be fished up in Revendreth, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 75
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 20 Phantasmal Souffle and Fries>_
Reach Level 75 Shadowlands Cooking |skill Shadowlands Cooking,75
step
talk Chef Au'krut##156672
Train Surprisingly Palatable Feast |learn Surprisingly Palatable Feast##308402 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 114 Inconceivably Aged Vinegar##172057 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 85
step
collect 100 Iridescent Amberjack##173033
|tip These can be fished up in Ardenweald, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 85
step
collect 100 Pocked Bonefish##173035
|tip These can be fished up in Maldraxxus, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 85
step
collect 100 Raw Seraphic Wing##172054
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 85
step
collect 100 Creeping Crawler Meat##179314
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 85
step
collect 30 Elysian Thade##173037
|tip These rare fish can be fished up in Bastion, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 85
step
talk Distributor Au'van##168353
buy 21 Smuggled Azerothian Produce##172058 |goto 46.20,26.34 |condition itemcount(172058) >= 21 or itemcount(172068) >= 50
|tip This crafting material is needed to create Pickled Meat Smoothie, which is an ingredient needed to craft Surprisingly Palatable Feast.
|tip Alternatively, you could just buy Pickled Meat Smoothie off the Auction House (you will need 50).
|only if skill("Shadowlands Cooking") < 85
step
collect 35 Aethereal Meat##172052 |condition itemcount(172052) >= 35 or itemcount(172068) >= 50
|tip These can be collected from beasts throughout the Shadowlands.
|tip This crafting material is needed to create Pickled Meat Smoothie, which is an ingredient needed to craft Surprisingly Palatable Feast.
|tip Alternatively, you could just buy Pickled Meat Smoothie off the Auction House (you will need 50).
|only if skill("Shadowlands Cooking") < 85
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 7 Pickled Meat Smoothie>_
collect 50 Pickled Meat Smoothie##172068
|only if skill("Shadowlands Cooking") < 85
step
talk Distributor Au'van##168353
buy 51 Lusterwheat Flour##178786 |goto 46.20,26.34 |condition itemcount(178786) >= 51 or itemcount(172046) >= 50
|tip This crafting material is needed to create Biscuits and Caviar, which is an ingredient needed to craft Surprisingly Palatable Feast.
|tip Alternatively, you could just buy Biscuits and Caviar off the Auction House (you will need 50).
|only if skill("Shadowlands Cooking") < 85
step
talk Distributor Au'van##168353
buy 34 Rich Grazer Milk##172059 |goto 46.20,26.34 |condition itemcount(172059) >= 34 or itemcount(172046) >= 50
|tip This crafting material is needed to create Biscuits and Caviar, which is an ingredient needed to craft Surprisingly Palatable Feast.
|tip Alternatively, you could just buy Biscuits and Caviar off the Auction House (you will need 50).
|only if skill("Shadowlands Cooking") < 85
step
collect 85 Lost Sole##173032 |condition itemcount(173032) >= 85 or itemcount(172046) >= 50
|tip These can be fished up in Ardenweald, Bastion, and Maldraxxus, if you have Fishing.
|tip This crafting material is needed to create Biscuits and Caviar, which is an ingredient needed to craft Surprisingly Palatable Feast.
|tip Alternatively, you could just buy Biscuits and Caviar off the Auction House (you will need 50).
|only if skill("Shadowlands Cooking") < 85
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 17 Biscuits and Caviar>_
collect 50 Biscuits and Caviar##172046
|only if skill("Shadowlands Cooking") < 85
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Surprisingly Palatable Feast>_
Reach Level 85 Shadowlands Cooking |skill Shadowlands Cooking,85
step
talk Chef Au'krut##156672
Train Seraph Tenders |learn Seraph Tenders##308417 |goto 46.25,25.64
step
talk Distributor Au'van##168353
buy 75 Rich Grazer Milk##172059 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 100
step
talk Distributor Au'van##168353
buy 75 Lusterwheat Flour##178786 |goto 46.20,26.34
|only if skill("Shadowlands Cooking") < 100
step
collect 150 Raw Seraphic Wing##172054
|tip These can be collected from beasts throughout the Shadowlands.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 100
step
collect 90 Lost Sole##173032
|tip These can be fished up in Ardenweald, Bastion, and Maldraxxus, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 100
step
collect 60 Silvergill Pike##173034
|tip These can be fished up in Bastion, if you have Fishing.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Cooking") < 100
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Seraph Tenders>_
Reach Level 100 Shadowlands Cooking |skill Shadowlands Cooking,100
step
_Congratulations!_
You Reached 100 Shadowlands Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Aethereal Meat",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Aethereal Meat for various Cooking recipes.",
startlevel=50.0,
},[[
step
kill Starving Shadowstalker##168620+
collect Aethereal Meat##172052 |n |goto Ardenweald/0 65.51,29.60
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Phantasmal Haunch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Phantasmal Haunch for various Cooking recipes.",
startlevel=50.0,
},[[
step
Kill Gorm enemies around this area
collect Phantasmal Haunch##172055 |n |goto Ardenweald/0 51.69,75.67
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raw Seraphic Wing",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Raw Seraphic Wing for various Cooking recipes.",
startlevel=50.0,
},[[
step
Kill Etherwyrm enemies around this area
collect Raw Seraphic Wing##172054 |n |goto Bastion/0 52.87,79.59
You can find more around [55.30,75.94]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Shadowy Shank",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shadowy Shank for various Cooking recipes.",
startlevel=50.0,
},[[
step
Kill Gorm enemies around this area
collect Shadowy Shank##179315 |n |goto Ardenweald/0 51.69,75.67
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tenebrous Ribs",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Tenebrous Ribs for various Cooking recipes.",
startlevel=50.0,
},[[
step
Kill Bloodtusk enemies around this area
collect Tenebrous Ribs##172053 |n |goto Maldraxxus/0 57.29,47.25
You can find more around [53.60,38.50]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Iridescent Amberjack",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Iridescent Amberjack for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Iridescent Amberjack Bait##173039
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Iridescent Amberjacks.
collect Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lost Sole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lost Sole for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Lost Sole Bait##173038
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Lost Soles.
collect Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Pocked Bonefish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pocked Bonefish for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Pocked Bonefish Bait##173041
|tip These have a chance to drop while fishing in Maldraxxus, use them to increase the chance of catching Pocked Bonefish.
collect Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Silvergill Pike",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Silvergill Pike for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Silvergill Pike Bait##173040
|tip These have a chance to drop while fishing in Bastion, use them to increase the chance of catching Silvergill Pikes.
collect Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spinefin Piranha",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Spinefin Piranha for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Spinefin Piranha Bait##173042
|tip These have a chance to drop while fishing in Revendreth, use them to increase the chance of catching Spinefin Piranhas.
collect Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Elysian Thade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elysian Thade for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Elysian Thade Bait##173043
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Elysian Thades.
collect Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Shadowlands Enchanting 1-115",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Enchanting profession from 1-115.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Enchanting') >= 115 end,
condition_suggested=function() return skill('Shadowlands Enchanting') > 0 and skill('Shadowlands Enchanting') < 115 and level >= 50 end,
},[[
step
talk Imbuer Au'vresh##156683
Train Enchanting |skillmax Enchanting,300 |goto Oribos/0 48.39,29.43
step
talk Imbuer Au'vresh##156683
Train Shadowlands Enchanting |skillmax Shadowlands Enchanting,115 |goto 48.39,29.43
step
talk Distributor Au'resh##156694
buy 49 Enchanting Vellum##38682 |goto 47.55,29.05
|only if skill("Shadowlands Enchanting") < 50
step
talk Distributor Au'resh##156694
buy Copper Rod##6217 |goto 47.55,29.05 |condition itemcount(6217) >= 1 or itemcount(6218) >= 1
step
talk Distributor Au'resh##156694
buy Strange Dust##10940 |goto 47.55,29.05 |condition itemcount(10940) >= 1 or itemcount(6218) >= 1
step
talk Distributor Au'resh##156694
buy Lesser Magic Essence##10938 |goto 47.55,29.05 |condition itemcount(10938) >= 1 or itemcount(6218) >= 1
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
collect Runed Copper Rod##6218
step
collect 27 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 10
step
Open Your Enchanting Crafting Panel:
_<Create 9 Shaded Hearthing>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 10 Shadowlands Enchanting |skill Shadowlands Enchanting,10
step
talk Imbuer Au'vresh##156683
Train Illuminated Soul |learn Illuminated Soul##309608 |goto 48.39,29.43
step
collect 30 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 20
step
Open Your Enchanting Crafting Panel:
_<Create 10 Illuminated Soul>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 20 Shadowlands Enchanting |skill Shadowlands Enchanting,20
step
talk Imbuer Au'vresh##156683
Train Celestial Guidance |learn Celestial Guidance##309627 |goto 48.39,29.43
step
collect 50 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 30
step
collect 20 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 30
step
Open Your Enchanting Crafting Panel:
_<Create 10 Celestial Guidance>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 30 Shadowlands Enchanting |skill Shadowlands Enchanting,30
step
talk Imbuer Au'vresh##156683
Train Sacred Stats |learn Sacred Stats##323762 |goto 48.39,29.43
step
collect 40 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 40
step
Open Your Enchanting Crafting Panel:
_<Create 10 Sacred Stats>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 40 Shadowlands Enchanting |skill Shadowlands Enchanting,40
step
talk Imbuer Au'vresh##156683
Train Bargain of Haste |learn Bargain of Haste##309613 |goto 48.39,29.43
step
collect 20 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 50
step
collect 10 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 50
step
Open Your Enchanting Crafting Panel:
_<Create 10 Bargain of Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 50 Shadowlands Enchanting |skill Shadowlands Enchanting,50
step
talk Imbuer Au'vresh##156683
Train Bargain of Versatility |learn Bargain of Versatility##309615 |goto 48.39,29.43
step
talk Distributor Au'resh##156694
buy 54 Enchanting Vellum##38682 |goto 47.55,29.05
|only if skill("Shadowlands Enchanting") < 100
step
collect 10 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 55
step
collect 5 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 55
step
Open Your Enchanting Crafting Panel:
_<Create 5 Bargain of Versatility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 55 Shadowlands Enchanting |skill Shadowlands Enchanting,55
step
talk Imbuer Au'vresh##156683
Train Soul Vitality |learn Soul Vitality##323755 |goto 48.39,29.43
step
collect 40 Soul Dust##172230
|tip You can get these by disenchanting Shadowlands level Uncommon (green) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 65
step
Open Your Enchanting Crafting Panel:
_<Create 10 Soul Vitality>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 65 Shadowlands Enchanting |skill Shadowlands Enchanting,65
step
talk Imbuer Au'vresh##156683
Train Eternal Insight |learn Eternal Insight##342316 |goto 48.39,29.43
step
collect 28 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 75
step
collect 14 Eternal Crystal##172232
|tip You can get these by disenchanting Shadowlands level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 75
step
Open Your Enchanting Crafting Panel:
_<Create 14 Eternal Insight>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 75 Shadowlands Enchanting |skill Shadowlands Enchanting,75
step
talk Imbuer Au'vresh##156683
Train Eternal Intellect |learn Eternal Intellect##309609 |goto 48.39,29.43
step
collect 10 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 80
step
collect 5 Eternal Crystal##172232
|tip You can get these by disenchanting Shadowlands level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 80
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 80 Shadowlands Enchanting |skill Shadowlands Enchanting,80
step
talk Imbuer Au'vresh##156683
Train Tenet of Critical Strike |learn Tenet of Critical Strike##309616 |goto 48.39,29.43
step
collect 30 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 90
step
Open Your Enchanting Crafting Panel:
_<Create 10 Tenet of Critical Strike>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 90 Shadowlands Enchanting |skill Shadowlands Enchanting,90
step
talk Imbuer Au'vresh##156683
Train Eternal Stats |learn Eternal Stats##324773 |goto 48.39,29.43
step
collect 20 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 100
step
collect 10 Eternal Crystal##172232
|tip You can get these by disenchanting Shadowlands level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 100
step
Open Your Enchanting Crafting Panel:
_<Create 10 Eternal Stats>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 100 Shadowlands Enchanting |skill Shadowlands Enchanting,100
step
talk Imbuer Au'vresh##156683
Train Eternal Grace |learn Eternal Grace##309621 |goto 48.39,29.43
step
collect 20 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 110
step
collect 5 Eternal Crystal##172232
|tip You can get these by disenchanting Shadowlands level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 110
step
Open Your Enchanting Crafting Panel:
_<Create 5 Eternal Grace>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 110 Shadowlands Enchanting |skill Shadowlands Enchanting,110
step
talk Imbuer Au'vresh##156683
Train Sinful Revelation |learn Sinful Revelation##309623 |goto 48.39,29.43
step
collect 12 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 115
step
collect 3 Eternal Crystal##172232
|tip You can get these by disenchanting Shadowlands level Epic (purple) armor and weapons.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Enchanting") < 115
step
Open Your Enchanting Crafting Panel:
_<Create 3 Sinful Revelation>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach Level 115 Shadowlands Enchanting |skill Shadowlands Enchanting,115
step
_Congratulations!_
You Reached 115 Shadowlands Enchanting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Shadowlands Engineering 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Engineering profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Engineering') >= 100 end,
condition_suggested=function() return skill('Shadowlands Engineering') > 0 and skill('Shadowlands Engineering') < 100 and level >= 50 end,
},[[
step
talk Machinist Au'gur##156691
Train Engineering |skillmax Engineering,300 |goto Oribos/0 38.05,44.67
step
talk Machinist Au'gur##156691
Train Shadowlands Engineering |skillmax Shadowlands Engineering,100 |goto 38.05,44.67
step
collect 40 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 20
step
collect 200 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 20
step
Open Your Engineering Crafting Panel:
_<Create 40 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 60 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 20
step
Open Your Engineering Crafting Panel:
_<Create 40 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 100 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 20
step
talk Machinist Au'gur##156691
Train Nutcracker Grenade |learn Nutcracker Grenade##310484 |goto 38.05,44.67
step
talk Machinist Au'gur##156691
Train Mortal Coiled Spring |learn Mortal Coiled Spring##310525 |goto 38.05,44.67
step
collect 13 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 25
step
Open Your Engineering Crafting Panel:
_<Create 13 Nutcracker Grenade>_
Reach Level 25 Shadowlands Engineering |skill Shadowlands Engineering,25
step
talk Machinist Au'gur##156691
Train Wormfed Gear Assembly |learn Wormfed Gear Assembly##310526 |goto 38.05,44.67
step
talk Distributor Au'burk##156692
buy 1 Manual Metal Shaper##177033 |goto 37.67,42.95 |condition itemcount(177033) == 1 or itemcount(5956) == 1 or itemcount(157585) == 1 or itemcount(174280) == 1
|tip This is required to create some Shadowlands Engineering recipes.
step
collect Arclight Spanner##6219
|tip This is required to create some Shadowlands Engineering recipes.
|tip It can be crafted with Engineering at level 70.
|tip You can also purchase it from the Auction House.
step
collect 105 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 40
step
collect 105 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 40
step
Open Your Engineering Crafting Panel:
_<Create 45 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 88 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 40
step
Open Your Engineering Crafting Panel:
_<Create 21 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 120 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 40
step
Open Your Engineering Crafting Panel:
_<Create 24 Wormfed Gear Assembly>_
|tip Save these, you will need them later.
Reach Level 40 Shadowlands Engineering |skill Shadowlands Engineering,40
step
talk Machinist Au'gur##156691
Train Novice Crafter's Mark |learn Novice Crafter's Mark##343661 |goto 38.05,44.67
step
talk Distributor Au'burk##156692
buy 15 Machinist's Oil##183952 |goto 37.67,42.95
|only if skill("Shadowlands Engineering") < 45
step
collect 16 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 45
step
collect 35 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 45
step
Open Your Engineering Crafting Panel:
_<Create 16 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 25 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 45
step
Open Your Engineering Crafting Panel:
_<Create 7 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 15 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 45
step
Open Your Engineering Crafting Panel:
_<Create 5 Novice Crafter's Mark>_
Reach Level 45 Shadowlands Engineering |skill Shadowlands Engineering,45
step
talk Machinist Au'gur##156691
Train Crafter's Mark I |learn Crafter's Mark I##343099 |goto 38.05,44.67
step
talk Distributor Au'burk##156692
buy 125 Machinist's Oil##183952 |goto 37.67,42.95
|only if skill("Shadowlands Engineering") < 60
step
collect 80 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 60
step
collect 175 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 60
step
Open Your Engineering Crafting Panel:
_<Create 80 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 25 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 60
step
Open Your Engineering Crafting Panel:
_<Create 35 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 15 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 60
step
Open Your Engineering Crafting Panel:
_<Create 25 Crafter's Mark I>_
Reach Level 60 Shadowlands Engineering |skill Shadowlands Engineering,60
step
talk Machinist Au'gur##156691
Train Gravimetric Scrambler Cannon |learn Gravimetric Scrambler Cannon##310492 |goto 38.05,44.67
step
talk Distributor Au'burk##156692
buy 12 Luminous Flux##180733 |goto 37.67,42.95
|only if skill("Shadowlands Engineering") < 66
step
collect 80 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 66
step
collect 200 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 66
step
collect 10 Sacred Shard##172231
|tip You can get these by disenchanting Shadowlands level Rare (blue) armor and weapons, if you have Enchanting.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 66
step
Open Your Engineering Crafting Panel:
_<Create 30 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 40 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 66
step
Open Your Engineering Crafting Panel:
_<Create 40 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 100 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 66
step
Open Your Engineering Crafting Panel:
_<Create 6 Mortal Coiled Spring>_
|tip Save these, you will need them later.
collect 6 Mortal Coiled Spring##172936
|only if skill("Shadowlands Engineering") < 66
step
Open Your Engineering Crafting Panel:
_<Create 2 Gravimetric Scrambler Cannon>_
Reach Level 66 Shadowlands Engineering |skill Shadowlands Engineering,66 |goto 39.57,32.92
step
talk Machinist Au'gur##156691
Train Momentum Redistributor Boots |learn Momentum Redistributor Boots##310490 |goto 38.05,44.67
step
talk Distributor Au'burk##156692
buy 20 Luminous Flux##180733 |goto 37.67,42.95
|only if skill("Shadowlands Engineering") < 75
step
collect 120 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 75
step
collect 650 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 75
step
Open Your Engineering Crafting Panel:
_<Create 130 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 300 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 75
step
Open Your Engineering Crafting Panel:
_<Create 40 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 60 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 75
step
Open Your Engineering Crafting Panel:
_<Create 30 Mortal Coiled Spring>_
|tip Save these, you will need them later.
collect 30 Mortal Coiled Spring##172936
|only if skill("Shadowlands Engineering") < 75
step
collect 45 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 75
step
collect 60 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 75
step
Open Your Engineering Crafting Panel:
_<Create 3 Momentum Redistributor Boots>_
Reach Level 75 Shadowlands Engineering |skill Shadowlands Engineering,75 |goto 39.57,32.92
step
talk Machinist Au'gur##156691
Train Infra-green Reflex Sight |learn Infra-green Reflex Sight##310534 |goto 38.05,44.67
step
collect 50 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 91
step
collect 6 Oriblase##173108
|tip These uncommon material can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 91
step
collect 6 Umbryl##173110
|tip These uncommon material can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 91
step
Open Your Engineering Crafting Panel:
_<Create 20 Handful of Laestrite Bolts>_
|tip Save these, you will need them later.
collect 30 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 91
step
Open Your Engineering Crafting Panel:
_<Create 6 Infra-green Reflex Sight>_
Reach Level 91 Shadowlands Engineering |skill Shadowlands Engineering,91 |goto 39.57,32.92
step
talk Machinist Au'gur##156691
Train Grounded Ectoplasmic Specs |learn Grounded Ectoplasmic Specs##310504 |goto 38.05,44.67
step
collect 350 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 100
step
collect 900 Porous Stone##171840
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 100
step
collect 120 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 100
step
collect 8 9.x Raw Red##173116
|tip These rare material can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 350 Handful of Laestrite Bolts>_
collect 500 Handful of Laestrite Bolts##172934
|only if skill("Shadowlands Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 180 Porous Polishing Abrasive>_
|tip Save these, you will need them later.
collect 500 Porous Polishing Abrasive##172935
|only if skill("Shadowlands Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 100 Wormfed Gear Assembly>_
|tip Save these, you will need them later.
collect 100 Wormfed Gear Assembly##172937
|only if skill("Shadowlands Engineering") < 100
step
Open Your Engineering Crafting Panel:
_<Create 4 Grounded Ectoplasmic Specs>_
Reach Level 100 Shadowlands Engineering |skill Shadowlands Engineering,100 |goto 39.57,32.92
step
_Congratulations!_
You Reached 100 Shadowlands Engineering Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Shadowlands Fishing 1-200",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Fishing profession from 1-200.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Fishing') >= 200 end,
condition_suggested=function() return skill('Shadowlands Fishing') > 0 and skill('Shadowlands Fishing') < 200 and level >= 50 end,
},[[
step
talk Retriever Au'prin##156671
Train Fishing |skillmax Fishing,300 |goto Oribos/0 47.53,23.59
step
talk Retriever Au'prin##156671
Train Shadowlands Fishing |skillmax Shadowlands Fishing,200 |goto 47.53,23.59
step
Fish in the open water
|tip You can fish anywhere and gain skill.
|tip If you want to fish up specific fish, refer to one of our farming guides.
Reach Level 200 Shadowlands Fishing |skill Shadowlands Fishing,200 |goto Bastion/0 52.10,76.06
step
_Congratulations!_
You Reached 200 Shadowlands Fishing Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Iridescent Amberjack",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Iridescent Amberjack for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Iridescent Amberjack Bait##173039
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Iridescent Amberjacks.
collect Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lost Sole",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lost Sole for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Lost Sole Bait##173038
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Lost Soles.
collect Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Pocked Bonefish",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pocked Bonefish for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Pocked Bonefish Bait##173041
|tip These have a chance to drop while fishing in Maldraxxus, use them to increase the chance of catching Pocked Bonefish.
collect Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Silvergill Pike",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Silvergill Pike for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Silvergill Pike Bait##173040
|tip These have a chance to drop while fishing in Bastion, use them to increase the chance of catching Silvergill Pikes.
collect Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spinefin Piranha",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Spinefin Piranha for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Spinefin Piranha Bait##173042
|tip These have a chance to drop while fishing in Revendreth, use them to increase the chance of catching Spinefin Piranhas.
collect Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Elysian Thade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elysian Thade for various Cooking recipes.",
startlevel=50.0,
},[[
step
cast Fishing##131474
use Elysian Thade Bait##173043
|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Elysian Thades.
collect Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Shadowlands Herbalism 1-150",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Herbalism profession from 1-150.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Herbalism') >= 150 end,
condition_suggested=function() return skill('Shadowlands Herbalism') > 0 and skill('Shadowlands Herbalism') < 150 and level >= 50 end,
},[[
step
talk Selector Au'mar##156686
Train Herbalism |skillmax Herbalism,300 |goto Oribos/0 40.24,38.24
step
talk Selector Au'mar##156686
Train Shadowlands Herbalism |skillmax Shadowlands Herbalism,150 |goto 40.24,38.24
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
Reach Level 150 Shadowlands Herbalism |skill Shadowlands Herbalism,150
step
_Congratulations!_
You Reached 150 Shadowlands Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Death Blossom",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Death Blossom for various profession recipes.",
startlevel=56.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants straight; dist 30
path	63.91,32.08	63.04,27.15	59.09,25.95	60.06,30.18	58.92,32.82
path	53.58,33.90	51.59,37.16	49.27,34.53	43.71,34.40	40.21,30.32
path	34.08,36.51	34.34,45.71	36.28,51.84	40.14,50.47	41.88,56.54
path	42.85,72.27	45.35,68.73	47.46,67.51	48.27,63.73	49.73,64.18
path	50.56,56.91	53.42,59.39	55.93,59.96	57.56,55.18	59.43,56.34
path	63.61,55.85	64.59,53.68	64.02,45.72	65.51,42.30	65.83,39.86
click Death Blossom##336686+
|tip Track them on your minimap with "Find Herbs".
collect Death Blossom##169701 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Marrowroot",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Marrowroot for various profession recipes.",
startlevel=53.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants straight; dist 30
path	65.10,48.75	63.48,45.78	60.22,42.97	62.15,40.73	63.97,34.72
path	59.13,32.61	57.48,31.47	56.02,30.40	54.45,27.14	52.56,22.31
path	48.18,24.92	45.07,34.54	42.30,35.17	41.84,40.81	38.35,46.48
path	39.56,50.16	41.46,50.63	45.07,54.28	49.14,54.93	55.53,55.63
path	56.86,59.25	60.01,60.28	63.43,56.12	65.70,54.28	70.33,53.98
path	73.27,54.76	74.67,43.77	72.62,45.22
click Marrowroot##336689+
|tip Track them on your minimap with "Find Herbs".
collect Marrowroot##168589 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Vigil's Torch",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Vigil's Torch for various profession recipes.",
startlevel=56.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants straight; dist 30
path	63.91,32.08	63.04,27.15	59.09,25.95	60.06,30.18	58.92,32.82
path	53.58,33.90	51.59,37.16	49.27,34.53	43.71,34.40	40.21,30.32
path	34.08,36.51	34.34,45.71	36.28,51.84	40.14,50.47	41.88,56.54
path	42.85,72.27	45.35,68.73	47.46,67.51	48.27,63.73	49.73,64.18
path	50.56,56.91	53.42,59.39	55.93,59.96	57.56,55.18	59.43,56.34
path	63.61,55.85	64.59,53.68	64.02,45.72	65.51,42.30	65.83,39.86
click Vigil's Torch##336688+
|tip Track them on your minimap with "Find Herbs".
collect Vigil's Torch##170554 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Rising Glory",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Rising Glory for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
click Rising Glory##336690+
|tip Track them on your minimap with "Find Herbs".
collect Rising Glory##168586 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Widowbloom",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Widowbloom for various profession recipes.",
startlevel=58.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants straight; dist 30
path	35.96,65.36	32.33,63.19	31.56,53.20	30.03,50.01	26.27,45.39
path	24.73,40.97	24.32,37.40	25.11,37.08	27.24,31.61	28.40,28.22
path	31.10,28.21	34.63,28.97	35.21,35.65	35.21,41.74	35.05,46.17
path	34.11,50.17	36.16,53.68	37.73,55.06	39.05,58.27	40.24,61.57
click Widowbloom##336433+
|tip Track them on your minimap with "Find Herbs".
collect Widowbloom##168583 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nightshade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Nightshade for various profession recipes.",
startlevel=53.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants straight; dist 30
path	65.10,48.75	63.48,45.78	60.22,42.97	62.15,40.73	63.97,34.72
path	59.13,32.61	57.48,31.47	56.02,30.40	54.45,27.14	52.56,22.31
path	48.18,24.92	45.07,34.54	42.30,35.17	41.84,40.81	38.35,46.48
path	39.56,50.16	41.46,50.63	45.07,54.28	49.14,54.93	55.53,55.63
path	56.86,59.25	60.01,60.28	63.43,56.12	65.70,54.28	70.33,53.98
path	73.27,54.76	74.67,43.77	72.62,45.22
click Nightshade##336691+
|tip Track them on your minimap with "Find Herbs".
collect Nightshade##171315 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Shadowlands Inscription 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Inscription profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Inscription') >= 100 end,
condition_suggested=function() return skill('Shadowlands Inscription') > 0 and skill('Shadowlands Inscription') < 100 and level >= 50 end,
},[[
step
talk Scribe Au'tehshi##156685
Train Inscription |skillmax Inscription,300 |goto Oribos/0 36.51,36.72
step
talk Scribe Au'tehshi##156685
Train Shadowlands Inscription |skillmax Shadowlands Inscription,100 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 15 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 15
step
talk Distributor Au'sha##156732
buy 15 Aerated Water##173060 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 15
step
collect 15 Luminous Pigment##173057
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 15
step
Open Your Inscription Crafting Panel:
_<Create 15 Luminous Ink>_
|tip Save these, you will need them later.
Reach Level 15 Shadowlands Inscription |skill Shadowlands Inscription,15
step
talk Scribe Au'tehshi##156685
Train Writ of Grave Robbing |learn Writ of Grave Robbing##311423 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 1 Virtuoso Inking Set##39505 |goto 35.96,38.54
step
talk Distributor Au'sha##156732
buy 10 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 25
step
talk Distributor Au'sha##156732
buy 10 Dark Parchment##175886 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 25
step
collect 10 Umbral Pigment##173056
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 25
step
Open Your Inscription Crafting Panel:
_<Create 10 Umbral Ink>_
collect 10 Umbral Ink##173058
|only if skill("Shadowlands Inscription") < 25
step
Open Your Inscription Crafting Panel:
_<Create 10 Writ of Grave Robbing>_
Reach Level 25 Shadowlands Inscription |skill Shadowlands Inscription,25
step
talk Scribe Au'tehshi##156685
Train Soul Keeper's Spire |learn Soul Keeper's Spire##311689 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 66 Aerated Water##173060 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 31
step
talk Distributor Au'sha##156732
buy 66 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 31
step
collect 66 Luminous Pigment##173057
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 31
step
collect 9 Twilight Bark##177061
|tip These can be gathered, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Inscription") < 31
step
Open Your Inscription Crafting Panel:
_<Create 66 Luminous Ink>_
collect 66 Luminous Ink##173059
|only if skill("Shadowlands Inscription") < 31
step
Open Your Inscription Crafting Panel:
_<Create 3 Soul Keeper's Spire>_
Reach Level 31 Shadowlands Inscription |skill Shadowlands Inscription,31
step
talk Scribe Au'tehshi##156685
Train Deathblossom |learn Mass Mill Deathblossom##311413 |goto 36.51,36.72
Train Marrowroot |learn Mass Mill Marrowroot##311416 |goto 36.51,36.72
Train Nightshade |learn Mass Mill Nightshade##311418 |goto 36.51,36.72
Train Rising Glory |learn Mass Mill Rising Glory##311417 |goto 36.51,36.72
Train Vigil's Torch |learn Mass Mill Vigil's Torch##311414 |goto 36.51,36.72
Train Widowbloom |learn Mass Mill Widowbloom##311415 |goto 36.51,36.72
step
Open Your Inscription Crafting Panel:
Use the Mass Mill abilities you just trained
|tip Mass Mill whatever herbs you have; gather more if needed, if you have Herbalism.
|tip You can also purchase them from the Auction House.
Reach Level 35 Shadowlands Inscription |skill Shadowlands Inscription,35
step
talk Scribe Au'tehshi##156685
Train Tranquil Ink |learn Tranquil Ink##321029 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 30 Aerated Water##173060 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 60
step
talk Distributor Au'sha##156732
buy 30 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 60
step
collect 30 Tranquil Pigment##175788
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 60
step
Open Your Inscription Crafting Panel:
_<Create 30 Tranquil Ink>_
|tip Save these, you will need them later.
Reach Level 60 Shadowlands Inscription |skill Shadowlands Inscription,60
step
talk Scribe Au'tehshi##156685
Train Missive of Mastery |learn Missive of Mastery##324196 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 20 Dark Parchment##175886 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 80
step
talk Distributor Au'sha##156732
buy 200 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 80
step
collect 80 Luminous Pigment##173057
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 80
step
collect 120 Umbral Pigment##173056
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 80
step
Open Your Inscription Crafting Panel:
_<Create 80 Luminous Ink>_
collect 80 Luminous Ink##173059
|only if skill("Shadowlands Inscription") < 80
step
Open Your Inscription Crafting Panel:
_<Create 120 Umbral Ink>_
collect 120 Umbral Ink##173058
|only if skill("Shadowlands Inscription") < 80
step
Open Your Inscription Crafting Panel:
_<Create 20 Missive of Mastery>_
Reach Level 80 Shadowlands Inscription |skill Shadowlands Inscription,80
step
talk Scribe Au'tehshi##156685
Train Darkmoon Card of Death |learn Darkmoon Card of Death##311441 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 10 Dark Parchment##175886 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 90
step
talk Distributor Au'sha##156732
buy 140 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 90
step
collect 70 Luminous Pigment##173057
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 90
step
collect 70 Umbral Pigment##173056
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 90
step
Open Your Inscription Crafting Panel:
_<Create 70 Luminous Ink>_
collect 70 Luminous Ink##173059
|only if skill("Shadowlands Inscription") < 90
step
Open Your Inscription Crafting Panel:
_<Create 70 Umbral Ink>_
collect 70 Umbral Ink##173058
|only if skill("Shadowlands Inscription") < 90
step
Open Your Inscription Crafting Panel:
_<Create 10 Darkmoon Card of Death>_
Reach Level 90 Shadowlands Inscription |skill Shadowlands Inscription,90
step
talk Scribe Au'tehshi##156685
Train Fae Revel Masque |learn Fae Revel Masque##334537 |goto 36.51,36.72
step
talk Distributor Au'sha##156732
buy 60 Rune Etched Vial##180732 |goto 35.96,38.54
|only if skill("Shadowlands Inscription") < 100
step
collect 30 Luminous Pigment##173057
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 100
step
collect 30 Umbral Pigment##173056
|tip You get these by gathering and milling herbs found in Shadowlands, if you have Herbalism.
|tip You can also purchase them from the Auction House.
|tip Use your Milling ability on Shadowlands herbs to accomplish this.
|only if skill("Shadowlands Inscription") < 100
step
collect 20 Twilight Bark##177061
|tip These can be gathered, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Inscription") < 100
step
Open Your Inscription Crafting Panel:
_<Create 30 Luminous Ink>_
collect 30 Luminous Ink##173059
|only if skill("Shadowlands Inscription") < 100
step
Open Your Inscription Crafting Panel:
_<Create 30 Umbral Ink>_
collect 30 Umbral Ink##173058
|only if skill("Shadowlands Inscription") < 100
step
Open Your Inscription Crafting Panel:
_<Create 10 Fae Revel Masque>_
Reach Level 100 Shadowlands Inscription |skill Shadowlands Inscription,100
step
_Congratulations!_
You Reached 100 Shadowlands Inscription Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Shadowlands Jewelcrafting 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Jewelcrafting profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Jewelcrafting') >= 100 end,
condition_suggested=function() return skill('Shadowlands Jewelcrafting') > 0 and skill('Shadowlands Jewelcrafting') < 100 and level >= 50 end,
},[[
step
talk Appraiser Au'vesk##156670
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Oribos/0 35.20,41.35
step
talk Appraiser Au'vesk##156670
Train Shadowlands Jewelcrafting |skillmax Shadowlands Jewelcrafting,100 |goto 35.20,41.35
step
talk Distributor Au'kharn##156733
buy Jeweler's Kit##20815 |goto 34.54,44.58
step
talk Distributor Au'kharn##156733
buy 20 Laestrite Setting##173168 |goto 34.54,44.58
|only if skill("Shadowlands Jewelcrafting") < 10
step
collect 20 Umbryl##173110
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 10
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Versatile Jewel Doublet>_
|tip Save these, you will need them later.
Reach Level 10 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,10
step
talk Appraiser Au'vesk##156670
Train Masterful Jewel Doublet |learn Masterful Jewel Doublet##311869 |goto 35.20,41.35
step
talk Distributor Au'kharn##156733
buy 50 Laestrite Setting##173168 |goto 34.54,44.58
|only if skill("Shadowlands Jewelcrafting") < 25
step
collect 25 Angerseye##173109
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 25
step
collect 25 Umbryl##173110
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 25
step
Open Your Jewelcrafting Crafting Panel:
_<Create 25 Masterful Jewel Doublet>_
|tip Save these, you will need them later.
Reach Level 25 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,25
step
talk Appraiser Au'vesk##156670
Train Masterful Laestrite Choker |learn Masterful Laestrite Choker##311904 |goto 35.20,41.35
step
collect 16 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Jewelcrafting") < 40
step
Open Your Jewelcrafting Crafting Panel:
_<Create 8 Masterful Jewel Doublet>_
Reach Level 40 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,40
step
talk Appraiser Au'vesk##156670
Train Versatile Laestrite Choker |learn Versatile Laestrite Choker##311905 |goto 35.20,41.35
step
collect 10 Laestrite Ore##171828
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Jewelcrafting") < 50
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Versatile Laestrite Choker>_
Reach Level 50 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,50
step
talk Appraiser Au'vesk##156670
Train Deadly Jewel Cluster |learn Deadly Jewel Cluster##311863 |goto 35.20,41.35
step
talk Distributor Au'kharn##156733
buy 30 Elethium Setting##173169 |goto 34.54,44.58
|only if skill("Shadowlands Jewelcrafting") < 65
step
collect 60 Angerseye##173109
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 65
step
collect 60 Oriblase##173108
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 65
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Deadly Jewel Cluster>_
|tip Save these, you will need them later.
Reach Level 65 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,65
step
talk Appraiser Au'vesk##156670
Train Masterful Jewel Cluster |learn Masterful Jewel Cluster##311864 |goto 35.20,41.35
step
talk Distributor Au'kharn##156733
buy 5 Elethium Setting##173169 |goto 34.54,44.58
|only if skill("Shadowlands Jewelcrafting") < 70
step
collect 10 Angerseye##173109
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 70
step
collect 10 Umbryl##173110
|tip You get these by gathering and prospecting ore found in Shadowlands, if you have Mining.
|tip You can also purchase them from the Auction House.
|tip Use your Prospecting ability on Shadowlands ore to accomplish this.
|only if skill("Shadowlands Jewelcrafting") < 70
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Masterful Jewel Cluster>_
Reach Level 70 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,70
step
talk Appraiser Au'vesk##156670
Train Deadly Sinvyr Necklace |learn Deadly Sinvyr Necklace##311906 |goto 35.20,41.35
step
collect 30 Sinvyr Ore##171832
|tip These can be collected, if you have Mining.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Jewelcrafting") < 100
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Deadly Sinvyr Necklace>_
Reach Level 100 Shadowlands Jewelcrafting |skill Shadowlands Jewelcrafting,100
step
_Congratulations!_
You Reached 100 Shadowlands Jewelcrafting Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Shadowlands Leatherworking 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Leatherworking profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Leatherworking') >= 100 end,
condition_suggested=function() return skill('Shadowlands Leatherworking') > 0 and skill('Shadowlands Leatherworking') < 100 and level >= 50 end,
},[[
step
talk Tanner Au'qil##156669
Train Leatherworking |skillmax Leatherworking,300 |goto Oribos/0 42.27,26.59
step
talk Tanner Au'qil##156669
Train Shadowlands Leatherworking |skillmax Shadowlands Leatherworking,100 |goto 42.27,26.59
step
collect 18 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 10
step
Open Your Leatherworking Crafting Panel:
_<Create 9 Desolate Armor Kit>_
Reach Level 10 Shadowlands Leatherworking |skill Shadowlands Leatherworking,10
step
talk Tanner Au'qil##156669
Train Desolate Scale Gauntlets |learn Desolate Scale Gauntlets##309184 |goto 42.27,26.59
step
talk Distributor Au'tem##156696
buy 32 Penumbra Thread##177062 |goto 44.48,26.50
|only if skill("Shadowlands Leatherworking") < 26
step
collect 48 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 26
step
collect 24 Pallid Bone##172092
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 26
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Desolate Scale Gauntlets>_
Reach Level 26 Shadowlands Leatherworking |skill Shadowlands Leatherworking,26
step
talk Tanner Au'qil##156669
Train Composite Bow |learn Composite Bow##309192 |goto 42.27,26.59
step
collect 35 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 40
step
collect 42 Pallid Bone##172092
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 40
step
collect 14 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 40
step
Open Your Leatherworking Crafting Panel:
_<Create 7 Composite Bow>_
Reach Level 40 Shadowlands Leatherworking |skill Shadowlands Leatherworking,40
step
talk Tanner Au'qil##156669
Train Novice Crafter's Mark |learn Novice Crafter's Mark##343660 |goto 42.27,26.59
step
talk Distributor Au'tem##156696
buy 15 Curing Salt##183955 |goto 44.48,26.50
|only if skill("Shadowlands Leatherworking") < 45
step
collect 25 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 45
step
collect 5 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 45
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Novice Crafter's Mark>_
Reach Level 45 Shadowlands Leatherworking |skill Shadowlands Leatherworking,45
step
talk Tanner Au'qil##156669
Train Crafter's Mark I |learn Crafter's Mark I##343195 |goto 42.27,26.59
step
talk Distributor Au'tem##156696
buy 50 Curing Salt##183955 |goto 44.48,26.50
|only if skill("Shadowlands Leatherworking") < 55
step
collect 50 Desolate Leather##172089
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 55
step
collect 10 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 55
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Crafter's Mark I>_
Reach Level 55 Shadowlands Leatherworking |skill Shadowlands Leatherworking,55
step
talk Tanner Au'qil##156669
Train Shadowscale Treads |learn Shadowscale Treads##309238 |goto 42.27,26.59
step
collect 50 Heavy Desolate Hide##172097
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 65
step
collect 15 Desolate Hide##172094
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 65
step
collect 10 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 65
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Shadowscale Treads>_
Reach Level 65 Shadowlands Leatherworking |skill Shadowlands Leatherworking,65
step
talk Tanner Au'qil##156669
Train Shadowscale Gauntlets |learn Shadowscale Gauntlets##309240 |goto 42.27,26.59
step
collect 80 Heavy Desolate Hide##172097
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 75
step
collect 20 Desolate Hide##172094
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 75
step
collect 20 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 75
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Shadowscale Gauntlets>_
Reach Level 75 Shadowlands Leatherworking |skill Shadowlands Leatherworking,75
step
talk Tanner Au'qil##156669
Train Shadebound Helm |learn Shadebound Helm##309233 |goto 42.27,26.59
step
collect 60 Heavy Desolate Leather##172096
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 91
step
collect 6 Heavy Desolate Hide##172097
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 91
step
collect 24 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 91
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Shadebound Helm>_
Reach Level 91 Shadowlands Leatherworking |skill Shadowlands Leatherworking,91
step
talk Tanner Au'qil##156669
Train Shadowscale Leggings |learn Shadowscale Leggings##309242 |goto 42.27,26.59
step
collect 15 Heavy Desolate Hide##172097
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 100
step
collect 6 Desolate Hide##172094
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 100
step
collect 12 Gaunt Sinew##177279
|tip These can be collected, if you have Skinning.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Leatherworking") < 100
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Shadowscale Leggings>_
Reach Level 100 Shadowlands Leatherworking |skill Shadowlands Leatherworking,100
step
_Congratulations!_
You Reached 100 Shadowlands Leatherworking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Shadowlands Mining 1-150",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Mining profession from 1-150.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Mining') >= 150 end,
condition_suggested=function() return skill('Shadowlands Mining') > 0 and skill('Shadowlands Mining') < 150 and level >= 50 end,
},[[
step
talk Excavationist Au'fer##156668
Train Mining |skillmax Mining,300 |goto Oribos/0 39.30,32.95
step
talk Excavationist Au'fer##156668
Train Shadowlands Mining |skillmax Shadowlands Mining,150 |goto 39.30,32.95
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.59,72.30	52.63,71.12	52.99,67.99	53.46,63.63	54.36,61.26
path	53.56,59.48	54.28,58.07	53.89,56.79	54.90,54.76	55.18,52.39
path	53.43,50.93	49.96,49.19	46.25,48.55	43.84,50.40	43.43,53.59
path	44.30,54.55	42.84,56.26	42.98,57.36	44.26,56.68	44.39,59.98
path	43.23,62.87	41.07,62.64	38.50,63.55	39.12,66.43	37.68,69.11
path	39.34,69.24	40.78,70.85	42.62,70.10	43.68,67.01	44.77,67.77
path	46.39,67.70	47.39,68.89	46.00,69.73	47.32,70.11	46.77,71.97
path	48.44,71.36	49.59,70.24
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
Reach Level 150 Shadowlands Mining |skill Shadowlands Mining,150
step
_Congratulations!_
You Reached 150 Shadowlands Mining Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elethium Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Elethium Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	53.71,79.51	56.43,76.38	56.35,75.07	55.00,74.41	55.10,72.63
path	56.25,69.86	58.15,67.34	56.98,65.59	54.89,65.95	53.83,63.25
path	54.62,61.56	53.02,58.99	51.48,57.34	49.95,54.93	48.78,55.77
path	48.95,54.24	49.64,50.99	48.34,48.35	45.47,49.23	43.71,50.44
path	43.52,53.49	42.42,56.30	43.93,56.89	44.64,58.78	43.52,60.56
path	42.58,62.85	44.18,65.14	45.53,67.23	43.71,66.95	42.73,69.70
path	41.22,70.54	42.65,73.22	44.08,75.37	45.53,75.71	46.44,73.49
path	45.93,70.86	46.43,69.46	47.86,70.26	49.24,69.43	50.43,68.09
path	50.70,71.91	52.41,71.45	51.83,74.52	51.52,76.55	52.87,79.23
click Elethium Deposit##349900+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are rare spawn nodes, so you likely won't find them in bulk.
collect Elethium Ore##171833 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Laestrite Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Laestrite Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	53.71,79.51	56.43,76.38	56.35,75.07	55.00,74.41	55.10,72.63
path	56.25,69.86	58.15,67.34	56.98,65.59	54.89,65.95	53.83,63.25
path	54.62,61.56	53.02,58.99	51.48,57.34	49.95,54.93	48.78,55.77
path	48.95,54.24	49.64,50.99	48.34,48.35	45.47,49.23	43.71,50.44
path	43.52,53.49	42.42,56.30	43.93,56.89	44.64,58.78	43.52,60.56
path	42.58,62.85	44.18,65.14	45.53,67.23	43.71,66.95	42.73,69.70
path	41.22,70.54	42.65,73.22	44.08,75.37	45.53,75.71	46.44,73.49
path	45.93,70.86	46.43,69.46	47.86,70.26	49.24,69.43	50.43,68.09
path	50.70,71.91	52.41,71.45	51.83,74.52	51.52,76.55	52.87,79.23
click Laestrite Deposit##349898+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
collect Laestrite Ore##171828 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Oxxein Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Oxxein Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Maldraxxus/0
path follow smart; loop on; ants straight; dist 30
path	54.06,55.67	55.67,58.48	56.91,58.34	56.41,62.71	60.46,62.70
path	61.23,60.58	62.01,59.25	62.74,56.32	65.69,54.29	67.85,54.55
path	70.30,53.70	71.06,55.74	73.54,56.19	75.15,54.28	76.51,52.59
path	75.38,48.28	74.90,43.98	73.65,41.24	73.25,45.53	72.49,46.58
path	69.10,49.71	66.18,51.20	64.64,49.73	61.70,51.61	61.51,47.76
path	61.35,45.16	58.69,41.06	56.24,38.98	53.94,35.17	53.32,36.69
path	50.78,38.50	49.24,36.48	48.00,40.80	46.89,38.48	47.44,35.40
path	42.07,35.75	42.92,39.57	39.02,45.15	36.45,49.20	35.94,51.63
path	36.69,53.40	39.73,53.37	40.43,56.30	42.30,57.54	43.89,55.34
path	44.56,59.09	43.93,62.81	45.75,62.17	47.00,60.28	47.64,57.17
path	49.39,55.94
click Oxxein Deposit##349981+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Oxxein Ore##171830 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Phaedrum Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Phaedrum Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Ardenweald/0
path follow smart; loop on; ants straight; dist 30
path	66.18,35.15	66.84,33.47	67.20,31.71	65.96,30.85	64.42,32.29
path	63.74,33.28	63.45,31.38	59.98,28.16	59.62,26.02	58.59,25.46
path	59.54,24.17	57.78,24.67	55.98,25.37	56.08,27.67	54.61,28.01
path	54.83,29.71	53.57,31.67	51.48,27.57	48.03,30.54	47.00,31.81
path	46.45,34.06	44.74,32.42	43.04,31.60	40.82,30.30	37.89,32.08
path	35.99,32.80	33.50,35.20	35.66,36.92	35.87,38.52	36.61,39.46
path	37.57,44.48	36.11,46.04	35.43,48.17	35.14,50.02	36.54,51.82
path	38.37,51.84	36.82,54.16	36.18,56.18	36.50,58.42	36.49,61.28
path	38.09,62.51	39.97,62.57	43.10,61.30	44.87,61.53	44.89,65.62
path	43.30,68.62	46.00,72.64	46.90,75.21	48.80,74.71	49.90,72.88
path	50.12,69.95	50.82,67.80	52.03,65.13	50.25,58.65	52.05,58.12
path	53.15,56.60	54.98,58.06	56.27,64.51	56.96,62.19	59.53,58.42
path	63.02,55.83	64.41,53.06	64.06,51.76	63.37,50.01	62.57,48.79
path	61.14,48.71	59.98,48.05	60.79,47.07	60.00,45.06	59.17,41.98
path	59.50,39.12	61.86,37.18
click Phaedrum Deposit##349982+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Phaedrum Ore##171831 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Sinvyr Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Sinvyr Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Revendreth/0
path follow smart; loop on; ants straight; dist 30
path	47.83,68.03	49.81,67.24	50.90,67.08	51.86,64.69	52.37,62.67
path	54.23,60.91	56.35,60.44	57.37,62.02	59.74,61.00	60.31,58.16
path	59.29,55.65	57.13,57.54	54.42,58.06	53.04,59.87	51.16,60.17
path	49.28,60.95	46.99,61.59	45.33,62.32	43.54,61.91	43.10,65.40
path	41.90,67.93	43.42,70.70	45.04,71.44	46.61,72.18	47.03,71.41
path	47.28,68.83
click Sinvyr Deposit##349983+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Sinvyr Ore##171832 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Solenium Ore",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Solenium Ore for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	53.71,79.51	56.43,76.38	56.35,75.07	55.00,74.41	55.10,72.63
path	56.25,69.86	58.15,67.34	56.98,65.59	54.89,65.95	53.83,63.25
path	54.62,61.56	53.02,58.99	51.48,57.34	49.95,54.93	48.78,55.77
path	48.95,54.24	49.64,50.99	48.34,48.35	45.47,49.23	43.71,50.44
path	43.52,53.49	42.42,56.30	43.93,56.89	44.64,58.78	43.52,60.56
path	42.58,62.85	44.18,65.14	45.53,67.23	43.71,66.95	42.73,69.70
path	41.22,70.54	42.65,73.22	44.08,75.37	45.53,75.71	46.44,73.49
path	45.93,70.86	46.43,69.46	47.86,70.26	49.24,69.43	50.43,68.09
path	50.70,71.91	52.41,71.45	51.83,74.52	51.52,76.55	52.87,79.23
click Solenium Deposit##349980+
|tip Track them on your minimap with "Find Minerals".
|tip Enter caves along the path for additional nodes.
|tip These are uncommon spawn nodes, so you likely won't find them in bulk.
collect Solenium Ore##171829 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Shadowlands Skinning 1-200",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Skinning profession from 1-200.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Skinning') >= 200 end,
condition_suggested=function() return skill('Shadowlands Skinning') > 0 and skill('Shadowlands Skinning') < 200 and level >= 50 end,
},[[
step
talk Flayer Au'khem##156667
Train Skinning |skillmax Skinning,300 |goto Oribos/0 42.15,28.10
step
talk Flayer Au'khem##156667
Train Shadowlands Skinning |skillmax Shadowlands Skinning,200 |goto 42.15,28.10
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
Kill Beast enemies as you follow the path around this area
|tip Loot and skin them.
Reach Level 200 Shadowlands Skinning |skill Shadowlands Skinning,200
step
_Congratulations!_
You Reached 200 Shadowlands Skinning Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Desolate Hide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Desolate Hide for various profession recipes.",
startlevel=50.0,
},[[
step
kill Horrific Bonemauler##156596+
|tip Loot and skin them.
collect Desolate Hide##172094 |n |goto Revendreth/0 41.84,65.35
You can find more around [44.85,72.54]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Desolate Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
Kill Beast enemies as you follow the path around this area
|tip Loot and skin them.
collect Desolate Leather##172089 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Gaunt Sinew",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Gaunt Sinew for various profession recipes.",
startlevel=50.0,
},[[
step
kill Virulent Pest##159856+
|tip Loot and skin them.
collect Gaunt Sinew##177279 |n |goto Maldraxxus/0 54.31,58.44
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Desolate Hide",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Desolate Hide for various profession recipes.",
startlevel=50.0,
},[[
step
kill Rotting Deathwalker##168855+
|tip Loot and skin them.
collect Heavy Desolate Hide##172097 |n |goto Revendreth/0 45.35,69.45
|tip Heavy Desolate Hide is rare, so it may take a while to collect them.
You can find more around [45.46,63.74]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Desolate Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Heavy Desolate Leather for various profession recipes.",
startlevel=50.0,
},[[
step
Kill Rune enemies around this area
|tip Loot and skin them.
collect Heavy Desolate Leather##172096 |n |goto Ardenweald/0 59.06,38.26
You can find more around [57.30,41.89]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Necrotic Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Necrotic Leather for various profession recipes.",
startlevel=50.0,
},[[
step
kill Virulent Pest##159856+
|tip Loot and skin them.
collect Necrotic Leather##172332 |n |goto Maldraxxus/0 54.31,58.44
|tip Necrotic Leather is rare, so it may take a while to collect them.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Pallid Bone",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Pallid Bone for various profession recipes.",
startlevel=50.0,
},[[
step
Enter the cave |goto Maldraxxus/0 60.54,81.52 < 15 |only if walking
Kill Skyripper enemies around this area
|tip Loot and skin them.
collect Pallid Bone##172092 |n |goto 58.05,89.81
You can find more around [54.15,90.31]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Purified Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Purified Leather for various profession recipes.",
startlevel=50.0,
},[[
step
map Bastion/0
path follow smart; loop on; ants straight; dist 30
path	50.43,73.92	52.22,71.70	54.84,68.53	55.59,66.21	53.35,63.49
path	54.21,61.70	53.49,59.62	54.36,57.91	55.56,55.15	58.51,51.56
path	58.25,44.11	59.82,37.15	56.28,33.72	54.34,30.47	52.67,28.59
path	48.87,31.01	47.62,33.20	46.17,33.87	44.89,35.43	43.34,35.74
path	40.71,37.39	40.80,42.59	42.22,44.71	43.04,47.52	44.85,49.92
path	44.82,53.70	45.77,59.11	46.51,63.47	47.38,68.79	46.05,69.49
path	46.76,71.68
Kill Beast enemies as you follow the path around this area
|tip Loot and skin them.
collect Purified Leather##172333 |n
|tip Purified Leather is rare, so it may take a while to collect them.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Sinful Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Sinful Leather for various profession recipes.",
startlevel=50.0,
},[[
step
kill Rotting Deathwalker##168855+
|tip Loot and skin them.
collect Sinful Leather##172331 |n |goto Revendreth/0 45.35,69.45
|tip Sinful Leather is rare, so it may take a while to collect them.
You can find more around [45.46,63.74]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Unseelie Leather",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Unseelie Leather for various profession recipes.",
startlevel=50.0,
},[[
step
Kill Rune enemies around this area
|tip Loot and skin them.
collect Unseelie Leather##172330 |n |goto Ardenweald/0 59.06,38.26
|tip Unseelie Leather is rare, so it may take a while to collect them.
You can find more around [57.30,41.89]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Shadowlands Tailoring 1-100",{
author="support@zygorguides.com",
description="\nThis guide will walk you through leveling your Shadowlands Tailoring profession from 1-100.",
startlevel=50.0,
condition_end=function() return skill('Shadowlands Tailoring') >= 100 end,
condition_suggested=function() return skill('Shadowlands Tailoring') > 0 and skill('Shadowlands Tailoring') < 100 and level >= 50 end,
},[[
step
talk Stitcher Au'phes##156681
Train Tailoring |skillmax Tailoring,300 |goto Oribos/0 45.50,31.80
step
talk Stitcher Au'phes##156681
Train Shadowlands Tailoring |skillmax Shadowlands Tailoring,100 |goto 45.50,31.80
step
collect 9 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 10
step
Open Your Tailoring Crafting Panel:
_<Create 9 Shrouded Cloth Bandage>_
Reach Level 10 Shadowlands Tailoring |skill Shadowlands Tailoring,10
step
talk Stitcher Au'phes##156681
Train Shrouded Cloth Mittens |learn Shrouded Cloth Mittens##310872 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 24 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 26
step
collect 40 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 26
step
Open Your Tailoring Crafting Panel:
_<Create 8 Shrouded Cloth Mittens>_
Reach Level 26 Shadowlands Tailoring |skill Shadowlands Tailoring,26
step
talk Stitcher Au'phes##156681
Train Shrouded Cloth Robe |learn Shrouded Cloth Robe##310870 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 40 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 40
step
collect 35 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 40
step
Open Your Tailoring Crafting Panel:
_<Create 5 Shrouded Cloth Robe>_
Reach Level 40 Shadowlands Tailoring |skill Shadowlands Tailoring,40
step
talk Stitcher Au'phes##156681
Train Heavy Shrouded Cloth Bandage |learn Heavy Shrouded Cloth Bandage##310923 |goto 45.50,31.80
step
collect 30 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 55
step
Open Your Tailoring Crafting Panel:
_<Create 15 Shrouded Cloth Robe>_
Reach Level 55 Shadowlands Tailoring |skill Shadowlands Tailoring,55
step
talk Stitcher Au'phes##156681
Train Shadowlace Footwraps |learn Shadowlace Footwraps##310896 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 40 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 65
step
collect 25 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 65
step
collect 20 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 65
step
Open Your Tailoring Crafting Panel:
_<Create 5 Shadowlace Footwraps>_
Reach Level 65 Shadowlands Tailoring |skill Shadowlands Tailoring,65
step
talk Stitcher Au'phes##156681
Train Shadowlace Handwraps |learn Shadowlace Handwraps##310899 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 50 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 75
step
collect 50 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 75
step
collect 40 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 75
step
Open Your Tailoring Crafting Panel:
_<Create 10 Shadowlace Handwraps>_
Reach Level 75 Shadowlands Tailoring |skill Shadowlands Tailoring,75
step
talk Stitcher Au'phes##156681
Train Shadowlace Cowl |learn Shadowlace Cowl##310900 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 16 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 81
step
collect 12 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 81
step
collect 10 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 81
step
Open Your Tailoring Crafting Panel:
_<Create 2 Shadowlace Handwraps>_
Reach Level 81 Shadowlands Tailoring |skill Shadowlands Tailoring,81
step
talk Stitcher Au'phes##156681
Train Shadowlace Tunic |learn Shadowlace Tunic##310897 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 30 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 90
step
collect 21 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 90
step
collect 18 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 90
step
Open Your Tailoring Crafting Panel:
_<Create 3 Shadowlace Tunic>_
Reach Level 90 Shadowlands Tailoring |skill Shadowlands Tailoring,90
step
talk Stitcher Au'phes##156681
Train Shadowlace Trousers |learn Shadowlace Trousers##310901 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 30 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 99
step
collect 21 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 99
step
collect 18 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 99
step
Open Your Tailoring Crafting Panel:
_<Create 3 Shadowlace Trousers>_
Reach Level 99 Shadowlands Tailoring |skill Shadowlands Tailoring,99
step
talk Stitcher Au'phes##156681
Train Shadowlace Mantle |learn Shadowlace Mantle##310902 |goto 45.50,31.80
step
talk Distributor Au'tem##156696
buy 8 Penumbra Thread##177062 |goto 44.47,26.51
|only if skill("Shadowlands Tailoring") < 100
step
collect 6 Shrouded Cloth##173202
|tip Use the "Shrouded Cloth" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 100
step
collect 5 Lightless Silk##173204
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
|only if skill("Shadowlands Tailoring") < 100
step
Open Your Tailoring Crafting Panel:
_<Create 1 Shadowlace Mantle>_
Reach Level 100 Shadowlands Tailoring |skill Shadowlands Tailoring,100
step
_Congratulations!_
You Reached 100 Shadowlands Tailoring Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Lightless Silk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Lightless Silk for various profession recipes.",
startlevel=50.0,
},[[
step
kill Seed Harvester##166327+
collect Lightless Silk##173204 |n |goto Ardenweald/0 44.25,24.28
|tip These are a rare drop.
You can find more around [43.95,21.57]
And inside the cave at [42.39,23.81]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shrouded Cloth",{
author="support@zygorguides.com",
description="\nThis guide will walk you through farming Shrouded Cloth for various profession recipes.",
startlevel=50.0,
},[[
step
kill Seed Harvester##166327+
collect Shrouded Cloth##173202 |n |goto Ardenweald/0 44.25,24.28
You can find more around [43.95,21.57]
And inside the cave at [42.39,23.81]
]])
