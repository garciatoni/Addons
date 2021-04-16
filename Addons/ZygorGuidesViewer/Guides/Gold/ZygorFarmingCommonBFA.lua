ZygorGuidesViewer.GuideMenuTier = "BFA"

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Aberrant Voidfin",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174328,156}},
	maps={"Vale of Eternal Blossoms New"},
	},[[
	step
		Return to the Present |condition not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 
	step
	label "Farm_Aberrant_Voidfin"
		cast Fishing##131474
		|goldcollect 156 Aberrant Voidfin##174328 |n |goto 72.64,58.11
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Aberrant_Voidfin"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Malformed Gnasher",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174327,174}},
	maps={"Uldum New"},
	},[[
	step
		Return to the Present |condition not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14
	step
	label "Farm_Malformed_Gnasher"
		cast Fishing##131474
		|goldcollect 174 Malformed Gnasher##174327 |n |goto 82.96,58.25
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Malformed_Gnasher"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Moist Fillet",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{168645,264}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Moist_Fillet"
		kill Deeptide Frenzy##144647+
		|tip In the lake and inside the underwater cave.
		|tip Surface for air inside the cave and outside.
		|goldcollect 264 Moist Fillet##168645 |goto Nazjatar/0 46.43,84.11 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Moist_Fillet"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Rubbery Flank",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{168303,132}},
	maps={"Nazjatar"},
	},[[
	step
	label "Farm_Rubbery_Flank"
		map Nazjatar/0
		path follow smart; loop on; ants curved; dist 30
		path	62.96,50.71	66.11,47.80	69.29,49.53	68.62,52.14	70.82,54.52
		path	72.14,51.63	71.10,48.28	69.29,46.42	66.92,46.06	65.14,44.42
		path	63.47,45.03	62.50,43.95	61.42,44.30	61.26,46.34
		Kill enemies around this area
		|tip Kill Turtles and Snapdragons.
		|goldcollect 132 Rubbery Flank##168303 |n
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Rubbery_Flank"
]])

ZygorGuidesViewer:RegisterGuide("GOLD\\Farming\\Questionable Meat",{
	meta={goldtype="route",levelreq={50},itemtype="food"},
	items={{174353,268}},
	maps={"Vale of Eternal Blossoms New"},
	},[[
	step
		Return to the Present |condition not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 
	step
	label "Farm_Questionable_Meat"
		kill Thundermaw##156778+
		|goldcollect 268 Questionable Meat##174353 |n |goto 25.12,75.08
		|goldtracker
		|tip
		_Ready to Sell?_
		Click Here to Sell Your Items on the Auction House |confirm
	step
		#include "auctioneer"
		|tip
		Click Here After Selling Your Items |confirm |next "Farm_Questionable_Meat"
]])