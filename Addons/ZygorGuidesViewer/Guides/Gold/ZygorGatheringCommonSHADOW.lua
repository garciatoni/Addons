ZGV.Gold.guides_loaded=true
--@@ONLYDEVSTART
ZGV.DevEnd()
--@@ONLYDEVEND

ZygorGuidesViewer.GuideMenuTier = "SHA"

-----------------------
-----    CLOTH    -----
-----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lightless Silk",{
	meta={goldtype="route",levelreq=50},
	items={{173204,10}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		kill Seed Harvester##166327+
		goldcollect 10 Lightless Silk##173204 |n |goto Ardenweald/0 44.25,24.28
		|tip These are a rare drop.
		You can find more around [43.95,21.57]
		And inside the cave at [42.39,23.81]
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
		Click Here to Farm Lightless Silk |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shrouded Cloth",{
	meta={goldtype="route",levelreq=50},
	items={{173202,60}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		kill Seed Harvester##166327+
		goldcollect Shrouded Cloth##173202 |n |goto Ardenweald/0 44.25,24.28
		You can find more around [43.95,21.57]
		And inside the cave at [42.39,23.81]
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
		Click Here to Farm Shrouded Cloth |confirm |next "Start"
]])

----------------------
-----  COOKING  ------
----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aethereal Meat",{
	meta={goldtype="route",levelreq=50},
	items={{172052,100}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		kill Starving Shadowstalker##168620+
		goldcollect Aethereal Meat##172052 |n |goto Ardenweald/0 65.51,29.60
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
		Click Here to Farm Aethereal Meat |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Phantasmal Haunch",{
	meta={goldtype="route",levelreq=50},
	items={{172055,24}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		Kill Gorm enemies around this area
		goldcollect Phantasmal Haunch##172055 |n |goto Ardenweald/0 51.69,75.67
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
		Click Here to Farm Phantasmal Haunch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Raw Seraphic Wing",{
	meta={goldtype="route",levelreq=50},
	items={{172054,60}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		Kill Etherwyrm enemies around this area
		goldcollect Raw Seraphic Wing##172054 |n |goto Bastion/0 52.87,79.59
		You can find more around [55.30,75.94]
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
		Click Here to Farm Raw Seraphic Wing |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Shadowy Shank",{
	meta={goldtype="route",levelreq=50},
	items={{179315,20}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		kill Gorm Ravener##158364+
		goldcollect Shadowy Shank##179315 |n |goto Ardenweald/0 45.29,24.48
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
		Click Here to Farm Shadowy Shank |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Tenebrous Ribs",{
	meta={goldtype="route",levelreq=50},
	items={{172053,60}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		Kill Bloodtusk enemies around this area
		goldcollect Tenebrous Ribs##172053 |n |goto Maldraxxus/0 57.29,47.25
		You can find more around [53.60,38.50]
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
		Click Here to Farm Tenebrous Ribs |confirm |next "Start"
]])

----------------------
-----    FISH    -----
----------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Iridescent Amberjack",{
	meta={goldtype="route",levelreq=50},
	items={{173033,80}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Iridescent Amberjack Bait##173039
		|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Iridescent Amberjacks.
		goldcollect Iridescent Amberjack##173033 |n |goto Ardenweald/0 49.36,52.98
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
		Click Here to Farm Iridescent Amberjack |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Lost Sole",{
	meta={goldtype="route",levelreq=50},
	items={{173032,80}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Lost Sole Bait##173038
		|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Lost Soles.
		goldcollect Lost Sole##173032 |n |goto Ardenweald/0 49.36,52.98
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
		Click Here to Farm Lost Sole |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Pocked Bonefish",{
	meta={goldtype="route",levelreq=50},
	items={{173035,120}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Pocked Bonefish Bait##173041
		|tip These have a chance to drop while fishing in Maldraxxus, use them to increase the chance of catching Pocked Bonefish.
		goldcollect Pocked Bonefish##173035 |n |goto Maldraxxus/0 49.57,54.10
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
		Click Here to Farm Pocked Bonefish |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Silvergill Pike",{
	meta={goldtype="route",levelreq=50},
	items={{173035,96}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Silvergill Pike Bait##173040
		|tip These have a chance to drop while fishing in Bastion, use them to increase the chance of catching Silvergill Pikes.
		goldcollect Silvergill Pike##173034 |n |goto Bastion/0 49.29,64.34
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
		Click Here to Farm Silvergill Pike |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Spinefin Piranha",{
	meta={goldtype="route",levelreq=50},
	items={{173036,96}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Spinefin Piranha Bait##173042
		|tip These have a chance to drop while fishing in Revendreth, use them to increase the chance of catching Spinefin Piranhas.
		goldcollect Spinefin Piranha##173036 |n |goto Revendreth/0 51.31,63.83
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
		Click Here to Farm Spinefin Piranha |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Elysian Thade",{
	meta={goldtype="route",levelreq=50},
	items={{173037,12}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
		cast Fishing##131474
		use Elysian Thade Bait##173043
		|tip These have a chance to drop while fishing in Ardenweald, use them to increase the chance of catching Elysian Thades.
		goldcollect Elysian Thade##173037 |n |goto Ardenweald/0 49.36,52.98
		|tip These are a rare drop.
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
		Click Here to Farm Elysian Thade |confirm |next "Start"
]])

---------------------------
-----    HERBALISM    -----
---------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Death Blossom",{
	meta={goldtype="route",levelreq=50},
	items={{169701,64}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
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
		goldcollect Death Blossom##169701 |n
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
		Click Here to Farm Death Blossom |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Marrowroot",{
	meta={goldtype="route",levelreq=50},
	items={{168589,180}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
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
		goldcollect Marrowroot##168589 |n
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
		Click Here to Farm Marrowroot |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Vigil's Torch",{
	meta={goldtype="route",levelreq=50},
	items={{170554,120}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
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
		goldcollect Vigil's Torch##170554 |n
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
		Click Here to Farm Vigil's Torch |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rising Glory",{
	meta={goldtype="route",levelreq=50},
	items={{168586,200}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
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
		goldcollect Rising Glory##168586 |n
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
		Click Here to Farm Rising Glory |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Widowbloom",{
	meta={goldtype="route",levelreq=50},
	items={{168583,88}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
		map Revendreth/0
		path follow smart; loop on; ants straight; dist 30
		path	35.96,65.36	32.33,63.19	31.56,53.20	30.03,50.01	26.27,45.39
		path	24.73,40.97	24.32,37.40	25.11,37.08	27.24,31.61	28.40,28.22
		path	31.10,28.21	34.63,28.97	35.21,35.65	35.21,41.74	35.05,46.17
		path	34.11,50.17	36.16,53.68	37.73,55.06	39.05,58.27	40.24,61.57
		click Widowbloom##336433+
		|tip Track them on your minimap with "Find Herbs".
		goldcollect Widowbloom##168583 |n
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
		Click Here to Farm Widowbloom |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Nightshade",{
	meta={goldtype="route",levelreq=50},
	items={{171315,20}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
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
		|tip These are a rare spawn.
		goldcollect Nightshade##171315 |n
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
		Click Here to Farm Nightshade |confirm |next "Start"
]])

------------------------
-----    MINING    -----
------------------------

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Elethium Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171833,16}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
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
		goldcollect Elethium Ore##171833 |n
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
		Click Here to Farm Elethium Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Laestrite Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171828,210}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
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
		goldcollect Laestrite Ore##171828 |n
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
		Click Here to Farm Laestrite Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Oxxein Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171830,120}},
	maps={"Maldraxxus"},
	},[[
	step
	label "Start"
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
		goldcollect Oxxein Ore##171830 |n
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
		Click Here to Farm Oxxein Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Phaedrum Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171831,160}},
	maps={"Ardenweald"},
	},[[
	step
	label "Start"
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
		goldcollect Phaedrum Ore##171831 |n
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
		Click Here to Farm Phaedrum Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Sinvyr Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171832,120}},
	maps={"Revendreth"},
	},[[
	step
	label "Start"
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
		goldcollect Sinvyr Ore##171832 |n
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
		Click Here to Farm Sinvyr Ore |confirm |next "Start"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Solenium Ore",{
	meta={goldtype="route",levelreq=50},
	items={{171829,112}},
	maps={"Bastion"},
	},[[
	step
	label "Start"
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
		goldcollect Solenium Ore##171829 |n
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
		Click Here to Farm Solenium Ore |confirm |next "Start"
]])

--------------
-- SKINNING --
--------------


