
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Thunderstrak - Dun Modr"] = "Thunderstrak - Dun Modr",
	},
	["profiles"] = {
		["Thunderstrak - Dun Modr"] = {
			["runOnce"] = {
				["resetPotionsToDefaults_20190717"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["displays"] = {
				["Interrupts"] = {
				},
			},
			["packs"] = {
				["Feral"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190805.2325,
					["spec"] = 103,
					["desc"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# August 5, 2019 - 23:25\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.",
					["profile"] = "# Feral Druid\n# https://github.com/simulationcraft/simc/\n# August 5, 2019 - 23:25\n\n# Changes:\n# - Added Skull Bash.\n# - Relaxed Tiger's Fury energy check to apply only when Tiger's Fury is already up.\n# - opener_done is handled internally by the addon; removed these variables.  Only bother in boss fights.\n# - Convert target_if conditions to cycle_targets.\n# - Remove 'heart_essence' generic action.\n# - Add Balance Affinity priority.\n# - Reincorporate some of ShmooDude's edits.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n# It is worth it for almost everyone to maintain thrash\nactions.precombat+=/variable,name=use_thrash,value=0\nactions.precombat+=/variable,name=use_thrash,value=2,if=azerite.wild_fleshrending.enabled\nactions.precombat+=/variable,name=rip_ticks,value=8\nactions.precombat+=/regrowth,if=buff.moonkin_form.down&talent.bloodtalons.enabled\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/prowl,if=buff.moonkin_form.down\nactions.precombat+=/cat_form,if=buff.moonkin_form.down\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/potion\nactions.precombat+=/berserk,if=buff.moonkin_form.down\nactions.precombat+=/tigers_fury,if=buff.moonkin_form.down&buff.tigers_fury.down\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=balance,if=talent.balance_affinity.enabled&buff.moonkin_form.up\nactions+=/call_action_list,name=opener,if=!opener_done&talent.sabertooth.enabled&(buff.berserk.up||buff.incarnation.up)\nactions+=/cat_form,if=!buff.cat_form.up\nactions+=/rake,if=buff.prowl.up||buff.shadowmeld.up\nactions+=/call_action_list,name=cooldowns\nactions+=/ferocious_bite,cycle_targets=1,if=dot.rip.ticking&dot.rip.remains<3&target.time_to_die>10&(talent.sabertooth.enabled)\nactions+=/ferocious_bite,cycle_targets=1,if=talent.sabertooth.enabled&combo_points>spell_targets.thrash_cat&dot.rip.ticking&dot.rip.remains<3&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\n# actions+=/regrowth,if=combo_points=5&buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.down\nactions+=/run_action_list,name=finishers,if=combo_points>4\nactions+=/call_action_list,name=generators_aoe,if=spell_targets.thrash_cat>1\nactions+=/run_action_list,name=generators\n\nactions.cooldowns=berserk,if=energy>=30&(cooldown.tigers_fury.remains>5||buff.tigers_fury.up)\nactions.cooldowns+=/tigers_fury,if=energy.deficit>=60||buff.tigers_fury.down\nactions.cooldowns+=/berserking\nactions.cooldowns+=/thorns,if=active_enemies>desired_targets||raid_event.adds.in>45\nactions.cooldowns+=/the_unbound_force,if=buff.reckless_force.up||buff.tigers_fury.up\nactions.cooldowns+=/memory_of_lucid_dreams,if=buff.tigers_fury.up&buff.berserk.down\nactions.cooldowns+=/blood_of_the_enemy,if=buff.tigers_fury.up\nactions.cooldowns+=/feral_frenzy,if=combo_points=0\nactions.cooldowns+=/focused_azerite_beam,if=active_enemies>desired_targets||(raid_event.adds.in>90&energy.deficit>=50)\nactions.cooldowns+=/purifying_blast,if=active_enemies>desired_targets||raid_event.adds.in>60\nactions.cooldowns+=/heart_essence,if=buff.tigers_fury.up\nactions.cooldowns+=/incarnation,if=energy>=30&(cooldown.tigers_fury.remains>15||buff.tigers_fury.up)\nactions.cooldowns+=/potion,if=target.time_to_die<65||(time_to_die<180&(buff.berserk.up||buff.incarnation.up))\nactions.cooldowns+=/shadowmeld,if=combo_points<5&energy>=action.rake.cost&dot.rake.pmultiplier<2.1&buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.incarnation.enabled||cooldown.incarnation.remains>18)&!buff.incarnation.up\nactions.cooldowns+=/use_item,name=ashvanes_razor_coral,if=debuff.razor_coral_debuff.down||debuff.conductive_ink_debuff.up&target.time_to_pct_30<1.5||!debuff.conductive_ink_debuff.up&(debuff.razor_coral_debuff.stack>=25-10*debuff.blood_of_the_enemy.up||time_to_die<40)&buff.tigers_fury.remains>10\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=(energy.deficit>=energy.regen*3)&buff.tigers_fury.down&!azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast,if=buff.tigers_fury.up&azerite.jungle_fury.enabled\nactions.cooldowns+=/use_item,effect_name=azsharas_font_of_power,if=energy.deficit>=50\nactions.cooldowns+=/use_items,if=buff.tigers_fury.up||time_to_die<20\n\nactions.finishers=regrowth,if=buff.predatory_swiftness.up&talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.down\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>1&dot.rip.remains<4\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/primal_wrath,cycle_targets=1,if=spell_targets.primal_wrath>=2\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,cycle_targets=1,if=!talent.sabertooth.enabled&refreshable&target.time_to_die>dot.rip.remains+variable.rip_ticks*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/rip,target_if=talent.sabertooth.enabled&(!ticking||remains<=duration*0.3&persistent_multiplier>dot.rip.pmultiplier)&target.time_to_die>dot.rip.remains+variable.rip_ticks*(1+dot.rip.ticking*3)*action.rip.tick_time\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/savage_roar,if=buff.savage_roar.remains<12\nactions.finishers+=/pool_resource,for_next=1\nactions.finishers+=/maim,if=buff.iron_jaws.up\nactions.finishers+=/ferocious_bite,max_energy=1,cycle_targets=1\n\nactions.generators=regrowth,if=talent.bloodtalons.enabled&buff.predatory_swiftness.up&buff.bloodtalons.down&combo_points=4&dot.rake.remains<4\nactions.generators+=/regrowth,if=talent.bloodtalons.enabled&buff.bloodtalons.down&buff.predatory_swiftness.up&talent.lunar_inspiration.enabled&dot.rake.remains<1\nactions.generators+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(refreshable)&(spell_targets.thrash_cat>2)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=(talent.scent_of_blood.enabled&buff.scent_of_blood.down)&spell_targets.thrash_cat>3\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=buff.scent_of_blood.up||(action.swipe_cat.damage*spell_targets.swipe_cat>(action.rake.damage+(action.rake_bleed.tick_damage*5)))\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=!ticking||(!talent.bloodtalons.enabled&remains<duration*0.3)&target.time_to_die>4\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/rake,cycle_targets=1,if=talent.bloodtalons.enabled&buff.bloodtalons.up&((remains<=7)&persistent_multiplier>dot.rake.pmultiplier*0.85)&target.time_to_die>4\n# With LI & BT, we can use moonfire to save BT charges, allowing us to better refresh rake\nactions.generators+=/moonfire_cat,if=buff.bloodtalons.up&buff.predatory_swiftness.down&combo_points<5\nactions.generators+=/brutal_slash,if=(buff.tigers_fury.up&(raid_event.adds.in>(1+max_charges-charges_fractional)*recharge_time))\nactions.generators+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/thrash_cat,if=refreshable&((variable.use_thrash=2&(!buff.incarnation.up||azerite.wild_fleshrending.enabled))||spell_targets.thrash_cat>1)\n# actions.generators+=/thrash_cat,if=refreshable&variable.use_thrash=1&buff.clearcasting.react&(!buff.incarnation.up||azerite.wild_fleshrending.enabled)\nactions.generators+=/pool_resource,for_next=1\nactions.generators+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.generators+=/shred,if=dot.rake.remains>(action.shred.cost+action.rake.cost-energy)%energy.regen||buff.clearcasting.react\n\nactions.generators_aoe=pool_resource,for_next=1\nactions.generators_aoe+=/thrash_cat,if=(refreshable||active_dot.thrash_cat<active_enemies%2)&spell_targets.thrash_cat>2||talent.scent_of_blood.enabled&buff.scent_of_blood.down&spell_targets.thrash_cat>3\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/brutal_slash,if=spell_targets.brutal_slash>desired_targets\nactions.generators_aoe+=/pool_resource,for_next=1\nactions.generators_aoe+=/swipe_cat,if=buff.scent_of_blood.up\n\n# The opener generally follow the logic of the rest of the apl, but is separated out here for logical clarity\n# We will open with TF, you can safely cast this from stealth without breaking it.\nactions.opener=tigers_fury\n# Always open with rake, consuming stealth and one BT charge (if talented)\nactions.opener+=/rake,if=!ticking||buff.prowl.up\n# Lets make sure we end the opener \"sequence\" when our first rip is ticking\n# actions.opener+=/variable,name=opener_done,value=dot.rip.ticking\n# Break out of the action list\n# actions.opener+=/wait,sec=0.001,if=dot.rip.ticking\n# If we have LI, and haven't applied it yet use moonfire.\nactions.opener+=/moonfire_cat,if=!ticking\n# no need to wait for 5 CPs anymore, just rip and we are up and running\nactions.opener+=/primal_wrath,if=active_enemies>1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\nactions.opener+=/rip,if=active_enemies=1&(buff.tigers_fury.up&(buff.bloodtalons.up||!talent.bloodtalons.enabled)&dot.rake.ticking&(!talent.lunar_inspiration.enabled||dot.moonfire_cat.ticking)&!ticking)\n\nactions.balance=sunfire,if=refreshable||(active_enemies>1&(dot.sunfire.refreshable||active_dot.sunfire<active_enemies))\nactions.balance+=/lunar_strike,if=active_enemies>4||(active_enemies>1&buff.lunar_empowerment.up)\nactions.balance+=/solar_wrath,if=active_enemies>2&buff.solar_empowerment.up\nactions.balance+=/starsurge\nactions.balance+=/solar_wrath,if=buff.solar_empowerment.up\nactions.balance+=/lunar_strike,if=buff.lunar_empowerment.up\nactions.balance+=/solar_wrath",
					["version"] = 20190805.2325,
					["warnings"] = "Imported 8 action lists.\n",
					["lists"] = {
						["opener"] = {
							{
								["action"] = "tigers_fury",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || buff.prowl.up",
								["action"] = "rake",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "moonfire_cat",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "primal_wrath",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & dot.rake.ticking & ( ! talent.lunar_inspiration.enabled || dot.moonfire_cat.ticking ) & ! ticking )",
								["action"] = "rip",
							}, -- [5]
						},
						["generators_aoe"] = {
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable || active_dot.thrash_cat < active_enemies % 2 ) & spell_targets.thrash_cat > 2 || talent.scent_of_blood.enabled & buff.scent_of_blood.down & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [4]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up",
								["action"] = "swipe_cat",
							}, -- [6]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.balance_affinity.enabled & buff.moonkin_form.up",
								["list_name"] = "balance",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "! opener_done & talent.sabertooth.enabled & ( buff.berserk.up || buff.incarnation.up )",
								["list_name"] = "opener",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up || buff.shadowmeld.up",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > 10 & ( talent.sabertooth.enabled )",
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & combo_points > spell_targets.thrash_cat & dot.rip.ticking & dot.rip.remains < 3 & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "combo_points > 4",
								["list_name"] = "finishers",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "spell_targets.thrash_cat > 1",
								["list_name"] = "generators_aoe",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "generators",
							}, -- [11]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "use_thrash",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["var_name"] = "use_thrash",
								["criteria"] = "azerite.wild_fleshrending.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "8",
								["var_name"] = "rip_ticks",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & talent.bloodtalons.enabled",
								["action"] = "regrowth",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "prowl",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "cat_form",
							}, -- [7]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down",
								["action"] = "berserk",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.moonkin_form.down & buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [10]
						},
						["generators"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.predatory_swiftness.up & buff.bloodtalons.down & combo_points = 4 & dot.rake.remains < 4",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.down & buff.predatory_swiftness.up & talent.lunar_inspiration.enabled & dot.rake.remains < 1",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > desired_targets",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable ) & ( spell_targets.thrash_cat > 2 )",
								["action"] = "thrash_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( talent.scent_of_blood.enabled & buff.scent_of_blood.down ) & spell_targets.thrash_cat > 3",
								["action"] = "thrash_cat",
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.scent_of_blood.up || ( action.swipe_cat.damage * spell_targets.swipe_cat > ( action.rake.damage + ( action.rake_bleed.tick_damage * 5 ) ) )",
								["action"] = "swipe_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! ticking || ( ! talent.bloodtalons.enabled & remains < duration * 0.3 ) & target.time_to_die > 4",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.bloodtalons.enabled & buff.bloodtalons.up & ( ( remains <= 7 ) & persistent_multiplier > dot.rake.pmultiplier * 0.85 ) & target.time_to_die > 4",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodtalons.up & buff.predatory_swiftness.down & combo_points < 5",
								["action"] = "moonfire_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tigers_fury.up & ( raid_event.adds.in > ( 1 + max_charges - charges_fractional ) * recharge_time ) )",
								["action"] = "brutal_slash",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "moonfire_cat",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( ( variable.use_thrash = 2 & ( ! buff.incarnation.up || azerite.wild_fleshrending.enabled ) ) || spell_targets.thrash_cat > 1 )",
								["action"] = "thrash_cat",
							}, -- [18]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.rake.remains > ( action.shred.cost + action.rake.cost - energy ) % energy.regen || buff.clearcasting.react",
								["action"] = "shred",
							}, -- [21]
						},
						["finishers"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.predatory_swiftness.up & talent.bloodtalons.enabled & buff.bloodtalons.stack < 2",
								["action"] = "regrowth",
							}, -- [1]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.down",
								["action"] = "savage_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath > 1 & dot.rip.remains < 4",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.primal_wrath >= 2",
								["action"] = "primal_wrath",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! talent.sabertooth.enabled & refreshable & target.time_to_die > dot.rip.remains + variable.rip_ticks * action.rip.tick_time",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.sabertooth.enabled & ( ! ticking || remains <= duration * 0.3 & persistent_multiplier > dot.rip.pmultiplier ) & target.time_to_die > dot.rip.remains + variable.rip_ticks * ( 1 + dot.rip.ticking * 3 ) * action.rip.tick_time",
								["action"] = "rip",
							}, -- [11]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.savage_roar.remains < 12",
								["action"] = "savage_roar",
							}, -- [13]
							{
								["enabled"] = true,
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.iron_jaws.up",
								["action"] = "maim",
							}, -- [15]
							{
								["max_energy"] = "1",
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
							}, -- [16]
						},
						["balance"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( active_enemies > 1 & ( dot.sunfire.refreshable || active_dot.sunfire < active_enemies ) )",
								["action"] = "sunfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 4 || ( active_enemies > 1 & buff.lunar_empowerment.up )",
								["action"] = "lunar_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [3]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.up",
								["action"] = "solar_wrath",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.lunar_empowerment.up",
								["action"] = "lunar_strike",
							}, -- [6]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [7]
						},
						["cooldowns"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 5 || buff.tigers_fury.up )",
								["action"] = "berserk",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 60 || buff.tigers_fury.down",
								["action"] = "tigers_fury",
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 45",
								["action"] = "thorns",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up || buff.tigers_fury.up",
								["action"] = "the_unbound_force",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & buff.berserk.down",
								["action"] = "memory_of_lucid_dreams",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points = 0",
								["action"] = "feral_frenzy",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || ( raid_event.adds.in > 90 & energy.deficit >= 50 )",
								["action"] = "focused_azerite_beam",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 60",
								["action"] = "purifying_blast",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up",
								["action"] = "heart_essence",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "energy >= 30 & ( cooldown.tigers_fury.remains > 15 || buff.tigers_fury.up )",
								["action"] = "incarnation",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 65 || ( time_to_die < 180 & ( buff.berserk.up || buff.incarnation.up ) )",
								["action"] = "potion",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & energy >= action.rake.cost & dot.rake.pmultiplier < 2.1 & buff.tigers_fury.up & ( buff.bloodtalons.up || ! talent.bloodtalons.enabled ) & ( ! talent.incarnation.enabled || cooldown.incarnation.remains > 18 ) & ! buff.incarnation.up",
								["action"] = "shadowmeld",
							}, -- [14]
							{
								["enabled"] = true,
								["name"] = "ashvanes_razor_coral",
								["action"] = "ashvanes_razor_coral",
								["criteria"] = "debuff.razor_coral_debuff.down || debuff.conductive_ink_debuff.up & target.time_to_pct_30 < 1.5 || ! debuff.conductive_ink_debuff.up & ( debuff.razor_coral_debuff.stack >= 25 - 10 * debuff.blood_of_the_enemy.up || time_to_die < 40 ) & buff.tigers_fury.remains > 10",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( energy.deficit >= energy.regen * 3 ) & buff.tigers_fury.down & ! azerite.jungle_fury.enabled",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up & azerite.jungle_fury.enabled",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "energy.deficit >= 50",
								["action"] = "azsharas_font_of_power",
								["effect_name"] = "azsharas_font_of_power",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.tigers_fury.up || time_to_die < 20",
								["action"] = "use_items",
							}, -- [19]
						},
					},
					["author"] = "SimC",
				},
				["Balance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190920,
					["author"] = "SimC",
					["desc"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# September 20, 2019\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up",
								["action"] = "berserking",
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.starlord.enabled || buff.starlord.up ) & ! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "guardian_of_azeroth",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [5]
							{
								["enabled"] = true,
								["name"] = "shiver_venom_relic",
								["action"] = "shiver_venom_relic",
								["criteria"] = "! buff.ca_inc.up & ! buff.bloodlust.up",
								["target_if"] = "dot.shiver_venom.stack >= 5",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.ca_inc.remains > 30",
								["action"] = "blood_of_the_enemy",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( astral_power < 25 || cooldown.ca_inc.remains > 30 ) & dot.sunfire.remains > 10 & dot.moonfire.remains > 10 & ( ! talent.stellar_flare.enabled || dot.stellar_flare.remains > 10 )",
								["action"] = "memory_of_lucid_dreams",
							}, -- [8]
							{
								["action"] = "purifying_blast",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "ripple_in_space",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "concentrated_flame",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.reckless_force.up & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "the_unbound_force",
							}, -- [12]
							{
								["action"] = "worldvein_resonance",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( ! variable.az_ss || ! buff.ca_inc.up ) & dot.moonfire.ticking & dot.sunfire.ticking & ( ! talent.stellar_flare.enabled || dot.stellar_flare.ticking )",
								["action"] = "focused_azerite_beam",
							}, -- [14]
							{
								["action"] = "thorns",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( buff.memory_of_lucid_dreams.up || ap_check ) & dot.sunfire.remains > 8 & dot.moonfire.remains > 12 & ( dot.stellar_flare.remains > 6 || ! talent.stellar_flare.enabled )",
								["action"] = "incarnation",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! buff.ca_inc.up & ( buff.memory_of_lucid_dreams.up || ( ( cooldown.memory_of_lucid_dreams.remains > 20 || ! essence.memory_of_lucid_dreams.major ) & ap_check ) ) & ( dot.sunfire.remains > 2 & dot.moonfire.ticking & ( dot.stellar_flare.ticking || ! talent.stellar_flare.enabled ) )",
								["action"] = "celestial_alignment",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & solar_wrath.ap_check",
								["action"] = "fury_of_elune",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.ca_inc.up || cooldown.ca_inc.remains > 30 ) & ap_check",
								["action"] = "force_of_nature",
							}, -- [21]
							{
								["enabled"] = true,
								["buff_name"] = "starlord",
								["criteria"] = "buff.starlord.remains < 3 & ! solar_wrath.ap_check",
								["action"] = "cancel_buff",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.starlord.stack < 3 || buff.starlord.remains >= 8 ) & spell_targets >= variable.sf_targets & ( target.time_to_die + 1 ) * spell_targets > cost % 2.5",
								["action"] = "starfall",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( talent.starlord.enabled & ( buff.starlord.stack < 3 || buff.starlord.remains >= 5 & buff.arcanic_pulsar.stack < 8 ) || ! talent.starlord.enabled & ( buff.arcanic_pulsar.stack < 8 || buff.ca_inc.up ) ) & spell_targets.starfall < variable.sf_targets & buff.lunar_empowerment.stack + buff.solar_empowerment.stack < 4 & buff.solar_empowerment.stack < 3 & buff.lunar_empowerment.stack < 3 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.starsurge ) || target.time_to_die <= execute_time * astral_power % 40 || ! solar_wrath.ap_check",
								["action"] = "starsurge",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank & dot.moonfire.remains > remains",
								["action"] = "sunfire",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.ca_inc.remains < gcd.max & azerite.streaking_stars.rank",
								["action"] = "moonfire",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= ceil ( floor ( 2 % spell_targets ) * 1.5 ) + 2 * spell_targets & ( spell_targets > 1 + talent.twin_moons.enabled || dot.moonfire.ticking ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.sunfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) * spell_targets >= 6 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.moonfire ) & ( buff.ca_inc.remains > remains || ! buff.ca_inc.up )",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ap_check & floor ( target.time_to_die % ( 2 * spell_haste ) ) >= 5 & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up || ! prev.stellar_flare )",
								["action"] = "stellar_flare",
								["cycle_targets"] = 1,
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "new_moon",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "half_moon",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "ap_check",
								["action"] = "full_moon",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.solar_empowerment.stack < 3 & ( ap_check || buff.lunar_empowerment.stack = 3 ) & ( ( buff.warrior_of_elune.up || buff.lunar_empowerment.up || spell_targets >= 2 & ! buff.solar_empowerment.up ) & ( ! azerite.streaking_stars.rank || ! buff.ca_inc.up ) || azerite.streaking_stars.rank & buff.ca_inc.up & prev.solar_wrath )",
								["action"] = "lunar_strike",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "azerite.streaking_stars.rank < 3 || ! buff.ca_inc.up || ! prev.solar_wrath",
								["action"] = "solar_wrath",
							}, -- [34]
							{
								["action"] = "sunfire",
								["enabled"] = true,
							}, -- [35]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "4",
								["var_name"] = "sf_targets",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["var_name"] = "sf_targets",
								["criteria"] = "azerite.arcanic_pulsar.enabled",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["var_name"] = "sf_targets",
								["criteria"] = "talent.starlord.enabled",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["var_name"] = "sf_targets",
								["criteria"] = "azerite.streaking_stars.rank > 2 & azerite.arcanic_pulsar.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "sub",
								["action"] = "variable",
								["value"] = "1",
								["var_name"] = "sf_targets",
								["criteria"] = "! talent.twin_moons.enabled",
							}, -- [5]
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "potion",
								["dynamic_prepot"] = "1",
							}, -- [8]
							{
								["action"] = "solar_wrath",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [10]
						},
					},
					["version"] = 20190920,
					["warnings"] = "Imported 2 action lists.\n",
					["spec"] = 102,
					["profile"] = "# Balance Druid\n# https://github.com/simulationcraft/simc/\n# September 20, 2019\n\n# Changes:\n# - Added Solar Beam.\n# - Changed target_if cases to cycle_targets.\n# - Simplify Azerite trait lookups (don't use unnecessary variable syntax).\n# - Removed Lively Spirit condition for Celestial Alignment; you'll have it or you won't since Innervate is higher priority.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\n\n# Azerite variables\n# actions.precombat+=/variable,name=az_ss,value=azerite.streaking_stars.rank\n# actions.precombat+=/variable,name=az_ap,value=azerite.arcanic_pulsar.rank\n\n# Starfall v Starsurge target cutoff\nactions.precombat=variable,name=sf_targets,value=4\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=talent.starlord.enabled\nactions.precombat+=/variable,name=sf_targets,op=add,value=1,if=azerite.streaking_stars.rank>2&azerite.arcanic_pulsar.enabled\nactions.precombat+=/variable,name=sf_targets,op=sub,value=1,if=!talent.twin_moons.enabled\nactions.precombat+=/moonkin_form\n\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/potion,dynamic_prepot=1\nactions.precombat+=/solar_wrath\nactions.precombat+=/starsurge\n\n# Executed every time the actor is available.\nactions=solar_beam\n# CDs\nactions+=/berserking,if=buff.ca_inc.up\nactions+=/use_item,name=azsharas_font_of_power,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/guardian_of_azeroth,if=(!talent.starlord.enabled||buff.starlord.up)&!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,effect_name=cyclotronic_blast,if=!buff.ca_inc.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/use_item,name=shiver_venom_relic,if=!buff.ca_inc.up&!buff.bloodlust.up,target_if=dot.shiver_venom.stack>=5\nactions+=/blood_of_the_enemy,if=cooldown.ca_inc.remains>30\nactions+=/memory_of_lucid_dreams,if=!buff.ca_inc.up&(astral_power<25||cooldown.ca_inc.remains>30)&dot.sunfire.remains>10&dot.moonfire.remains>10&(!talent.stellar_flare.enabled||dot.stellar_flare.remains>10)\nactions+=/purifying_blast\nactions+=/ripple_in_space\nactions+=/concentrated_flame\nactions+=/the_unbound_force,if=buff.reckless_force.up&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/worldvein_resonance\nactions+=/focused_azerite_beam,if=(!variable.az_ss||!buff.ca_inc.up)&dot.moonfire.ticking&dot.sunfire.ticking&(!talent.stellar_flare.enabled||dot.stellar_flare.ticking)\nactions+=/thorns\nactions+=/use_items\nactions+=/warrior_of_elune\n# actions+=/innervate,if=azerite.lively_spirit.enabled&(cooldown.incarnation.remains<2||cooldown.celestial_alignment.remains<12)\nactions+=/incarnation,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(buff.memory_of_lucid_dreams.up||ap_check)&dot.sunfire.remains>8&dot.moonfire.remains>12&(dot.stellar_flare.remains>6||!talent.stellar_flare.enabled)\nactions+=/celestial_alignment,if=!buff.ca_inc.up&(buff.memory_of_lucid_dreams.up||((cooldown.memory_of_lucid_dreams.remains>20||!essence.memory_of_lucid_dreams.major)&ap_check))&(dot.sunfire.remains>2&dot.moonfire.ticking&(dot.stellar_flare.ticking||!talent.stellar_flare.enabled))\nactions+=/fury_of_elune,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&solar_wrath.ap_check\nactions+=/force_of_nature,if=(buff.ca_inc.up||cooldown.ca_inc.remains>30)&ap_check\n\n# Spenders\nactions+=/cancel_buff,name=starlord,if=buff.starlord.remains<3&!solar_wrath.ap_check\nactions+=/starfall,if=(buff.starlord.stack<3||buff.starlord.remains>=8)&spell_targets>=variable.sf_targets&(target.time_to_die+1)*spell_targets>cost%2.5\nactions+=/starsurge,if=(talent.starlord.enabled&(buff.starlord.stack<3||buff.starlord.remains>=5&buff.arcanic_pulsar.stack<8)||!talent.starlord.enabled&(buff.arcanic_pulsar.stack<8||buff.ca_inc.up))&spell_targets.starfall<variable.sf_targets&buff.lunar_empowerment.stack+buff.solar_empowerment.stack<4&buff.solar_empowerment.stack<3&buff.lunar_empowerment.stack<3&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.starsurge)||target.time_to_die<=execute_time*astral_power%40||!solar_wrath.ap_check\nactions+=/sunfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank&dot.moonfire.remains>remains\nactions+=/moonfire,if=buff.ca_inc.up&buff.ca_inc.remains<gcd.max&azerite.streaking_stars.rank\n\n# DoTs\nactions+=/sunfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=ceil(floor(2%spell_targets)*1.5)+2*spell_targets&(spell_targets>1+talent.twin_moons.enabled||dot.moonfire.ticking)&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.sunfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/moonfire,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))*spell_targets>=6&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.moonfire)&(buff.ca_inc.remains>remains||!buff.ca_inc.up)\nactions+=/stellar_flare,cycle_targets=1,if=refreshable&ap_check&floor(target.time_to_die%(2*spell_haste))>=5&(!azerite.streaking_stars.rank||!buff.ca_inc.up||!prev.stellar_flare)\n\n# Generators\nactions+=/new_moon,if=ap_check\nactions+=/half_moon,if=ap_check\nactions+=/full_moon,if=ap_check\nactions+=/lunar_strike,if=buff.solar_empowerment.stack<3&(ap_check||buff.lunar_empowerment.stack=3)&((buff.warrior_of_elune.up||buff.lunar_empowerment.up||spell_targets>=2&!buff.solar_empowerment.up)&(!azerite.streaking_stars.rank||!buff.ca_inc.up)||azerite.streaking_stars.rank&buff.ca_inc.up&prev.solar_wrath)\nactions+=/solar_wrath,if=azerite.streaking_stars.rank<3||!buff.ca_inc.up||!prev.solar_wrath\n\n# Fallthru for movement\nactions+=/sunfire",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20190818,
					["author"] = "SimC",
					["desc"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# August 18, 2019 - 14:00\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.",
					["lists"] = {
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < gcd * 2",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.current < 0.75 * health.max",
								["action"] = "frenzied_regeneration",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "toggle.defensives & health.pct < 80",
								["action"] = "anima_of_death",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 75 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "barkskin",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [5]
						},
						["cooldowns"] = {
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "lunar_beam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "bristling_fur",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( dot.moonfire.ticking || active_enemies > 1 ) & dot.thrash_bear.ticking",
								["action"] = "incarnation",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "cyclotronic_blast",
								["effect_name"] = "cyclotronic_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "toggle.cooldowns & ( time_to_die < action_cooldown % 2 || active_enemies > 1 )",
								["action"] = "anima_of_death",
							}, -- [12]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [14]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldowns",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & active_enemies < 4",
								["action"] = "maul",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit < 20 & essence.conflict_and_strife.major & ! buff.sharpened_claws.up",
								["action"] = "maul",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cost = 0 || ( rage > cost & azerite.layered_mane.enabled & active_enemies > 2 )",
								["action"] = "ironfur",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack = dot.thrash_bear.max_stacks",
								["action"] = "pulverize",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.moonfire.refreshable & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.down & active_enemies > 1 ) || ( buff.incarnation.up & active_enemies > 4 )",
								["action"] = "thrash_bear",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation.down & active_enemies > 4",
								["action"] = "swipe_bear",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.ticking",
								["action"] = "mangle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & active_enemies < 2",
								["action"] = "moonfire",
							}, -- [12]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "azerite.power_of_the_moon.rank > 1 & active_enemies = 1",
								["action"] = "moonfire",
							}, -- [14]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["action"] = "bear_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "memory_of_lucid_dreams",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
						},
					},
					["version"] = 20190818,
					["warnings"] = "Imported 4 action lists.\n",
					["profile"] = "# Guardian Druid\n# https://github.com/simulationcraft/simc/\n# August 18, 2019 - 14:00\n\n# Changes:\n# - Added Mitigation abilities.\n# - Added Skull Bash.\n# - Added ironfur_damage_threshold option.\n\n# Executed before combat begins. Accepts non-harmful actions only.\n# actions.precombat=flask\n# actions.precombat+=/food\n# actions.precombat+=/augmentation\nactions.precombat+=/bear_form\n# Snapshot raid buffed stats before combat begins and pre-potting is done.\n# actions.precombat+=/snapshot_stats\nactions.precombat+=/memory_of_lucid_dreams\nactions.precombat+=/potion\n\n# Executed every time the actor is available.\nactions=skull_bash\nactions+=/call_action_list,name=mitigation\nactions+=/call_action_list,name=cooldowns\nactions+=/maul,if=rage.deficit<20&active_enemies<4\nactions+=/maul,if=rage.deficit<20&essence.conflict_and_strife.major&!buff.sharpened_claws.up\nactions+=/ironfur,if=cost=0||(rage>cost&azerite.layered_mane.enabled&active_enemies>2)\nactions+=/pulverize,target_if=dot.thrash_bear.stack=dot.thrash_bear.max_stacks\nactions+=/moonfire,target_if=dot.moonfire.refreshable&active_enemies<2\nactions+=/thrash,if=(buff.incarnation.down&active_enemies>1)||(buff.incarnation.up&active_enemies>4)\nactions+=/swipe,if=buff.incarnation.down&active_enemies>4\nactions+=/mangle,if=dot.thrash_bear.ticking\nactions+=/moonfire,target_if=buff.galactic_guardian.up&active_enemies<2\nactions+=/thrash\n# Fill with Moonfire with PotMx2\nactions+=/moonfire,if=azerite.power_of_the_moon.rank>1&active_enemies=1\nactions+=/swipe\n\nactions.mitigation=ironfur,if=incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<gcd*2\nactions.mitigation+=/frenzied_regeneration,if=health.current<0.75*health.max\nactions.mitigation+=/anima_of_death,if=toggle.defensives&health.pct<80\nactions.mitigation+=/barkskin,if=health.pct<75&incoming_damage_5s>0.25*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max\n\nactions.cooldowns=potion\n# actions.cooldowns+=/heart_essence\nactions.cooldowns+=/blood_fury\nactions.cooldowns+=/berserking\nactions.cooldowns+=/arcane_torrent\nactions.cooldowns+=/lights_judgment\nactions.cooldowns+=/fireblood\nactions.cooldowns+=/ancestral_call\nactions.cooldowns+=/lunar_beam,if=buff.bear_form.up\nactions.cooldowns+=/bristling_fur,if=buff.bear_form.up\nactions.cooldowns+=/incarnation,if=(dot.moonfire.ticking||active_enemies>1)&dot.thrash_bear.ticking\nactions.cooldowns+=/use_item,effect_name=cyclotronic_blast\nactions.cooldowns+=/anima_of_death,if=toggle.cooldowns&(time_to_die<cooldown%2||active_enemies>1)\nactions.cooldowns+=/memory_of_lucid_dreams\nactions.cooldowns+=/use_items",
					["spec"] = 104,
				},
			},
			["specs"] = {
				[103] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180919.1,
					["settings"] = {
						["brutal_charges"] = 2,
					},
					["package"] = "Feral",
					["aoe"] = 3,
					["gcdSync"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["damage"] = true,
					["nameplates"] = true,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["potion"] = "focused_resolve",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["buffPadding"] = 0,
					["damageExpiration"] = 3,
					["damageDots"] = false,
					["damageRange"] = 0,
				},
				[102] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180919.1,
					["settings"] = {
						["starlord_cancel"] = false,
					},
					["package"] = "Balance",
					["aoe"] = 3,
					["gcdSync"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["damage"] = true,
					["nameplates"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["potion"] = "unbridled_fury",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["buffPadding"] = 0,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["damageRange"] = 0,
				},
				[104] = {
					["maxRefresh"] = 10,
					["custom2Name"] = "Custom 2",
					["throttleRefresh"] = false,
					["potionsReset"] = 20180919.1,
					["settings"] = {
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
					},
					["package"] = "Guardian",
					["aoe"] = 3,
					["gcdSync"] = true,
					["enabled"] = true,
					["debuffPadding"] = 0,
					["damage"] = true,
					["nameplates"] = true,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["potion"] = "focused_resolve",
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["buffPadding"] = 0,
					["damageExpiration"] = 6,
					["damageDots"] = false,
					["damageRange"] = 0,
				},
			},
		},
	},
}
