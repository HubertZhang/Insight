--[[
Copyright (C) 2020, 2021 penguin0616

This file is part of Insight.

The source code of this program is shared under the RECEX
SHARED SOURCE LICENSE (version 1.0).
The source code is shared for referrence and academic purposes
with the hope that people can read and learn from it. This is not
Free and Open Source software, and code is not redistributable
without permission of the author. Read the RECEX SHARED
SOURCE LICENSE for details
The source codes does not come with any warranty including
the implied warranty of merchandise.
You should have received a copy of the RECEX SHARED SOURCE
LICENSE in the form of a LICENSE file in the root of the source
directory. If not, please refer to
<https://raw.githubusercontent.com/Recex/Licenses/master/SharedSourceLicense/LICENSE.txt>
]]

-- me

return {
	-- insightservercrash.lua
	server_crash = "This server has crashed.",
	
	-- modmain.lua
	dragonfly_ready = "Ready to fight.",

	-- time.lua
	time_segments = "%s segment(s)",
	time_days = "%s day(s), ",
	time_days_short = "%s day(s)",
	time_seconds = "%s second(s)",
	time_minutes = "%s minute(s), ",
	time_hours = "%s hour(s), ",

	-- meh
	seasons = {
		autumn = "<color=#CE5039>Autumn</color>",
		winter = "<color=#95C2F4>Winter</color>",
		spring = "<color=#7FC954>Spring</color>",
		summer = "<color=#FFCF8C>Summer</color>",
	},

	-- Keybinds
	unbind = "Unbind",
	keybinds = {
		label = "Keybinds (Keyboard Only)",
		togglemenu = {
			name = "Open Insight Menu",
			description = "Opens/Closes the Insight menu"
		},
	},

	-- Danger Announcements
	danger_announcement = {
		generic = "[Danger Announcement]: ",
		boss = "[Boss Announcement]: ",
	},

	-- Presets
	presets = {
		types = {
			new_player = {
				label = "New Player",
				description = "Recommended for players new to the game."
			},
			simple = {
				label = "Simple",
				description = "A low amount of information, similar to Show Me.",
			},
			decent = {
				label = "Decent",
				description = "An average amount of information. Very similar to default settings.",
			},
			advanced = {
				label = "Advanced",
				description = "Good for people who like information.",
			},
		},
	},

	-- Insight Menu
	insightmenu = {
		tabs = {
			world = "World",
			player = "Player",
		},
	},

	indicators = {
		dismiss = "%s Dismiss",
	},

	-- Damage helper
	damage_types = {
		-- Normal
		explosive = "Explosive",
		
		-- Planar
		lunar_aligned = "Lunar Aligned",
		shadow_aligned = "Shadow Aligned",
	},

	-------------------------------------------------------------------------------------------------------------------------
	
	-- alterguardianhat.lua [Prefab]
	alterguardianhat = {
		minimum_sanity = "Minimum <color=SANITY>sanity</color> for light: <color=SANITY>%s</color> (<color=SANITY>%s%%</color>)",
		current_sanity = "Your <color=SANITY>sanity</color> is: <color=SANITY>%s</color> (<color=SANITY>%s%%</color>)",
		summoned_gestalt_damage = "Summoned <color=ENLIGHTENMENT>gestalts</color> deal <color=HEALTH>%s</color> damage.",
	},

	-- aoeweapon_base.lua
	aoeweapon_base = {
		--weapon_damage = "AoE %s: <color=HEALTH>{damage}</color>",
	},

	-- aoeweapon_leap.lua
	aoeweapon_leap = {

	},

	-- aoeweapon_lunge.lua
	aoeweapon_lunge = {
		lunge_damage = "Lunge {damageType}: <color=HEALTH>{damage}</color>",
	},
	

	-- appeasement.lua
	appease_good = "Delays eruption by %s segment(s).",
	appease_bad = "Hastens eruption by %s segment(s).",

	-- appraisable.lua
	appraisable = "Fearsome: %s, Festive: %s, Formal: %s",

	-- archive_lockbox.lua [Prefab]
	archive_lockbox_unlocks = "Unlocks: <prefab=%s>",

	-- armor.lua
	protection = "<color=HEALTH>Protection</color>: <color=HEALTH>%s%%</color>",
	durability = "<color=#C0C0C0>Durability</color>: <color=#C0C0C0>%s</color> / <color=#C0C0C0>%s</color>",
	durability_unwrappable = "<color=#C0C0C0>Durability</color>: <color=#C0C0C0>%s</color>",

	-- armordreadstone.lua
	armordreadstone = {
		regen = "Regenerates <color=%s>%.1f</color> <color=#C0C0C0>durability</color>/%ds",
		regen_complete = "Regenerates <color=%s>%.1f<sub>min</sub></color> / <color=%s>%.1f<sub>current</sub></color> / <color=%s>%.1f<sub>max</sub></color> <color=#C0C0C0>durability</color>/%ds based on insanity"
	},

	-- atrium_gate.lua [Prefab]
	atrium_gate = {
		cooldown = "<prefab=atrium_gate> will reset in %s.",
	},

	-- attunable.lua
	attunable = {
		linked = "Linked to: %s",
		offline_linked = "Offline links: %s",
		player = "<color=%s>%s</color> (<prefab=%s>)",	
	},

	-- batbat.lua [Prefab]
	batbat = {
		health_restore = "Restores <color=HEALTH>%s health</color> per hit.",
		sanity_cost = "Drains <color=SANITY>%s sanity</color> per hit.",
	},

	-- beard.lua
	beard = "Beard will improve in %s day(s).",

	-- beargerspawner.lua
	beargerspawner = {
		incoming_bearger_targeted = "<color=%s>Target: %s</color> -> %s",
		announce_bearger_target = "<prefab=bearger> will spawn on %s (<prefab=%s>) in %s.",
		bearger_attack = "<prefab=bearger> will attack in %s."
	},

	-- beef_bell.lua [Prefab]
	beef_bell = {
		beefalo_name = "Name: %s",
	},

	-- beequeenhive.lua [Prefab]
	beequeenhive = {
		time_to_respawn = "<prefab=beequeen> will respawn in %s.",
	},

	-- boatdrag.lua
	boatdrag = {
		drag = "Drag: %.5f",
		max_velocity_mod = "Max Velocity Mod: %.3f",
		force_dampening = "Force Dampening: %.3f",
	},

	-- boathealth.lua
	-- use 'health' from 'health'

	-- book.lua
	book = {
		wickerbottom = {
			tentacles = "Summons <color=%s>%d tentacles</color>",
			birds = "Summons up to <color=%s>%d birds</color>",
			brimstone = "Summons <color=%s>%d lightning strikes</color>",
			horticulture = "Grows up to <color=%s>%d plants</color>",
			horticulture_upgraded = "Grows and tends up to <color=%s>%d plants</color>",
			--silviculture = "Grows basic resource plants.",
			--fish = "",
			--fire = ""
			web = "Summons a <color=%s>spider web</color> that lasts for <color=%s>%s</color>",
			--temperature = ""
			light = "Summons a <color=LIGHT>light</color> for <color=LIGHT>%s</color>",
			-- light_upgraded is just light
			rain = "Toggles <color=WET>rain</color> and <color=WET>waters nearby plants</color>",
			bees = "Summons <color=%s>%d bees</color> up to <color=%s>%d</color>",
			research_station = "Prototype charges: %s",
			_research_station_charge = "<color=#aaaaee>%s</color> (%d)",
			meteor = "Summons <color=%s>%d meteors</color>",
		},
	},

	-- breeder.lua
	breeder_tropical_fish = "<color=#64B08C>Tropical Fish</color>",
	--breeder_fish2 = "Tropical Wanda", --in code but unused
	breeder_fish3 = "<color=#6C5186>Purple Grouper</color>",
	breeder_fish4 = "<color=#DED15E>Pierrot Fish</color>",
	breeder_fish5 = "<color=#9ADFDE>Neon Quattro</color>",
	breeder_fishstring = "%s: %s / %s",
	breeder_nextfishtime = "Additional fish in: %s",
	breeder_possiblepredatortime = "May spawn a predator in: %s",

	-- brushable.lua
	brushable = {
		last_brushed = "Brushed %s days ago."
	},

	-- burnable.lua
	burnable = {
		smolder_time = "Will <color=LIGHT>ignite</color> in: <color=LIGHT>%s</color>",
		burn_time = "Remaining <color=LIGHT>burn time</color>: <color=LIGHT>%s</color>",
	},

	-- carnivaldecor.lua
	carnivaldecor = {
		value = "Decor value: %s",
	},

	-- carnivaldecor_figure.lua [Prefab]

	-- carnivaldecor_figure_kit.lua [Prefab]
	carnivaldecor_figure_kit = {
		rarity_types = {
			rare = "Rare",
			uncommon = "Uncommon",
			common = "Common",
			unknown = "Unknown",
		},
		shape = "Shape: %s",
		rarity = "Rarity: %s",
		season = "Season: %d",
		undecided = "Must be placed before contents are determined."
	},

	-- carnivaldecorranker.lua
	carnivaldecorranker = {
		rank = "<color=%s>Rank</color>: <color=%s>%s</color> / <color=%s>%s</color>",
		decor = "Total decor: %s",
	},

	-- canary.lua [Prefab]
	canary = {
		gas_level = "<color=#DBC033>Gas level</color>: %s / %s", -- canary, max saturation canary
		poison_chance = "Chance of becoming <color=#522E61>poisoned</color>: <color=#D8B400>%d%%</color>",
		gas_level_increase = "Increases in %s.",
		gas_level_decrease = "Decreases in %s."
	},

	-- catcoonden.lua [Prefab]
	catcoonden = {
		lives = "Cat lives: %s / %s",
		regenerate = "Cats regenerate in: %s",
		waiting_for_sleep = "Waiting for nearby players to go away.",
	},

	-- chessnavy.lua
	chessnavy_timer = "%s",
	chessnavy_ready = "Waiting for you to return to a crime scene.",

	-- chester_eyebone.lua [Prefab]
	chester_respawn = "<color=MOB_SPAWN><prefab=chester></color> will respawn in: %s",
	announce_chester_respawn = "My <prefab=chester> will respawn in %s.",

	-- childspawner.lua
	childspawner = {
		children = "<color=MOB_SPAWN><prefab=%s></color>: %s<sub>in</sub> + %s<sub>out</sub> / %s",
		emergency_children = "*<color=MOB_SPAWN><prefab=%s></color>: %s<sub>in</sub> + %s<sub>out</sub> / %s",
		both_regen = "<color=MOB_SPAWN><prefab=%s></color> & <color=MOB_SPAWN><prefab=%s></color>",
		regenerating = "Regenerating {to_regen} in {regen_time}",
		entity = "<color=MOB_SPAWN><prefab=%s></color>",
	},

	-- combat.lua
	combat = {
		damage = "<color=HEALTH>Damage</color>: <color=HEALTH>%s</color>",
		damageToYou = " (<color=HEALTH>%s</color> to you)",
		age_damage = "<color=HEALTH>Damage <color=AGE>(Age)</color></color>: <color=AGE>%+d</color>",
		age_damageToYou = " (<color=AGE>%+d</color> to you)",
		yotr_pillows = {
			--@@ Weapons
			knockback = "<color=VEGGIE>Knockback</color>: <color=VEGGIE>%s</color> (<color=VEGGIE>x%.1f%%</color>)",
			--knockback_multiplier = "Knockback Multiplier: %s",
			laglength = "<color=VEGGIE>Cooldown</color>: %s",
			
			--@@ Armor
			defense_amount = "<color=VEGGIE>Defense</color>: %s",
			
			--@@ Both
			prize_value = "Prize value: %s",
		},
	},

	-- container.lua
	container = {
		
	},

	-- cooldown.lua
	cooldown = "Cooldown: %s",

	-- crabkingspawner.lua
	crabkingspawner = {
		crabking_spawnsin = "%s",
		time_to_respawn = "<prefab=crabking> will respawn in %s.",
	},

	-- crittertraits.lua
	dominant_trait = "Dominant trait: %s",

	-- crop.lua
	crop_paused = "Paused.",
	growth = "<color=NATURE><prefab=%s></color>: <color=NATURE>%s</color>",

	-- cyclable.lua
	cyclable = {
		step = "Step: %s / %s",
		note = ", note: %s",
	},

	-- damagetypebonus.lua
	damagetypebonus = {
		modifier = "<color=%s>%+.1f%%</color> damage to %s entities",
	},

	-- damagetyperesist.lua
	damagetyperesist = {
		modifier = "<color=%s>%+.1f%%</color> damage from %s attacks",
	},

	-- dapperness.lua
	dapperness = "<color=SANITY>Sanity</color>: <color=SANITY>%s/min</color>",

	-- daywalkerspawner.lua
	daywalkerspawner = {
		days_to_respawn = "<prefab=DAYWALKER> will respawn in %s day(s)",
	},

	-- debuffable.lua
	buff_text = "<color=MAGIC>Buff</color>: %s, %s",
	debuffs = { -- ugh
		["buff_attack"] = {
			name = "<color=HEALTH>Attack boost</color>",
			description = "Makes attacks <color=HEALTH>{percent}% stronger</color> for {duration}(s).",
		},
		["buff_playerabsorption"] = {
			name = "<color=MEAT>Damage absorption</color>",
			description = "Take <color=MEAT>{percent}%</color> less damage for {duration}(s).",
		},
		["buff_workeffectiveness"] = {
			name = "<color=SWEETENER>Work efficiency</color>",
			description = "Your work is <color=#DED15E>{percent}%</color> more effective for {duration}(s).",
		},
		
		["buff_moistureimmunity"] = {
			name = "<color=WET>Moisture immunity</color>",
			description = "You are immune to <color=WET>wetness</color> for {duration}(s).",
		},
		["buff_electricattack"] = {
			name = "<color=WET>Electric attacks</color>",
			description = "Your attacks are <color=WET>electric</color> for {duration}(s).",
		},
		["buff_sleepresistance"] = {
			name = "<color=MONSTER>Sleep resistance</color>",
			description = "You resist <color=MONSTER>sleep</color> for {duration}(s).",
		},
		
		["tillweedsalve_buff"] = {
			name = "<color=HEALTH>Health regeneration</color>",
			description = "Regenerates <color=HEALTH>{amount} health</color> over {duration}(s).",
		},
		["healthregenbuff"] = {
			name = "<color=HEALTH>Health regeneration</color>",
			description = "Regenerates <color=HEALTH>{amount} health</color> over {duration}(s).",
		},
		["sweettea_buff"] = {
			name = "<color=SANITY>Sanity regeneration</color>",
			description = "Regenerates <color=SANITY>{amount} sanity</color> over {duration}(s).",
		},

		["wintersfeastbuff"] = {
			name = "<color=FROZEN>Winter's Feast Buff</color>",
			description = "Restores <color=HUNGER>Hunger</color>, <color=SANITY>Sanity</color>, and <color=HEALTH>Health</color>."
		},
		["hungerregenbuff"] = {
			name = "<color=HUNGER><prefab=batnosehat> Buff</color>",
			description = "Regenerates <color=HUNGER>{amount} hunger</color> over {duration}(s).",
		},
		
		["halloweenpotion_health_buff"] = {
			name = "<color=HEALTH>Health regeneration</color>",
			description = nil
		},
		["halloweenpotion_sanity_buff"] = {
			name = "<color=SANITY>Sanity regeneration</color>",
			description = nil
		},
		["halloweenpotion_bravery_small_buff"] = {
			name = "<color=SANITY>Bravery</color> against bats.",
			description = nil
		},
		["halloweenpotion_bravery_large_buff"] = (function(parent)
			return deepcopy(parent.halloweenpotion_bravery_small_buff)
		end)
	},

	-- deerclopsspawner.lua
	deerclopsspawner = {
		incoming_deerclops_targeted = "<color=%s>Target: %s</color> -> %s",
		announce_deerclops_target = "<prefab=deerclops> will spawn on %s (<prefab=%s>) in %s.",
		deerclops_attack = "<prefab=deerclops> will attack in %s.",
	},

	-- diseaseable.lua
	disease_in = "Will become diseased in: %s",
	disease_spread = "Will spread disease in: %s",
	disease_delay = "Disease is delayed for: %s",

	-- domesticatable.lua
	domesticatable = {
		domestication = "Domestication: %s%%",
		obedience = "Obedience: %s%%",
		--obedience_extended = "Obedience: %s%% (%s%%<sub>to saddle</sub>, <%s%%<sub>buck saddle</sub>, %s%%<sub>to ride</sub>)",
		obedience_extended = "Obedience: %s%% (<%s%%<sub>bucks saddle</sub>, %s%%<sub>minimum</sub>)",
		tendency = "Tendency: %s",
		tendencies = {
			["NONE"] = "None",
			[TENDENCY.DEFAULT] = "Default",
			[TENDENCY.ORNERY] = "Ornery",
			[TENDENCY.RIDER] = "Rider",
			[TENDENCY.PUDGY] = "Pudgy"
		},
	},

	-- dragonfly_spawner.lua [Prefab]
	dragonfly_spawner = {
		time_to_respawn = "<prefab=dragonfly> will respawn in %s.",
	},

	-- drivable.lua

	-- dryer.lua
	dryer_paused = "Drying paused.",
	dry_time = "Remaining time: %s",

	-- eater.lua
	eater = {
		eot_loot = "Food restores <color=HUNGER>hunger %s%%</color> + <color=HEALTH>health %s%%</color> as durability.",
		eot_tofeed_restore = "Feeding held <color=MEAT><prefab=%s></color> will restore <color=#C0C0C0>%s</color> (<color=#C0C0C0>%s%%</color>) durability.",
		eot_tofeed_restore_advanced = "Feeding held <color=MEAT><prefab=%s></color> will restore <color=#C0C0C0>%s</color> (<color=HUNGER>%s</color> + <color=HEALTH>%s</color>) (<color=#C0C0C0>%s%%</color>) durability.",
		tofeed_restore = "Feeding held <color=MEAT><prefab=%s></color> will restore %s.",
	},

	-- edible.lua
	food_unit = "<color=%s>%s</color> unit(s) of <color=%s>%s</color>", 
	edible_interface = "<color=HUNGER>Hunger</color>: <color=HUNGER>%s</color> / <color=SANITY>Sanity</color>: <color=SANITY>%s</color> / <color=HEALTH>Health</color>: <color=HEALTH>%s</color>",
	edible_wiki = "<color=HEALTH>Health</color>: <color=HEALTH>%s</color> / <color=HUNGER>Hunger</color>: <color=HUNGER>%s</color> / <color=SANITY>Sanity</color>: <color=SANITY>%s</color>",
	edible_foodtype = {
		meat = "meat",
		monster = "monster",
		fish = "fish",
		veggie = "veggie",
		fruit = "fruit",
		egg = "egg",
		sweetener = "sweetener",
		frozen = "frozen",
		fat = "fat",
		dairy = "dairy",
		decoration = "decoration",
		magic = "magic",
		precook = "precook",
		dried = "dried",
		inedible = "inedible",
		bug = "bug",
		seed = "seed",
		antihistamine = "antihistamine", -- Only "cutnettle"
	},
	edible_foodeffect = {
		temperature = "Temperature: %s, %s",
		caffeine = "Speed: %s, %s",
		surf = "Ship Speed: %s, %s",
		autodry = "Drying Bonus: %s, %s",
		instant_temperature = "Temperature: %s, (Instant)",
		antihistamine = "Hayfever Delay: %ss",
	},
	foodmemory = "Recently eaten: %s / %s, will forget in: %s",
	wereeater = "<color=MONSTER>Monster meat</color> eaten: %s / %s, will forget in: %s",

	-- equippable.lua
	-- use 'dapperness' from 'dapperness'
	speed = "<color=DAIRY>Speed</color>: %s%%",
	hunger_slow = "<color=HUNGER>Hunger slow</color>: <color=HUNGER>%s%%</color>",
	hunger_drain = "<color=HUNGER>Hunger drain</color>: <color=HUNGER>%s%%</color>",
	insulated = "Protects you from lightning.",

	-- explosive.lua
	explosive_damage = "<color=LIGHT>Explosion Damage</color>: %s",
	explosive_range = "<color=LIGHT>Explosion Range</color>: %s",

	-- farmplantable.lua
	farmplantable = {
		product = "Will grow into a <color=NATURE><prefab=%s></color>.",
		nutrient_consumption = "ΔNutrients: [<color=NATURE>%d<sub>Formula</sub></color>, <color=CAMO>%d<sub>Compost</sub></color>, <color=INEDIBLE>%d<sub>Manure</sub></color>]",
		good_seasons = "Seasons: %s",
	},

	-- farmplantstress.lua
	farmplantstress = {
		stress_points = "Stress Points: %s",
		display = "Stressors: %s",
		stress_tier = "Stress level: %s",
		tiers = (IS_DST and {
			[FARM_PLANT_STRESS.NONE] = "None",
			[FARM_PLANT_STRESS.LOW] = "Low",
			[FARM_PLANT_STRESS.MODERATE] = "Moderate",
			[FARM_PLANT_STRESS.HIGH] = "High",
		} or {}),
		categories = {
			["nutrients"] = "Nutrients", -- missing nutrients
			["moisture"] = "Moisture", -- needs water
			["killjoys"] = "Weeds", -- weeds nearby
			["family"] = "Family", -- no similar plants nearby
			["overcrowding"] = "Overcrowding", -- too crowded
			["season"] = "Season", -- out of season
			["happiness"] = "Happiness", -- not tended to
		},
	},

	-- farmsoildrinker.lua
	farmsoildrinker = {
		soil_only = "<color=WET>Water</color>: <color=WET>%s<sub>tile</sub></color>*",
		soil_plant = "<color=WET>Water</color>: <color=WET>%s<sub>tile</sub></color> (<color=WET>%s/min<sub>plant</sub></color>)*",
		soil_plant_tile = "<color=WET>Water</color>: <color=WET>%s<sub>tile</sub></color> (<color=WET>%s<sub>plant</sub></color> [<color=#2f96c4>%s<sub>tile</sub></color>])<color=WET>/min</color>*",
		soil_plant_tile_net = "<color=WET>Water</color>: <color=WET>%s<sub>tile</sub></color> (<color=WET>%s<sub>plant</sub></color> [<color=#2f96c4>%s<sub>tile</sub></color> + <color=SHALLOWS>%s<sub>world</sub></color> = <color=#DED15E>%+.1f<sub>net</sub></color>])<color=WET>/min</color>"
	},

	farmsoildrinker_nutrients = {
		soil_only = "Nutrients: [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>tile</sub>*",
		soil_plant = "Nutrients: [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>tile</sub> ([<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>Δplant</sub>)*",
		--soil_plant_tile = "Nutrients: [%+d<color=NATURE><sub>F</sub></color>, %+d<color=CAMO><sub>C</sub></color>, %+d<color=INEDIBLE><sub>M</sub></color>]<sup>tile</sup> ([<color=#bee391>%+d<sub>F</sub></color>, <color=#7a9c6e>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sup>plantΔ</sup>   [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sup>tileΔ</sup>)",
		--soil_plant_tile = "Nutrients: [%+d<color=NATURE><sub>F</sub></color>, %+d<color=CAMO><sub>C</sub></color>, %+d<color=INEDIBLE><sub>M</sub></color>]<sup>tile</sup> ([<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sup>plantΔ</sup>   [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sup>tileΔ</sup>)",
		soil_plant_tile = "Nutrients: [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>tile</sub>   ([<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>Δplant</sub> [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>]<sub>tileΔ</sub>)",
		--soil_plant_tile_net = "Nutrients: [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>] ([<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>] + [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>] = [<color=NATURE>%+d<sub>F</sub></color>, <color=CAMO>%+d<sub>C</sub></color>, <color=INEDIBLE>%+d<sub>M</sub></color>])"
	},

	-- fertilizer.lua
	fertilizer = {
		growth_value = "Shortens <color=NATURE>growth time</color> by <color=NATURE>%s</color> seconds.",
		nutrient_value = "Nutrients: [<color=NATURE>%s<sub>Formula</sub></color>, <color=CAMO>%s<sub>Compost</sub></color>, <color=INEDIBLE>%s<sub>Manure</sub></color>]",
		wormwood = {
			formula_growth = "Accelerates your <color=LIGHT_PINK>blooming</color> by <color=LIGHT_PINK>%s</color>.",
			compost_heal = "<color=HEALTH>Heals</color> you for <color=HEALTH>{healing}</color> over <color=HEALTH>{duration}</color> second(s).",
		},
	},

	-- fillable.lua
	fillable = {
		accepts_ocean_water = "Can be filled with ocean water.",
	},

	-- finiteuses.lua
	action_uses = "<color=#aaaaee>%s</color>: %s",
	action_uses_verbose = "<color=#aaaaee>%s</color>: %s / %s",
	actions = {
		USES_PLAIN = "Uses",
		TERRAFORM = "Terraform",
		GAS = "Gas", -- hamlet
		DISARM = "Disarm", -- hamlet
		PAN = "Pan", -- hamlet
		DISLODGE = "Chisel", -- hamlet
		SPY = "Investigate", -- hamlet
		THROW = "Throw", -- sw -- Action string is "Throw At"
		ROW_FAIL = "Row Fail",
		--ATTACK = "<string=ACTIONS.ATTACK.GENERIC>", --STRINGS.ACTIONS.ATTACK.GENERIC,
		--POUR_WATER = "<string=ACTIONS.POUR_WATER.GENERIC>", --STRINGS.ACTIONS.POUR_WATER.GENERIC,
		--BLINK = "<string=ACTIONS.BLINK.GENERIC>",
	},

	-- fishable.lua
	fish_count = "<color=SHALLOWS>Fish</color>: <color=WET>%s</color> / <color=WET>%s</color>",
	fish_recharge = ": +1 fish in: %s",
	fish_wait_time = "Will take <color=SHALLOWS>%s seconds</color> to catch a fish.",

	-- fishingrod.lua
	fishingrod_waittimes = "Wait time: <color=SHALLOWS>%s</color> - <color=SHALLOWS>%s</color>",
	fishingrod_loserodtime = "Max wrangle time: <color=SHALLOWS>%s</color>",

	-- follower.lua
	leader = "Leader: %s",
	loyalty_duration = "Loyalty duration: %s",

	-- forcecompostable.lua
	forcecompostable = "Compost value: %s",

	-- fossil_stalker.lua [Prefab]
	fossil_stalker = {
		pieces_needed = "20%% chance of going wrong with %s more piece(s).",
		correct = "This is correctly assembled.",
		incorrect = "This is assembled wrong.",
		gateway_too_far = "This skeleton is %s tile(s) too far.",
	},

	-- friendlevels.lua
	friendlevel = "Friendliness level: %s / %s",

	-- fuel.lua
	fuel = {
		fuel = "<color=LIGHT>%s</color> second(s) of fuel.",
		fuel_verbose = "<color=LIGHT>%s</color> second(s) of <color=LIGHT>%s</color>.",
		type = "Fueltype: %s",
		types = {
			BURNABLE = "Fuel",
			CAVE = "Light", -- miner hat / lanterns, light bulbs n stuff
			CHEMICAL = "Fuel",
			CORK = "Fuel",
			GASOLINE = "Gasoline", -- DS: not actually used anywhere?
			MAGIC = "Durability", -- amulets that aren't refuelable (ex. chilled amulet)
			MECHANICAL = "Durability", -- SW: iron wind
			MOLEHAT = "Night vision", -- Moggles
			NIGHTMARE = "Nightmare fuel",
			NONE = "Time", -- will never be refueled...............................
			ONEMANBAND = "Durability",
			PIGTORCH = "Fuel",
			SPIDERHAT = "Durability", -- Spider Hat
			TAR = "Tar", -- SW
			USAGE = "Durability",
		},
	},

	-- fueled.lua
	fueled = {
		time = "<color=LIGHT>Fuel</color> remaining (<color=LIGHT>%s%%</color>): %s", -- percent, time
		time_verbose = "<color=LIGHT>%s</color> remaining (<color=LIGHT>%s%%</color>): %s", -- type, percent, time
		efficiency = "<color=LIGHT>Fuel efficiency</color>: <color=LIGHT>%s%%</color>",
		units = "<color=LIGHT>Fuel</color>: <color=LIGHT>%s</color>",
		held_refuel = "Held <color=SWEETENER><prefab=%s></color> will refuel <color=LIGHT>%s%%</color>.",
	},

	-- ghostlybond.lua
	ghostlybond = {
		abigail = "<color=%s>Sisterly bond</color>: %s / %s.",
		flower = "Your <color=%s>sisterly bond</color>: %s / %s. ",
		levelup = " +1 in %s.",
	},

	-- ghostlyelixir.lua
	ghostlyelixir = {
		ghostlyelixir_slowregen = "Regenerates <color=HEALTH>%s health</color> over %s (<color=HEALTH>+%s</color> / <color=HEALTH>%ss</color>).",
		ghostlyelixir_fastregen = "Regenerates <color=HEALTH>%s health</color> over %s (<color=HEALTH>+%s</color> / <color=HEALTH>%ss</color>).",
		ghostlyelixir_attack = "Maximizes <color=HEALTH>damage</color> for %s.",
		ghostlyelixir_speed = "Increases <color=DAIRY>speed</color> by <color=DAIRY>%s%%</color> for %s.",
		ghostlyelixir_shield = "Increases shield duration to 1 second for %s.",
		ghostlyelixir_retaliation = "Shield reflects <color=HEALTH>%s damage</color> for %s.", -- concatenated with shield
	},

	-- ghostlyelixirable.lua
	ghostlyelixirable = {
		remaining_buff_time = "<color=#737CD0><prefab=%s></color> duration: %s.",
	},

	-- growable.lua
	growable = {
		stage = "Stage <color=#8c8c8c>'%s'</color>: %s / %s: ",
		paused = "Growth paused.",
		next_stage = "Next stage in %s.",
	},

	-- grower.lua
	harvests = "<color=NATURE>Harvests</color>: <color=NATURE>%s</color> / <color=NATURE>%s</color>",

	-- hackable.lua
	-- use 'regrowth' from 'pickable'
	-- use 'regrowth_paused' from 'pickable'

	-- harvestable.lua
	harvestable = {
		product = "%s: %s / %s",
		grow = "+1 in %s.",
	},

	-- hatchable.lua
	hatchable = {
		discomfort = "Discomfort: %s / %s",
		progress = "Hatching progress: %s / %s",
	},

	-- healer.lua
	healer = {
		heal = "<color=HEALTH>Health</color>: <color=HEALTH>%+d</color>",
		webber_heal = "Webber <color=HEALTH>Health</color>: <color=HEALTH>%+d</color>",
		spider_heal = "Spider <color=HEALTH>Health</color>: <color=HEALTH>%+d</color>",
	},

	-- health.lua
	health = "<color=HEALTH>Health</color>: <<color=HEALTH>%s</color> / <color=HEALTH>%s</color>>",
	health_regeneration = " (<color=HEALTH>+%s</color> / <color=HEALTH>%ss</color>)",
	absorption = " : Absorbing %s%% of damage.",
	naughtiness = "Naughtiness: %s",
	player_naughtiness = "Your naughtiness: %s / %s",

	-- heatrock.lua [Prefab]
	heatrock_temperature = "Temperature: %s < %s < %s",

	-- herdmember.lua
	herd_size = "Herd size: %s / %s",

	-- hideandseekgame.lua
	hideandseekgame = {
		hiding_range = "Hiding range: %s to %s",
		needed_hiding_spots = "Needed hiding spots: %s",
	},

	-- hounded.lua
	hounded = {
		time_until_hounds = "<prefab=hound> attack in %s.",
		time_until_worms = "<prefab=worm> attack in %s.",
	},

	-- hunger.lua
	hunger = "<color=HUNGER>Hunger</color>: <color=HUNGER>%s</color> / <color=HUNGER>%s</color>",
	hunger_burn = "<color=HUNGER>Hunger decay</color>: <color=HUNGER>%+d/day</color> (<color=HUNGER>%s/s</color>)",
	hunger_paused = "<color=HUNGER>Hunger</color> decay paused.",

	-- hunter.lua
	hunter = {
		hunt_progress = "Track: %s / %s",
		impending_ambush = "There is an ambush waiting on the next track.",
		alternate_beast_chance = "<color=#b51212>%s%% chance</color> for a <color=MOB_SPAWN>Varg</color> or <color=MOB_SPAWN>Ewecus</color>.",
	},

	-- hutch_fishbowl.lua [Prefab]
	hutch_respawn = "<color=MOB_SPAWN><prefab=hutch></color> will respawn in: %s",
	announce_hutch_respawn = "My <prefab=hutch> will respawn in %s.",

	-- inspectable.lua
	wagstaff_tool = "The name of this tool is: <color=ENLIGHTENMENT><prefab=%s></color>",
	gym_weight_value = "Gym weight value: %s",
	ruins_statue_gem = "Contains a <color=%s><prefab=%s></color>.",

	-- insulator.lua
	insulation_winter = "<color=FROZEN>Insulation (Winter)</color>: <color=FROZEN>%s</color>",
	insulation_summer = "<color=FROZEN>Insulation (Summer)</color>: <color=FROZEN>%s</color>",

	-- inventory.lua
	inventory = {
		head_describe = "[Hat]: ",
		hands_describe = "[Tool]: ",
	},

	-- kitcoonden.lua
	kitcoonden = {
		number_of_kitcoons = "Number of kitcoons: %s"
	},

	-- klaussackloot.lua
	klaussackloot = "<color=#8c8c8c>Notable loot</color>:",

	-- klaussackspawner.lua
	klaussackspawner = {
		klaussack_spawnsin = "%s",
		klaussack_despawn = "Despawns on day: %s",
		announce_despawn = "<prefab=klaus_sack> will despawn on day %s.",
		announce_spawn = "<prefab=klaus_sack> will spawn in %s.",
	},

	-- leader.lua
	followers = "Followers: %s",

	-- lightningblocker.lua
	lightningblocker = {
		range = "Lightning protection range: %s wall units",
	},

	-- lightninggoat.lua
	lightninggoat_charge = "Will discharge in %s day(s).",

	-- lunarrift_portal.lua [Prefab]
	lunarrift_portal = {
		crystals = "<color=#4093B2><prefab=lunarrift_crystal_big></color>: %d<sub>available</sub> / %d<sub>total</sub> / %d<sub>max</sub>", -- I can't think of a way to word 
		next_crystal = "Next <color=#4093B2><prefab=lunarrift_crystal_big></color> spawns in %s",
		close = "<prefab=LUNARRIFT_PORTAL> will close in approximately %s",
	},

	-- lunarthrall_plantspawner.lua
	lunarthrall_plantspawner = {
		infested_count = "%d plants infested",
		spawn = "Gestalts spawn in %s",
		next_wave = "Next wave in %s",
		remain_waves = "%d waves remaining",
	},

	-- lunarthrall_plant.lua [Prefab]
	lunarthrall_plant = {
		time_to_aggro = "Vulnerability ends in: <color=%s>%.1f</color>",
	},

	-- lureplant.lua [Prefab]
	lureplant = {
		become_active = "Will become active in: %s",
	},

	-- madsciencelab.lua
	madsciencelab_finish = "Will finish in: %s",

	-- malbatrossspawner.lua
	malbatrossspawner = {
		malbatross_spawnsin = "%s",
		malbatross_waiting = "Waiting for someone to go to a shoal.",
		time_to_respawn = "<prefab=malbatross> will respawn in %s.",
	},

	-- mast.lua
	mast_sail_force = "Sail force: %s",
	mast_max_velocity = "Max velocity: %s",

	-- mermcandidate.lua
	mermcandidate = "Calories: %s / %s",

	-- mightiness.lua
	mightiness = "<color=MIGHTINESS>Mightiness</color>: <color=MIGHTINESS>%s</color> / <color=MIGHTINESS>%s</color> - <color=MIGHTINESS>%s</color>",

	-- mightydumbbell.lua
	mightydumbbell = {
		mightness_per_use = "<color=MIGHTINESS>Mightiness</color> per use: ",
	},

	-- mightygym.lua
	mightygym = {
		weight = "Gym weight: %s",
		mighty_gains = "Normal <color=MIGHTINESS>lift</color>: <color=MIGHTINESS>%+.1f</color>, Perfect <color=MIGHTINESS>lift</color>: <color=MIGHTINESS>%+.1f</color>",
		hunger_drain = "<color=HUNGER>Hunger drain</color>: <color=HUNGER>x%d</color>",
	},

	-- mine.lua
	mine = {
		active = "Checks for triggers every %s second(s).",
		inactive = "Not checking for triggers.",
		beemine_bees = "Will release %s bee(s).",
		trap_starfish_cooldown = "Rearms in: %s",
	},

	-- moisture.lua
	moisture = "<color=WET>Wetness</color>: <color=WET>%s%%</color>", --moisture = "<color=WET>Wetness</color>: %s / %s (%s%%)",

	-- monkey_smallhat.lua [Prefab]
	monkey_smallhat = "Mast & Anchor interaction speed: {feature_speed}\nOar durability use: {durability_efficiency}",

	-- monkey_mediumhat.lua [Prefab]
	monkey_mediumhat = "Boat damage reduction: {reduction}",

	-- mood.lua
	mood = {
		exit = "Will exit mood in %s day(s).",
		enter = "Will enter mood in %s day(s).",
	},

	-- moonstormmanager.lua
	moonstormmanager = {
		wagstaff_hunt = {
			progress = "Progress to destination: %s / %s",
			time_for_next_tool = "Will need another tool in %s.",
			experiment_time = "Experiment will complete in %s.",
		},
		storm_move = "%s%% chance to move moonstorms on day %s.",
	},

	-- nightmareclock.lua
	nightmareclock = {
		phase_info = "<color=%s>Phase: %s</color>, %s",
		phase_locked = "Locked by the <color=#CE3D45>Ancient Key</color>.",
		announce_phase_locked = "The ruins are currently locked in the nightmare phase.",
		announce_phase = "The ruins are in the %s phase (%s remaining).",
		phases = {
			["calm"] = "Calm",
			["warn"] = "Warning",
			["wild"] = "Nightmare",
			["dawn"] = "Dawn"
		},
	},

	-- oar.lua
	oar_force = "<color=INEDIBLE>Force</color>: <color=INEDIBLE>%s%%</color>",

	-- oceanfishingrod.lua
	oceanfishingrod = {
		hook = {
			interest = "Interest: %.2f",
			num_interested = "Interested fish: %s",
		},
		battle = {
			tension = "Tension: <color=%s>%.1f</color> / %.1f<sub>line snaps</sub>",
			slack = "Slack: <color=%s>%.1f</color> / %.1f<sub>fish escapes</sub>",
			distance = "Distance: %.1f<sub>catch</sub> / <color=%s>%.1f<sub>current</sub></color> / %.1f<sub>flee</sub>",
		},
	},

	-- oceanfishingtackle.lua
	oceanfishingtackle = {
		casting = {
			bonus_distance = "Bonus distance: %s",
			bonus_accuracy = "Bonus accuracy: <color=#66CC00>%+.1f%%<sub>min</sub></color> / <color=#5B63D2>%+.1f%%<sub>max</sub></color>",
		},
		lure = {
			charm = "Charm: <color=#66CC00>%.1f<sub>base</sub></color> + <color=#5B63D2>%.1f<sub>reel</sub></color>",
			stamina_drain = "Bonus stamina drain: %.1f",
			time_of_day_modifier = "Phase effectiveness: <color=DAY_BRIGHT>%d%%<sub>day</sub></color> / <color=DUSK_BRIGHT>%d%%<sub>dusk</sub></color> / <color=NIGHT_BRIGHT>%d%%<sub>night</sub></color>",
			weather_modifier = "Weather effectiveness: <color=#bbbbbb>%d%%<sub>clear</sub></color> / <color=#7BA3F2>%d%%<sub>raining</sub></color> / <color=FROZEN>%d%%<sub>snowing</sub></color>",
		},
	},

	-- oceantree.lua [Prefab]
	oceantree_supertall_growth_progress = "Supertall growth progress: %s / %s",

	-- oldager.lua
	oldager = {
		age_change = "<color=AGE>Age</color>: <color=714E85>%+d</color>",
	},

	-- pangolden.lua [Prefab]
	pangolden = {
		gold_level_progress = "<color=#E3D740>Gold</color> level: %.1f / %.1f",
		gold_level = "<color=#E3D740>Gold</color> level: %.1f",
	},

	-- parryweapon.lua
	parryweapon = {
		parry_duration = "Parry duration: {duration}",
	},

	-- periodicthreat.lua
	worms_incoming = "%s",
	worms_incoming_danger = "<color=HEALTH>%s</color>",

	-- perishable.lua
	perishable = {
		rot = "Rots",
		stale = "Stale",
		spoil = "Spoils",
		dies = "Dies",
		starves = "Starves",
		transition = "<color=MONSTER>{next_stage}</color> in {time}",
		transition_extended = "<color=MONSTER>{next_stage}</color> in {time} (<color=MONSTER>{percent}%</color>)",
		paused = "Currently not decaying.",
	},

	-- petrifiable.lua
	petrify = "Will become petrified in %s.",

	-- pickable.lua
	pickable = {
		regrowth = "<color=NATURE>Regrows</color> in: <color=NATURE>%s</color>",
		regrowth_paused = "Regrowth paused.",
		cycles = "<color=DECORATION>Remaining harvests</color>: <color=DECORATION>%s</color> / <color=DECORATION>%s</color>",
		mushroom_rain = "<color=WET>Rain</color> needed: %s",
	},

	-- planardamage.lua
	planardamage = {
		planar_damage = "<color=PLANAR>Planar Damage</color>: <color=PLANAR>%s</color>",
		additional_damage = " (<color=PLANAR>+%s<sub>bonus</sub></color>)",
	},

	-- planardefense.lua
	planardefense = {
		planar_defense = "<color=PLANAR>Planar Defense</color>: <color=PLANAR>%s</color>",
		additional_defense = " (<color=PLANAR>+%s<sub>bonus</sub></color>)",
	},

	-- poisonable.lua
	poisonable = {
		remaining_time = "<color=NATURE>Poison</color> expires in %s",
	},
	
	-- pollinator.lua
	pollination = "Flowers pollinated: (%s) / %s",

	-- polly_rogershat.lua [Prefab]
	polly_rogershat = {
		announce_respawn = "My <prefab=polly_rogers> will respawn in %s."
	},

	-- preservative.lua
	preservative = "Restores %s%% of freshness.",

	-- preserver.lua
	preserver = {
		spoilage_rate = "<color=#ad5db3>Spoilage rate</color>: <color=#ad5db3>%.1f%%</color>",
		freshness_rate = "<color=FROZEN>Freshness rate</color>: <color=FROZEN>%.1f%%</color>",
	},

	-- quaker.lua
	quaker = {
		next_quake = "<color=INEDIBLE>Earthquake</color> in %s.",
	},

	-- questowner.lua
	questowner = {
		pipspook = {
			toys_remaining = "Toys remaining: %s",
			assisted_by = "This pipspook is being assisted by %s.",
		},
	},

	-- rainometer.lua [Prefab]
	global_wetness = "<color=FROZEN>Global Wetness</color>: <color=FROZEN>%s</color>",
	precipitation_rate = "<color=WET>Precipitation Rate</color>: <color=WET>%s</color>",
	frog_rain_chance = "<color=FROG>Frog rain chance</color>: <color=FROG>%s%%</color>",

	-- recallmark.lua
	recallmark = {
		shard_id = "Shard Id: %s",
		shard_type = "Shard type: %s",
	},

	-- rechargeable.lua
	rechargeable = {
		charged_in = "Charged in: %s",
		charge = "Charge: %s / %s"
	},

	-- repairer.lua
	repairer = {
		type = "Repair material: <color=#aaaaaa>%s</color>",
		health = "<color=HEALTH>Health restore</color>: <color=HEALTH>%s</color> + <color=HEALTH>%s%%</color>",
		health2 = "<color=HEALTH>%s<sub>flat HP</sub></color> + <color=HEALTH>%s%%<sub>percent HP</sub></color>",
		work = "<color=#DED15E>Work repair</color>: <color=#DED15E>%s</color>",
		work2 = "<color=#DED15E>%s<sub>work</sub></color>",
		perish = "<color=MONSTER>Freshen</color>: <color=MONSTER>%s%%</color>",
		perish2 = "<color=MONSTER>Freshen</color>: <color=MONSTER>%s%%</color>",
		held_repair = "Held <color=SWEETENER><prefab=%s></color> will repair <color=LIGHT>%s</color> uses (<color=LIGHT>%s%%</color>).",
		materials = (IS_DST and {
			[MATERIALS.WOOD] =  "Wood",
			[MATERIALS.STONE] =  "Stone",
			[MATERIALS.HAY] =  "Hay",
			[MATERIALS.THULECITE] =  "Thulecite",
			[MATERIALS.GEM] =  "Gem",
			[MATERIALS.GEARS] =  "Gears",
			[MATERIALS.MOONROCK] =  "Moonrock",
			[MATERIALS.ICE] =  "Ice",
			[MATERIALS.SCULPTURE] =  "Sculpture",
			[MATERIALS.FOSSIL] =  "Fossil",
			[MATERIALS.MOON_ALTAR] =  "Moon Altar",
		} or {}),
	},

	-- repairable.lua
	repairable = {
		chess = "<color=#99635D>Gears</color> needed: <color=#99635D>%s</color>",
	},

	-- riftspawner.lua
	riftspawner = {
		next_spawn = "<prefab=LUNARRIFT_PORTAL> spawns in %s",
		announce_spawn = "A <prefab=LUNARRIFT_PORTAL> will spawn in %s",

		stage = "Stage: %d / %d", -- augmented by growable
	},

	-- rocmanager.lua
	rocmanager = {
		cant_spawn = "Unable to spawn."
	},

	-- saddler.lua
	saddler = {
		bonus_damage = "<color=HEALTH>Bonus damage</color>: <color=HEALTH>%s</color>",
		absorption = "<color=HEALTH>Damage absorption</color>: <color=HEALTH>%s%%</color>",
		bonus_speed = "<color=DAIRY>Bonus speed</color>: %s%%",
	},

	-- sanity.lua
	sanity = {
		current_sanity = "<color=SANITY>Sanity</color>: <color=SANITY>%s</color> / <color=SANITY>%s</color> (<color=SANITY>%s%%</color>)",
		current_enlightenment = "<color=ENLIGHTENMENT>Enlightenment</color>: <color=ENLIGHTENMENT>%s</color> / <color=ENLIGHTENMENT>%s</color> (<color=ENLIGHTENMENT>%s%%</color>)",
		interaction = "<color=SANITY>Sanity</color>: <color=SANITY>%+.1f</color>",
	},

	-- sanityaura.lua
	sanityaura = "<color=SANITY>Sanity Aura</color>: <color=SANITY>%s/min</color>",

	-- scenariorunner.lua
	scenariorunner = {
		opened_already = "This has been opened already.",
		chest_labyrinth = {
			sanity = "66% chance to change <color=SANITY>sanity</color> by <color=SANITY>-20</color> to <color=SANITY>20</color>.",
			hunger = "66% chance to change <color=HUNGER>hunger</color> by <color=HUNGER>-20</color> to <color=HUNGER>20</color>.",
			health = "66% chance to change <color=HEALTH>health</color> by <color=HEALTH>0</color> to <color=HEALTH>20</color>.",
			inventory = "66% chance to change <color=LIGHT>durability</color> or <color=MONSTER>freshness</color> by 20%.",
			summonmonsters = "66% chance to summon 1-3 <color=MOB_SPAWN>Depth Dwellers</color>.",
		},
	},

	-- shadowlevel.lua
	shadowlevel = {
		level = "<color=BLACK>Shadow level</color>: %s",
		level_diff = "<color=BLACK>Shadow level</color>: %s/%s",
		damage_boost = " (<color=HEALTH>+%s damage</color>)",
		total_shadow_level = "<color=BLACK>Total Shadow level</color>: %s",
	},

	-- shadowrift_portal.lua [Prefab]
	shadowrift_portal = {
		close = "<prefab=SHADOWRIFT_PORTAL> will close in %s",
	},

	-- shadowsubmissive.lua
	shadowsubmissive = {
		shadowcreature = {
			spawned_for = "Spawned by %s.",
			sanity_reward = "<color=SANITY>Sanity</color> reward: <color=SANITY>%s</color>",
			sanity_reward_split = "<color=SANITY>Sanity</color> reward: <color=SANITY>%s</color> / <color=SANITY>%s</color>",
		},
	},

	-- shadowthrallmanager.lua
	shadowthrallmanager = {
		fissure_cooldown = "Next fissure will be ready for takeover in %s",
		waiting_for_players = "Waiting for a player to come near",
		thrall_count = "<color=MOB_SPAWN><prefab=SHADOWTHRALL_HANDS></color>: %d",
		dreadstone_regen = "<color=#942429><prefab=DREADSTONE></color> will regenerate in %s",
	},

	-- sharkboi.lua [Prefab]
	sharkboi = {
		trades_remaining = "Trades left: %d",
	},

	-- sheltered.lua
	sheltered = {
		range = "Shelter range: %s wall units",
		shelter = "Shelter ",
	},

	-- singable.lua
	singable = {
		battlesong = {
			battlesong_durability = "<color=HEALTH>Weapons</color> last <color=#aaaaee>%s%%</color> longer.",
			battlesong_healthgain = "Hitting enemies restores <color=HEALTH>%s health</color> (<color=HEALTH>%s</color> for Wigfrids).",
			battlesong_sanitygain = "Hitting enemies restores <color=SANITY>%s sanity</color>.",
			battlesong_sanityaura = "Negative <color=SANITY>sanity auras</color> are <color=SANITY>%s%%</color> less effective.",
			battlesong_fireresistance = "Take <color=HEALTH>%s%% less damage</color> from <color=LIGHT>fire</color>.",
			battlesong_lunaraligned = "Take <color=HEALTH>%s%% less damage</color> from <color=LUNAR_ALIGNED>lunar enemies</color>.\nDeal <color=HEALTH>%s%% more damage</color> to <color=SHADOW_ALIGNED>shadow enemies</color>.",
			battlesong_shadowaligned = "Take <color=HEALTH>%s%% less damage</color> from <color=SHADOW_ALIGNED>shadow enemies</color>.\nDeal <color=HEALTH>%s%% more damage</color> to <color=LUNAR_ALIGNED>lunar enemies</color>.",

			battlesong_instant_taunt = "Taunts all nearby enemies within song radius.",
			battlesong_instant_panic = "Panics nearby hauntable enemies for %s second(s).",
			battlesong_instant_revive = "Revives up to %d nearby allies.",
		},
		cost = "Costs <color=INSPIRATION>%s inspiration</color> to use.",
		cooldown = "Song cooldown: %s",
	},

	-- sinkholespawner.lua
	antlion_rage = "Antlion will rage in %s.",

	-- skinner_beefalo.lua
	skinner_beefalo = "Fearsome: %s, Festive: %s, Formal: %s",

	-- sleeper.lua
	sleeper = {
		wakeup_time = "Will wake up in %s",
	},

	-- soul.lua
	wortox_soul_heal = "<color=HEALTH>Heals</color> for <color=HEALTH>%s</color> - <color=HEALTH>%s</color>.",
	wortox_soul_heal_range = "<color=HEALTH>Heals</color> people within <color=#DED15E>%s tiles</color>.",

	-- spawner.lua
	spawner = {
		next = "Will spawn a <color=MOB_SPAWN><prefab={child_name}></color> in {respawn_time}.",
		child = "Spawns a <color=MOB_SPAWN><prefab=%s></color>",
		occupied = "Occupied: %s",
	},

	-- spider_healer.lua [Prefab]
	spider_healer = {
		webber_heal = "<color=HEALTH>Heals</color> Webber for <color=HEALTH>%+d</color>",
		spider_heal = "<color=HEALTH>Heals</color> spiders for <color=HEALTH>%+d</color>",
	},

	-- stagehand.lua [Prefab]
	stagehand = {
		hits_remaining = "<color=#aaaaee>Hits</color> remaining: <color=#aaaaee>%s</color>",
		time_to_reset = "Will reset in %s." 
	},

	-- stewer.lua
	stewer = {
		product = "<color=HUNGER><prefab=%s></color>(<color=HUNGER>%s</color>)",
		cooktime_remaining = "<color=HUNGER><prefab=%s></color>(<color=HUNGER>%s</color>) will be done in %s second(s).",
		cooker = "Cooked by <color=%s>%s</color>.",
		cooktime_modifier_slower = "Cooks food <color=#DED15E>%s%%</color> slower.",
		cooktime_modifier_faster = "Cooks food <color=NATURE>%s%%</color> faster.",
	},

	-- stickable.lua
	stickable = "<color=FISH>Mussels</color>: %s",

	-- temperature.lua
	temperature = "Temperature: <temperature=%s>",

	-- terrarium.lua [Prefab]
	terrarium = {
		day_recovery = "Recovers <color=HEALTH>%s</color> health per unfought day.",
		eot_health = "<prefab=eyeofterror> <color=HEALTH>Health</color> on return: <<color=HEALTH>%s</color> / <color=HEALTH>%s</color>>",
		retinazor_health = "<prefab=TWINOFTERROR1> <color=HEALTH>Health</color>: <<color=HEALTH>%s</color> / <color=HEALTH>%s</color>>",
		spazmatism_health = "<prefab=TWINOFTERROR2> <color=HEALTH>Health</color>: <<color=HEALTH>%s</color> / <color=HEALTH>%s</color>>",
		announce_cooldown = "<prefab=terrarium> will be ready in %s.",
	},

	-- tigersharker.lua
	tigershark_spawnin = "Can spawn in: %s",
	tigershark_waiting = "Ready to spawn.",
	tigershark_exists = "Tiger shark is present.",

	-- timer.lua
	timer = {
		label = "Timer <color=#8c8c8c>'%s'</color>: %s",
		paused = "Paused",
	},

	-- toadstoolspawner.lua
	toadstoolspawner = {
		time_to_respawn = "<prefab=toadstool> will respawn in %s.",
	},

	-- tool.lua
	action_efficiency = "<color=#DED15E>%s</color>: %s%%",
	tool_efficiency = "<color=NATURE>Efficiency</color> < %s >", -- #A5CEAD

	-- tradable.lua
	tradable_gold = "Worth %s gold nugget(s).",
	tradable_gold_dubloons = "Worth %s gold nugget(s) and %s dubloon(s).",
	tradable_rocktribute = "Delays <color=LIGHT>Antlion</color> rage by %s.",

	-- unwrappable.lua
	-- handled by klei?

	-- upgradeable.lua
	upgradeable_stage = "Stage %s / %s: ",
	upgradeable_complete = "Upgrade %s%% complete.",
	upgradeable_incomplete = "No upgrades possible.",

	-- upgrademodule.lua
	upgrademodule = {
		module_describers = {
			maxhealth = "Increases <color=HEALTH>max health</color> by <color=HEALTH>%d</color>.",
			maxsanity = "Increases <color=SANITY>max sanity</color> by <color=SANITY>%d</color>.",
			movespeed = "Increases <color=DAIRY>speed</color> by %s.",
			heat = "Increases <color=#cc0000>minimum temperature</color> by <color=#cc0000>%d</color>.",
			heat_drying = "Increases <color=#cc000>drying rate</color> by <color=#cc0000>%.1f</color>.",
			cold = "Decreases <color=#00C6FF>minimum temperature</color> by <color=#00C6FF>%d</color>.",
			taser = "Deals <color=WET>%d</color> %s to attackers (cooldown: %.1f).",
			light = "Provides a <color=LIGHT>light radius</color> of <color=LIGHT>%.1f</color> (extras only <color=LIGHT>%.1f</color>).",
			maxhunger = "Increases <color=HUNGER>max hunger</color> by <color=HUNGER>%d</color>.",
			music = "Provides a <color=SANITY>sanity aura</color> of <color=SANITY>%+.1f/min</color> within <color=SANITY>%.1f</color> tile(s).",
			music_tend = "Tends to plants within <color=NATURE>%.1f</color> tile(s).",
			bee = "Regenerates <color=HEALTH>%d health/%ds</color> (<color=HEALTH>%d/day</color>).",
		},
	},

	-- walrus_camp.lua [Prefab]
	walrus_camp_respawn = "<color=MOB_SPAWN><prefab=%s></color> respawns in: <color=FROZEN>%s</color>",

	-- waterproofer.lua
	waterproofness = "<color=WET>Waterproofness</color>: <color=WET>%s%%</color>",
	
	-- watersource.lua
	watersource = "This is a source of water.",

	-- wateryprotection.lua
	wateryprotection = {
		wetness = "Increases moisture by <color=WET>%s</color>."
	},

	-- wathgrithr_shield.lua [Prefab]
	wathgrithr_shield = {
		parry_duration_complex = "Parry duration: <color=%s>%.1f<sub>normal</sub></color> | <color=%s>%.1f<sub>skill</sub></color>",
	},
	
	-- weapon.lua
	weapon_damage_type = {
		normal = "<color=HEALTH>Damage</color>",
		electric = "<color=WET>(Electric)</color> <color=HEALTH>Damage</color>",
		poisonous = "<color=NATURE>(Poisonous)</color> <color=HEALTH>Damage</color>",
		thorns = "<color=HEALTH>(Thorns)</color> <color=HEALTH>Damage</color>",
	},
	weapon_damage = "%s: <color=HEALTH>%s</color>",
	attack_range = "Range: %s",

	-- weather.lua
	weather = {
		progress_to_rain = "Progress to <color=WET>rain</color>", -- Numbers appended by code
		remaining_rain = "<color=WET>Remaining rain</color>", -- Numbers appended by code

		progress_to_hail = "Progress to <color=LUNAR_ALIGNED>hail</color>", -- Numbers appended by code
		remaining_hail = "<color=LUNAR_ALIGNED>Remaining hail</color>", -- Numbers appended by code
	
		progress_to_acid_rain = "Progress to <color=SHADOW_ALIGNED>acid <color=WET>rain</color></color>", -- Numbers appended by code
		remaining_acid_rain = "<color=SHADOW_ALIGNED>Remaining acid <color=WET>rain</color></color>", -- Numbers appended by code
	},

	-- weighable.lua
	weighable = {
		weight = "Weight: %s (%s%%)",
		weight_bounded = "Weight: %s <= %s (%s) <= %s",
		owner_name = "Owner: %s"
	},

	-- werebeast.lua
	werebeast = "Wereness: %s / %s",

	-- wereness.lua
	wereness_remaining = "Wereness: %s / %s",

	-- winch.lua
	winch = {
		not_winch = "This has a winch component, but fails prefab check.",
		sunken_item = "There is a <color=#66ee66>%s</color> underneath this winch.",
	},

	-- winterometer.lua [Prefab]
	world_temperature = "<color=LIGHT>World Temperature</color>: <color=LIGHT>%s</color>",

	-- wintersfeasttable.lua

	-- wintertreegiftable.lua
	wintertreegiftable = {
		ready = "You are <color=#bbffbb>eligible</color> for <color=#DED15E>rare gifts</color>.",
		not_ready = "You must <color=#ffbbbb>wait %s more day(s)</color> before you can get another <color=#DED15E>rare gift</color>.",
	},

	-- witherable.lua
	witherable = {
		delay = "State change is delayed for %s",
		wither = "Will wither in %s",
		rejuvenate = "Will rejuvenate in %s"
	},

	-- workable.lua
	workable = {
		treeguard_chance_dst = "<color=#636C5C>Treeguard chance</color>: %s%%<sub>You</sub> & %s%%<sub>NPC</sub>",
		treeguard_chance = "<color=#636C5C>Treeguard chance</color>: %s%%",
	},

	-- worldmigrator.lua
	worldmigrator = {
		disabled = "Worldmigrator disabled.",
		target_shard = "Target Shard: %s",
		received_portal = "Target Portal: %s", -- Shard Migrator
		id = "This Portal: %s",
	},

	-- worldsettingstimer.lua
	worldsettingstimer = {
		label = "WSTimer <color=#8c8c8c>'%s'</color>: %s",
		paused = "Paused",
	},

	-- wx78.lua [Prefab]
	wx78 = {
		remaining_charge_time = "Remaining charge: %s",
		gain_charge_time = "Charge: %d / %d, next <color=LIGHT>charge</color> in: <color=LIGHT>%s</color>",
		full_charge = "Fully charged!",
	},

	-- wx78_scanner.lua [Prefab]
	wx78_scanner = {
		scan_progress = "Scan progress: %.1f%%",
	},

	-- yotb_sewer.lua
	yotb_sewer = "Will finish sewing in: %s",
}