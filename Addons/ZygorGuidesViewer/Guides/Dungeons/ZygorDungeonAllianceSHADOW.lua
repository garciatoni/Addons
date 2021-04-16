local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DungeonASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Halls of Atonement",{
mapid=1663,
achieveid={14370},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Halkias","Echelon","High","Adjudicator","Aleez","Lord","Chamberlain"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHalkias\n"..
"Echelon\nHigh Adjudicator Aleez\nLord Chamberlain",
},[[
step
kill Halkias##165408 |goto Halls of Atonement/0 52.79,53.23
|tip Kill the 3 Shards of Halkias to spawn it.
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in beams created by "Refracted Sinlight," which can change directions randomly. |grouprole EVERYONE
|tip Do not stand in "Glass Shards" on the ground left behind after a "Crumbling Slam." |grouprole EVERYONE
|tip Spread out at least 6 yards to avoid multiple people being hit by "Heave Debris." |grouprole EVERYONE
|tip Periodically, "Sinlight Visions" will fear a random group member. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing within 6 yards of the "Crumbling Slam" impact zone. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing within 6 yards of the "Crumbling Slam" impact zone. |grouprole HEALER
|tip Dispel "Sinlight Visions" as quickly as possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Halkias frequently to avoid large clumps of "Glass Shards." |grouprole TANK
Click Here to Continue |confirm
step
kill Echelon##156827 |goto 26.51,54.23
_EVERYONE:_ |grouprole EVERYONE
|tip Attempting to open the door will spawn the boss. |grouprole EVERYONE
|tip Avoid standing in toxic red "Blood Torrent" pools. |grouprole EVERYONE
|tip "Stone Call" will summon Undying Stonefiends. |grouprole EVERYONE
|tip Cursed players should move quickly to the petrified Undying Stonefiends so Echelon will destroy them with "Stone Shattering Leap." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Undying Stonefiends one at a time to avoid excess damage when they explode upon petrifying. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Undying Stonefiends explode upon petrifying and will require heavy party healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Group Undying Stonefiends together and stagger damage, petrifying them one at a time. |grouprole TANK
Click Here to Continue |confirm
step
kill High Adjudicator Aleez##165410 |goto Halls of Atonement/1 21.15,50.14
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt "Volley of Power" whenever possible. |grouprole EVERYONE
|tip If you become fixated, bring the add to one of the red vessels to despawn it. |grouprole EVERYONE
|tip Stay 8 yards away from the add when it is fixating someone to avoid damage from "Pulse from Beyond." |grouprole EVERYONE
|tip Avoid standing in red swirling "Anima Fountain" patches. |grouprole EVERYONE
Click Here to Continue |confirm
step
kill Lord Chamberlain##164218 |goto Halls of Atonement/2 14.24,48.61
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing on the "Telekinetic Toss" area of ground indicated by a red arrow. |grouprole EVERYONE
|tip Avoid the frontal cone area from "Unleashed Suffering" casts. |grouprole EVERYONE
|tip Dodge the 4 statues that move inward and outward during "Chamberlain's Chorus." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The tank will require extra healing for 18 seconds following the application of "Stigma of Pride." |grouprole HEALER
|tip The damage of "Stigma of Pride" increases as the duration decreases. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Intercept "Ritual of Woe" during the "Chamberlain's Chorus" by standing between the red glowing statue and the boss. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Halls of Atonement" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Mists of Tirna Scithe",{
mapid=1669,
achieveid={14371},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Ingra","Maloch","Mistcaller","Tred'ova"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nIngra Maloch\nMistcaller"..
"\nTred'ova",
},[[
step
kill Ingra Maloch##164567 |goto Mists of Tirna Scithe/0 75.44,18.89
_EVERYONE:_ |grouprole EVERYONE
|tip Adds should always be prioritized over the boss. |grouprole EVERYONE
|tip Avoid standing in the "Bewildering Pollen" frontal cone cast by the adds. |grouprole EVERYONE
|tip Interrupt "Tears of the Forest" as soon as the channeling begins. |grouprole EVERYONE
|tip Avoid standing in blue swirling patches on the ground during "Tears of the Forest." |grouprole EVERYONE
|tip Avoid attacking Maloch while buffed with "Embrace Darkness." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Spirit Bolt," but not at the expense of allowing "Tears of the Forest" to channel. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Party members attacking during "Embrace Darkness" will have their damage reflected and require extra healing. |grouprole HEALER
Click Here to Continue |confirm
step
kill Mistcaller##170217 |goto 47.37,48.78
_EVERYONE:_ |grouprole EVERYONE
|tip During "Guessing Game," kill the clone who's symbol stands out from the others'. |grouprole EVERYONE
|tip If three are flowers, kill the leaf or vice versa. |grouprole EVERYONE
|tip Kill the leaf if the other three are flowers or vice versa. |grouprole EVERYONE
|tip If three symbols are solid, kill the one that is hollow or vice versa. |grouprole EVERYONE
|tip Avoid standing in the "Dodge Ball" frontal cone attack. |grouprole EVERYONE
|tip Avoid the blue fox add by running away from it and snaring or stunning it for 14 seconds. |grouprole EVERYONE
|tip Stay at least 8 yards away from someone vixated by the fox in case it reaches them. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Patty Cake" only if you are Mistcaller's current target. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Interrupt "Patty Cake" at all times. |grouprole TANK
Click Here to Continue |confirm
step
kill Tred'ova##164517 |goto 15.11,74.45
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in green and blue swirling patches on the ground. |grouprole EVERYONE
|tip Run away from the person you are "Mind Linked" with until the purple beam breaks. |grouprole EVERYONE
|tip Kill adds quickly. |grouprole EVERYONE
|tip Run away when fixated by "Mark the Prey." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Consumption" whenever possible. |grouprole DAMAGE
|tip Burn through the "Gorging Shield" to remove the interrupt immunity. |grouprole DAMAGE
_TANK:_ |grouprole TANK
|tip Pick up adds quickly so the party can burn them down. |grouprole TANK
|tip Interrupt "Consumption" whenever possible. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Mists of Tirna Scithe" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\The Necrotic Wake",{
mapid=1666,
achieveid={14366},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Amarth","Reanimator","Surgeon","Stitchflesh","Nalthor","Rimebinder"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nBlightbone\nAmarth, The Reanimator"..
"\nSurgeon Stitchflesh\nNalthor the Rimebinder",
},[[
step
kill Blightbone##166880 |goto The Necrotic Wake/0 56.74,39.52
_EVERYONE:_ |grouprole EVERYONE
|tip Make sure you clear enough trash to provide a large encounter area. |grouprole EVERYONE
|tip Run away from Carrion Worms if you are fixated. |grouprole EVERYONE
|tip CC and quickly kill Carrion Worms before they can explode. |grouprole EVERYONE
|tip Avoid standing in green "Fetid Gas" pools. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of "Heaving Retch" unless you are targeted. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of "Heaving Retch" unless you are targeted. |grouprole HEALER
|tip "Crunch" will inflict heavy damage on the tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Avoid standing in front of "Heaving Retch." |grouprole TANK
|tip Move Blightbone as needed to avoid green "Fetid Gas" pools. |grouprole TANK
|tip "Crunch" will inflict heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Amarth##163157 |goto 20.47,40.53
_EVERYONE:_ |grouprole EVERYONE
|tip Interrupt "Necrotic Bolt" whenever possible. |grouprole EVERYONE
|tip Avoid the "Necrotic Breath" cast in a frontal cone. |grouprole EVERYONE
|tip If possible, remove the "Unholy Frenzy" enrage effect. |grouprole EVERYONE
|tip Avoid standing close to dead adds during "Land of the Dead." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing in front of the boss. |grouprole DAMAGE
|tip Burn down the skeletal adds summoned during "Land of the Dead." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing in front of the boss. |grouprole HEALER
|tip "Final Harvest" will cause living and dead adds to explode, potentially causing heavy AoE damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up the skeletal adds summoned during "Land of the Dead." |grouprole TANK
Click Here to Continue |confirm
step
kill Surgeon Stitchflesh##166882 |goto The Necrotic Wake/1 50.87,35.58
_EVERYONE:_ |grouprole EVERYONE
|tip Stack up near Stitchflesh's Creation. |grouprole EVERYONE
|tip Avoid standing in green swirling "Embalming Ichor" patches on the ground. |grouprole EVERYONE
|tip If you are targeted by "Meat Hook," aim it towards the boss and move at the end of the cast so the boss is pulled down. |grouprole EVERYONE
|tip A new creation will spawn when Surgeon Stitchflesh returns to the platform |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus initial DPS on Stitchflesh's Creation. |grouprole DAMAGE
|tip Focus DPS on the boss each time it is pulled off the platform by "Meat Hook." |grouprole DAMAGE
|tip Alternate DPS this way until the encounter is finished. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The tank will take heavy damage from "Mutilate." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull Stitchflesh's Creation close to the platform. |grouprole TANK
|tip Move the add around the edge of the platform as needed. |grouprole TANK
|tip Pick up the new add quickly when Surgeon Stitchflesh returns to the platform |grouprole TANK
|tip "Mutilate" will cause heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Nalthor the Rimebinder##166945 |goto The Necrotic Wake/2 51.03,43.66
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out and move out of the circle created around the rooted party member. |grouprole EVERYONE
|tip Avoid standing in blue swirling areas during "Comet Storm." |grouprole EVERYONE
|tip If you are banished, run to the end of the platform while avoiding circles and blue swirling areas. |grouprole EVERYONE
|tip Interrupt and kill the Zolramus Siphoner at the end to rejoin the party. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel "Frozen Binds" when everyone else is out of the circle. |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed "The Necrotic Wake" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Plaguefall",{
mapid=1674,
achieveid={14369},
patch='90001',
condition_suggested=function() return level >= 50 and level <= 60 end,
keywords={"Shadowlands","Globgrog","Doctor","Ickus","Domina","Venomblade","Margrave","Stradama"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nGlobgrog\nDoctor Ickus"..
"\nDomina Venomblade\nMargrave Stradama",
},[[
step
kill Globgrog##164255 |goto Plaguefall/1 50.26,21.38
_EVERYONE:_ |grouprole EVERYONE
|tip Remain in close proximity to Globgrog so "Slime Wave" is easier to avoid. |grouprole EVERYONE
|tip Avoid the "Slime Wave" frontal cone attack. |grouprole EVERYONE
|tip Position yourself so "Plaguestomp" doesn't knock you off the platform. |grouprole EVERYONE
|tip CC slimes to prevent them from reaching the boss. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Burn down slimes quickly to prevent them from reaching the boss. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Plaguestomp" will deal damage to the entire party and apply the "Debilitating Plague" disease. |grouprole HEALER
|tip Remove "Debilitating Plague" often if possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Pull the boss to one side of the platform. |grouprole TANK
Click Here to Continue |confirm
step
kill Doctor Ickus##164967 |goto 61.82,44.09
_EVERYONE:_ |grouprole EVERYONE
|tip Ickus jumps around a lot, so care must be taken not to pull him while clearing trash. |grouprole EVERYONE
|tip Avoid standing in the area targeted by Ickus' "Slime Lunge" ability. |grouprole EVERYONE
|tip Chase Ickus when he jumps to another platform. |grouprole EVERYONE
|tip Interrupt "Viral Globs" casts from red Pestilence Slimes. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill the Erupting Ooze(s) that spawns after "Slime Injection" is removed. |grouprole DAMAGE
|tip Quickly focus and kill the Plague Bomb that spawns when Ickus jumps before it can explode. |grouprole DAMAGE
|tip Focus and kill any red Pestilence Slimes that spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Slime Injection" on cooldown. |grouprole HEALER
|tip Any red Pestilence Slimes near Ickus will grant him 25% haste.
_TANK:_ |grouprole TANK
|tip Any red Pestilence Slimes near Ickus will grant him 25% haste.
Click Here to Continue |confirm
step
kill Domina Venomblade##164266 |goto 55.45,75.48
_EVERYONE:_ |grouprole EVERYONE
|tip If targeted with a purple circle, run away from party members quickly. |grouprole EVERYONE
|tip When webs spawn around the room, each party member should move to the center of a unique web to spawn the Brood Assassins. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus and kill Brood Assassins quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel the "Cytotoxic Slash" poison from the tank if possible. |grouprole HEALER
|tip "Assassinate" deals heavy damage to afflicted party members. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Quickly pick up Brood Assassins that spawn from webs. |grouprole TANK
|tip "Cytotoxic Slash" will increase incoming damage significantly. |grouprole TANK
Click Here to Continue |confirm
step
kill Margrave Stradama##164267 |goto Plaguefall/0 52.41,78.50
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in front of randomly spawning tentacles during "Plague Crash." |grouprole EVERYONE
|tip Avoid coming into contact with the green pool in the center of the room. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus and kill Malignant Spawns quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip The party will taking increasing amounts of damage from "Infectious Rain" the longer the fight lasts. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Soak green "Touch of Slime" circles on the ground cast by Malignant Spawns. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Plaguefall" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\De Other Side",{
mapid=1680,
achieveid={14373},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Hakkar","Soulflayer","Manastorm","Dealer","Xy'exa","Mueh'zala"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nHakkar the Soulflayer\nThe Manastorms"..
"\nDealer Xy'exa\nMueh'zala",
},[[
step
Click Here to Kill Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Kill the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Kill Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
step
label "Kill_Hakkar_the_Soulflayer"
kill Hakkar the Soulflayer##166473 |goto De Other Side/2 25.33,48.47
_EVERYONE:_ |grouprole EVERYONE
|tip Stay clear of other players if you are afflicted by a red "Corrupted Blood" circle. |grouprole EVERYONE
|tip If fixated by the Son of Hakkar, run away. |grouprole EVERYONE
|tip Avoid standing in red pools left by dead Sons of Hakkar. |grouprole EVERYONE
|tip Dead Sons of Hakkar will respawn eventually, in addition to new ones spawning. |grouprole EVERYONE
|tip When Hakkar is at full energy, interrupt "Blood Barrage" only after "Blood Barrier" has expired. |grouprole EVERYONE
|tip When Hakkar reaches full energy, avoid red swirling areas on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus DPS on the Son of Hakkar that occasionally spawns. |grouprole DAMAGE
|tip When Hakkar is at full energy, burn through "Blood Barrier" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Piercing Barb" will inflict heavy damage on the tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Piercing Barb" will inflict heavy damage. |grouprole TANK
Click Here to Proceed to the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Proceed to Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_the_Manastorms"
kill Millificent Manastorm##101976 |goto De Other Side/0 48.37,66.92
kill Millhouse Manastorm##164556
_EVERYONE:_ |grouprole EVERYONE
|tip The encounter begins against Millhouse. |grouprole EVERYONE
|tip Interrupt "Frostbolt" whenever possible. |grouprole EVERYONE
|tip Intercepting the purple beams from crystals will deal stacking damage, but also give a stacking damage buff. |grouprole EVERYONE
|tip Every 30 seconds the bosses will switch positions. |grouprole EVERYONE
|tip When fighting Millificent, disarm Elementium Squirrel Bombs by right-clicking them before the timer expires. |grouprole EVERYONE
|tip Manastorms are defeated at 10% health. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Thorium Rocket Chickens quickly when they are not buffed with "Thorium Plating." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players soaking beams may need additional healing. |grouprole HEALER
Click Here to Proceed to Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Proceed to Dealer Xy'exa |confirm |next "Kill_Dealer_Xy'exa"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_Dealer_Xy'exa"
kill Dealer Xy'exa##164450 |goto De Other Side/1 83.38,57.87
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid stepping in white swirling "Displacement Traps." |grouprole EVERYONE
|tip Move quickly to avoid being struck by white beams. |grouprole EVERYONE
|tip If you get an "Explosive Contrivance" timer above your head, step into a "Displacement Trap" near the end of the timer. |grouprole EVERYONE
|tip If Xy'exa gets an "Explosive Contrivance" timer above her head, everyone should step into a "Displacement Trap" near the end of the timer. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
_TANK:_ |grouprole TANK
Click Here to Proceed to Hakkar the Soulflayer |confirm |next "Kill_Hakkar_the_Soulflayer"
Click Here to Proceed to the Manastorms |confirm |next "Kill_the_Manastorms"
Click Here to Proceed to Mueh'zala |confirm |next "Kill_Mueh'zala"
step
label "Kill_Mueh'zala"
kill Mueh'zala##169769 |goto De Other Side/3 50.73,57.68
_EVERYONE:_ |grouprole EVERYONE
|tip Assign a couple of DPS to go left when you have to split up. EVERYONE
|tip Avoid standing in purple "Cosmic Collapse" circles on the ground. EVERYONE
|tip During "Master of Death," pay attention to the boss' arms and dodge left, right, or backwards three times. EVERYONE
|tip During "Shatter Reality," split up and run into the portals on your assigned side. EVERYONE
|tip Only one party member can enter each portal. EVERYONE
|tip Kill the add inside the portals while avoid purple circles. EVERYONE
|tip When the add dies, click the totem. EVERYONE
|tip For each totem clicked, Bwonsamdi will remove 20% of Mueh'zala's health. EVERYONE
_HEALER:_ |grouprole HEALER
|tip Dispel one of the "Cosmic Artifice" magic debuffs and let the other one run its course. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Always stay in melee range when the boss is not casting "Master of Death" or "Shatter Reality." |grouprole TANK
|tip Using damage mitigating abilities during "Soulcrusher" will reduced further damage from "Crushed Soul." |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed "De Other Side" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Sanguine Depths",{
mapid=1675,
achieveid={14197},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Kryxis","Voracious","Executor","Tarvold","Grand","Proctor","Beryllia","General","Kaal"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nKryxis the Voracious"..
"Executor Tarvold\nGrand Proctor Beryllia\nGeneral Kaal",
},[[
step
kill Kryxis the Voracious##162100 |goto Sanguine Depths/1 56.03,18.01
_EVERYONE:_ |grouprole EVERYONE
|tip Stack up to split damage from "Juggernaut Rush." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Interrupt "Hungering Drain" whenever possible. |grouprole DAMAGE
|tip Absorb "Living Essences" before they reach Kryxis. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Prepare for heaving damage on the tank from "Vicious Headbutt." |grouprole HEALER
|tip The party will take heavy damage from "Severing Smash" and "Juggernaut Rush." |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Prepare for heaving damage from "Vicious Headbutt." |grouprole TANK
|tip Interrupt "Hungering Drain" whenever possible. |grouprole TANK
|tip Kryxis consumes "Living Essences" to increase his damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Executor Tarvold##162103 |goto 47.76,86.04
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in "Residue" pools when Fleeting Manifestations die. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Fleeting Manifestations quickly. |grouprole DAMAGE
|tip Anyone near "Castigate" will take heavy damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Fleeting Manifestations inflict party-wide damage while alive. |grouprole HEALER
|tip Anyone near "Castigate" will take heavy damage. |grouprole HEALER
Click Here to Continue |confirm
step
kill Grand Proctor Beryllia##162102 |goto Sanguine Depths/0 46.12,69.89
_EVERYONE:_ |grouprole EVERYONE
|tip Move into Z'rali's "Shining Radiance" to reduce damage from "Rite of Supremacy." |grouprole EVERYONE
|tip Only one player can receive damage reduction from each "Shining Radiance" area. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players will occasionally receive debuffs causing damage for a short period of time. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip You may need a cooldown to mitigate "Iron Spikes" damage. |grouprole TANK
Click Here to Continue |confirm
step
kill General Kaal##165318 |goto 15.78,17.38
_EVERYONE:_ |grouprole EVERYONE
|tip Be prepared for the knockback from "Gloom Squall." |grouprole EVERYONE
|tip Avoid charging images of Kaal during "Piercing Blur." |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Wicked Rush." |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players hit by "Wicked Rush" will take damage over time for 20 seconds. |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Sanguine Depths" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Spires of Ascension",{
mapid=1692,
achieveid={14326},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Kin-Tara","Ventunax","Oryphrion","Devos","Paragon","Doubt"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nKin-Tara\nVentunax"..
"\nOryphrion\nDevos, Paragon of Doubt",
},[[
step
kill Kin-Tara##162059 |goto Spires of Ascension/1 43.81,57.21
_EVERYONE:_ |grouprole EVERYONE
|tip When she takes to the air, avoid standing in "Charged Spear" spots on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip When Kin-Tara or Azule dies, the other enrages. |grouprole HEALER
|tip "Overhead Slash" inflicts heavy damage to anyone in a frontal cone. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip When Kin-Tara or Azule dies, the other enrages. |grouprole TANK
|tip "Overhead Slash" inflicts heavy damage to anyone in a frontal cone. |grouprole TANK
|tip Face her away from others when she casts "Overhead Slash" at 100 energy. |grouprole TANK
Click Here to Continue |confirm
step
kill Ventunax##162058 |goto 63.70,44.89
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid standing in "Dark Bolt" areas on the ground following "Shadowhirl." |grouprole EVERYONE
|tip Avoid standing in front of Ventunax furing "Blinding Flash" casts. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Be prepared for heavy party damage when "Shadowhirls" begin accumulating. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Be prepared to regain threat after each "Dark Stride" cast. |grouprole TANK
Click Here to Continue |confirm
step
kill Oryphrion##162060 |goto Spires of Ascension/2 52.90,38.22
_EVERYONE:_ |grouprole EVERYONE
|tip Ordinance strike areas leave behind "Anima Fields" that empower Oryphrion. |grouprole EVERYONE
|tip Spread out to reduce excess damage from "Purifying Blast." |grouprole EVERYONE
|tip At 0 anima, Oryphrion will become "Drained" and take 100% increased damage. |grouprole EVERYONE
|tip During "Recharge Anima," have ranged players intercept and soak the large anima orbs. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Prepare for party damage if players fail to spread out during "Purifying Blast." |grouprole HEALER
|tip Players soaking orbs during "Recharge Anima" will take damage. |grouprole HEALER
|tip Everyone will take damage from orbs if no one intercepts them. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Move Oryphrion out of "Anima Fields" to reduce damage. |grouprole TANK
|tip "Charged Stomp" will inflict heavy magic damage and slow your movement speed. |grouprole TANK
Click Here to Continue |confirm
step
kill Devos##167410 |goto Spires of Ascension/3 45.51,62.77
_EVERYONE:_ |grouprole EVERYONE
|tip When Devos takes to the air, pick up orbs and return them to the "Archon's Spear" in the center. |grouprole EVERYONE
|tip When all orbs have been returned, carefully aim the spear at Devos and fire to bring him back to the ground. |grouprole EVERYONE
|tip Be prepared for the wind to change directions so you don't get blown off the platform while Devos is in the air. |grouprole EVERYONE
|tip Move out of pools on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip The party will take more damage the longer Devos stays in the air. |grouprole HEALER
|tip At 70% and 30% health, the party will take AoE damage from "Unleashed Anima." |grouprole HEALER
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Spires of Ascension" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Dungeons\\Theater of Pain",{
mapid=1683,
achieveid={14372},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Dessia","Decapitator","Paceran","Virulent","Sathel","Accursed","Gorechop","Xav","Unfallen","Kul'tharok","Mordretha","Endless","Empress"},
author="support@zygorguides.com",
description="\nTo complete this dungeon, you will need to kill the following bosses:\n\nAn Affront of Challengers"..
"\nGorechop\nXav the Unfallen\nKul'tharok\nMordretha, the Endless Empress",
},[[
step
kill Dessia the Decapitator##164451 |goto Theater of Pain/4
kill Paceran the Virulent##164463
kill Sathel the Accursed##164461
_EVERYONE:_ |grouprole EVERYONE
|tip When Dessia enrages she will fixate random targets. |grouprole EVERYONE
|tip Run away if fixated. |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Searing Death." |grouprole EVERYONE
|tip Move out of "Noxious Spores" pools on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Sathel becomes immune to interrupts while the shield is active. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip At 100% energy Dessia will use "Mortal Strike" and reduce healing received by the tank. |grouprole HEALER
|tip "Searing Death" will inflict damaged to anyone near the afflicted player. |grouprole HEALER
|tip Dispel "Genetic Alteration" whenever possible. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip At 100% energy Dessia will use "Mortal Strike" and reduce healing received. |grouprole TANK
Click Here to Continue |confirm
step
kill Gorechop##162317 |goto Theater of Pain/0 69.46,63.57
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid "Meat Hooks" when they path across the arena. |grouprole EVERYONE
|tip Move out of "Coagulating Ooze" pools that spawn after Oozing Leftovers die. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Oozing Leftovers quickly when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Hateful Strike" inflicts heavy damage on the tank. |grouprole HEALER
|tip Players hit by "Meat Hooks" will take periodic physical damage for 8 seconds. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Hateful Strike" inflicts heavy damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Xav the Unfallen##162329 |goto Theater of Pain/3
_EVERYONE:_ |grouprole EVERYONE
|tip Don't stand in front of Xav during "Might of Maldraxxus" to avoid taking heavy damage. |grouprole EVERYONE
|tip At 100 energy Xav will force players into the pit to fight. |grouprole EVERYONE
|tip The winner will gain 10% increased damage while the loser will have their damage reduced by 10%. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill "Oppressive Banners" quickly. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Brutal Combo" will inflict heavy physical damage on the tank. |grouprole HEALER
|tip The entire party will take heavy damage when Xav leaps to the center. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Brutal Combo" will inflict heavy physical damage. |grouprole TANK
Click Here to Continue |confirm
step
kill Kul'tharok##162309 |goto Theater of Pain/2
_EVERYONE:_ |grouprole EVERYONE
|tip "Draw Soul" will cause you to suffer damage and make your soul move towards Kul'tharok. |grouprole EVERYONE
|tip Reclaim your soul to gain a damage buff and eliminate the periodic damage debuff. |grouprole EVERYONE
|tip Until you reclaim your soul, all actions will become impossible. |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Phantasmal Parasite." |grouprole EVERYONE
|tip Quickly move out of "Grasping Hands" areas on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Chill of the Beyond" will inflict light periodic damage for the duration of the encounter. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay in melee range to avoid heavy damage from "Spectral Reach." |grouprole TANK
Click Here to Continue |confirm
step
kill Mordretha, the Endless Empress##165946 |goto Theater of Pain/4
_EVERYONE:_ |grouprole EVERYONE
|tip Spread out to avoid excess damage from "Manifest Death." |grouprole EVERYONE
|tip Run away from "Grasping Rifts" to avoid being pulled in. |grouprole EVERYONE
|tip Avoid standing in "Dark Devastation" beams. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip "Reaping Scythe" inflicts heavy physical and magic damage on the tank. |grouprole HEALER
|tip Players pulled into "Grasping Rifts" will be stunned and take periodic magic damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Reaping Scythe" inflicts heavy physical and magic damage. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Theater of Pain" Dungeon.
]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Shadowlands Raids\\Castle Nathria",{
mapid=1735,
achieveid={14715},
patch='90001',
condition_suggested=function() return level == 60 end,
keywords={"Shadowlands","Shriekwing","Hungering","Destroyer","Kael'thas","Sunstrider","Artificer","Xy'Mox","Lady","Inerva","Darkvein","Baroness","Frieda","Castellan","Niklaus","Lord","Stavros","Sludgefist","General","Grashaal","Kaal","Sire","Denathrius"},
author="support@zygorguides.com",
description="\nTo complete this raid, you will need to kill the following bosses:\n\nShriekwing\nHungering Destroyer"..
"\nKael'thas Sunstrider\nArtificer Xy'Mox\nLady Inerva Darkvein\nThe Council of Blood\nSludgefist\n"..
"Stoneborne Generals\nSire Denathrius",
},[[
step
kill Shriekwing##172145 |goto Castle Nathria/3 59.28,81.00
_EVERYONE:_ |grouprole EVERYONE
|tip Stay out of Shriekwing's line of sight during "Earsplitting Shriek" while it is stealthed. |grouprole EVERYONE
|tip Spread out to avoid multiple people being hit during "Echolocation." |grouprole EVERYONE
|tip At 100 energy, Shriekwing will gain "Blood Shroud" and become stealthed. |grouprole EVERYONE
|tip Anyone coming within 12 yards of Shriekwing during "Blood Shroud" will die instantly. |grouprole EVERYONE
|tip Avoid standing in "Sanguine Ichor" pools on the ground. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip Players hit by "Earsplitting Shriek" will take heavy damage. |grouprole HEALER
|tip Each stack of "Exsanguinated" will reduce healing received by the affected tank by 10%. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat with your offtank when "Exsanguinating Bite" stacks too high. |grouprole TANK
Click Here to Continue |confirm
step
kill Huntsman Altimor##165066 |goto Castle Nathria/3 67.55,49.57
_EVERYONE:_ |grouprole EVERYONE
|tip Altimor will release one gargon at a time until all three are defeated. |grouprole EVERYONE
|tip Defeating the gargon defeats Altimor. |grouprole EVERYONE
|tip Avoid standing between Altimor and the targets marked by "Sinseeker." |grouprole EVERYONE
|tip When players become petrified during Hecutis' "Petrifying Howl," avoid standing within 10 yards of them. |grouprole EVERYONE
|tip Spread out and avoid standing in "Vicious Lunge" areas targeted by Margore. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Use crowd control abilities on Shades of Bargast to cause them to take increased damage. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip "Spreadshot" will inflict consisted raid-wide damage for the duration of the encounter. |grouprole HEALER
|tip Quickly heal souls created by Bargast's "Rip Soul" to full to stop them from reaching Altimor. |grouprole HEALER
|tip When Hecutis moves, "Crushing Stone" will deal heavy damage to the raid. |grouprole HEALER
|tip Margore's "Jagged Claws" deal heavy physical damage and applies a potent bleed on the current tank. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Margore's "Jagged Claws" deal heavy physical damage and applies a potent bleed. |grouprole TANK
|tip Move Bargast as needed to avoid allowing him to consume souls. |grouprole TANK
Click Here to Continue |confirm
step
kill Kael'thas Sunstrider##24664 |goto Castle Nathria/2 52.94,74.64
_EVERYONE:_ |grouprole EVERYONE
|tip Move out of pools on the ground. |grouprole EVERYONE
|tip A Shade of Kael'thas will spawn when Kael'thas reaches 45% and 90% health. |grouprole EVERYONE
|tip Avoid standing in front of the Shade of Kael'thas when it reaches 100 energy. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Split damage from "Ember Blast" between several players. |grouprole DAMAGE
|tip Crowd control Soul Infusers when possible. |grouprole DAMAGE
|tip When targeted by "Crimson Flurry," move away from other players. |grouprole DAMAGE
|tip Focus DPS on adds to kill them as quickly as possible. |grouprole DAMAGE
|tip Burn down Soul Infusers immediately when they spawn. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip When targeted by "Crimson Flurry," move away from other players. |grouprole HEALER
|tip Click Infuser's Orbs to gain a significant increase in your healing ability. |grouprole HEALER
|tip Heal Essence Fonts to full health to cause them to heal Kael'thas. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Soul Infusers have no threat table. |grouprole TANK
|tip Vile Occultists will drop threat after using "Door of Shadows." |grouprole TANK
|tip Swap threat with your offtank to avoid Shade of Kael'Thas's stacking "Burning Remnants" debuff. |grouprole TANK
Click Here to Continue |confirm
step
kill Artificer Xy'mox##166644 |goto Castle Nathria/1 65.36,23.25
_EVERYONE:_ |grouprole EVERYONE
|tip Use wormholes to your advantage to quickly reposition yourself. |grouprole EVERYONE
|tip Avoid standing in the path of "Rift Blast." |grouprole EVERYONE
|tip Run away from "Fleeting Spirits" if you become fixated. |grouprole EVERYONE
|tip Avoid standing within 50 yards of "Seeds of Extinction," which explode after 20 seconds. |grouprole EVERYONE
|tip Seeds can be moved before they explode to create a safe area. |grouprole EVERYONE
|tip Run away from the "Edge of Annihilation" when it draws you in or you will suffer critical damage. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip 2 players will be marked with "Dimensional Tear" which expires after 8 seconds and leaves a wormhole behind. |grouprole DAMAGE
|tip Decide with your group how to place wormholes created by "Dimensional Tear." |grouprole DAMAGE
|tip If any players become "Possessed," DPS them until they are no longer controlled. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip 2 players will be marked with "Dimensional Tear" which expires after 8 seconds and leaves a wormhole behind. |grouprole HEALER
|tip Decide with your group how to place wormholes created by "Dimensional Tear." |grouprole HEALER
|tip "Glyph of Destruction" and "Hyperlight Spark" will require increased raid healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip "Glyph of Destruction" will inflict significant damage to anyone nearby when it expires. |grouprole TANK
Click Here to Continue |confirm
step
kill Hungering Destroyer##164261 |goto Castle Nathria/3 35.82,34.57
_EVERYONE:_ |grouprole EVERYONE
|tip Run away when "Consume" is cast. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Avoid standing near other players if affected by "Gluttonous Miasma." |grouprole DAMAGE
|tip "Gluttonous Miasma" will prevent all healing received and deal damage to the player and anyone within 5 yards. |grouprole DAMAGE
|tip Position yourself so other players aren't in the path of "Volatile Injection" if targeted. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Avoid standing near other players if affected by "Gluttonous Miasma." |grouprole HEALER
|tip "Gluttonous Miasma" will prevent all healing received and deal damage to the player and anyone within 5 yards. |grouprole HEALER
|tip Position yourself so other players aren't in the path of "Volatile Injection" if targeted. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat with your offtank to manage stacks of "Growing Hunger." |grouprole TANK
Click Here to Continue |confirm
step
kill Lady Inerva Darkvein##167517 |goto Castle Nathria/4 36.27,44.30
_EVERYONE:_ |grouprole EVERYONE
|tip Click Anima Containers when they reach 33% or higher and not affected by "Focus Anima." |grouprole EVERYONE
|tip Soak vials before they hit the ground. |grouprole EVERYONE
|tip At 33%+ anima the vials leave pools which should be avoided. |grouprole EVERYONE
|tip At 66%+ anima the vials bounce once and must be soaked twice. |grouprole EVERYONE
|tip When afflicted by "Shared Suffering," cut through each of the orbs with your beams at the same time. |grouprole EVERYONE
|tip At 33%+ anima avoid the beams from the orbs. |grouprole EVERYONE
|tip At 66%+ anima the beams rotate, making them harder to avoid. |grouprole EVERYONE
|tip Move the "Concentrated Anima" debuff near the boss before it expires. |grouprole EVERYONE
|tip At 33%+ anima the boss needs to be moved to the player with the "Concentrated Anima" debuff because the player will be rooted. |grouprole EVERYONE
|tip At 66%+ anima dodge the orbs that spawn with the add after "Concentrated Anima" expires. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip At 33%+ Anima, players affected by "Shared Cognition" will need extra healing. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat at two stacks of "Warped Desires." |grouprole TANK
|tip At 33%+ Anima, run away from the group before "Warped Desires" expires. |grouprole TANK
|tip Be prepared to pick up the add when "Concentrated Anima" expires. |grouprole TANK
Click Here to Continue |confirm
step
kill Baroness Frieda##166969 |goto Castle Nathria/0 70.14,54.73
kill Castellan Niklaus##166971
kill Lord Stavros##166970
_EVERYONE:_ |grouprole EVERYONE
|tip Determine your kill order before beginning. |grouprole EVERYONE
|tip When each boss reaches 50% health, move to the indicated dance tile and continue to move to the tile indicated until the dance is complete. |grouprole EVERYONE
|tip Any time aside from "Danse Macabre," Stay on the dance floor. |grouprole EVERYONE
|tip Interrupt "Dreadbolt Volley" from Freida. |grouprole EVERYONE
|tip If Frieda is alive with one boss dead, spread out during "Prideful Eruption." |grouprole EVERYONE
|tip If Niklaus is alive with one boss dead, crowd control Dredger Servants and kill them quickly. |grouprole EVERYONE
|tip If paired with another player by "Dark Recital," run to your partner and keep moving to avoid the bad that spawns. |grouprole EVERYONE
|tip If Stavros is alive with one boss dead, move away from dancers during "Waltz of Blood." |grouprole EVERYONE
|tip If Stavros is alive with two bosses dead, find and kill the Dancing Fools that can be killed and sand on their corpse to remain safe. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Focus down one boss at a time. |grouprole DAMAGE
|tip Burn down Dutiful Attendants quickly. |grouprole DAMAGE
|tip Kill any Veteran Stoneguards as soon as they spawn if Niklaus is alive with two bosses dead. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players targeted by "Drain Essence" will need additional healing. |grouprole HEALER
|tip Dispel debuffs quickly. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip If Frieda is alive with two bosses dead, swap threat after two "Soul Spikes." |grouprole TANK
|tip If Niklaus is alive with two bosses dead, pick up the Veteran Stoneguard. |grouprole TANK
|tip Swap threat at two stacks of "Deulist's Riposte." |grouprole TANK
|tip Position yourself facing away from the raid to tank Stavros. |grouprole TANK
|tip Swap threat with Stavros after two stacks of "Evasive Lunge." |grouprole TANK
Click Here to Continue |confirm
step
kill Sludgefist##174733 |goto Castle Nathria/3 70.23,81.59
_EVERYONE:_ |grouprole EVERYONE
|tip If connected by a chain, move to your partner and stay within 12 yards until it fades. |grouprole EVERYONE
|tip Hide behind a pillar if affected by "Hateful Gaze." |grouprole EVERYONE
|tip Avoid standing in front of Sludgefist during "Hateful Gaze" if not affected. |grouprole EVERYONE
|tip Run at least 20 yards away from Sludgefist to avoid "Destructive Stomp" damage. |grouprole EVERYONE
|tip Ranged players should stay as far away from the boss as possible. |grouprole EVERYONE
|tip Avoid "Falling Rubble" areas targeted on the ground. |grouprole EVERYONE
|tip Avoid standing in "Stonequake" zones on the ground. |grouprole EVERYONE
|tip "Colossal Roar" will knock you back. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Save DPS cooldowns for periods after Sludgefist runs into a pillar. |grouprole DAMAGE
|tip At 20% health Sludgefist enrages, so use any DPS cooldowns available. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Players failing to avoid "Destructive Stomp" will take serious to fatal damage. |grouprole HEALER
|tip "Colossal Roar" will deal damage to the entire raid. |grouprole HEALER
|tip At 20% health Sludgefist enrages and causes significantly increased damage. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stand on top of each other for the duration of the encounter to split "Giant Fists" damage. |grouprole TANK
|tip Keep Sludgefist at least 20 yards away from pillars to avoid them being broken. |grouprole TANK
Click Here to Continue |confirm
step
kill General Grashaal##175233 |goto Castle Nathria/6 26.37,21.93
kill General Kaal##165318
_EVERYONE:_ |grouprole EVERYONE
|tip Stand in "Crystalline Bursts" to remove your bleed if targeted by "Crystalize." |grouprole EVERYONE
|tip Stack on the target that bursts to share damage from "Pulverizing Meteor." |grouprole EVERYONE
|tip Move to the boss' sides and stay at least 8 yards apart if marked by "Wicked Blade." |grouprole EVERYONE
|tip When a boss becomes "Hardened," kill the adds and return the orbs they drop to Prince Renathal. |grouprole EVERYONE
|tip Run to Prince Renathal when he reaches full mana during "Shattering Blast." |grouprole EVERYONE
|tip Run away if targeted by "Reverberating Eruption" and ensure that all other areas of "Unstable Ground" are soaked. |grouprole EVERYONE
|tip Don't stand in patches left behind by "Seismic Upheaval." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip When the Stone Legion Goloath casts "Soultaint Effigy," nuke it down. |grouprole DAMAGE
|tip DPS both bosses down together to avoid extra damage from "Soldier's Oath." |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Dispel "Heart Rend" and health through the debuff afterwards. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Swap threat to avoid excess "Stone Fist" stacks. |grouprole TANK
Click Here to Continue |confirm
step
kill Sire Denathrius##168938 |goto Castle Nathria/5 49.24,53.55
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from players when affected by "Feeding Time." |grouprole EVERYONE
|tip Move out of the frontal cone "Ravage" attack and avoid standing in the "Desolation" area left behind. |grouprole EVERYONE
|tip Until 70% health, split into two groups and alternate standing in "Cleansing Pain" areas. |grouprole EVERYONE
|tip Ensure you have 3 stacks or less of "Burden of Sin" upon reaching 70% health. |grouprole EVERYONE
|tip At 70% health, run to the center of the room. |grouprole EVERYONE
|tip Run through the mirrior during "Hand of Destruction." |grouprole EVERYONE
|tip Run away from other players if targeted by "Impale" and avoid standing in a direct line if not affected by it. |grouprole EVERYONE
|tip Dodge "Massacre" indication lines. |grouprole EVERYONE
|tip Below 40% health, stand near the center. |grouprole EVERYONE
|tip Avoid standing near other people if debuffed with "Fatal Finesse." |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill Echoes of Sin immediately. |grouprole DAMAGE
|tip Kill Crimson Cabalists immediately. |grouprole DAMAGE
|tip Burn the boss down quickly at the 40% mark. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Below 40% health, raid damage will become increasingly severe. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Position "Wracking Pain" so it hits adds and not raid members. |grouprole TANK
|tip Swap threat after each "Wracking Pain" cast. |grouprole TANK
|tip Pick up and tank Remornia near the boss. |grouprole TANK
|tip Move the boss near the mirror for "Hand of Destruction." |grouprole TANK
|tip Below 40% health, tank the boss near the edges. |grouprole TANK
Click Here to Continue |confirm
step
_Congratulations!_
You Completed the "Castle Nathria" Raid.
]])
