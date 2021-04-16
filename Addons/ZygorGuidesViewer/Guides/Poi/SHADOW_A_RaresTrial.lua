local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PoiRareSHADOW") then return end
ZGV.Poi.Sets.PoiRareSHADOW={
{
rare=[[Deathbinder Hroth]],
level=50,
spot="Ardenweald/0 34.60,68.00",
item=164477,
quest=59226,
polish=true,
steps=[[
step
kill Deathbinder Hroth##164477 |confirm |q 59226 |goto Ardenweald/0 34.60,68.00 |future
]],
},
{
rare=[[Deifir the Untamed]],
level=50,
spot="Ardenweald/0 47.52,28.45",
item=180631,
quest=59201,
polish=true,
steps=[[
kill Deifir the Untamed##164238 |confirm |q 59201 |goto Ardenweald/0 47.52,28.45 |future
]],
},
{
rare=[[Dustbrawl]],
level=50,
spot="Ardenweald/0 48.39,77.17",
item=163229,
quest=58987,
polish=true,
steps=[[
step
kill Dustbrawl##163229 |confirm |q 58987 |goto Ardenweald/0 48.39,77.17 |future
]],
},
{
rare=[[Egg-Tender Leh'go]],
level=50,
spot="Ardenweald/0 57.86,29.55",
item=167851,
quest=60266,
polish=true,
steps=[[
step
kill Egg-Tender Leh'go##167851 |confirm |q 60266 |goto Ardenweald/0 57.86,29.55 |future
]],
},
{
rare=[[Faeflayer]],
level=50,
spot="Ardenweald/0 68.61,27.65",
item=171688,
quest=61184,
polish=true,
steps=[[
step
kill Faeflayer##171688 |confirm |q 61184 |goto Ardenweald/0 68.61,27.65 |future
]],
},
{
rare=[[Gormbore]],
level=50,
spot="Ardenweald/0 54.06,76.01",
item=183196,
quest=59006,
polish=true,
steps=[[
step
kill Gormbore##163370 |confirm |q 59006 |goto Ardenweald/0 54.06,76.01 |future
]],
},
{
rare=[[Gormtamer Tizo]],
level=50,
spot="Ardenweald/0 27.88,52.48",
item=180725,
quest=59145,
polish=true,
steps=[[
step
kill Gormtamer Tizo##164107 |confirm |q 59145 |goto Ardenweald/0 27.88,52.48 |future
]],
},
{
rare=[[Humon'gozz]],
level=50,
spot="Ardenweald/0 32.42,30.26",
item=182650,
quest=59157,
polish=true,
steps=[[
step
kill Humon'gozz##164112 |confirm |q 59157 |goto Ardenweald/0 32.42,30.26 |future
]],
},
{
rare=[[Hunter Vivanna]],
level=50,
spot="Ardenweald/0 67.46,51.47",
item=179596,
quest=59221,
polish=true,
steps=[[
step
kill Hunter Vivanna##160448 |confirm |q 59221 |goto Ardenweald/0 67.46,51.47 |future
]],
},
{
rare=[[Mystic Rainbowhorn]],
level=50,
spot="Ardenweald/0 50.09,20.91",
item=182179,
quest=59235,
polish=true,
steps=[[
step
kill Mystic Rainbowhorn##164547 |confirm |q 59235 |goto Ardenweald/0 50.09,20.91 |future
]],
},
{
rare=[[Night Mare]],
level=50,
spot="Ardenweald/0 57.87,49.83",
item=item,
quest=60306,
polish=true,
steps=[[
step
kill Night Mare##168135 |confirm |q 60306 |goto Ardenweald/0 57.87,49.83 |future
]],
},
{
rare=[[Old Ardeite]],
level=50,
spot="Ardenweald/0 51.10,57.40",
item=180643,
quest=59208,
polish=true,
steps=[[
kill Old Ardeite##164391 |confirm |q 59208 |goto Ardenweald/0 51.10,57.40 |future
]],
},
{
rare=[[Rootwrithe]],
level=50,
spot="Ardenweald/0 65.10,44.30",
item=167726,
quest=60273,
polish=true,
steps=[[
step
kill Rootwrithe##167726 |confirm |q 60273 |goto Ardenweald/0 65.10,44.30 |future
]],
},
{
rare=[[Rotbriar Changeling]],
level=50,
spot="Ardenweald/0 65.70,24.30",
item=175729,
quest=60258,
polish=true,
steps=[[
step
kill Rotbriar Changeling##167724 |confirm |q 60258 |goto Ardenweald/0 65.70,24.30 |future
]],
},
{
rare=[[Soultwister Cero]],
level=50,
spot="Ardenweald/0 72.42,51.75",
item=180164,
quest=61177,
polish=true,
steps=[[
step
kill Soultwister Cero##171451 |confirm |q 61177 |goto Ardenweald/0 72.42,51.75 |future
]],
},
{
rare=[[Skuld Vit]],
level=50,
spot="Ardenweald/0 37.67,59.17",
item=182183,
quest=59220,
polish=true,
steps=[[
step
kill Skuld Vit##164415 |confirm |q 59220 |goto Ardenweald/0 37.67,59.17 |future
]],
},
{
rare=[[The Slumbering Emperor]],
level=50,
spot="Ardenweald/0 59.30,46.60",
item=167721,
quest=60290,
polish=true,
steps=[[
step
kill The Slumbering Emperor##167721 |confirm |q 60290 |goto Ardenweald/0 59.30,46.60 |future
]],
},
{
rare=[[Valfir the Unrelenting]],
level=50,
spot="Ardenweald/0 30.11,55.36",
item=182176,
quest=61632,
polish=true,
steps=[[
step
kill Valfir the Unrelenting##168647 |confirm |q 61632 |goto Ardenweald/0 30.11,55.36 |future
]],
},
{
rare=[[Wrigglemortis]],
level=50,
spot="Ardenweald/0 58.30,61.80",
item=164147,
quest=59170,
polish=true,
steps=[[
step
kill Wrigglemortis##164147 |confirm |q 59170 |goto Ardenweald/0 58.30,61.80 |future
]],
},
{
rare=[[Aspirant Eolis]],
level=50,
spot="Bastion/0 32.59,23.36",
item=183607,
quest=61083,
polish=true,
steps=[[
step
kill Aspirant Eolis##171211 |confirm |q 61083 |goto Bastion/0 32.59,23.36 |future
]],
},
{
rare=[[Bookkeeper Mnemis]],
level=50,
spot="Bastion/0 55.82,62.49",
item=182682,
quest=59022,
polish=true,
steps=[[
step
kill Bookkeeper Mnemis##171189 |confirm |q 59022 |goto Bastion/0 55.82,62.49 |future
]],
},
{
rare=[[Collector Astorestes]],
level=50,
spot="Bastion/0 66.00,43.67",
item=171014,
quest=61002,
polish=true,
steps=[[
step
kill Collector Astorestes##171014 |confirm |q 61002 |goto Bastion/0 66.00,43.67 |future
]],
},
{
rare=[[Corrupted Clawguard]],
level=50,
spot="Bastion/0 56.90,47.78",
item=171010,
quest=60999,
polish=true,
steps=[[
step
kill Corrupted Clawguard##171010 |confirm |q 60999 |goto Bastion/0 56.90,47.78 |future
]],
},
{
rare=[[Dark Watcher]],
level=50,
spot="Bastion/0 27.82,30.14",
item=170623,
quest=60883,
polish=true,
steps=[[
step
kill Dark Watcher##170623 |confirm |q 60883 |goto Bastion/0 27.82,30.14 |future
]],
},
{
rare=[[Demi the Relic Hoarder]],
level=50,
spot="Bastion/0 37.00,41.80",
item=171011,
quest=61069,
polish=true,
steps=[[
step
kill Demi the Relic Hoarder##171011 |confirm |q 61069 |goto Bastion/0 37.00,41.80 |future
]],
},
{
rare=[[Dionae]],
level=50,
spot="Bastion/0 41.35,48.87",
item=163460,
quest=62650,
polish=true,
steps=[[
step
kill Dionae##163460 |confirm |q 62650 |goto Bastion/0 41.35,48.87 |future
]],
},
{
rare=[[Enforcer Aegeon]],
level=50,
spot="Bastion/0 51.15,19.53",
item=171009,
quest=60998,
polish=true,
steps=[[
step
kill Enforcer Aegeon##171009 |confirm |q 60998 |goto Bastion/0 51.15,19.53 |future
]],
},
{
rare=[[Fallen Acolyte Erisne]],
level=50,
spot="Bastion/0 60.42,73.05",
item=180444,
quest=58222,
polish=true,
steps=[[
step
kill Fallen Acolyte Erisne##160721 |confirm |q 58222 |goto Bastion/0 60.42,73.05 |future
]],
},
{
rare=[[Herculon]],
level=50,
spot="Bastion/0 42.90,82.65",
item=158659,
quest=57705,
polish=true,
steps=[[
step
kill Herculon##158659 |confirm |q 57705 |goto Bastion/0 42.90,82.65 |future
]],
},
{
rare=[[Nikara Blackheart]],
level=50,
spot="Bastion/0 51.45,68.59",
item=183608,
quest=58319,
polish=true,
steps=[[
step
kill Nikara Blackheart##160882 |confirm |q 58319 |goto Bastion/0 51.45,68.59 |future
]],
},
{
rare=[[Unstable Memory]],
level=50,
spot="Bastion/0 43.48,25.24",
item=171008,
quest=60997,
polish=true,
steps=[[
step
kill Unstable Memory##171008 |confirm |q 60997 |goto Bastion/0 43.48,25.24 |future
]],
},
{
rare=[[Wingflayer the Cruel]],
level=50,
spot="Bastion/0 40.63,53.06",
item=182749,
quest=60314,
polish=true,
steps=[[
step
kill Wingflayer the Cruel##167078 |confirm |q 60314 |goto Bastion/0 40.63,53.06 |future
]],
},
{
rare=[[Worldfeaster Chronn]],
level=50,
spot="Bastion/0 48.00,42.90",
item=183605,
quest=61047,
polish=true,
steps=[[
step
kill Worldfeaster Chronn##171041 |confirm |q 61047 |goto Bastion/0 48.00,42.90 |future
]],
},
{
rare=[[Xixin the Ravening]],
level=50,
spot="Bastion/0 63.50,35.90",
item=183605,
quest=61046,
polish=true,
steps=[[
step
kill Xixin the Ravening##171040 |confirm |q 61046 |goto Bastion/0 63.50,35.90 |future
]],
},
{
rare=[[Bubbleblood]],
level=50,
spot="Maldraxxus/0 52.66,35.42",
item=162727,
quest=58870,
polish=true,
steps=[[
step
kill Bubbleblood##162727 |confirm |q 58870 |goto Maldraxxus/0 52.66,35.42 |future
]],
},
{
rare=[[Collector Kash]],
level=50,
spot="Maldraxxus/0 49.01,23.51",
item=159105,
quest=58005,
polish=true,
steps=[[
step
kill Collector Kash##159105 |confirm |q 58005 |goto Maldraxxus/0 49.01,23.51 |future
]],
},
{
rare=[[Corpsecutter/Bonebreaker Moroc]],
level=50,
spot="Maldraxxus/0 26.39,26.33",
item=157058,
quest=58335,
polish=true,
steps=[[
step
kill Corpsecutter Moroc##157058 |confirm |q 58335 |goto Maldraxxus/0 26.39,26.33 |future
kill Bonebreaker Moroc##175384 |confirm |q 58335 |goto Maldraxxus/0 26.39,26.33 |future
]],
},
{
rare=[[Deadly Dapperling]],
level=50,
spot="Maldraxxus/0 76.83,57.07",
item=181263,
quest=58868,
polish=true,
steps=[[
step
kill Deadly Dapperling##162711 |confirm |q 58868 |goto Maldraxxus/0 76.83,57.07 |future
]],
},
{
rare=[[Deepscar]],
level=50,
spot="Maldraxxus/0 46.73,45.50",
item=182191,
quest=58878,
polish=true,
steps=[[
step
kill Deepscar##162797 |confirm |q 58878 |goto Maldraxxus/0 46.73,45.50 |future
]],
},
{
rare=[[Devour'us]],
level=50,
spot="Maldraxxus/0 45.05,28.42",
item=162669,
quest=58835,
polish=true,
steps=[[
step
kill Devour'us##162669 |confirm |q 58835 |goto Maldraxxus/0 45.05,28.42 |future
]],
},
{
rare=[[Gieger]],
level=50,
spot="Maldraxxus/0 31.60,35.40",
item=182080,
quest=58872,
polish=true,
steps=[[
step
kill Gieger##162741 |confirm |q 58872 |goto Maldraxxus/0 31.60,35.40 |future
]],
},
{
rare=[[Gristlebeak]],
level=50,
spot="Maldraxxus/0 57.79,51.55",
item=182196,
quest=58837,
polish=true,
steps=[[
step
kill Gristlebeak##162588 |confirm |q 58837 |goto Maldraxxus/0 57.79,51.55 |future
]],
},
{
rare=[[Indomitable Schmitd]],
level=50,
spot="Maldraxxus/0 38.79,43.33",
item=182192,
quest=58332,
polish=true,
steps=[[
step
kill Indomitable Schmitd##161105 |confirm |q 58332 |goto Maldraxxus/0 38.79,43.33 |future
]],
},
{
rare=[[Necromantic Anomaly]],
level=50,
spot="Maldraxxus/0 72.87,28.91",
item=174108,
quest=62369,
polish=true,
steps=[[
step
kill Necromantic Anomaly##174108 |confirm |q 62369 |goto Maldraxxus/0 72.87,28.91 |future
]],
},
{
rare=[[Nerissa Heartless]],
level=50,
spot="Maldraxxus/0 66.02,35.32",
item=182084,
quest=58851,
polish=true,
steps=[[
step
kill Nerissa Heartless##162690 |confirm |q 58851 |goto Maldraxxus/0 66.02,35.32 |future
]],
},
{
rare=[[Nirvaska the Summoner]],
level=50,
spot="Maldraxxus/0 53.72,61.32",
item=182205,
quest=58875,
polish=true,
steps=[[
step
kill Nirvaska the Summoner##161857 |confirm |q 58875 |goto Maldraxxus/0 53.72,61.32 |future
]],
},
{
rare=[[Pesticide]],
level=50,
spot="Maldraxxus/0 50.34,63.28",
item=161857,
quest=58629,
polish=true,
steps=[[
step
kill Pesticide##162767 |confirm |q 58629 |goto Maldraxxus/0 50.34,63.28 |future
]],
},
{
rare=[[Ravenomous]],
level=50,
spot="Maldraxxus/0 53.84,18.77",
item=181283,
quest=58004,
polish=true,
steps=[[
step
kill Ravenomous##159753 |confirm |q 58004 |goto Maldraxxus/0 53.84,18.77 |future
]],
},
{
rare=[[Scunner]],
level=50,
spot="Maldraxxus/0 62.10,75.80",
item=181267,
quest=58006,
polish=true,
steps=[[
step
kill Scunner##158406 |confirm |q 58006 |goto Maldraxxus/0 62.10,75.80 |future
]],
},
{
rare=[[Sister Chelicerae]],
level=50,
spot="Maldraxxus/0 55.50,23.61",
item=181172,
quest=58003,
polish=true,
steps=[[
step
kill Sister Chelicerae##159886 |confirm |q 58003 |goto Maldraxxus/0 55.50,23.61 |future
]],
},
{
rare=[[Smorgas the Feaster]],
level=50,
spot="Maldraxxus/0 42.46,53.45",
item=181266,
quest=58768,
polish=true,
steps=[[
step
kill Smorgas the Feaster##162528 |confirm |q 58768 |goto Maldraxxus/0 42.46,53.45 |future
]],
},
{
rare=[[Tahonta]],
level=50,
spot="Maldraxxus/0 44.21,51.32",
item=182190,
quest=58783,
polish=true,
steps=[[
step
kill Tahonta##162586 |confirm |q 58783 |goto Maldraxxus/0 44.21,51.32 |future
]],
},
{
rare=[[Taskmaster Xox]],
level=50,
spot="Maldraxxus/0 50.56,20.11",
item=160059,
quest=58091,
polish=true,
steps=[[
step
kill Taskmaster Xox##160059 |confirm |q 58091 |goto Maldraxxus/0 50.56,20.11 |future
]],
},
{
rare=[[Zargox the Reborn]],
level=50,
spot="Maldraxxus/0 28.96,51.38",
item=157125,
quest=62079,
polish=true,
steps=[[
step
kill Zargox the Reborn##157125 |confirm |q 62079 |goto Maldraxxus/0 28.96,51.38 |future
]],
},
{
rare=[[Amalgamation of Light]],
level=50,
spot="Revendreth/0 25.30,48.50",
item=164388,
quest=59584,
polish=true,
steps=[[
step
kill Amalgamation of Light##164388 |confirm |q 59584 |goto Revendreth/0 25.30,48.50 |future
]],
},
{
rare=[[Azgar]],
level=50,
spot="Revendreth/0 35.81,70.52",
item=183731,
quest=59893,
polish=true,
steps=[[
step
kill Azgar##166576 |confirm |q 59893 |goto Revendreth/0 35.81,70.52 |future
]],
},
{
rare=[[Endlurker]],
level=50,
spot="Revendreth/0 66.55,59.46",
item=179927,
quest=59582,
polish=true,
steps=[[
step
kill Endlurker##165206 |confirm |q 59582 |goto Revendreth/0 66.55,59.46 |future
]],
},
{
rare=[[Executioner Aatron]],
level=50,
spot="Revendreth/0 37.07,47.43",
item=180696,
quest=59913,
steps=[[
step
kill Executioner Aatron##166710 |q 59913 |goto Revendreth/0 37.07,47.43 |future
|tip He flies up and down the wall.
|tip Kill the Stone Legion Punishers to engage him.
|tip You can tell how many are left alive by the number of stacks of "Strength in Numbers" he has.
]],
},
{
rare=[[Executioner Adrastia]],
level=50,
spot="Revendreth/0 43.05,51.83",
item=180502,
quest=58441,
polish=true,
steps=[[
step
kill Executioner Adrastia##161310 |confirm |q 58441 |goto Revendreth/0 43.05,51.83 |future
]],
},
{
rare=[[Famu the Infinite]],
level=50,
spot="Revendreth/0 62.48,47.16",
item=180582,
quest=59869,
polish=true,
steps=[[
step
kill Famu the Infinite##166521 |confirm |q 59869 |goto Revendreth/0 62.48,47.16 |future
]],
},
{
rare=[[Grand Arcanist Dimitri]],
level=50,
spot="Revendreth/0 20.48,52.98",
item=167464,
quest=60173,
polish=true,
steps=[[
step
kill Grand Arcanist Dimitri##167464 |confirm |q 60173 |goto Revendreth/0 20.48,52.98 |future
]],
},
{
rare=[[Hopecrusher]],
level=50,
spot="Revendreth/0 51.98,51.79",
item=180581,
quest=59900,
polish=true,
steps=[[
step
kill Hopecrusher##166679 |confirm |q 59900 |goto Revendreth/0 51.98,51.79 |future
]],
},
{
rare=[[Huntmaster Petrus]],
level=50,
spot="Revendreth/0 61.71,79.49",
item=180705,
quest=60022,
polish=true,
steps=[[
step
kill Huntmaster Petrus##166993 |confirm |q 60022 |goto Revendreth/0 61.71,79.49 |future
]],
},
{
rare=[[Innervus]],
level=50,
spot="Revendreth/0 21.80,35.90",
item=183735,
quest=58210,
polish=true,
steps=[[
step
kill Innervus##160640 |confirm |q 58210 |goto Revendreth/0 21.80,35.90 |future
]],
},
{
rare=[[Leeched Soul]],
level=50,
spot="Revendreth/0 67.97,81.79",
item=180585,
quest=59580,
steps=[[
step
Enter the crypt |goto Revendreth/0 67.45,82.33 < 7 |walk
Kill enemies that attack in waves
kill Prideful Hulk##165175 |q 59580 |goto 67.97,81.79 |future
]],
},
{
rare=[[Lord Mortegore]],
level=50,
spot="Revendreth/0 75.97,61.61",
item=180501,
quest=58633,
polish=true,
steps=[[
step
kill Lord Mortegore##161891 |confirm |q 58633 |goto Revendreth/0 75.97,61.61 |future
]],
},
{
rare=[[Scrivener Lenua]],
level=50,
spot="Revendreth/0 38.31,69.14",
item=180587,
quest=58213,
polish=true,
steps=[[
step
kill Scrivener Lenua##160675 |confirm |q 58213 |goto Revendreth/0 38.31,69.14 |future
]],
},
{
rare=[[Sinstone Hoarder]],
level=50,
spot="Revendreth/0 67.44,30.48",
item=180677,
quest=62252,
polish=true,
steps=[[
step
kill Sinstone Hoarder##162481 |confirm |q 62252 |goto Revendreth/0 67.44,30.48 |future
]],
},
{
rare=[[Sire Ladinas]],
level=50,
spot="Revendreth/0 34.04,55.55",
item=180873,
quest=58263,
polish=true,
steps=[[
step
kill Sire Ladinas##160857 |confirm |q 58263 |goto Revendreth/0 34.04,55.55 |future
]],
},
{
rare=[[Soulstalker Doina]],
level=50,
spot="Revendreth/0 78.93,49.75",
item=180692,
quest=58130,
polish=true,
steps=[[
step
Cross the bridge |goto Revendreth/0 77.04,49.72 < 20 |only if walking
Enter the building |goto 78.58,49.72 < 10 |walk
kill Soulstalker Doina##160392 |confirm |q 58130 |goto Revendreth/0 78.93,49.75 |future
|tip Inside the building.
]],
},
{
rare=[[Stonefist]],
level=50,
spot="Revendreth/0 31.31,23.24",
item=180488,
quest=62220,
steps=[[
step
kill Stonefist##159503 |q 62220 |goto Revendreth/0 31.31,23.24 |future
]],
},
{
rare=[[Tollkeeper Varaboss]],
level=50,
spot="Revendreth/0 66.50,70.80",
item=179363,
quest=59595,
polish=true,
steps=[[
step
kill Tollkeeper Varaboss##165253 |confirm |q 59595 |goto Revendreth/0 66.50,70.80 |future
]],
},
{
rare=[[Tomb Burster]],
level=50,
spot="Revendreth/0 43.00,79.10",
item=180584,
quest=56877,
polish=true,
steps=[[
step
kill Tomb Burster##155779 |confirm |q 56877 |goto Revendreth/0 43.00,79.10 |future
]],
},
{
rare=[[Worldedge Gorger]],
level=50,
spot="Revendreth/0 38.60,72.00",
item=180583,
quest=58259,
polish=true,
steps=[[
step
kill Worldedge Gorger##160821 |confirm |q 58259 |goto Revendreth/0 38.60,72.00 |future
]],
},
{
rare=[[Apholeias, Herald of Loss]],
level=50,
spot="The Maw/0 19.32,41.72",
item=182327,
quest=60788,
polish=true,
steps=[[
step
kill Apholeias, Herald of Loss##170301 |confirm |q 60788 |goto The Maw/0 19.32,41.72 |future
]],
},
{
rare=[[Borr-Geth]],
level=50,
spot="The Maw/0 39.01,41.19",
item=157833,
quest=57469,
polish=true,
steps=[[
step
kill Borr-Geth##157833 |confirm |q 57469 |goto The Maw/0 39.01,41.19 |future
]],
},
{
rare=[[Conjured Death]],
level=50,
spot="The Maw/0 27.73,13.05",
item=171317,
quest=61106,
polish=true,
steps=[[
step
kill Conjured Death##171317 |confirm |q 61106 |goto The Maw/0 27.73,13.05 |future
]],
},
{
rare=[[Darithis the Bleak]],
level=50,
spot="The Maw/0 60.96,48.05",
item=160770,
quest=62281,
polish=true,
steps=[[
step
kill Darithis the Bleak##160770 |confirm |q 62281 |goto The Maw/0 60.96,48.05 |future
]],
},
{
rare=[[Darklord Taraxis]],
level=50,
spot="The Maw/0 49.12,81.75",
item=158025,
quest=62282,
polish=true,
steps=[[
step
kill Darklord Taraxis##158025 |confirm |q 62282 |goto The Maw/0 49.12,81.75 |future
]],
},
{
rare=[[Eketra]],
level=50,
spot="The Maw/0 23.76,53.41",
item=170774,
quest=60915,
polish=true,
steps=[[
step
kill Eketra##170774 |confirm |q 60915 |goto The Maw/0 23.76,53.41 |future
]],
},
{
rare=[[Ekphoras, Herald of Grief]],
level=50,
spot="The Maw/0 42.34,21.08",
item=182328,
quest=60666,
polish=true,
steps=[[
step
kill Ekphoras, Herald of Grief##169827 |confirm |q 60666 |goto The Maw/0 42.34,21.08 |future
]],
},
{
rare=[[Eternas the Tormentor]],
level=50,
spot="The Maw/0 27.58,49.66",
item=154330,
quest=57509,
polish=true,
steps=[[
step
kill Eternas the Tormentor##154330 |confirm |q 57509 |goto The Maw/0 27.58,49.66 |future
]],
},
{
rare=[[Exos, Herald of Domination]],
level=50,
spot="The Maw/0 20.58,69.35",
item=170303,
quest=62260,
polish=true,
steps=[[
step
kill Exos, Herald of Domination##170303 |confirm |q 62260 |goto The Maw/0 20.58,69.35 |future
]],
},
{
rare=[[Morguliax]],
level=50,
spot="The Maw/0 16.94,51.02",
item=162849,
quest=60987,
polish=true,
steps=[[
step
kill Morguliax##162849 |confirm |q 60987 |goto The Maw/0 16.94,51.02 |future
]],
},
{
rare=[[Nascent Devourer]],
level=50,
spot="The Maw/0 45.50,73.76",
item=158278,
quest=57573,
polish=true,
steps=[[
step
kill Nascent Devourer##158278 |confirm |q 57573 |goto The Maw/0 45.50,73.76 |future
]],
},
{
rare=[[Obolos <Prime Adjutant>]],
level=50,
spot="The Maw/0 48.80,18.30",
item=164064,
quest=60667,
polish=true,
steps=[[
step
kill Obolos##164064 |confirm |q 60667 |goto The Maw/0 48.80,18.30 |future
]],
},
{
rare=[[Orophea]],
level=50,
spot="The Maw/0 23.69,21.39",
item=181794,
quest=61519,
polish=true,
steps=[[
step
kill Orophea##172577 |confirm |q 61519 |goto The Maw/0 23.69,21.39 |future
]],
},
{
rare=[[Soulforger Rhovus]],
level=50,
spot="The Maw/0 35.97,41.56",
item=166398,
quest=60834,
polish=true,
steps=[[
step
kill Soulforger Rhovus##166398 |confirm |q 60834 |goto The Maw/0 35.97,41.56 |future
]],
},
{
rare=[[Talaporas, Herald of Pain]],
level=50,
spot="The Maw/0 28.70,12.04",
item=182326,
quest=60789,
polish=true,
steps=[[
step
kill Talaporas, Herald of Pain##170302 |confirm |q 60789 |goto The Maw/0 28.70,12.04 |future
]],
},
{
rare=[[Yero the Skittish]],
level=50,
spot="The Maw/0 37.67,65.91",
item=172862,
quest=61568,
polish=true,
steps=[[
step
kill Yero the Skittish##172862 |confirm |q 61568 |goto The Maw/0 37.67,65.91 |future
]],
},
{
rare=[[Agonix]],
level=50,
spot="The Maw/0 23.00,41.60",
item=169102,
quest=61136,
polish=true,
steps=[[
step
kill Agonix##169102 |confirm |q 61136 |goto The Maw/0 23.00,41.60 |future
]],
},
{
rare=[[Akros]],
level=50,
spot="The Maw/0 26.07,54.98",
item=170787,
quest=60920,
polish=true,
steps=[[
step
kill Akros##170787 |confirm |q 60920 |goto The Maw/0 26.07,54.98 |future
]],
},
{
rare=[[Cyrixia]],
level=50,
spot="The Maw/0 28.71,25.13",
item=168693,
quest=61346,
polish=true,
steps=[[
step
kill Cyrixia##168693 |confirm |q 61346 |goto The Maw/0 28.71,25.13 |future
]],
},
{
rare=[[Dartanos]],
level=50,
spot="The Maw/0 25.83,14.79",
item=162452,
quest=59230,
polish=true,
steps=[[
step
kill Dartanos##162452 |confirm |q 59230 |goto The Maw/0 25.83,14.79 |future
]],
},
{
rare=[[Dath Rezara]],
level=50,
spot="The Maw/0 19.20,57.40",
item=162844,
quest=61140,
polish=true,
steps=[[
step
kill Dath Rezara##162844 |confirm |q 61140 |goto The Maw/0 19.20,57.40 |future
]],
},
{
rare=[[Drifting Sorrow]],
level=50,
spot="The Maw/0 34.20,20.00",
item=158314,
quest=59183,
polish=true,
steps=[[
step
kill Drifting Sorrow##158314 |confirm |q 59183 |goto The Maw/0 34.20,20.00 |future
]],
},
{
rare=[[Houndmaster Vasanok]],
level=50,
spot="The Maw/0 60.45,64.78",
item=172523,
quest=62209,
polish=true,
steps=[[
step
kill Houndmaster Vasanok##172523 |confirm |q 62209 |goto The Maw/0 60.45,64.78 |future
]],
},
{
rare=[[Krala <Death's Wings>]],
level=50,
spot="The Maw/0 30.84,68.66",
item=170692,
quest=60903,
polish=true,
steps=[[
step
kill Krala##170692 |confirm |q 60903 |goto The Maw/0 30.84,68.66 |future
]],
},
{
rare=[[Malevolent Stygia]],
level=50,
spot="The Maw/0 27.31,17.54",
item=171316,
quest=61125,
polish=true,
steps=[[
step
kill Malevolent Stygia##171316 |confirm |q 61125 |goto The Maw/0 27.31,17.54 |future
]],
},
{
rare=[[Odalrik]],
level=50,
spot="The Maw/0 43.80,48.00",
item=172207,
quest=62618,
polish=true,
steps=[[
step
kill Odalrik##172207 |confirm |q 62618 |goto The Maw/0 43.80,48.00 |future
]],
},
{
rare=[[Orrholyn]],
level=50,
spot="The Maw/0 25.36,48.75",
item=162845,
quest=60991,
polish=true,
steps=[[
step
kill Orrholyn##162845 |confirm |q 60991 |goto The Maw/0 25.36,48.75 |future
]],
},
{
rare=[[Razkazzar]],
level=50,
spot="The Maw/0 26.17,37.44",
item=162829,
quest=62228,
polish=true,
steps=[[
step
kill Razkazzar##162829 |confirm |q 62228 |goto The Maw/0 26.17,37.44 |future
]],
},
{
rare=[[Sanngror the Torturer]],
level=50,
spot="The Maw/0 55.62,63.18",
item=172521,
quest=62210,
polish=true,
steps=[[
step
kill Sanngror the Torturer##172521 |confirm |q 62210 |goto The Maw/0 55.62,63.18 |future
]],
},
{
rare=[[Skittering Broodmother]],
level=50,
spot="The Maw/0 61.73,77.95",
item=172524,
quest=62211,
polish=true,
steps=[[
step
kill Skittering Broodmother##172524 |confirm |q 62211 |goto The Maw/0 61.73,77.95 |future
]],
},
{
rare=[[Sorath the Sated]],
level=50,
spot="The Maw/0 20.78,29.68",
item=162965,
quest=58918,
polish=true,
steps=[[
step
kill Sorath the Sated##162965 |confirm |q 58918 |goto The Maw/0 20.78,29.68 |future
]],
},
{
rare=[[Soulsmith Yol-Mattar]],
level=50,
spot="The Maw/0 36.25,37.44",
item=165047,
quest=59441,
polish=true,
steps=[[
step
kill Soulsmith Yol-Mattar##165047 |confirm |q 59441 |goto The Maw/0 36.25,37.44 |future
]],
},
{
rare=[[Stygian Incinerator]],
level=50,
spot="The Maw/0 36.84,44.80",
item=156203,
quest=62539,
polish=true,
steps=[[
step
kill Stygian Incinerator##156203 |confirm |q 62539 |goto The Maw/0 36.84,44.80 |future
]],
},
{
rare=[[Valis the Cruel]],
level=50,
spot="The Maw/0 40.70,59.59",
item=173086,
quest=61728,
polish=true,
steps=[[
step
kill Valis the Cruel##173086 |confirm |q 61728 |goto The Maw/0 40.70,59.59 |future
]],
},
}
