ZGV.Gold.guides_loaded=true

ZygorGuidesViewer.GuideMenuTier = "BFA"

-----------------------
-----    CLOTH    -----
-----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Deep Sea Satin",{
	meta={goldtype="route",levelreq=35},
	items={{152577,10}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area
		|tip Only humanoid mobs drop cloth.
		|tip These are a rare drop.
		goldcollect 10 Deep Sea Satin##152577 |n
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Deep Sea Satin |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tidespray Linen",{
	meta={goldtype="route",levelreq=35},
	items={{152576,220}},
	maps={"Vol'dun"},
	},[[
	step
	label "Start"
		map Vol'dun/0
		path follow smart; loop on; ants curved; dist 20
		path	51.94,29.15	52.47,28.79	52.63,27.89	52.53,26.28	51.49,26.15
		path	51.07,26.49	50.33,26.19	49.64,25.26	49.10,25.05	48.79,26.35
		path	49.21,27.05	49.95,27.53	50.61,28.29
		Kill enemies around this area
		|tip Only humanoid mobs drop cloth.
		goldcollect 220 Tidespray Linen##152576 |n
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Tidespray Linen |confirm |next "Start"
]])

--------------------------
-----    COOKING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Briny Flesh",{
	meta={goldtype="route",levelreq=10},
	items={{152631,120}},
	maps={"Tiragarde Sound"},
	},[[
	step
	label "Start"
		kill Venomous Coilscale##130232
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 120 Briny Flesh##152631 |n |goto Tiragarde Sound/0 58.39,32.61
		You can find more around [57.18,33.28]
		goldtracker
		Click here to continue farming |confirm |next "Farming_Path_Two"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Farming_Path_Two"
		kill Razorjaw Chomper##123083
		map Nazmir/0
		path follow smart; loop off; ants curved; dist 20
		path	55.99,77.68	55.59,76.57	56.96,76.63	57.99,75.50	61.75,71.02
		path	63.96,67.56	65.65,60.20
		goldcollect 120 Briny Flesh##152631 |n
		goldtracker
		Click here to continue farming |confirm |next "Start"
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm |next "Sell"
	step
	label "Sell"
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Briny Flesh |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Meaty Haunch",{
	meta={goldtype="route",levelreq=10},
	items={{154898,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		Kill enemies around this area
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 200 Meaty Haunch##154898 |n |goto Zuldazar/0 69.82,26.34
		You can find more around [70.34,23.77]
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Meaty Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Stringy Loins",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=25},
	items={{154897,160}},
	maps={"Drustvar"},
	},[[
	step
	label "Start"
		kill Shallows Saurolisk##125452
		|tip You will need the "Skinning" skill in order to gather these.
		goldcollect 160 Stringy Loins##154897 |n |goto Drustvar/0 68.37,40.53
		You can find more around [65.33,40.57]
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Stringy Loins |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Thick Paleo Steak",{
	meta={goldtype="route",levelreq=10},
	items={{154899,200}},
	maps={"Zuldazar"},
	},[[
	step
	label "Start"
		kill Venomous Diemetradon##123098+
		|tip If you have the "Skinning" skill, you can gather extra meat.
		goldcollect 200 Thick Paleo Steak##154899 |n |goto Zuldazar/0 68.15,25.53
		goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		talk Auctioneer Fitch##8719 |goto Stormwind City/0 61.12,70.62 |n |only Alliance
		talk Auctioneer Drezmit##44866 |goto Orgrimmar/1 54.08,73.36 |n |only Horde
		|tip List the items you want to sell on the Auction House.
		|tip
		_Want to Farm More?_
		Click Here to Farm Thick Paleo Steak |confirm |next "Start"
]])

--------------------------
-----    FISHING    ------
--------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Mauve Stinger",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=50,itemtype="food"},
	items={{168646,164},{168302,96}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Mauve_Stinger"
		cast Fishing##131474
		|tip You will catch Viper Fish as well as Mauve Stinger.
		|goldcollect 164 Mauve Stinger##168646 |n |goto Nazjatar/0 72.86,24.71
		|goldcollect 96 Viper Fish##168302 |n |goto 72.86,24.71
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Mauve_Stinger"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Viper Fish",{
	meta={goldtype="route",skillreq={fishing=1},levelreq=50,itemtype="food"},
	items={{168302,96},{168646,164}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Viper_Fish"
		cast Fishing##131474
		|tip You will catch Mauve Stinger as well as Viper Fish.
		|goldcollect 96 Viper Fish##168302 |n |goto Nazjatar/0 72.86,24.71
		|goldcollect 164 Mauve Stinger##168646 |n |goto 72.86,24.71
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Viper_Fish"
]])

----------------------------
-----    HERBALISM    ------
----------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Zin'anthid",{
	meta={goldtype="route",skillreq={herbalism=1},levelreq=50,itemtype="herb"},
	items={{168487,172}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Zin'anthid"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.39,49.58	61.06,45.00	62.27,43.98	63.79,45.02	65.59,44.96
		path	68.40,43.76	70.65,43.43	71.77,43.85	73.39,45.10	75.78,45.87
		path	77.60,45.99	78.45,43.36	79.40,42.50	80.38,40.48	81.28,38.00
		path	83.32,37.55	84.99,37.21	85.06,35.40	83.82,34.11	82.49,34.33
		path	80.19,34.48	79.04,33.97	77.98,31.77	75.92,30.67	74.81,27.65
		path	74.02,27.17	73.13,30.50	71.67,37.02	70.78,37.48	69.55,37.27
		path	68.95,35.58	69.38,31.81	69.79,29.10	66.20,29.74	67.20,27.05
		path	67.75,24.98	66.11,20.90	65.62,17.59	65.00,14.73	63.75,16.57
		path	62.60,18.17	62.11,21.89	62.28,26.89	62.12,28.42	58.93,30.01
		path	60.52,33.30	59.83,38.93	59.26,44.77	56.89,49.64	58.31,50.90
		path	55.98,52.57	57.64,54.84	59.17,56.89	59.89,58.74	62.72,58.70
		path	63.73,54.64	62.29,52.13
		click Zin'anthid##326598+
		|tip Track them on your minimap with "Find Herbs".
		|goldcollect 172 Zin'anthid##168487 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Zin'anthid"
]])

-------------------------
-----    MINING    ------
-------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Osmenite Ore",{
	meta={goldtype="route",skillreq={mining=1},levelreq=50,itemtype="ore"},
	items={{168185,260}},
	maps={"Nazjatar"},
	},[[
	step
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	28.83,39.87	31.51,43.22	29.32,45.41	29.55,47.18	31.92,48.81
		path	33.70,48.29	34.82,47.79	37.36,47.10	37.81,45.15	36.82,42.03
		path	36.63,38.28	35.96,34.45	35.69,33.11	37.23,33.20	37.60,35.48
		path	37.92,38.06	39.01,40.23	38.83,41.72	39.71,43.92	41.15,45.25
		path	42.13,43.71	42.23,39.91	43.01,38.07	44.32,37.34	44.75,34.35
		path	45.00,31.47	44.62,28.04	45.72,26.65	44.26,22.47	43.50,19.61
		path	41.56,13.40	40.57,12.20	39.30,14.85	39.56,17.37	39.51,21.66
		path	38.09,22.88	39.11,25.13	36.66,30.97	34.90,32.15	34.79,29.16
		path	33.41,28.70	31.62,30.47	30.07,30.61	29.06,31.10	27.79,29.29
		path	25.92,30.83	26.63,32.10	27.99,33.03	28.34,35.43
		click Osmenite Deposit##325875+
		click Rich Osmenite Deposit##325873+
		click Osmenite Seam##325874+
		|tip Track them on your minimap with "Find Minerals".
		|tip Enter caves along the path for additional nodes.
		|goldcollect 260 Osmenite Ore##168185 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Zin'anthid"
]])

---------------------------
-----    SKINNING    ------
---------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Dredged Leather",{
	meta={goldtype="route",skillreq={skinning=1},levelreq=50,itemtype="leather"},
	items={{168649,348},{168303,224}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Dredged_Leather"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
		path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
		path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
		Kill enemies around this area
		|tip Make sure you loot them so you can skin them after.
		|goldcollect 348 Dredged Leather##168649 |n
		|goldcollect 224 Rubbery Flank##168303 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Dredged_Leather"
]])

----------------------------
-----    TAILORING    ------
----------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Gilded Seaweave",{
	meta={goldtype="route",levelreq=50,itemtype="cloth"},
	items={{167738,76}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Gilded_Seaweave"
		Kill Shirakess enemies around this area
		|tip Only humanoid mobs drop cloth.
		|tip These are a rare drop.
		|goldcollect 76 Gilded Seaweave##167738 |goto Nazjatar/0 60.45,58.06 |n
		|goldtracker
		Click Here to Sell Items |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Items |confirm |next "Farm_Gilded_Seaweave"
]])