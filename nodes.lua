local S = australia.S

--
-- Stone
--

minetest.register_node("australia:red_stone", {
	description = S("Red Stone"),
	tiles = {"aus_red_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'australia:red_cobble',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:red_cobble", {
	description = S("Red cobblestone"),
	tiles = {"aus_red_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:red_stonebrick", {
	description = S("Red Stone Brick"),
	tiles = {"aus_red_stonebrick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:bluestone", {
	description = S("Bluestone (Basalt)"),
	tiles = {"aus_bluestone.png"},
	groups = {cracky = 2, stone = 1},
	drop = 'australia:bluestone_cobble',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:bluestone_cobble", {
	description = S("Bluestone cobble"),
	tiles = {"aus_bluestone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:bluestone_brick", {
	description = S("Bluestone Brick"),
	tiles = {"aus_bluestone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 1, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_brain", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cluster_green", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cluster_orange", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cluster_purple", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_staghorn_blue", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_staghorn_pink", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_staghorn_purple", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_staghorn_yellow", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cauliflower_brown", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cauliflower_green", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_cauliflower_pink", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_seafan", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_hammer", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:coral_stone_tube_sponge", {
	description = S("Sea coral stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, reef = 1, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:stone_kelp_brown", {
	description = S("Sea stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("australia:stone_kelp_giant_brown", {
	description = S("Sea stone"),
	tiles = {"aus_coral_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, not_in_creative_inventory = 1},
	drop = 'default:stone',
	sounds = default.node_sound_stone_defaults()
})



--
-- Soft / Non-Stone
--


minetest.register_node("australia:red_dirt", {
	description = S("Red Dirt"),
	tiles = {"aus_red_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults()
})

minetest.register_node("australia:red_sand", {
	description = S("Red Sand"),
	tiles = {"aus_red_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	sounds = default.node_sound_sand_defaults()
})

minetest.register_node("australia:red_gravel", {
	description = S("Red Gravel"),
	tiles = {"aus_red_gravel.png"},
	groups = {can_bonemeal = 1, crumbly = 2, falling_node = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_gravel_footstep", gain = 0.5},
		dug = {name = "default_gravel_footstep", gain = 1.0}
	})
})

minetest.register_node("australia:mangrove_mud", {
	description = S("Mangrove Mud"),
	tiles = {"aus_mangrove_mud.png"},
	groups = {crumbly = 2, soil = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "aus_mangrove_mud", gain = 0.4},
		dug = {name = "aus_mangrove_mud", gain = 0.4}
	})
})

local settings = australia.settings

if settings.extra then
	minetest.register_node("australia:woodship", {
		description = S("Sand for the wooden ship"),
		tiles = {"default_sand.png"},
		is_ground_content = true,
		groups = {crumbly = 3, falling_node = 1, sand = 1, soil = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_sand_defaults()
	})

	minetest.register_node("australia:submarine", {
		description = S("Dirt for the submarine"),
		tiles = {"default_dirt.png"},
		is_ground_content = true,
		groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_dirt_defaults()
	})
end



--
-- Ferns
--

	-- Fern
minetest.register_node("australia:fern", {
	description = S("Hypolepis rugosula: Ruddy Ground Fern"),
	inventory_image = "aus_fern.png",
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	tiles = {"aus_fern_mid.png"},
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	},
	drop = "australia:fern"
})

	-- Small Fern
minetest.register_node("australia:small_fern", {
	description = S("Pellaea falcata: Sickle Fern"),
	inventory_image = "aus_fern.png",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"aus_fern.png"},
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	},
	drop = "australia:small_fern"
})

	-- Tree fern leaves
minetest.register_node("australia:tree_fern_leaves", {
	description = S("Dicksonia Antarctica: Tree Fern @1", S("Crown")),
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"aus_fern_tree.png"},
	inventory_image = "aus_fern_tree_inv.png",
	walkable = false,
	groups = {snappy = 3, flammable = 2, attached_node = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"australia:sapling_tree_fern"}, rarity = 20},
			{items = {"australia:tree_fern_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	}
})
minetest.register_node("australia:tree_fern_leaves_02", {
	description = S("Dicksonia Antarctica: Tree Fern @1", S("Leaves")),
	drawtype = "plantlike",
	visual_scale = 2,
	paramtype = "light",
	tiles = {"aus_fern_big.png"},
	walkable = false,
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"australia:sapling_tree_fern"}, rarity = 20},
			{items = {"australia:tree_fern_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	}
})

local use_texture_alpha_string_modes = minetest.features.use_texture_alpha_string_modes
local function texture_alpha(mode) -- clip, blend
	return use_texture_alpha_string_modes and mode or true
end

	-- Fern trunk
minetest.register_node("australia:fern_trunk", {
	description = S("Dicksonia Antarctica: Tree Fern @1", S("Trunk")),
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_top.png",
		"aus_fern_trunk_top.png",
		"aus_fern_trunk.png"
	},
	use_texture_alpha = texture_alpha("clip"),
	node_box = {
		type = "fixed",
		fixed = {-1 / 8, -1 / 2, -1 / 8, 1 / 8, 1 / 2, 1 / 8}
	},
	selection_box = {
		type = "fixed",
		fixed = {-1 / 7, -1 / 2, -1 / 7, 1 / 7, 1 / 2, 1 / 7}
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	after_destruct = function(pos, oldnode)
		local node = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z})
		if node.name == "australia:fern_trunk" then
			minetest.dig_node({x = pos.x, y = pos.y + 1, z = pos.z})
			minetest.add_item(pos, "australia:fern_trunk")
		end
	end
})

	-- Tree fern sapling
minetest.register_node("australia:sapling_tree_fern", {
	description = S("Dicksonia Antarctica: Tree Fern @1", S("Sapling")),
	drawtype = "plantlike",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"aus_sapling_tree_fern.png"},
	inventory_image = "aus_sapling_tree_fern.png",
	walkable = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	}
})

	-- Giant tree fern leaves
minetest.register_node("australia:tree_fern_leaves_giant", {
	description = S("Dicksonia Antarctica: Giant Tree Fern Crown"),
	drawtype = "plantlike",
	visual_scale = math.sqrt(8),
	wield_scale = {x = 0.175, y = 0.175, z = 0.175},
	paramtype = "light",
	tiles = {"aus_fern_tree_giant.png"},
	inventory_image = "aus_fern_tree.png",
	walkable = false,
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	drop = {
		max_items = 2,
		items = {
			{items = {"australia:sapling_giant_tree_fern"}, rarity = 10},
			{items = {"australia:sapling_giant_tree_fern"}},
			{items = {"australia:tree_fern_leaves_giant"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	},
})

	-- Giant tree fern leaf part
minetest.register_node("australia:tree_fern_leaf_big", {
	description = S("Dicksonia Antarctica: Giant Tree Fern Leaves"),
	drawtype = "raillike",
	paramtype = "light",
	tiles = {"aus_tree_fern_leaf_big.png"},
	walkable = false,
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	drop = "",
	sounds = default.node_sound_leaves_defaults()
})

	-- Giant tree fern leaf end
minetest.register_node("australia:tree_fern_leaf_big_end", {
	description = S("Dicksonia Antarctica: Giant Tree Fern @1", S("Leaf End")),
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"aus_tree_fern_leaf_big_end.png"},
	use_texture_alpha = texture_alpha("clip"),
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {-1 / 2, -1 / 2, 1 / 2, 1 / 2, 33 / 64, 1 / 2}
	},
	selection_box = {
		type = "fixed",
		fixed = {-1 / 2, -1 / 2, 1 / 2, 1 / 2, 33 / 64, 1 / 2}
	},
	groups = {snappy = 3, flammable = 2, attached_node = 1, not_in_creative_inventory = 1},
	drop = "",
	sounds = default.node_sound_leaves_defaults()
})

	-- Giant tree fern trunk top
minetest.register_node("australia:fern_trunk_big_top", {
	description = S("Dicksonia Antarctica: Giant Tree Fern @1", S("Trunk Top")),
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_big_top.png^aus_tree_fern_leaf_big_cross.png",
		"aus_fern_trunk_big_top.png^aus_tree_fern_leaf_big_cross.png",
		"aus_fern_trunk_big.png"
	},
	use_texture_alpha = texture_alpha("clip"),
	node_box = {
		type = "fixed",
		fixed = {
			{-1 / 2, 33 / 64, -1 / 2, 1 / 2, 33 / 64, 1 / 2},
			{-1 / 4, -1 / 2, -1 / 4, 1 / 4, 1 / 2, 1 / 4}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-1 / 4, -1 / 2, -1 / 4, 1 / 4, 1 / 2, 1 / 4}
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, leafdecay = 3, -- to support vines
		wood = 1, not_in_creative_inventory = 1},
	drop = "australia:fern_trunk_big",
	sounds = default.node_sound_wood_defaults()
})

	-- Giant tree fern trunk
minetest.register_node("australia:fern_trunk_big", {
	description = S("Dicksonia Antarctica: Giant Tree Fern Trunk"),
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_fern_trunk_big_top.png",
		"aus_fern_trunk_big_top.png",
		"aus_fern_trunk_big.png"
	},
	use_texture_alpha = texture_alpha("clip"),
	node_box = {
		type = "fixed",
		fixed = {-1 / 4, -1 / 2, -1 / 4, 1 / 4, 1 / 2, 1 / 4}
	},
	selection_box = {
		type = "fixed",
		fixed = {-1 / 4, -1 / 2, -1 / 4, 1 / 4, 1 / 2, 1 / 4}
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
	sounds = default.node_sound_wood_defaults(),
	after_destruct = function(pos, oldnode)
		local node = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z})
		if node.name == "australia:fern_trunk_big" or node.name == "australia:fern_trunk_big_top" then
			minetest.dig_node({x = pos.x, y = pos.y + 1, z = pos.z})
			minetest.add_item(pos, "australia:fern_trunk_big")
		end
	end
})

	-- Giant tree fern sapling
minetest.register_node("australia:sapling_giant_tree_fern", {
	description = S("Dicksonia Antarctica: Giant Tree Fern Sapling"),
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"aus_sapling_tree_fern_giant.png"},
	inventory_image = "aus_sapling_tree_fern_giant.png",
	walkable = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -1 / 2, -7 / 16, 7 / 16, 0, 7 / 16}
	}
})



--
-- Plantlife (non-cubic)
--

	-- Acrostichum speciosum: Mangrove Fern
minetest.register_node("australia:mangrove_fern", {
	description = S("Acrostichum speciosum: Mangrove Fern"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_mangrove_fern.png"},
	inventory_image = "aus_mangrove_fern.png",
	wield_image = "aus_mangrove_fern.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Crinum pedunculatum: Mangrove Lily
minetest.register_node("australia:mangrove_lily", {
	description = S("Crinum pedunculatum: Mangrove Lily"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_mangrove_lily.png"},
	inventory_image = "aus_mangrove_lily.png",
	wield_image = "aus_mangrove_lily.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Nypa fruticans: Mangrove Palm
minetest.register_node("australia:mangrove_palm_leaf_top", {
	description = S("Nypa fruticans: Mangrove Fern @1", S("Leaf Top")),
	tiles = {"aus_mangrove_palm_leaf_top.png", "aus_mangrove_palm_leaf_top.png",
		"aus_mangrove_palm_leaf_top.png"},
	use_texture_alpha = texture_alpha("clip"),
	inventory_image = "aus_mangrove_palm_leaf_top.png",
	wield_image = "aus_mangrove_palm_leaf_top.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drawtype = "nodebox",
	nodebox = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
	}
})

minetest.register_node("australia:mangrove_palm_leaf_bot", {
	description = S("Nypa fruticans: Mangrove Fern @1", S("Leaf Bottom")),
	tiles = {"aus_mangrove_palm_leaf_bot.png", "aus_mangrove_palm_leaf_bot.png",
		"aus_mangrove_palm_leaf_bot.png"},
	use_texture_alpha = texture_alpha("clip"),
	inventory_image = "aus_mangrove_palm_leaf_bot.png",
	wield_image = "aus_mangrove_palm_leaf_bot.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	drawtype = "nodebox",
	nodebox = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
	}
})

minetest.register_node("australia:mangrove_palm_trunk", {
	description = S("Nypa fruticans: Mangrove Fern Trunk"),
	tiles = {"aus_mangrove_palm_trunk.png", "aus_mangrove_mud.png",
		"aus_mangrove_palm_trunk.png"},
	inventory_image = "aus_mangrove_palm_trunk.png",
	wield_image = "aus_mangrove_palm_trunk.png",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2, flammable = 2, flora = 1, attached_node = 1, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
--	drawtype = "nodebox",
--	node_box = {
--		type = "fixed",
--		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
--	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}
	}
})

	-- Banksia dallanneyi: Couch Honeypot
minetest.register_node("australia:couch_honeypot", {
	description = S("Banksia dallanneyi: Couch Honeypot"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_couch_honeypot.png"},
	inventory_image = "aus_couch_honeypot.png",
	wield_image = "aus_couch_honeypot.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Crinum flaccidum: Darling Lily
minetest.register_node("australia:darling_lily", {
	description = S("Crinum flaccidum: Darling Lily"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_darling_lily.png"},
	inventory_image = "aus_darling_lily.png",
	wield_image = "aus_darling_lily.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Astrebla pectinata: Mitchell Grass
minetest.register_node("australia:mitchell_grass", {
	description = S("Astrebla pectinata: Mitchell Grass"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_mitchell_grass.png"},
	inventory_image = "aus_mitchell_grass.png",
	wield_image = "aus_mitchell_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Atriplex nummularia: Saltbush
minetest.register_node("australia:saltbush", {
	description = S("Atriplex nummularia: Saltbush"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.4,
	tiles = {"aus_saltbush.png"},
	inventory_image = "aus_saltbush.png",
	wield_image = "aus_saltbush.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Olearia pannosa: Silver Daisy
minetest.register_node("australia:silver_daisy", {
	description = S("Olearia pannosa: Silver Daisy"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_silver_daisy.png"},
	inventory_image = "aus_silver_daisy.png",
	wield_image = "aus_silver_daisy.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Triodia longiceps: Spinifex
minetest.register_node("australia:spinifex", {
	description = S("Triodia longiceps: Spinifex"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.2,
	tiles = {"aus_spinifex.png"},
	inventory_image = "aus_spinifex.png",
	wield_image = "aus_spinifex.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Telopea speciosissima: Waratah
minetest.register_node("australia:waratah", {
	description = S("Telopea speciosissima: Waratah"),
	drawtype = "allfaces_optional",
	visual_scale = 1.0,
	tiles = {"aus_waratah.png"},
	inventory_image = "aus_waratah.png",
	wield_image = "aus_waratah.png",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults()
})

	-- Ecklonia radiata: Common Kelp
minetest.register_node("australia:kelp_brown", {
	description = S("Ecklonia radiata: Common Kelp"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {"aus_kelp_brown.png"},
	inventory_image = "aus_kelp_brown.png",
	wield_image = "aus_kelp_brown.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy = 3, seaplants = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Macrocystis pyrifera: Giant Kelp
minetest.register_node("australia:kelp_giant_brown", {
	description = S("Giant Kelp"),
	drawtype = "plantlike",
	tiles = {"aus_kelp_giant_brown.png"},
	inventory_image = "aus_kelp_giant_brown.png",
	wield_image = "aus_kelp_giant_brown.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.3, 0.3}
	},
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {snappy = 3, seaplants = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	on_use = minetest.item_eat(1)
})

minetest.register_node("australia:kelp_giant_brown_middle", {
	description = S("Giant Kelp middle"),
	drawtype = "plantlike",
	tiles = {"aus_kelp_giant_brown_middle.png"},
	inventory_image = "aus_kelp_giant_brown_middle.png",
	wield_image = "aus_kelp_giant_brown_middle.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {snappy = 3, seaplants = 1, sea = 1},
	drop = "australia:kelp_giant_brown",
	sounds = default.node_sound_leaves_defaults()
})

	-- Dipsastraea speciosa: Brain Coral
minetest.register_node("australia:brain_coral", {
	description = S("Dipsastraea speciosa: Brain Coral"),
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png",
		"aus_brain_coral.png"
	},
	inventory_image = "aus_brain_coral.png",
	wield_image = "aus_brain_coral.png",
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.4375, 0.1875},
			{-0.25, -0.5, -0.25, 0.25, 0.375, 0.25},
			{-0.3125, -0.5, -0.3125, 0.3125, 0.3125, 0.3125},
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375},
			{-0.4375, -0.4375, -0.4375, 0.4375, 0.1875, 0.4375},
			{-0.5, -0.375, -0.5, 0.5, 0.125, 0.5}
		}
	}
})

	-- Acropora millepora: Cluster Coral (green)
minetest.register_node("australia:cluster_coral_green", {
	description = S("Acropora millepora: Cluster Coral"),
	drawtype = "plantlike",
	tiles = {"aus_cluster_coral_green.png"},
	inventory_image = "aus_cluster_coral_green.png",
	wield_image = "aus_cluster_coral_green.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora millepora: Cluster Coral (orange)
minetest.register_node("australia:cluster_coral_orange", {
	description = S("Acropora millepora: Cluster Coral"),
	drawtype = "plantlike",
	tiles = {"aus_cluster_coral_orange.png"},
	inventory_image = "aus_cluster_coral_orange.png",
	wield_image = "aus_cluster_coral_orange.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora millepora: Cluster Coral (purple)
minetest.register_node("australia:cluster_coral_purple", {
	description = S("Acropora millepora: Cluster Coral"),
	drawtype = "plantlike",
	tiles = {"aus_cluster_coral_purple.png"},
	inventory_image = "aus_cluster_coral_purple.png",
	wield_image = "aus_cluster_coral_purple.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora cervicornis: Staghorn Coral (blue)
minetest.register_node("australia:staghorn_coral_blue", {
	description = S("Acropora cervicornis: Staghorn Coral"),
	drawtype = "plantlike",
	tiles = {"aus_staghorn_coral_blue.png"},
	inventory_image = "aus_staghorn_coral_blue.png",
	wield_image = "aus_staghorn_coral_blue.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora cervicornis: Staghorn Coral (pink)
minetest.register_node("australia:staghorn_coral_pink", {
	description = S("Acropora cervicornis: Staghorn Coral"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_pink.png"},
	inventory_image = "aus_staghorn_coral_pink.png",
	wield_image = "aus_staghorn_coral_pink.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora cervicornis: Staghorn Coral (purple)
minetest.register_node("australia:staghorn_coral_purple", {
	description = S("Acropora cervicornis: Staghorn Coral"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_purple.png"},
	inventory_image = "aus_staghorn_coral_purple.png",
	wield_image = "aus_staghorn_coral_purple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acropora cervicornis: Staghorn Coral (yellow)
minetest.register_node("australia:staghorn_coral_yellow", {
	description = S("Acropora cervicornis: Staghorn Coral"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_staghorn_coral_yellow.png"},
	inventory_image = "aus_staghorn_coral_yellow.png",
	wield_image = "aus_staghorn_coral_yellow.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Pocillopora damicornis: Cauliflower Coral (brown)
minetest.register_node("australia:cauliflower_coral_brown", {
	description = S("Pocillopora damicornis: Cauliflower Coral"),
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = {"aus_cauliflower_coral_brown.png"},
	inventory_image = "aus_cauliflower_coral_brown.png",
	wield_image = "aus_cauliflower_coral_brown.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Pocillopora damicornis: Cauliflower Coral (green)
minetest.register_node("australia:cauliflower_coral_green", {
	description = S("Pocillopora damicornis: Cauliflower Coral"),
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = {"aus_cauliflower_coral_green.png"},
	inventory_image = "aus_cauliflower_coral_green.png",
	wield_image = "aus_cauliflower_coral_green.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Pocillopora damicornis: Cauliflower Coral (pink)
minetest.register_node("australia:cauliflower_coral_pink", {
	description = S("Pocillopora damicornis: Cauliflower Coral"),
	drawtype = "plantlike",
	visual_scale = 0.75,
	tiles = {"aus_cauliflower_coral_pink.png"},
	inventory_image = "aus_cauliflower_coral_pink.png",
	wield_image = "aus_cauliflower_coral_pink.png",
	paramtype = "light",
	walkable = false,
	climable = true,
	drowning = 1,
	is_ground_content = true,
	groups = {cracky = 3, coral = 1, stone = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Acabaria sp.: Sea Fan
minetest.register_node("australia:seafan_coral", {
	description = S("Acabaria sp.: Sea Fan"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_seafan_coral.png"},
	inventory_image = "aus_seafan_coral.png",
	wield_image = "aus_seafan_coral.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy = 3, coral = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Euphyllia ancora: Hammer coral
minetest.register_node("australia:hammer_coral", {
	description = S("Euphyllia ancora: Hammer coral"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_hammer_coral.png"},
	inventory_image = "aus_hammer_coral.png",
	wield_image = "aus_hammer_coral.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy = 3, coral = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Pipestela candelabra: Bob Marley Sponge
minetest.register_node("australia:tube_sponge", {
	description = S("Pipestela candelabra: Bob Marley Sponge"),
	drawtype = "plantlike",
	waving = 0,
	visual_scale = 1.0,
	tiles = {"aus_tube_sponge.png"},
	inventory_image = "aus_tube_sponge.png",
	wield_image = "aus_tube_sponge.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy = 3, coral = 1, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})

	-- Halodule uninervis: Narrowleaf Seagrass
minetest.register_node("australia:sea_grass", {
	description = S("Halodule uninervis: Narrowleaf Seagrass"),
	drawtype = "plantlike",
	waving = 1,
	visual_scale = 1.0,
	tiles = {"aus_sea_grass.png"},
	inventory_image = "aus_sea_grass.png",
	wield_image = "aus_sea_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climable = true,
	buildable_to = false,
	drowning = 1,
	is_ground_content = true,
	groups = {snappy = 3, attached_node = 1, sea = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5}
	}
})



--
-- Liquids
--

minetest.register_node("australia:muddy_river_water_source", {
	description = S("Muddy River Water Source"),
	drawtype = "liquid",
	tiles = {
		{
			name = "aus_muddy_river_water_source.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0
			}
		},
		{
			name = "aus_muddy_river_water_source.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0
			}
		}
	},
	use_texture_alpha = texture_alpha("blend"),
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "australia:muddy_river_water_flowing",
	liquid_alternative_source = "australia:muddy_river_water_source",
	liquid_viscosity = 2,
	liquid_renewable = false,
	liquid_range = 3,
	post_effect_color = {a = 232, r = 92, g = 80, b = 48},
	groups = {water = 3, liquid = 3, cools_lava = 1}
})

minetest.register_node("australia:muddy_river_water_flowing", {
	description = S("Flowing Muddy River Water"),
	drawtype = "flowingliquid",
	tiles = {"aus_muddy_river_water_source.png"},
	special_tiles = {
		{
			image = "aus_muddy_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8
			}
		},
		{
			image = "aus_muddy_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8
			}
		}
	},
	use_texture_alpha = texture_alpha("blend"),
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "australia:muddy_river_water_flowing",
	liquid_alternative_source = "australia:muddy_river_water_source",
	liquid_viscosity = 2,
	liquid_renewable = false,
	liquid_range = 3,
	post_effect_color = {a = 232, r = 92, g = 80, b = 48},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1}
})



--
-- Tools / "Advanced" crafting / Non-"natural"
--

if settings.extra then
	minetest.register_node("australia:woodshipchest", {
		description = S("Woodship chest"),
		tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
			"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
		paramtype2 = "facedir",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
		drop = 'default:chest',
		legacy_facedir_simple = true,
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec",
				"size[8,9]" ..
				"list[context;main;0,0;8,4;]" ..
				"list[current_player;main;0,5;8,4;]")
			meta:set_string("infotext", S("Woodship chest"))
			meta:get_inventory():set_size("main", 8 * 4)
			local value, contents = math.random(1, 100), {}
			if value <= 25 then
				contents = {main = {[1] = "default:coal_lump 36"}}
			elseif value >= 26 or value <= 40 then
				contents = {main = {[1] = "default:iron_lump 24"}}
			elseif value >= 41 or value <= 45 then
				contents = {main = {[1] = "default:gold_lump 24"}}
			elseif value >= 46 or value <= 50 then
				contents = {main = {[1] = "default:diamond 24"}}
			elseif value >= 51 or value <= 60 then
				contents = {main = {[1] = "australia:huon_pine_tree 18"}}
			elseif value >= 61 or value <= 70 then
				contents = {main = {[1] = "australia:jarrah_tree 18"}}
			elseif value >= 71 or value <= 80 then
				contents = {main = {[1] = "australia:marri_tree 18"}}
			elseif value >= 81 or value <= 90 then
				contents = {main = {[1] = "australia:merbau_tree 18"}}
			else
				contents = {main = {[1] = "australia:river_red_gum_tree 18"}}
			end
			meta:from_table({
				inventory = contents,
				fields = {
					formspec = "size[8,9;]list[context;main;0,0;8,4;]list[current_player;main;0,5;8,4;]",
					infotext = S("Woodship chest")
				}
			})
		end,
		can_dig = function(pos, player)
			return minetest.get_meta(pos):get_inventory():is_empty("main")
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff in chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff to chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name()..
				" takes stuff from chest at " .. minetest.pos_to_string(pos))
		end
	})

	minetest.register_node("australia:submarinechest", {
		description = S("U-boot chest"),
		tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
			"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
		paramtype2 = "facedir",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, not_in_creative_inventory = 1},
		drop = 'default:chest',
		legacy_facedir_simple = true,
		is_ground_content = false,
		sounds = default.node_sound_wood_defaults(),
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec",
				"size[8,9]" ..
				"list[context;main;0,0;8,4;]" ..
				"list[current_player;main;0,5;8,4;]")
			meta:set_string("infotext", S("U-boot chest"))
			meta:get_inventory():set_size("main", 8 * 4)
			local contents = {}
			if math.random(1, 2) == 1 and minetest.get_modpath("technic_worldgen") then
				contents = {main = {[1] = "technic:mineral_uranium 18", [2] = "default:sword_steel 2"}}
			elseif minetest.global_exists("tnt") then
				contents = {main = {[1] = "tnt:tnt 3", [2] = "default:sword_steel 2"}}
			else
				contents = {main = {[1] = "default:lava_source 3", [2] = "default:sword_steel 2"}}
			end
			meta:from_table({
				inventory = contents,
				fields = {
					formspec = "size[8,9;]list[context;main;0,0;8,4;]list[current_player;main;0,5;8,4;]",
					infotext = S("U-boot chest")
				}
			})
		end,
		can_dig = function(pos, player)
			return minetest.get_meta(pos):get_inventory():is_empty("main")
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff in chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff to chest at " .. minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name()..
				" takes stuff from chest at " .. minetest.pos_to_string(pos))
		end
	})
end



--
-- Misc
--

minetest.register_node("australia:moss", {
	description = S("Moss"),
	drawtype = "nodebox",
	tiles = {"aus_moss.png"},
	use_texture_alpha = texture_alpha("clip"),
	inventory_image = "aus_moss.png",
	wield_image = "aus_moss.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.46875, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
	},
	groups = {snappy = 3, flammable = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("australia:moss_with_fungus", {
	description = S("Moss with Fungus"),
	drawtype = "nodebox",
	tiles = {"aus_moss_fungus.png"},
	use_texture_alpha = texture_alpha("clip"),
	inventory_image = "aus_moss_fungus.png",
	wield_image = "aus_moss_fungus.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.46875, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
	},
	groups = {snappy = 3, flammable = 3},
	sounds = default.node_sound_leaves_defaults()
})