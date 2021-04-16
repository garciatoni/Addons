local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PoiTreasureSHADOW") then return end
ZGV.Poi.Sets.PoiTreasureSHADOW={
{
treasure=[[Aerto's Body]],
level=50,
spot="Ardenweald/0 56.00,21.01",
item=180630,
quest=61072,
polish=true,
steps=[[
step
click Aerto's Body |confirm |q 61072 |goto Ardenweald/0 56.00,21.01 |future
]],
},
{
treasure=[[Cache of the Moon]],
level=50,
spot="Ardenweald/0 63.89,37.78",
item=180731,
quest=61074,
polish=true,
steps=[[
step
click Cache of the Moon##355041 |confirm |q 61074 |goto Ardenweald/0 63.89,37.78 |future
]],
},
{
treasure=[[Darkreach Supplies]],
level=50,
spot="Ardenweald/0 37.64,61.59",
item=179594,
quest=61068,
polish=true,
steps=[[
step
click Darkreach Supplies##354648 |confirm |q 61068 |goto Ardenweald/0 37.64,61.59 |future
]],
},
{
treasure=[[Desiccated Moth]],
level=50,
spot="Ardenweald/0 41.95,32.53",
item=180640,
quest=61147,
polish=true,
steps=[[
step
clicknpc Desiccated Moth##171484 |confirm |q 61147 |goto Ardenweald/0 41.95,32.53 |future
]],
},
{
treasure=[[Dreamsong Heart]],
level=50,
spot="Ardenweald/0 37.68,36.88",
item=179510,
quest=61070,
polish=true,
steps=[[
step
click Dreamsong Heart##354650 |confirm |q 61070 |goto Ardenweald/0 37.68,36.88 |future
]],
},
{
treasure=[[Elusive Faerie Cache]],
level=50,
spot="Ardenweald/0 44.82,75.87",
item=179512,
quest=61175,
polish=true,
steps=[[
step
clicknpc Elusive Faerie Cache##171475 |confirm |q 61175 |goto Ardenweald/0 44.82,75.87 |future
]],
},
{
treasure=[[Enchanted Dreamcatcher]],
level=50,
spot="Ardenweald/0 36.42,25.06",
item=183129,
quest=62259,
polish=true,
steps=[[
step
click Enchanted Dreamcatcher##354651 |confirm |q 62259 |goto Ardenweald/0 36.42,25.06 |future
]],
},
{
treasure=[[Faerie Trove]],
level=50,
spot="Ardenweald/0 49.71,55.89",
item=182673,
quest=61073,
polish=true,
steps=[[
step
click Faerie Trove##354652 |confirm |q 61073 |goto Ardenweald/0 49.71,55.89 |future
]],
},
{
treasure=[[Harmonic Chest]],
level=50,
spot="Ardenweald/0 67.80,34.62",
quest=61165,
polish=true,
steps=[[
step
click Harmonic Chest##355355 |confirm |q 61165 |goto Ardenweald/0 67.80,34.62 |future
]],
},
{
treasure=[[Hearty Dragon Plume]],
level=50,
spot="Ardenweald/0 48.21,39.27",
item=182729,
quest=61067,
polish=true,
steps=[[
step
click Hearty Dragon Plume##354647 |confirm |q 61067 |goto Ardenweald/0 48.21,39.27 |future
]],
},
{
treasure=[[Lost Satchel]],
level=50,
spot="Ardenweald/0 48.28,20.31",
item=182731,
quest=62187,
polish=true,
steps=[[
step
click Lost Satchel##354645 |confirm |q 62187 |goto Ardenweald/0 48.28,20.31 |future
]],
},
{
treasure=[[Swollen Anima Seed]],
level=50,
spot="Ardenweald/0 76.67,29.74",
item=182730,
quest=62186,
polish=true,
steps=[[
step
click Swollen Anima Seed##354911 |confirm |q 62186 |goto Ardenweald/0 76.67,29.74 |future
]],
},
{
treasure=[[Tame Gladerunner]],
level=50,
spot="Ardenweald/0 26.28,58.97",
item=180727,
quest=61192,
polish=true,
steps=[[
step
click Tame Gladerunner |confirm |q 61192 |goto Ardenweald/0 26.28,58.97 |future
]],
},
{
treasure=[[Ancient Cloudfeather Egg]],
level=50,
spot="Ardenweald/0 52.94,37.29",
item=180642,
quest=61065,
polish=true,
steps=[[
step
click Ancient Cloudfeather Egg##354646 |confirm |q 61065 |goto Ardenweald/0 52.94,37.29 |future
]],
},
{
treasure=[[Abandoned Stockpile]],
level=50,
spot="Bastion/0 46.11,45.36",
quest=61006,
polish=true,
steps=[[
step
click Abandoned Stockpile##354202 |confirm |q 61006 |goto Bastion/0 46.11,45.36 |future
]],
},
{
treasure=[[Broken Flute]],
level=50,
spot="Bastion/0 35.83,48.11",
item=180064,
quest=61053,
polish=true,
steps=[[
step
click Broken Flute |confirm |q 61053 |goto Bastion/0 35.83,48.11 |future
]],
},
{
treasure=[[Experimental Construct Part]],
level=50,
spot="Bastion/0 51.47,17.95",
item=183609,
quest=61052,
polish=true,
steps=[[
step
click Experimental Construct Part##354275 |confirm |q 61052 |goto Bastion/0 51.47,17.95 |future
]],
},
{
treasure=[[Gift of Agthia]],
level=50,
spot="Bastion/0 35.08,58.05",
item=180063,
quest=60893,
polish=true,
steps=[[
step
click Gift of Agthia##353942 |confirm |q 60893 |goto Bastion/0 35.08,58.05 |future
]],
},
{
treasure=[[Gift of Chyrus]],
level=50,
spot="Bastion/0 70.47,36.45",
quest=60892,
polish=true,
steps=[[
step
click Gift of Chyrus##353941 |confirm |q 60892 |goto Bastion/0 70.47,36.45 |future
]],
},
{
treasure=[[Gift of Devos]],
level=50,
spot="Bastion/0 27.60,21.79",
item=179977,
quest=60895,
polish=true,
steps=[[
step
click Gift of Devos##353944 |confirm |q 60895 |goto Bastion/0 27.60,21.79 |future
]],
},
{
treasure=[[Gift of Thenios]],
level=50,
spot="Bastion/0 40.60,18.90",
quest=60894,
polish=true,
steps=[[
step
click Gift of Thenios##353943 |confirm |q 60894 |goto Bastion/0 40.60,18.90 |future
]],
},
{
treasure=[[Gift of Vesiphone]],
level=50,
spot="Bastion/0 64.87,71.14",
item=180859,
quest=60890,
polish=true,
steps=[[
step
click Gift of Vesiphone##353940 |confirm |q 60890 |goto Bastion/0 64.87,71.14 |future
]],
},
{
treasure=[[Larion Tamer's Harness]],
level=50,
spot="Bastion/0 58.23,39.99",
item=182652,
quest=61049,
polish=true,
steps=[[
step
click Larion Tamer's Harness##354214 |confirm |q 61049 |goto Bastion/0 58.23,39.99 |future
]],
},
{
treasure=[[Lost Disciple's Notes]],
level=50,
spot="Bastion/0 59.33,60.92",
item=182693,
quest=61048,
polish=true,
steps=[[
step
click Lost Disciple's Notes##354213 |confirm |q 61048 |goto Bastion/0 59.33,60.92 |future
]],
},
{
treasure=[[Memorial Offering]],
level=50,
spot="Bastion/0 56.48,17.14",
quest=61150,
polish=true,
steps=[[
step
click Memorial Offering##355286 |confirm |q 61150 |goto Bastion/0 56.48,17.14 |future
]],
},
{
treasure=[[Purifying Draught]],
level=50,
spot="Bastion/0 52.03,86.07",
item=174007,
quest=58329,
polish=true,
steps=[[
step
click Purifying Draught##339641 |confirm |q 58329 |goto Bastion/0 52.03,86.07 |future
]],
},
{
treasure=[[Scroll of Aeons]],
level=50,
spot="Bastion/0 53.50,80.37",
item=173984,
quest=58298,
polish=true,
steps=[[
step
click Scroll of Aeons##339601 |confirm |q 58298 |goto Bastion/0 53.50,80.37 |future
]],
},
{
treasure=[[Stolen Equipment]],
level=50,
spot="Bastion/0 40.50,49.80",
item=182561,
quest=61044,
polish=true,
steps=[[
step
click Stolen Equipment##354208 |confirm |q 61044 |goto Bastion/0 40.50,49.80 |future
]],
},
{
treasure=[[Vesper of the Silver Wind]],
level=50,
spot="Bastion/0 36.01,26.52",
item=180772,
quest=61183,
polish=true,
steps=[[
step
click Vesper of the Silver Wind##355435 |confirm |q 61183 |goto Bastion/0 36.01,26.52 |future
]],
},
{
treasure=[[Vesper of Virtues]],
level=50,
spot="Bastion/0 58.66,71.35",
item=179982,
quest=60478,
polish=true,
steps=[[
step
click Vesper of Virtues##352428 |confirm |q 60478 |goto Bastion/0 58.66,71.35 |future
]],
},
{
treasure=[[Blackhound Cache]],
level=50,
spot="Maldraxxus/0 44.08,39.89",
quest=60368,
polish=true,
steps=[[
step
click Blackhound Cache##352086 |confirm |q 60368 |goto Maldraxxus/0 44.08,39.89 |future
]],
},
{
treasure=[[Chest of Eyes]],
level=50,
spot="Maldraxxus/0 49.44,15.09",
item=183696,
quest=59244,
polish=true,
steps=[[
step
click Chest of Eyes##345456 |confirm |q 59244 |goto Maldraxxus/0 49.44,15.09 |future
]],
},
{
treasure=[[Giant Cache of Epic Treasure]],
level=50,
spot="Maldraxxus/0 41.51,19.53",
quest=62602,
polish=true,
steps=[[
step
click Giant Cache of Epic Treasure |confirm |q 62602 |goto Maldraxxus/0 41.51,19.53 |future
]],
},
{
treasure=[[Glutharn's Stash]],
level=50,
spot="Maldraxxus/0 72.89,53.65",
quest=61484,
polish=true,
steps=[[
step
click Glutharn's Stash##355947 |confirm |q 61484 |goto Maldraxxus/0 72.89,53.65 |future
]],
},
{
treasure=[[Halis's Lunch Pail]],
level=50,
spot="Maldraxxus/0 30.79,28.74",
quest=60730,
polish=true,
steps=[[
step
click Halis's Lunch Pail##353380 |confirm |q 60730 |goto Maldraxxus/0 30.79,28.74 |future
]],
},
{
treasure=[[Kyrian Keepsake]],
level=50,
spot="Maldraxxus/0 32.74,21.27",
item=180085,
quest=60587,
polish=true,
steps=[[
step
click Kyrian Keepsake |confirm |q 60587 |goto Maldraxxus/0 32.74,21.27 |future
]],
},
{
treasure=[[Misplaced Supplies]],
level=50,
spot="Maldraxxus/0 62.50,59.90",
quest=59245,
polish=true,
steps=[[
step
click Misplaced Supplies##351980 |confirm |q 59245 |goto Maldraxxus/0 62.50,59.90 |future
]],
},
{
treasure=[[Necro Tome]],
level=50,
spot="Maldraxxus/0 42.38,23.33",
item=182732,
quest=61470,
polish=true,
steps=[[
step
click Necro Tome |confirm |q 61470 |goto Maldraxxus/0 42.38,23.33 |future
]],
},
{
treasure=[[Ornate Bone Shield]],
level=50,
spot="Maldraxxus/0 47.23,62.16",
item=180749,
quest=59358,
polish=true,
steps=[[
step
click Ornate Bone Shield##347444 |confirm |q 59358 |goto Maldraxxus/0 47.23,62.16 |future
]],
},
{
treasure=[[Plaguefallen Chest]],
level=50,
spot="Maldraxxus/0 57.66,75.81",
item=183515,
quest=61474,
polish=true,
steps=[[
step
click Plaguefallen Chest##355886 |confirm |q 61474 |goto Maldraxxus/0 57.66,75.81 |future
]],
},
{
treasure=[[Stolen Jar]],
level=50,
spot="Maldraxxus/0 73.56,49.86",
item=182618,
quest=61451,
polish=true,
steps=[[
step
click Stolen Jar##355872 |confirm |q 61451 |goto Maldraxxus/0 73.56,49.86 |future
]],
},
{
treasure=[[Strange Growth]],
level=50,
spot="Maldraxxus/0 55.89,38.97",
item=182607,
item=182606,
quest=59428,
polish=true,
steps=[[
step
click Strange Growth##348521 |confirm |q 59428 |goto Maldraxxus/0 55.89,38.97 |future
]],
},
{
treasure=[[Vat of Conspicuous Slime]],
level=50,
spot="Maldraxxus/0 59.86,79.06",
item=181825,
quest=61444,
polish=true,
steps=[[
step
click Vat of Conspicuous Slime##355865 |confirm |q 61444 |goto Maldraxxus/0 59.86,79.06 |future
]],
},
{
treasure=[[Oonar's Arm]],
level=50,
spot="Maldraxxus/0 51.44,48.48",
item=181164,
item=180273,
quest=61127,
polish=true,
steps=[[
step
click Oonar's Arm##335655 |confirm |q 61127 |goto Maldraxxus/0 51.44,48.48 |future
]],
},
{
treasure=[[Sorrowbane]],
level=50,
spot="Maldraxxus/0 51.44,48.48",
item=181164,
item=180273,
quest=61127,
polish=true,
steps=[[
step
click Sorrowbane##335649 |confirm |q 61127 |goto Maldraxxus/0 51.44,48.48 |future
]],
},
{
treasure=[[Stoneguard Satchel]],
level=50,
spot="Revendreth/0 76.23,64.11",
quest=60939,
polish=true,
steps=[[
step
Jump down carefully here |goto Revendreth/0 76.56,64.13 < 10 |only if walking
|tip Jump onto the ledge.
click Stoneguard Satchel##354114 |confirm |q 60939 |goto Revendreth/0 76.23,64.11 |future
]],
},
{
treasure=[[Lost Quill]],
level=50,
spot="Revendreth/0 37.72,69.25",
item=182613,
quest=61990,
steps=[[
step
Enter the building |goto Revendreth/0 38.07,68.83 < 15 |walk
click Forbidden Ink
|tip Inside the building.
collect Forbidden Ink##182475 |goto 37.65,68.76 |q 61990 |future
step
Hug the wall |goto 38.41,68.14 < 10 |only if walking
talk Lost Quill##173449
Tell it _"Here, I found this ink in a bottle."
Return the Forbidden Ink |q 61990 |goto 37.72,69.25 |future
]],
},
{
treasure=[[Makeshift Muckpool]],
level=50,
spot="Revendreth/0 29.69,37.23",
item=182780,
quest=62198,
polish=true,
steps=[[
step
Collect 30 Infused Rubies |condition curcount(1820) >= 30 |q 62198 |future
step
Follow the path |goto Revendreth/0 28.17,38.00 < 7 |only if walking
Enter the building |goto 29.47,36.86 < 15 |only if walking
click Makeshift Muckpool |q 62198 |goto Revendreth/0 29.69,37.23 |future
]],
},
{
treasure=[[Secret Chamber]],
level=50,
spot="Revendreth/0 47.33,55.36",
quest=62243,
polish=true,
steps=[[
step
click Secret Chamber |confirm |q 62243 |goto Revendreth/0 47.33,55.36 |future
]],
},
{
treasure=[[Stylish Parasol]],
level=50,
spot="Revendreth/0 38.39,44.24",
item=182694,
quest=61999,
polish=true,
steps=[[
step
click Stylish Parasol##357487 |confirm |q 61999 |goto Revendreth/0 38.39,44.24 |future
]],
},
{
treasure=[[Taskmaster's Trove]],
level=50,
spot="Revendreth/0 62.82,75.31",
item=183986,
quest=62199,
steps=[[
step
click Ingress and Egress Rites
Gain the "Taskmaster's Trove" Buff |condition hasbuff("spell:341237") or completedq(62199) |goto Revendreth/0 63.02,72.16
step
click Taskmaster's Trove##357697 |q 62199 |goto 62.82,75.31 |future
|tip Avoid the floating blue orbs that knock you back.
]],
},
{
treasure=[[Vyrtha's Dredglaive]],
level=50,
spot="Revendreth/0 70.17,60.05",
item=177807,
quest=62164,
polish=true,
steps=[[
step
click Vyrtha's Dredglaive## |q 62164 |goto Revendreth/0 70.17,60.05 |future
]],
},
{
treasure=[[Abandoned Curios]],
level=50,
spot="Revendreth/0 51.85,59.54",
item=182744,
quest=59888,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 52.48,59.20 |q 59888 |future
|tip Jump on the Bounding Shroom.
step
click Abandoned Curios##349797 |q 59888 |goto 51.85,59.54 |future
'|condition not hasbuff("spell:330976") and not completedq(59888) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
{
treasure=[[Bleakwood Chest]],
level=50,
spot="Revendreth/0 27.57,11.91",
item=180592,
quest=60665,
polish=true,
steps=[[
step
click Bleakwood Chest |q 60665 |goto Revendreth/0 27.57,11.91 |future
]],
},
{
treasure=[[Chest of Envious Dreams]],
level=50,
spot="Revendreth/0 69.32,77.95",
item=179393,
quest=59833,
steps=[[
step
click Chest of Envious Dreams##349565 |q 59833 |goto Revendreth/0 69.32,77.95 |future
]],
},
{
treasure=[[Filcher's Prize]],
level=50,
spot="Revendreth/0 64.18,72.65",
item=179392,
quest=59883,
polish=true,
steps=[[
step
click Filcher's Prize##349792 |confirm |q 59883 |goto Revendreth/0 64.18,72.65 |future
]],
},
{
treasure=[[Fleeing Soul's Bundle]],
level=50,
spot="Revendreth/0 46.39,58.17",
quest=59886,
polish=true,
steps=[[
step
click Fleeing Soul's Bundle##349795 |confirm |q 59886 |goto Revendreth/0 46.39,58.17 |future
]],
},
{
treasure=[[Forgotten Angler's Rod]],
level=50,
spot="Revendreth/0 73.59,75.39",
item=180993,
quest=62196,
polish=true,
steps=[[
step
click Forgotten Angler's Rod##357565 |confirm |q 62196 |goto Revendreth/0 73.59,75.39 |future
]],
},
{
treasure=[[Gilded Plum Chest]],
level=50,
spot="Revendreth/0 75.46,55.42",
item=179390,
quest=59887,
steps=[[
step
kill Greedy Soul##166680
|tip It walks up and down the road.
|tip It will drop the chest on the ground.
click Gilded Plum Chest##349796 |q 59887 |goto Revendreth/0 75.46,55.42 |future
]],
},
{
treasure=[[Pugilist's Prize]],
level=50,
spot="Revendreth/0 48.70,63.77",
item=182687,
quest=60953,
steps=[[
step
Kill enemies around this area
|tip They will attack you for trying to take the prize.
click Pugilist's Prize##354123 |q 60953 |goto Revendreth/0 48.70,63.77 |future
]],
},
{
treasure=[[Remlate's Hidden Cache]],
level=50,
spot="Revendreth/0 61.52,58.64",
quest=59885,
steps=[[
step
Jump up here |goto Revendreth/0 60.44,60.10 < 7 |only if walking
Jump down here |goto 61.35,58.64 < 10 |only if walking
click Remlate's Hidden Cache##349794 |q 59885 |goto 61.52,58.64 |future
]],
},
{
treasure=[[Secret Treasure]],
level=50,
spot="Revendreth/0 27.71,48.68",
item=182738,
quest=60202,
steps=[[
step
label "Collect_Book"
click Dusty Book##353340+
|tip Don't stand too close or the ghoul will attack you.
|tip Check all of the various cages along this road.
Collect a Book |condition (itemcount(180229) > 0 or itemcount(180219) > 0 or itemcount(180222) > 0 or itemcount(180221) > 0 or itemcount(180227) > 0 or itemcount(180225) > 0) and not completedq(60202) |goto Revendreth/0 27.99,48.48 |q 60202 |future
step
Climb up the wood stairs |goto 27.53,48.95 < 5 |only if walking
talk Lord Scowl##169993
Choose _<Give Lord Scowl the book you found.>_
click Secret Treasure##349798 |q 60202 |goto 27.65,48.73 |future |or
'|condition itemcount(180229) == 0 and itemcount(180219) == 0 and itemcount(180222) == 0 and itemcount(180221) == 0 and itemcount(180227) == 0 and itemcount(180225) == 0 and not completedq(60202) |next "Collect_Book" |or
]],
},
{
treasure=[[Smuggled Cache]],
level=50,
spot="Revendreth/0 31.05,55.06",
item=182738,
quest=59889,
polish=true,
steps=[[
step
click Smuggled Cache##349798 |confirm |q 59889 |goto Revendreth/0 31.05,55.06 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 44.34,77.93",
item=182721,
quest=60980,
steps=[[
step
Jump down here |goto Revendreth/0 44.24,77.73 < 15 |only if walking
click Stoneborn Satchel##354111 |q 60980 |goto 44.34,77.93 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 53.69,57.22",
item=182720,
quest=60983,
steps=[[
step
Follow the path up |goto Revendreth/0 51.58,58.48 < 15 |only if walking
click Stoneborn Satchel##354111 |q 60983 |goto 53.69,57.22 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 80.44,70.79",
item=182722,
quest=60943,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Jump down carefully here |goto Revendreth/0 80.81,68.53 < 10 |only if walking
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto 81.15,68.77 |q 60943 |future
|tip Jump on the Bounding Shroom.
step
Ride the elevator up |goto 78.98,66.48 < 20 |only if walking
Land on the ledge |goto 79.36,69.08 < 20 |only if walking
|tip Jump from the edge of the elevator.
Drop down carefully here |goto 79.83,70.78 < 10
click Stoneborn Satchel##354111 |q 60943 |goto 80.44,70.79 |future |or
'|condition not hasbuff("spell:330976") and not completedq(60943) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 55.38,42.32",
item=182722,
quest=60942,
steps=[[
step
Run up the stairs |goto Revendreth/0 54.82,45.70 < 15 |only if walking
Jump down carefully here |goto 55.50,43.04 < 10 |only if walking
|tip Jump onto the roof.
click Stoneborn Satchel##354111 |q 60942 |goto 55.38,42.32 |future
]],
},
{
treasure=[[Stoneborn Satchel]],
level=50,
spot="Revendreth/0 29.94,37.45",
item=182720,
quest=60986,
steps=[[
step
Jump down carefully here |goto Revendreth/0 29.84,39.41 < 7 |only if walking
Jump down carefully here |goto 29.90,38.78 < 7 |only if walking
Jump down carefully here |goto 30.03,38.12 < 10 |only if walking
Jump down carefully here |goto 30.38,38.07 < 10 |only if walking
Jump down carefully here |goto 30.23,37.40 < 10 |only if walking
click Stoneborn Satchel##354111 |q 60986 |goto 29.94,37.45 |future
]],
},
{
treasure=[[Wayfarer's Abandoned Spoils]],
level=50,
spot="Revendreth/0 68.44,64.45",
quest=59884,
steps=[[
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 67.96,64.58 |q 59884 |future
|tip Jump on the Bounding Shroom.
step
click Wayfarer's Abandoned Spoils##349793 |q 59884 |goto 68.44,64.45 |future |or
|tip On the broken wall.
'|condition not hasbuff("spell:330976") and not completedq(59884) |next "Jump_on_the_Bounding_Shroom" |or
]],
},
}
