ZygorGuidesViewer.GuideMenuTier = "WOD"

-----------------------
-----    CLOTH    -----
-----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Linen Cloth/Wool Cloth",{
	meta={goldtype="route",levelreq={10},itemtype="cloth"},
	items={{2592,450},{2589,628}},
	maps={"Shadowfang Keep","Wetlands","Silverpine Forest"},
	},[[
	step
		Click Here to Farm in Shadowfang Keep |confirm |next "Shadowfang_Keep_1"
		Click Here to Farm in Wetlands |confirm |next
	step
		Kill enemies around this area
		|goldcollect 450 Wool Cloth##2592 |goto Wetlands/0 67.31,47.30
		|goldcollect 628 Linen Cloth##2589 |goto Wetlands/0 67.31,47.30
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_1"
		map Shadowfang Keep/1
		path loop off; follow loose; distance 10
		path	72.2,49.9	62.0,44.8	60.5,57.0	63.7,71.0	56.5,66.6
		path	37.8,39.2	Shadowfang Keep/2 56.3,13.7	44.7,38.2	34.4,74.6
		path	26.8,89.5	Shadowfang Keep/1 21.0,91.1	28.0,61.4	34.7,69.8
		path	24.3,75.2	51.4,83.1	56.6,95.0	59.0,82.7
		Follow the Path |goto Shadowfang Keep/7 59.0,82.7 < 10 |noway |c |next "Shadowfang_Keep_2"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_2"
		map Shadowfang Keep/7
		path loop off; follow loose; distance 10
		path	66.8,88.3	73.6,62.3	46.2,47.6	47.4,32.3	45.9,18.7
		path	43.8,29.0	Shadowfang Keep/3 44.8,62.1	58.7,11.2
		Follow the Path |goto Shadowfang Keep/3 58.7,11.2 < 10 |noway |c |next "Shadowfang_Keep_3"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_3"
		map Shadowfang Keep/3
		path loop off; follow loose; distance 10
		path	62.7,15.1	65.3,35.2	54.9,74.4	47.6,96.2	Shadowfang Keep/4 50.7,68.9
		path	60.9,30.8	38.4,36.9	37.0,64.0
		Follow the Path |goto Shadowfang Keep/4 37.0,64.0 < 10 |noway |c |next "Shadowfang_Keep_4"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_4"
		map Shadowfang Keep/5
		path loop off; follow loose; distance 10
		path	37.9,66.5	48.0,77.5	64.0,61.1	61.0,30.9	35.1,54.7
		Follow the Path |goto Shadowfang Keep/5 35.1,54.7 < 10 |noway |c |next "Shadowfang_Keep_5"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Shadowfang_Keep_5"
		map Shadowfang Keep/6
		path loop off; follow loose; distance 10
		path	49.5,87.3	58.7,53.3	62.8,20.8
		Follow the Path |goto Shadowfang Keep/6 62.8,20.8 < 10 |noway |c |next "Reset_Shadowfang_Keep"
		|tip Kill and loot any mobs you see.
		|goldcollect 450 Wool Cloth##2592 |n
		|goldcollect 628 Linen Cloth##2589 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Reset_Shadowfang_Keep"
		Exit Shadowfang Keep |goto Silverpine Forest/0 44.8,67.8 < 1000 |c |noway
	step
		Reset the dungeon
		|tip Right-click your player unit frame and select "Reset all instances."
		|tip Do this if you wish to continue farming.
		Click Here to Continue Farming |confirm |next "Shadowfang_Keep_1"
		|tip
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Silk Cloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{4306,500},{2592,8,'crap'},{4338,36,'crap'}},
	maps={"Dustwallow Marsh","Eastern Plaguelands"},
	},[[
	step
		Click Here to Farm in Eastern Plaguelands |confirm |next "Eastern_Plaguelands"
		Click Here to Farm in Dustwallow Marsh |confirm |next
	step
		map Dustwallow Marsh/0
		path follow loose; loop on; ants curved
		path	42.0,11.0	42.6,12.8	44.8,16.4	54.6,20.8	55.8,20.6
		path	57.6,20.2	59.0,23.6	58.6,26.2	57.2,30.2	53.4,28.0
		path	52.2,26.0	44.8,17.6	40.8,13.2	40.8,12.2
		Kill enemies around this area
		|goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		|goldcollect 8 Wool Cloth##2592
		|goldcollect 36 Mageweave Cloth##4338
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Eastern_Plaguelands"
		map Eastern Plaguelands/0
		path	follow smart; loop on; ants curved
		path	16.0,78.0	16.9,79.4	19.0,82.0	19.4,77.5	18.6,76.3
		Kill Death's Step enemies around this area
		|goldcollect 500 Silk Cloth##4306
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Runecloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{14047,372},{20404,120,'crap'}},
	maps={"Hellfire Ramparts","Silithus"},
	},[[
	step
		Click Here to Farm in Hellfire Ramparts |confirm |next "Hellfire_Ramparts"
		Click Here to Farm in Silithus |confirm |next
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |condition ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow smart; loop on; ants curved
		path	44.5,38.0	46.5,40.4	44.9,44.7	42.9,41.4	34.2,33.7
		path	31.6,32.1	32.9,30.1	35.2,29.9
		Kill Twilight enemies around this area
		|goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		|goldcollect 120 Encrypted Twilight Text##20404
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Hellfire_Ramparts"
		map Hellfire Ramparts/1
		path follow smart; loop off; ants curved; dist 1
		path	46.9,64.1	45.9,55.0	53.1,48.8	66.6,54.9	76.1,36.6
		path	70.8,32.5	65.4,39.3	65.2,44.4	57.0,50.9	50.6,61.8
		Kill enemies around this area
		|tip Kill and loot any humanoid mobs you see.
		|tip Run out and reset the instance to continue farming.
		|goldcollect 372 Runecloth##14047
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Felcloth",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{14256,12}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Travel to the Past |condition ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
	step
		map Blasted Lands/0
		path follow smart; loop on; ants curved
		path	40.8,66.0	38.8,65.7	35.6,65.6	32.8,64.3	31.0,68.0
		path	34.3,70.7	35.9,70.0	36.6,72.4	32.7,75.0	36.5,75.4
		path	39.8,75.3	40.7,71.0
		Kill Demon enemies around this area
		|goldcollect 12 Felcloth##14256
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Righteous Orb, Mageweave Cloth",{
	meta={goldtype="route",levelreq={20},elitemobs=1,itemtype="cloth"},
	items={{14047,32},{4338,845},{12811,5,'crap'}},
	maps={"Stratholme"},
	},[[
	step
		Kill Risen enemies around this area
		|goldcollect 32 Runecloth##14047 |goto Stratholme/1 33.4,33.0
		|goldcollect 845 Mageweave Cloth##4338 |goto 33.4,33.0
		|meta crap_items_follow=1
		|goldcollect 5 Righteous Orb##12811
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mageweave Cloth",{
	meta={goldtype="route",levelreq={15},elitemobs=1,itemtype="cloth"},
	items={{4338,448}},
	maps={"Tanaris","Badlands"},
	},[[
	step
		Click Here to Farm in Tanaris |confirm |next "Tanaris"
		Click Here to Farm in Badlands |confirm |next
	step
		map Badlands/0
		path follow smart; loop on; ants curved; dist 15
		path	12.3,45.1	14.8,47.2	17.0,47.5	19.0,49.2	20.5,50.0
		path	22.6,48.5	23.2,46.0	21.1,43.9	18.8,45.7	17.1,46.2
		path	15.7,46.2	14.5,45.9	13.2,44.5
		Kill Darkflight enemies around this area
		|goldcollect 448 Mageweave Cloth##4338
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Tanaris"
		Kill Sandfury enemies around this area
		|goldcollect 448 Mageweave Cloth##4338 |goto Tanaris/0 33.8,7.1
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Netherweave Cloth",{
	meta={goldtype="route",levelreq={25},itemtype="cloth"},
	items={{21877,928},{30810,392,'crap'},{29739,24,'crap'},{30809,220,'crap'},{29740,24,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		Click Here to Farm in Legion Hold |confirm |next "Legion_Hold"
		|tip This is also a good location to farm Aldor rep items.
		Click Here to Farm in Eclipse Point |confirm |next
		|tip This is also a good location to farm Scryer rep items.
	step
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
		path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
		path	45.6,66.1	48.0,67.2
		Kill enemies around this area
		|goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		|goldcollect 392 Sunfury Signet##30810 |n
		|goldcollect 24 Arcane Tome##29739 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Legion_Hold"
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	23.9,41.3	22.6,40.1	22.3,38.4	22.1,37.1	20.7,38.0
		path	20.8,36.2	21.8,34.2	22.7,31.2	23.7,31.1	24.9,32.3
		path	26.0,33.3	25.1,34.6	26.2,36.1	25.1,38.1	24.9,39.8
		Kill enemies around this area
		|goldcollect 928 Netherweave Cloth##21877
		|meta crap_items_follow=1
		|goldcollect 220 Mark of Sargeras##30809 |n
		|goldcollect 24 Fel Armament##29740 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frostweave Cloth",{
	meta={goldtype="route",levelreq=25,itemtype="cloth"},
	items={{33470,428}},
	maps={"Icecrown"},
	},[[
	step
		Click Here to Farm in Argent Tournament Grounds |confirm |next "Argent_Tournament_Grounds"
		Click Here to Farm in Corp'Rethar |confirm |next
	step
		kill Chosen Zealot##32175+
		|goldcollect 428 Frostweave Cloth##33470 |goto Icecrown/0 43.3,78.4
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Argent_Tournament_Grounds"
		map Icecrown/0
		path follow smart; loop on; ants curved; dist 20
		path	65.6,22.2	64.6,22.6	63.0,21.6	60.8,23.0	60.8,20.6
		path	61.4,20.0	64.0,21.2	64.6,21.0
		Kill Dark enemies around this area
		|goldcollect 428 Frostweave Cloth##33470
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Embersilk Cloth",{
	meta={goldtype="route",levelreq=30,itemtype="cloth"},
	items={{53010,248}},
	maps={"Tol Barad Peninsula","Deepholm"},
	},[[
	step
		Click Here to Farm in Tol Barad |confirm |next "Tol_Barad"
		Click Here to Farm in Deepholm |confirm |next
	step
		map Deepholm/0
		path follow smart; loop on; ants curved
		path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
		path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
		Kill Verlok enemies around this area
		|tip Above on the platforms.
		|goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Tol_Barad"
		map Tol Barad Peninsula/0
		path follow smart; loop on; ants curved; dist 10
		path	48.0,71.6	47.4,69.8	45.6,67.0	45.6,62.0	44.6,59.4
		path	42.6,59.0	41.8,57.4	38.6,58.2	36.6,59.4	36.0,60.6
		path	37.8,62.6	40.4,62.0	41.6,62.6	44.4,64.8	45.6,68.6
		Kill Restless enemies around this area
		|goldcollect 248 Embersilk Cloth##53010
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Windwool Cloth",{
	meta={goldtype="route",levelreq=25,itemtype="cloth"},
	items={{72988,308}},
	maps={"Townlong Steppes"},
	},[[
	step
		map Townlong Steppes/0
		path follow loose; loop on; ants curved; dist 20
		path	25.8,55.3	23.7,55.5	22.1,56.6	21.0,57.7	20.8,55.9
		path	20.7,54.4	19.8,52.3	18.4,51.0	17.8,50.0	19.1,48.9
		path	19.7,47.8	21.0,50.3	22.3,50.9	23.6,49.9	24.6,52.1
		path	25.8,53.5
		Kill Sra'thik enemies around this area
		|goldcollect 308 Windwool Cloth##72988
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Iceweb Spider Silk",{
	meta={goldtype="route",levelreq={20},itemtype="cloth"},
	items={{42253,84}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved
		path	36.2,57.9	35.8,50.8	35.1,47.9	36.4,47.6	38.2,53.6
		path	38.9,57.8
		kill Trapdoor Crawler##28221+
		|goldcollect 84 Iceweb Spider Silk##42253
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sumptuous Fur",{
	meta={goldtype="route",levelreq={15},itemtype="cloth"},
	items={{111557,364}},
	maps={"Gorgrond"},
	},[[
	step
		map Gorgrond/0
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0	43.2,91.8	42.8,89.4
		path	44.5,90.7	44.6,89.2
		Kill Tailthrasher enemies around this area
		|goldcollect 364 Sumptuous Fur##111557
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

--------------------------
-----    COOKING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Buzzard Meat",{
	meta={goldtype="route",levelreq={15},itemtype="food"},
	items={{27671,176}},
	maps={"Terokkar Forest"},
	},[[
	step
		map Terokkar Forest/0
		path follow loose; loop on; ants curved
		path	33.6,51.6	34.8,56.4	39.6,53.0	45.0,56.6	47.2,62.6
		path	47.4,70.0	49.4,64.4	46.8,53.2	42.8,49.4	39.0,48.8
		kill Bonelasher##18470+
		|goldcollect 176 Buzzard Meat##27671
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Viseclaw Meat, Raw Crab Meat",{
	meta={goldtype="route",levelreq={15},itemtype="food"},
	items={{85506,116},{74838,164},{89112,56,'crap'}},
	maps={"Krasarang Wilds"},
	},[[
	step
		map Krasarang Wilds/0
		path follow smart; loop on; ants curved
		path	52.3,47.5	56.4,49.8	57.4,43.9	60.1,40.7	54.3,44.5
		Kill enemies around this area
		|goldcollect 116 Viseclaw Meat##85506
		|goldcollect 164 Raw Crab Meat##74838
		|meta crap_items_follow=1
		|goldcollect 56 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Zesty Clam Meat, Black Pearl, Iridescent Pearl, Golden Pearl",{
	meta={goldtype="route",levelreq={15},itemtype="misc"},
	items={{7974,324},{7971,4},{5500,8},{13926,4},{14047,552,'crap'}},
	maps={"Blasted Lands"},
	},[[
	step
		talk Zidormi##88206
		Tell her _"Show me the Blasted Lands before the invasion."_
		Travel to the Past |condition ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28
	step
		map Blasted Lands/0
		path follow smart; loop on; ants curved
		path	72.9,61.3	71.3,63.2	70.1,71.3	67.5,75.2	63.2,75.9
		path	60.3,77.9	58.5,76.6	59.0,73.2	60.4,70.0	61.4,63.2
		path	65.7,69.0	68.6,63.2	70.9,60.6
		Kill Bloodwash enemies around this area
		|goldcollect 324 Zesty Clam Meat##7974
		|goldcollect 4 Black Pearl##7971
		|goldcollect 8 Iridescent Pearl##5500
		|goldcollect 4 Golden Pearl##13926
		|meta crap_items_follow=1
		|goldcollect 552 Runecloth##14047
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Small Egg",{
	meta={goldtype="route",levelreq={5},itemtype="food"},
	items={{6889,272}},
	maps={"Westfall"},
	},[[
	step
		kill Greater Fleshripper##154+
		|goldcollect 272 Small Egg##6889 |goto Westfall 26.9,42.5
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Stringy Wolf Meat",{
	meta={goldtype="route",levelreq={1},itemtype="food"},
	items={{2672,404}},
	maps={"Tirisfal Glades"},
	},[[
	step
		talk Zidormi##141488
		Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
		Travel to the Past |condition ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.46,62.80
	step
		map Tirisfal Glades/0
		path follow smart; loop on; ants curved
		path	86.0,39.2	88.2,41.8	88.0,46.2	87.6,47.6	82.8,51.0
		path	81.4,51.6	82.0,48.6	80.6,42.8	83.2,40.8
		kill Ravenous Darkhound##1549+
		|goldcollect 404 Stringy Wolf Meat##2672
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Chunk Of Boar Meat",{
	meta={goldtype="route",levelreq={5},itemtype="food"},
	items={{769,296}},
	maps={"Westfall"},
	},[[
	step
		map Westfall/0
		path follow smart; loop on; ants curved
		path	60.8,36.6	59.2,31.4	53.8,25.6	47.6,30.8	46.8,27.4
		path	46.8,19.2	49.0,16.6	53.0,17.8	55.6,16.2	58.8,13.6
		path	59.8,17.6	63.0,24.6	61.6,27.6	61.0,32.6
		Kill Goretusk enemies around this area
		|goldcollect 296 Chunk of Boar Meat##769
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Tiger Steak",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{74833,220},{89112,20,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	61.8,21.0	63.0,24.0	64.4,27.6	61.2,26.6	60.8,26.0
		path	61.6,23.2
		Kill Windward enemies around this area
		|goldcollect 220 Raw Tiger Steak##74833
		|meta crap_items_follow=1
		|goldcollect 20 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mushan Ribs",{
	meta={goldtype="route",levelreq=30,itemtype="food"},
	items={{74834,132},{89112,16,'crap'}},
	maps={"Dread Wastes"},
	},[[
	step
		map Dread Wastes/0
		path follow smart; loop on; ants curved
		path	48.8,21.4	46.8,20.4	48.4,18.6	49.6,16.6	51.6,14.8
		path	54.0,16.0	51.2,16.8
		kill Frightened Mushan##62760+
		|goldcollect 132 Mushan Ribs##74834
		|meta crap_items_follow=1
		|goldcollect 16 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Turtle Meat",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{74837,176},{89112,20,'crap'}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	65.4,34.2	65.7,28.1	66.8,27.0	69.3,26.4	69.3,30.7
		path	68.4,32.5
		Kill Saltback enemies around this area
		|goldcollect 176 Raw Turtle Meat##74837
		|meta crap_items_follow=1
		|goldcollect 20 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Wildfowl Breast",{
	meta={goldtype="route",levelreq=87,itemtype="food"},
	items={{74839,304},{89112,16,'crap'}},
	maps={"Valley of the Four Winds"},
	},[[
	step
		kill Whitefisher Crane##56752+
		|goldcollect 304 Wildfowl Breast##74839 |goto Valley of the Four Winds/0 25.4,43.8
		|meta crap_items_follow=1
		|goldcollect 16 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Crocolisk Belly",{
	meta={goldtype="route",levelreq=15,itemtype="food"},
	items={{75014,128},{89112,4,'crap'}},
	maps={"Dread Wastes"},
	},[[
	step
		kill Coldbite Crocolisk##62023+
		|goldcollect 128 Raw Crocolisk Belly##75014 |goto Dread Wastes/0 64.7,59.0
		|meta crap_items_follow=1
		|goldcollect 4 Mote of Harmony##89112
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Jaggal Clam Meat, Jaggal Pearl, Shadow Pearl",{
	meta={goldtype="route",levelreq={25},itemtype="food"},
	items={{24477,88},{24479,8},{24478,12}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		Kill Coilskar enemies around this area
		|tip Kill them inside and outside the cave.
		use the Jaggal Clam##24476+
		|goldcollect 88 Jaggal Clam Meat##24477 |goto Shadowmoon Valley/0 52.9,26.1
		|goldcollect 8 Shadow Pearl##24479
		|goldcollect 12 Jaggal Pearl##24478
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Siren's Tear, Northsea Pearl",{
	meta={goldtype="route",levelreq={10},itemtype="gem"},
	items={{36784,4},{36783,8}},
	maps={"Borean Tundra"},
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved
		path	41.5,18.7	41.0,16.1	39.1,15.4	37.3,15.5	38.4,17.0
		path	40.0,19.6
		Kill Winterfin enemies around this area
		|goldcollect 4 Siren's Tear##36784
		|goldcollect 8 Northsea Pearl##36783
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raptor Egg, Raptor Hide, Raptor Flesh, Large Fang",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{3685,284},{4461,108},{12184,248},{5637,8}},
	maps={"Arathi Highlands"},
	},[[
	step
		talk Zidormi##141649
		Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
		Travel to the Past |condition ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09
	step
		map Arathi Highlands/0
		path follow smart; loop on; ants curved
		path	42.8,83.6	40.2,82.2	37.6,75.1	45.4,66.2	48.8,66.8
		path	49.6,67.8	48.6,69.6	42.0,76.2
		kill Highland Fleshstalker##2561+
		|goldcollect 284 Raptor Egg##3685
		|goldcollect 108 Raptor Hide##4461
		|goldcollect 248 Raptor Flesh##12184
		|goldcollect 8 Large Fang##5637
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Boar Meat, Rylak Egg",{
	meta={goldtype="route",levelreq={10},itemtype="food"},
	items={{109136,104},{109133,52},{111557,272,'crap'}},
	maps={"Frostfire Ridge"},
	},[[
	step
		map Frostfire Ridge/0
		path follow smart; loop on; ants curved; dist 20
		path	50.6,55.0	48.2,56.3	47.6,59.6	40.6,63.4	36.7,56.6
		path	41.0,58.6	42.9,57.0	45.6,59.2	47.6,54.0
		Kill enemies around this area
		|goldcollect 104 Raw Boar Meat##109136
		|goldcollect 52 Rylak Egg##109133
		|meta crap_items_follow=1
		|goldcollect 272 Sumptuous Fur##111557
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Talbuk Meat",{
	meta={goldtype="route",levelreq={35},itemtype="food"},
	items={{109132,132},{111557,156,'crap'}},
	maps={"Nagrand D"},
	},[[
	step
		map Nagrand D/0
		path follow smart; loop on; ants curved; dist 30
		path	62.2,37.4	53.8,37.6	59.8,28.4	63.6,20.0	63.6,32.6
		path	69.6,35.2	74.8,40.2	79.8,40.6	83.2,48.4	82.0,54.6
		path	72.8,57.2	66.6,58.0	60.6,50.6	66.6,45.8
		Kill Talbuk enemies around this area
		|goldcollect 132 Raw Talbuk Meat##109132
		|meta crap_items_follow=1
		|goldcollect 156 Sumptuous Fur##111557 |n
		collect 150 Hearty Soup Bone##113578 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Meatgut_Needs_Bones"
		talk Meatgut##82727
		|tip Sell your soup bones before going to the Auctioneer.
		accept Meatgut Needs Bones##35928 |goto 78.34,52.45
		|only if itemcount(113578) >= 20
	step
		Proceedint to Bone turn in |next "Meatgut_Needs_Bones" |only if itemcount(113578) >= 20
		Proceeding to Auctioneer |next |only if default
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Riverbeast Meat",{
	meta={goldtype="route",levelreq={20},itemtype="food"},
	items={{109135,76}},
	maps={"Talador"},
	},[[
	step
		map Talador/0
		path follow smart; loop on; ants curved
		path	67.4,49.2	64.6,46.8	61.8,49.6	64.0,55.2	64.8,61.4
		path	69.6,64.6	68.4,60.0
		Kill Riverbeast enemies around this area
		|goldcollect 76 Raw Riverbeast Meat##109135
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Clefthoof Meat",{
	meta={goldtype="route",levelreq={35},itemtype="food"},
	items={{109131,168},{111557,328,'crap'}},
	maps={"Nagrand D"},
	},[[
	step
		kill Tamed Clefthoof##79034+
		|goldcollect 168 Raw Clefthoof Meat##109131 |goto Nagrand D/0 79.6,72.8
		|meta crap_items_follow=1
		|goldcollect 328 Sumptuous Fur##111557
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

-------------------------------------
-----    ELEMENTAL REAGENTS    ------
-------------------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Frozen Orb, Chaos Orb",{
	meta={goldtype="route",levelreq={10},elitemobs=1,itemtype="gem"},
	items={{43102,1},{52078,1}},
	maps={"Dalaran","Borean Tundra","Deepholm","Tanaris","Vashj'ir","Dragonblight","Twilight Highlands","The Storm Peaks","Zul'Drak","Uldum","Ghostlands","Northern Stranglethorn","Howling Fjord","Grizzly Hills","Burning Steppes","Icecrown"},
	},[[
	step
		|goldcollect 1 Frozen Orb##43102
		|tip Kill the final boss of any Northrend Dungeon.
		|goldtracker
		Click here to continue to Chaos Orbs |confirm
	step
		|goldcollect 1 Chaos Orb##52078
		|tip Kill the final boss of any Cataclysm Dungeon.
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Undeath",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{12808,12},{4338,188,'crap'},{4306,128,'crap'}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path follow smart; loop on; ants curved
		path	48.6,53.4	52.6,52.6	54.4,54.6	53.8,57.6	50.8,57.2
		path	48.6,57.8	46.8,53.8
		Kill Undead enemies around this area
		|tip Enter the buildings and kill the mobs inside as well.
		|goldcollect 12 Essence of Undeath##12808
		|meta crap_items_follow=1
		|goldcollect 188 Mageweave Cloth##4338
		|goldcollect 128 Runecloth##4306
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Ichor Of Undeath",{
	meta={goldtype="route",levelreq={15},elitemobs=1,itemtype="elemental"},
	items={{7972,6},{4338,324,'crap'},{4306,150,'crap'}},
	maps={"Scholomance"},
	},[[
	step
		Kill Undead enemies around this area
		|goldcollect 6 Ichor of Undeath##7972 |goto Scholomance/2 59.6,19.1
		|meta crap_items_follow=1
		|goldcollect 324 Mageweave Cloth##4338
		|goldcollect 150 Silk Cloth##4306
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Fire",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52325,140}},
	maps={"Mount Hyjal"},
	},[[
	step
		map Mount Hyjal/0
		path follow loose; loop on; ants curved
		path	15.9,46.2	18.0,55.5	20.5,59.4	23.3,59.9	24.8,60.5
		path	32.5,63.6	32.6,58.7	34.7,57.0	39.7,53.2	38.1,51.0
		path	35.9,51.7
		Kill enemies around this area
		|goldcollect 140 Volatile Fire##52325
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Water",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52326,88}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands/0
		path follow loose; loop on; ants curved
		path	70.9,50.3	69.8,47.8	67.7,44.7	65.2,41.5	63.1,41.5
		path	63.5,44.1	65.8,46.9	67.1,51.2
		kill Muddied Water Elemental##44011+
		|goldcollect 88 Volatile Water##52326
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Air",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52328,76}},
	maps={"Uldum"},
	},[[
	step
		map Uldum/0
		path follow smart; loop on; ants curved
		path	39.6,36.2	44.4,36.8	42.8,42.2	38.6,47.0	37.0,43.2
		kill Scion of Al'Akir##45755+
		|goldcollect 76 Volatile Air##52328
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Volatile Earth",{
	meta={goldtype="route",levelreq={30},itemtype="elemental"},
	items={{52327,92}},
	maps={"Twilight Highlands"},
	},[[
	step
		map Twilight Highlands/0
		path follow smart; loop on; ants curved
		path	61.4,31.0	60.6,34.6	57.4,33.6	54.8,30.6	55.8,27.4
		path	58.6,28.2	59.6,29.4
		kill Obsidian Stoneslave##47226+
		|goldcollect 92 Volatile Earth##52327
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Air, Crystallized Air",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{37700,180}},
	maps={"Borean Tundra"},
	},[[
	step
		map Borean Tundra/0
		path follow smart; loop on; ants curved
		path	45.4,6.8	46.0,7.4	46.0,10.6	44.4,11.6	42.8,10.6
		path	42.2,9.4	44.4,8.0
		kill Enraged Tempest##25415+
		|goldcollect 180 Crystallized Air##37700
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Earth, Crystallized Earth",{
	meta={goldtype="route",levelreq={20},itemtype="elemental"},
	items={{37701,164}},
	maps={"Sholazar Basin"},
	},[[
	step
		map Sholazar Basin/0
		path follow smart; loop on; ants curved
		path	68.6,54.0	71.2,55.0	73.4,55.0	75.0,56.0	73.6,59.8
		path	71.4,61.2	66.6,63.6	64.8,59.8
		kill Lifeblood Elemental##29124+
		|goldcollect 164 Crystallized Earth##37701
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Fire, Crystallized Fire",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{37702,124}},
	maps={"The Storm Peaks"},
	},[[
	step
		map The Storm Peaks/0
		path follow loose; loop on; ants curved
		path	76.0,63.4	72.3,64.4	68.2,63.4	69.2,58.0	71.0,56.0
		kill Seething Revenant##29504+
		|goldcollect 124 Crystallized Fire##37702
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Life, Crystallized Life",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{37704,164}},
	maps={"Wintergrasp"},
	},[[
	step
		map Wintergrasp/0
		path follow smart; loop on; ants curved
		path	11.6,60.0	13.1,63.7	10.4,64.7	6.3,65.0	5.2,59.0
		path	6.9,57.9
		Kill Lasher enemies around this area
		|goldcollect 164 Crystallized Life##37704
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Shadow, Crystallized Shadow",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{37703,256}},
	maps={"Dragonblight"},
	},[[
	step
		Enter the cave |goto Dragonblight/0 74.3,23.6 < 20
		kill Deathbringer Revenant##27382+
		|goldcollect 256 Crystallized Shadow##37703 |goto 75.0,20.8
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Eternal Water, Crystallized Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{37705,112}},
	maps={"Dragonblight"},
	},[[
	step
		map Dragonblight/0
		path follow smart; loop on; ants curved
		path	68.6,50.8	68.6,52.0	67.8,55.8	66.4,55.0	66.2,53.0
		path	66.6,51.4
		kill Ice Revenant##26283+
		|goldcollect 112 Crystallized Water##37705
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Air",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{22572,36}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley/0
		path follow loose; loop on; ants curved
		path	58.8,59.8	60.8,59.8	63.0,61.0	64.8,61.6	66.0,63.6
		path	62.2,64.2	61.2,67.6	59.6,71.6	57.0,73.6	55.4,72.0
		path	58.2,70.6	59.2,65.4	62.0,61.8
		kill Enraged Air Spirit##21060+
		|goldcollect 36 Mote of Air##22572
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Earth",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22573,64}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	25.3,71.8	27.4,77.0	28.4,81.6	31.8,81.9	36.4,83.4
		path	41.0,84.7	38.1,80.9	30.5,74.9
		kill Shattered Rumbler##17157+
		|goldcollect 64 Mote of Earth##22573
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Fire",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{22574,108}},
	maps={"Hellfire Peninsula"},
	},[[
	step
		map Hellfire Peninsula/0
		path follow loose; loop on; ants curved
		path	57.8,17.8	60.8,18.8	63.6,18.2	66.2,17.6	67.0,17.8
		path	67.8,20.2	65.6,19.8	63.2,20.6	60.6,23.4	57.4,22.8
		path	58.2,19.6
		kill Incandescent Fel Spark##22323+
		|goldcollect 108 Mote of Fire##22574
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Mana",{
	meta={goldtype="route",levelreq={25},itemtype="elemental"},
	items={{22576,168}},
	maps={"Netherstorm"},
	},[[
	step
		map Netherstorm/0
		path follow loose; loop on; ants curved
		path	54.7,88.0	56.8,85.6	57.4,87.1	55.3,89.7	54.5,90.2
		Kill enemies around this area
		|goldcollect 168 Mote of Mana##22576
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Life",{
	meta={goldtype="route",levelreq={10},itemtype="elemental"},
	items={{22575,160}},
	maps={"Zangarmarsh"},
	},[[
	step
		map Zangarmarsh/0
		path follow loose; loop on; ants curved
		path	85.4,38.2	85.1,41.0	83.2,44.1	81.0,43.4	79.3,41.1
		path	78.7,38.3	79.4,33.7	82.0,32.3
		Kill Withered enemies around this area
		|goldcollect 160 Mote of Life##22575
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Shadow",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22577,124},{21877,412,'crap'}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	43.6,69.6	43.2,71.4	41.2,75.0	38.2,79.0	35.6,77.6
		path	31.6,77.4	30.8,74.0	31.2,69.4	29.6,67.6	31.0,65.8
		path	34.0,66.6	36.6,65.4	38.8,62.2	41.6,62.2	42.0,66.6
		kill Voidspawn##17981+
		|goldcollect 124 Mote of Shadow##22577
		|meta crap_items_follow=1
		|goldcollect 412 Netherweave Cloth##21877
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mote Of Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{22578,92}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow loose; loop on; ants curved
		path	44.5,46.5	40.6,46.1	41.6,40.4	43.3,40.4	44.4,42.3
		kill Muck Spawn##17154
		|goldcollect 92 Mote of Water##22578
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Globe Of Water, Essence Of Water, Elemental Water",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7079,24},{7080,16},{7070,40}},
	maps={"Swamp of Sorrows"},
	},[[
	step
		map Swamp of Sorrows/0
		path follow loose; loop on; ants curved
		path	17.2,55.7	16.7,60.5	16.5,66.1	20.0,65.8	21.0,59.3
		path	21.0,55.1
		kill Purespring Elemental##46953+
		|goldcollect 24 Globe of Water##7079
		|goldcollect 16 Essence of Water##7080
		|goldcollect 40 Elemental Water##7070
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Breath Of Wind, Essence Of Air, Elemental Air",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7069,40},{7081,32},{7082,24}},
	maps={"Silithus"},
	},[[
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |condition ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow loose; loop on; ants curved
		path	40.8,14.0	38.6,17.6	35.6,22.8	31.6,26.6	29.6,28.6
		path	28.0,30.8	26.4,29.0	25.2,27.0	26.6,24.4	28.2,18.4
		path	29.6,21.6	34.8,19.0	36.4,15.2	39.6,14.0
		kill Dust Stormer##11744+
		|goldcollect 40 Elemental Air##7069
		|goldcollect 32 Breath of Wind##7081
		|goldcollect 24 Essence of Air##7082
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Core Of Earth, Essence Of Earth, Elemental Earth",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7075,40},{7067,16},{7076,8}},
	maps={"Winterspring"},
	},[[
	step
		map Winterspring/0
		path follow loose; loop on; ants curved
		path	57.8,56.2	60.6,56.6	61.6,58.6	60.4,60.2	58.8,60.0
		path	57.6,58.4
		kill Frostshard Rumbler##48960+
		|goldcollect 40 Core of Earth##7075
		|goldcollect 16 Elemental Earth##7067
		|goldcollect 8 Essence of Earth##7076
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Essence Of Fire, Elemental Fire, Heart of Fire",{
	meta={goldtype="route",levelreq={15},itemtype="elemental"},
	items={{7078,24},{7068,48},{7077,16}},
	maps={"Un'Goro Crater"},
	},[[
	step
		map Un'Goro Crater/0
		path follow loose; loop on; ants curved
		path	54.4,56.2	53.4,51.0	55.1,48.7	54.5,44.0	52.7,42.5
		path	52.2,45.5	49.3,48.4	48.6,43.9	46.3,46.5	45.5,51.3
		path	47.5,53.6	50.2,54.3
		Kill enemies around this area
		|goldcollect 24 Essence of Fire##7078
		|goldcollect 48 Elemental Fire##7068
		|goldcollect 16 Heart of Fire##7077
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

-----------------------------
-----    ENCHANTING    ------
-----------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Strange Dust",{
	meta={goldtype="route",levelreq={5},skillreq={enchanting=1}},
	items={{10940,92},{10938,18,'crap'},{10939,2,'crap'},{10998,1,'crap'},{11082,1,'crap'},{2589,108,'crap'},{2592,60,'crap'}},
	maps={"Northern Barrens"},
	},[[
	step
		Enter the Wailing Caverns |goto Northern Barrens/20 55.0,66.0
		|goldcollect 92 Strange Dust##10940
		|tip Strange Dust can be Disenchanted from Uncommon items with an item level of 1 to 25.
		|tip The Wailing Caverns dungeon offers the best yield of Strange Dust.
		|meta crap_items_follow=1
		|goldcollect 18 Lesser Magic Essence##10938
		|goldcollect 2 Greater Magic Essence##10939
		|goldcollect 1 Lesser Astral Essence##10998
		|goldcollect 1 Greater Astral Essence##11082
		|goldcollect 108 Linen Cloth##2589
		|goldcollect 60 Wool Cloth##2592
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Illusion Dust",{
	meta={goldtype="route",levelreq={15},skillreq={enchanting=1}},
	items={{16204,33},{16202,15,'crap'},{16203,10,'crap'},{14047,630,'crap'}},
	maps={"Burning Steppes"},
	},[[
	step
		Enter Lower Blackrock Spire |goto Burning Steppes/14 80.3,40.7
		|goldcollect 33 Illusion Dust##16204
		|tip Illusion Dust can be Disenchanted from Uncommon items with an item level of 27 to 58.
		|tip The Lower Blackrock Spire dungeon offers the best yield of Illusion Dust.
		|meta crap_items_follow=1
		|goldcollect 15 Lesser Eternal Essence##16202
		|goldcollect 10 Greater Eternal Essence##16203
		|goldcollect 630 Runecloth##14047
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Arcane Dust",{
	meta={goldtype="route",levelreq={25},skillreq={outland_enchanting=1}},
	items={{22445,68},{22447,12,'crap'},{22446,4,'crap'},{21877,1424,'crap'}},
	maps={"Shadowmoon Valley"},
	},[[
	step
		map Shadowmoon Valley/0
		path follow loose; loop on; ants curved
		path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
		path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
		path	45.6,66.1	48.0,67.2
		Kill enemies around this area
		|tip Arcane Dust can be Disenchanted from Uncommon items with an item level of 69 to 80.
		|goldcollect 68 Arcane Dust##22445
		|meta crap_items_follow=1
		|goldcollect 12 Lesser Planar Essence##22447
		|goldcollect 4 Greater Planar Essence##22446
		|goldcollect 1424 Netherweave Cloth##21877
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Infinite Dust",{
	meta={goldtype="route",levelreq={25},skillreq={northrend_enchanting=1}},
	items={{34054,92},{33470,180,'crap'},{34056,6,'crap'},{34055,2,'crap'}},
	maps={"Icecrown"},
	},[[
	step
		kill Mjordin Combatant##30037+
		|tip Infinite Dust can be Disenchanted from Uncommon items with an item level of 80 to 100.
		|goldcollect 92 Infinite Dust##34054 |goto Icecrown/0 37.6,22.8
		|meta crap_items_follow=1
		|goldcollect 180 Frostweave Cloth##33470
		|goldcollect 6 Lesser Cosmic Essence##34056
		|goldcollect 2 Greater Cosmic Essence##34055
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hypnotic Dust",{
	meta={goldtype="route",levelreq={30},skillreq={cataclysm_enchanting=1}},
	items={{52555,27},{52718,6,'crap'},{52719,5,'crap'},{53010,232,'crap'}},
	maps={"Deepholm"},
	},[[
	step
		map Deepholm/0
		path follow loose; loop on; ants curved; dist 20
		path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
		path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
		Kill Verlok enemies around this area
		|tip Hypnotic Dust can be Disenchanted from Uncommon items with an item level of 102 to 108.
		|tip Up on the platforms.
		|goldcollect 27 Hypnotic Dust##52555
		|meta crap_items_follow=1
		|goldcollect 6 Lesser Celestial Essence##52718
		|goldcollect 5 Greater Celestial Essence##52719
		|goldcollect 232 Embersilk Cloth##53010
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Spirit Dust",{
	meta={goldtype="route",levelreq={25},skillreq={pandaria_enchanting=1}},
	items={{74249,126},{72988,308,'crap'},{89112,64,'crap'}},
	maps={"Townlong Steppes"},
	},[[
	step
		map Townlong Steppes/0
		path follow loose; loop on; ants curved; dist 20
		path	25.8,55.3	23.7,55.5	22.1,56.6	21.0,57.7	20.8,55.9
		path	20.7,54.4	19.8,52.3	18.4,51.0	17.8,50.0	19.1,48.9
		path	19.7,47.8	21.0,50.3	22.3,50.9	23.6,49.9	24.6,52.1
		path	25.8,53.5
		Kill Sra'thik enemies around this area
		|tip Spirit Dust can be Disenchanted from Uncommon items with an item level of 108 to 115.
		|goldcollect 126 Spirit Dust##74249
		|meta crap_items_follow=1
		|goldcollect 308 Windwool Cloth##72988
		|goldcollect 64 Mote of Harmony##89112 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Draenic Dust",{
	meta={goldtype="route",levelreq={15},skillreq={draenor_enchanting=1}},
	items={{109693,105},{111557,364}},
	maps={"Gorgrond"},
	},[[
	step
		map Gorgrond/0
		path follow loose; loop on; ants curved; dist 20
		path	46.8,89.8	46.4,91.4	45.3,93.0	43.2,91.8	42.8,89.4
		path	44.5,90.7	44.6,89.2
		Kill Tailthrasher enemies around this area
		|tip Draenic Dust can be Disenchanted from Uncommon items with an item level of 116 to 136.
		|goldcollect 105 Draenic Dust##109693
		|goldcollect 364 Sumptuous Fur##111557 |n
		|meta crap_items_follow=1
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

------------------------------
-----    INSCRIPTION    ------
------------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tigerseye, Malachite",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq=5},
	items={{2770,1},{2835,1},{774,96},{818,72},{1210,76}},
	maps={"Durotar","Darkshore"},
	},[[
	step
		Click Here to Farm in Durotar |confirm |next "Durotar"
		Click Here to Farm in Darkshore |confirm |next
	step
		talk Zidormi##141489
		Ask her _"Can you show me what Darkshore was like before the battle?"_
		Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46
	step
		map Darkshore/0
		path follow smart; loop on; ants curved; dist 20
		path	56.3,17.4	59.4,9.3	65.6,4.4	63.3,16.2	60.2,25.3
		path	54.4,33.6	50.6,27.7	48.9,38.7	47.3,50.9	45.5,59.2
		path	46.2,71.4	46.6,79.1	40.0,86.4	35.3,88.9	32.5,83.5
		path	36.8,72.4	40.1,59.0	39.7,44.8	37.9,32.4	42.7,31.9
		path	44.6,20.0	54.7,20.7
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Copper Ore##2770 |n
		|goldcollect Rough Stone##2835 |n
		|goldcollect 96 Malachite##774
		|goldcollect 72 Tigerseye##818
		|goldcollect 76 Shadowgem##1210 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Durotar"
		map Durotar/0
		path follow smart; loop on; ants curved; dist 20
		path	55.1,10.2	53.8,18.5	56.3,24.6	52.7,29.3	54.0,39.8
		path	58.7,41.5	59.5,54.3	55.7,56.0	56.1,69.4	50.8,74.2
		path	52.3,66.7	49.8,49.2	39.4,51.8	37.9,30.4	39.6,17.6
		path	42.8,19.7	44.6,24.6	48.0,36.6	49.6,32.1	50.5,27.3
		path	50.0,22.6	49.8,16.8
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Copper Ore##2770 |n
		|goldcollect Rough Stone##2835 |n
		|goldcollect 80 Malachite##774
		|goldcollect 56 Tigerseye##818
		|goldcollect 36 Shadowgem##1210 |n
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shadowgem, Moss Agate, Lesser Moonstone, Jade",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq=10},
	items={{2771,1},{2836,1},{1210,36},{1206,28},{1705,48},{1529,4},{3864,4},{7909,4},{2775,40}},
	maps={"Northern Stranglethorn","Ashenvale"},
	},[[
	step
		Click Here to Farm in Northern Stranglethorn |confirm |next "Northern_Stranglethorn"
		Click Here to Farm in Ashenvale |confirm |next
	step
		map Ashenvale/0
		path follow loose; loop on; ants curved
		path	41.8,40.3	41.6,32.5	31.3,38.3	33.7,21.5	24.9,30.0
		path	26.0,18.0	15.0,14.1	17.3,28.2	20.9,42.2	20.9,55.5
		path	29.7,50.8	33.7,69.8	42.3,62.6	45.3,71.6	59.6,77.8
		path	56.5,64.8	67.0,69.1	76.7,73.7	87.5,79.7	79.5,47.1
		path	66.0,56.5	61.9,42.6	54.3,36.7	50.9,54.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Tin Ore##2771 |n
		|goldcollect Coarse Stone##2836 |n
		|goldcollect 36 Shadowgem##1210
		|goldcollect 28 Moss Agate##1206
		|goldcollect 48 Lesser Moonstone##1705
		|goldcollect 4 Jade##1529
		|goldcollect 4 Citrine##3864
		|goldcollect 4 Aquamarine##7909
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Northern_Stranglethorn"
		map Northern Stranglethorn/0
		path follow loose; loop on; ants curved
		path	40.4,45.0	36.3,44.1	34.0,38.8	31.1,34.1	27.0,31.8
		path	21.4,25.2	21.8,18.7	26.6,21.9	31.1,22.4	34.6,20.9
		path	33.8,17.2	38.5,17.9	46.3,19.1	52.5,20.5	58.6,16.8
		path	63.5,17.5	63.2,22.1	60.3,24.3	57.2,28.2	60.8,34.6
		path	66.1,40.9	62.9,47.1	56.2,50.4	48.0,55.2	44.3,55.5
		path	48.7,47.2	47.7,39.2	50.2,28.6	44.6,28.2	42.9,34.7
		path	41.4,41.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 40 Silver Ore##2775
		|goldcollect Tin Ore##2771 |n
		|goldcollect Coarse Stone##2836 |n
		|goldcollect 40 Shadowgem##1210
		|goldcollect 36 Moss Agate##1206
		|goldcollect 60 Lesser Moonstone##1705
		|goldcollect 4 Jade##1529
		|goldcollect 4 Citrine##3864
		|goldcollect 4 Aquamarine##7909
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Citrine, Aquamarine",{
	meta={goldtype="route",skillreq={mining=1,jewelcrafting=1},levelreq={15}},
	items={{7911,52},{3858,1},{2776,1},{7912,1},{7909,84},{3864,64},{7910,72},{12361,12},{12799,8}},
	maps={"Burning Steppes","Badlands"},
	},[[
	step
		Click Here to Farm in Badlands |confirm |next "Badlands"
		Click Here to Farm in Burning Steppes |confirm |next
	step
		map Burning Steppes/0
		path follow loose; loop on; ants curved
		path	31.3,59.8	21.5,62.0	15.6,62.1	7.8,56.4	9.3,45.8
		path	21.6,47.0	31.2,43.6	39.2,33.4	46.4,28.1	52.8,29.0
		path	50.3,44.6	59.2,38.8	59.9,27.5	68.2,25.2	74.6,27.1
		path	81.6,30.4	71.2,36.0	65.5,42.1	66.9,49.5	72.2,50.1
		path	73.7,43.5	80.1,41.0	81.7,54.6	81.6,62.6	76.2,58.4
		path	72.6,67.5	68.6,61.9	61.5,60.5	56.2,49.0	51.5,60.0
		path	44.2,65.5	37.5,60.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 52 Truesilver Ore##7911
		|goldcollect Mithril Ore##3858 |n
		|goldcollect Gold Ore##2776 |n
		|goldcollect Solid Stone##7912 |n
		|goldcollect 84 Aquamarine##7909
		|goldcollect 64 Citrine##3864
		|goldcollect 72 Star Ruby##7910
		|goldcollect 12 Blue Sapphire##12361
		|goldcollect 8 Large Opal##12799
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Badlands"
		map Badlands/0
		path follow smart; loop on; ants curved
		path	70.2,28.8	72.0,25.6	73.5,31.0	72.6,38.1	73.7,43.2
		path	75.0,48.5	69.5,53.7	66.5,57.2	62.5,46.5	59.0,42.5
		path	56.5,47.2	57.5,59.8	50.1,65.3	44.6,57.2	41.2,66.6
		path	32.7,62.6	26.3,63.6	14.0,69.9	13.6,77.3	11.4,78.5
		path	12.7,58.2	11.7,49.4	10.7,38.7	15.2,35.9	25.0,38.6
		path	35.9,32.2	45.0,24.5	50.0,12.2	52.8,21.8	59.8,29.7
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 36 Truesilver Ore##7911
		|goldcollect Mithril Ore##3858 |n
		|goldcollect Gold Ore##2776 |n
		|goldcollect Solid Stone##7912 |n
		|goldcollect 56 Aquamarine##7909
		|goldcollect 48 Citrine##3864
		|goldcollect 52 Star Ruby##7910
		|goldcollect 8 Blue Sapphire##12361
		|goldcollect 4 Large Opal##12799
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Huge Emerald, Large Opal, Azerothian Diamond, Blue Sapphire, Star Ruby",{
	meta={goldtype="route",skillreq={jewelcrafting=1,mining=1},levelreq={15}},
	items={{7911,28},{10620,1},{12365,1},{12363,16},{12800,24},{7910,24},{12364,32},{12799,60},{12361,56},{7909,8},{3864,4}},
	maps={"Winterspring","Silithus"},
	},[[
	step
		Click Here to Farm in Winterspring |confirm |next "Winterspring"
		Click Here to Farm in Silithus |confirm |next
	step
		talk Zidormi##128607
		|tip She is at the top of the ramp leading from Un'Goro Crater to Silithus.
		Ask her _"Can you show me what Silithus was like before the Wound in the World?"_
		Travel to the Past |condition ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97
	step
		map Silithus/0
		path follow loose; loop on; ants curved
		path	47.9,18.4	58.6,11.1	67.5,15.4	68.7,23.6	71.9,28.5
		path	72.5,39.5	66.7,44.7	62.3,35.4	53.4,45.0	66.9,54.1
		path	67.3,63.0	68.9,71.5	66.3,83.0	56.4,83.0	48.5,79.1
		path	40.5,80.9	24.5,78.8	28.3,68.0	34.0,65.1	25.6,57.1
		path	27.8,43.5	27.2,32.6	28.5,16.2	28.8,10.2	35.0,12.0
		path	35.5,24.0	43.9,15.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 28 Truesilver Ore##7911
		|goldcollect Thorium Ore##10620 |n
		|goldcollect Dense Stone##12365 |n
		|goldcollect 16 Arcane Crystal##12363
		|goldcollect 24 Azerothian Diamond##12800
		|goldcollect 24 Star Ruby##7910
		|goldcollect 32 Huge Emerald##12364
		|goldcollect 60 Large Opal##12799
		|goldcollect 56 Blue Sapphire##12361
		|goldcollect 8 Aquamarine##7909
		|goldcollect 4 Citrine##3864
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Winterspring"
		map Winterspring
		path follow smart; loop on; ants curved
		path	58.1,44.2	60.1,36.2	59.6,28.5	58.8,19.8	54.5,21.2
		path	49.9,18.3	44.9,14.0	46.0,24.6	48.3,37.1	49.8,44.5
		path	42.0,48.3	33.5,47.2	29.1,52.2	23.5,46.1	22.3,62.4
		path	28.0,58.4	37.1,58.4	45.3,57.4	48.9,60.7	53.7,63.6
		path	55.6,74.4	56.6,80.1	62.6,80.9	63.2,72.1	67.5,62.3
		path	60.5,61.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 56 Truesilver Ore##7911
		|goldcollect Thorium Ore##10620 |n
		|goldcollect Dense Stone##12365 |n
		|goldcollect 20 Arcane Crystal##12363
		|goldcollect 28 Azerothian Diamond##12800
		|goldcollect 24 Star Ruby##7910
		|goldcollect 40 Huge Emerald##12364
		|goldcollect 64 Large Opal##12799
		|goldcollect 68 Blue Sapphire##12361
		|goldcollect 8 Aquamarine##7909
		|goldcollect 4 Citrine##3864
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Golden Draenite, Azure Moonstone, Blood Garnet, Deep Peridot, Flame Spessarite, Shadow Draenite",{
	meta={goldtype="route",skillreq={outland_jewelcrafting=1,outland_mining=1},levelreq={10}},
	items={{23427,16},{23424,1},{23425,1},{22573,1},{22574,1},{23112,12},{23077,4},{23079,8},{23117,28},{21929,16},{23107,12}},
	maps={"Zangarmarsh","Hellfire Peninsula"},
	},[[
	step
		Click Here to Farm in Hellfire Peninsula |confirm |next "Hellfire_Peninsula"
		Click Here to Farm in Zangarmarsh |confirm |next
	step
		map Zangarmarsh/0
		path follow loose; loop on; ants curved
		path	49.5,66.9	58.8,70.5	66.6,74.9	69.1,87.0	72.2,87.3
		path	74.8,91.8	86.3,90.7	85.7,79.0	82.2,69.5	81.8,62.0
		path	83.5,58.9	87.4,55.7	87.0,46.2	88.5,36.9	86.3,27.8
		path	77.6,29.5	72.1,32.7	70.2,36.5	63.9,33.1	54.7,32.8
		path	46.2,29.5	41.0,30.2	34.6,14.8	31.5,20.9	20.7,16.6
		path	20.2,8.9	20.8,4.0	16.5,5.8	16.2,14.7	14.8,30.6
		path	10.0,44.8	7.1,49.8	10.5,63.9	15.9,64.4	17.6,70.0
		path	25.5,69.1	27.7,60.2	36.8,67.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 16 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Adamantite Ore##23425 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574
		|goldcollect 12 Golden Draenite##23112
		|goldcollect 4 Blood Garnet##23077
		|goldcollect 8 Deep Peridot##23079
		|goldcollect 28 Azure Moonstone##23117
		|goldcollect 16 Flame Spessarite##21929
		|goldcollect 12 Shadow Draenite##23107
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Hellfire_Peninsula"
		map Hellfire Peninsula/0
		path follow smart; loop on; ants curved; dist 20
		path	69.3,47.5	74.5,38.7	68.2,37.7	62.0,31.0	58.0,32.8
		path	54.0,26.7	46.0,29.3	34.1,29.1	32.0,34.5	38.5,38.2
		path	35.7,40.7	33.4,49.8	30.3,48.6	32.5,43.3	28.5,39.3
		path	26.5,45.5	22.6,45.1	18.0,38.3	12.5,36.1	17.9,46.3
		path	11.8,41.9	12.0,47.0	06.2,49.5	15.4,62.4	20.3,52.9
		path	24.0,61.1	21.2,62.7	28.1,80.8	27.7,69.5	30.5,72.8
		path	30.3,59.9	34.8,66.6	37.7,53.3	46.9,46.3	49.3,49.5
		path	60.3,48.6	60.8,52.8	52.1,52.7	47.2,57.7	45.9,75.5
		path	33.5,89.6	33.1,92.6	49.1,77.5	44.6,86.2	55.5,82.8
		path	58.7,78.8	56.5,72.3	65.8,63.6	67.1,71.7	63.0,73.3
		path	65.8,77.9	68.7,77.6	71.0,71.7	70.1,68.6	65.0,59.8
		path	65.6,56.0	75.0,63.9	78.4,80.2	80.7,77.5	77.3,63.7
		path	72.7,60.2	71.5,53.1	68.3,52.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 16 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574
		|goldcollect 8 Golden Draenite##23112
		|goldcollect 12 Blood Garnet##23077
		|goldcollect 4 Deep Peridot##23079
		|goldcollect 32 Azure Moonstone##23117
		|goldcollect 12 Flame Spessarite##21929
		|goldcollect 20 Shadow Draenite##23107
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Adamantite Powder, Living Ruby, Talasite, Nightseye, Star Of Elune, Dawnstone, Noble Topaz",{
	meta={goldtype="route",skillreq={outland_jewelcrafting=1,outland_mining=1},levelreq={15}},
	items={{23426,12},{23427,64},{23424,1},{23425,1},{22573,1},{22574,1},{24243,88},{23436,8},{23441,4},{23437,4},{23438,12},{23440,12},{23439,4}},
	maps={"Nagrand"},
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 20
		path	44.5,66.0	43.5,78.5	38.5,83.3	31.9,81.9	27.8,76.5
		path	28.3,71.7	25.2,61.1	32.2,60.3	34.1,44.3	24.3,48.5
		path	18.2,39.3	10.5,43.7	7.1,39.9	17.7,31.7	25.6,39.5
		path 	26.8,23.6	25.7,16.5	38.8,37.0	39.1,27.5	42.8,19.5
		path	49.3,24.1	57.0,24.5	60.5,31.6	67.5,35.5	73.5,44.8
		path	66.1,51.9	76.3,62.2	69.8,72.5	70.1,83.3	63.0,73.1
		path	59.8,62.0	56.0,54.7	48.0,57.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect 12 Khorium Ore##23426
		|goldcollect 64 Eternium Ore##23427
		|goldcollect Fel Iron Ore##23424 |n
		|goldcollect Adamantite Ore##23425 |n
		|goldcollect Mote of Earth##22573 |n
		|goldcollect Mote of Fire##22574 |n
		|goldcollect 88 Adamantite Powder##24243
		|goldcollect 8 Living Ruby##23436
		|goldcollect 4 Nightseye##23441
		|goldcollect 4 Talasite##23437
		|goldcollect 12 Star of Elune##23438
		|goldcollect 12 Dawnstone##23440
		|goldcollect 4 Noble Topaz##23439
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Huge Citrine, Shadow Crystal, Chalcedony, Bloodstone, Sun Crystal, Dark Jade",{
	meta={goldtype="route",skillreq={northrend_jewelcrafting=1,northrend_mining=1},levelreq={20}},
	items={{36909,1},{36912,1},{37701,28},{37705,32},{36929,12},{36926,4},{36923,12},{36917,8},{36920,8},{36932,24}},
	maps={"Zul'Drak"},
	},[[
	step
		map Zul'Drak/0
		path follow smart; loop on; ants curved; dist 20
		path	31.2,76.2	20.0,76.5	11.6,78.1	14.0,68.3	23.7,69.5
		path	25.2,63.2	16.1,57.6	20.9,47.5	24.3,54.8	36.0,62.4
		path	34.3,55.0	35.7,46.2	31.9,39.2	41.5,41.6	44.0,51.6
		path	47.6,40.1	54.0,33.0	53.5,50.5	69.2,32.7	70.7,24.6
		path	78.9,22.5	78.5,41.9	75.0,50.9	69.9,49.1	61.5,58.8
		path	78.8,70.6	74.1,73.9	60.1,84.3	55.1,72.5	49.1,66.9
		path	44.5,75.4	45.0,84.9	37.2,84.2
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Cobalt Ore##36909 |n
		|goldcollect Saronite Ore##36912 |n
		|goldcollect 28 Crystallized Earth##37701
		|goldcollect 32 Crystallized Water##37705
		|goldcollect 12 Huge Citrine##36929
		|goldcollect 4 Shadow Crystal##36926
		|goldcollect 12 Chalcedony##36923
		|goldcollect 8 Bloodstone##36917
		|goldcollect 8 Sun Crystal##36920
		|goldcollect 24 Dark Jade##36932
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Hessonite, Alicite, Carnelian, Nightstone, Jasper, Zephyrite",{
	meta={goldtype="route",skillreq={cataclysm_jewelcrafting=1,cataclysm_mining=1},levelreq={30}},
	items={{53038,1},{52327,12},{52181,8},{52179,4},{52177,12},{52180,16},{52182,4},{52178,8},{52185,1},{52326,4}},
	maps={"Deepholm ","Mount Hyjal"},
	},[[
	step
		Click Here to Farm in Deepholm |confirm |next "Deepholm"
		Click Here to Farm in Mount Hyjal |confirm |next
	step
		map Mount Hyjal/0
		path follow loose; loop on; ants curved
		path	57.8,14.5	50.5,17.0	44.9,25.5	40.5,33.6	33.5,23.7
		path	27.8,38.6	13.9,34.8	15.5,52.5	25.4,60.7	36.0,51.0
		path	38.5,61.6	32.9,66.0	31.5,82.3	36.6,95.5	51.5,80.5
		path	60.6,82.5	56.7,66.5	50.5,56.5	59.7,56.3	72.7,65.0
		path	84.3,64.9	85.9,48.5	76.8,57.5	67.5,50.6	65.5,32.5
		path	65.7,18.5
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Obsidium Ore##53038 |n
		|goldcollect 12 Volatile Earth##52327
		|goldcollect 8 Hessonite##52181
		|goldcollect 4 Alicite##52179
		|goldcollect 12 Carnelian##52177
		|goldcollect 16 Nightstone##52180
		|goldcollect 4 Jasper##52182
		|goldcollect 8 Zephyrite##52178
		|goldtracker
		Click Here to Sell Items |confirm |next "Sell_Items"
	step
	label "Deepholm"
		map Deepholm/0
		path follow loose; loop on; ants curved
		path	54.7,53.6	57.9,40.5	59.8,31.5	62.5,23.7	64.3,17.1
		path	68.1,27.5	65.2,36.1	69.7,35.3	77.1,37.2	78.6,49.8
		path	63.3,46.1	61.0,56.3	64.6,61.6	69.9,55.6	74.7,60.7
		path	75.3,68.4	65.6,65.0	61.3,72.4	70.9,71.8	67.7,79.6
		path	62.0,85.5	53.2,75.1	53.3,85.7	47.9,89.8	37.5,87.4
		path	30.1,81.5	33.1,74.6	25.2,73.1	20.8,62.0	19.6,49.1
		path	24.5,38.3	26.0,28.8	31.3,27.8	28.9,20.5	36.6,14.8
		path	46.5,10.5	44.1,23.2	50.0,20.1	47.7,32.9	39.9,38.9
		path	34.6,32.5	30.2,44.6	29.7,57.4	34.4,64.3	37.8,54.7
		path	43.5,67.4	36.5,69.2	40.6,74.9	42.4,80.8	47.1,71.5
		path	48.7,68.8	47.7,62.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Obsidium Ore##53038 |n
		|goldcollect Elementium Ore##52185 |n
		|goldcollect 16 Volatile Earth##52327
		|goldcollect 4 Volatile Water##52326
		|goldcollect 8 Hessonite##52181
		|goldcollect 4 Alicite##52179
		|goldcollect 12 Carnelian##52177
		|goldcollect 24 Nightstone##52180
		|goldcollect 8 Jasper##52182
		|goldcollect 12 Zephyrite##52178
		|goldtracker
		Click Here to Sell Items |confirm
	step
	label "Sell_Items"
		#include "auctioneer"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Alexandrite, Sparkling Shard, Pandarian Garnet, Roguestone, Sunstone, Lapis Lazuli, Tiger Opal, Imperial Amethyst, Primordial Ruby, River's Heart, Wild Jade, Sun's Raidance, Vermilion Onyx",{
	meta={goldtype="route",skillreq={pandaria_mining=1,pandaria_jewelcrafting=1},levelreq={10}},
	items={{72092,1},{90407,160},{76137,32},{76136,36},{76135,36},{76134,40},{76133,32},{76130,32},{76141,4},{76131,8},{76138,4},{76139,4},{76142,8},{76140,12}},
	maps={"The Jade Forest"},
	},[[
	step
		map The Jade Forest/0
		path follow smart; loop on; ants curved
		path	29.3,8.5	34.9,17.8	38.5,8.0	56.3,29.3	51.3,51.7
		path	69.1,85.8	54.0,81.0	44.9,94.5	38.9,62.7	33.6,42.5
		path	42.8,39.8	25.0,26.0
		Use the Prospecting ability |cast Prospecting##31252
		|tip Use it on the Ore in your bags.
		|goldcollect Ghost Iron Ore##72092 |n
		|goldcollect 160 Sparkling Shard##90407
		|goldcollect 32 Alexandrite##76137
		|goldcollect 36 Pandarian Garnet##76136
		|goldcollect 36 Roguestone##76135
		|goldcollect 40 Sunstone##76134
		|goldcollect 32 Lapis Lazuli##76133
		|goldcollect 32 Tiger Opal##76130
		|goldcollect 4 Imperial Amethyst##76141
		|goldcollect 8 Primordial Ruby##76131
		|goldcollect 4 River's Heart##76138
		|goldcollect 4 Wild Jade##76139
		|goldcollect 8 Sun's Radiance##76142
		|goldcollect 12 Vermilion Onyx##76140
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
]])