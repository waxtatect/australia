minetest.register_biome({
	name = "mangroves",
	--node_dust = "",
	node_top = "australia:mangrove_mud",
	depth_top = 3,
	node_filler = "default:clay",
	depth_filler = 1,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = -2,
	y_max = 3,
	heat_point = 80,
	humidity_point = 80
})



--
-- Decorations
--

	-- Mangrove Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"australia:mangrove_mud",
		"default:dirt",
		"default:dirt_with_grass"
	},
	sidelen = 80,
	fill_ratio = 0.2,
	biomes = {"mangroves"},
	y_min = 2,
	y_max = 3,
	decoration = "australia:mangrove_fern"
})

	-- Mangrove Lily
minetest.register_decoration({
	deco_type = "simple",
	place_on = {
		"australia:mangrove_mud",
		"default:dirt",
		"default:dirt_with_grass"
	},
	sidelen = 80,
	fill_ratio = 0.1,
	biomes = {"mangroves"},
	y_min = 2,
	y_max = 3,
	decoration = "australia:mangrove_lily"
})

	-- Mangrove Palm
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"australia:mangrove_mud", "default:dirt"},
	sidelen = 80,
	fill_ratio = 0.3,
	biomes = {"mangroves"},
	y_min = 1,
	y_max = 3,
	schematic = {
		size = {x = 1, y = 4, z = 1},
		yslice_prob = {},
		data = {
			{name = "ignore", param1 = 0, param2 = 0},
			{name = "australia:mangrove_palm_trunk", param1 = 255, param2 = 0},
			{name = "australia:mangrove_palm_leaf_bot", param1 = 255, param2 = 0},
			{name = "australia:mangrove_palm_leaf_top", param1 = 255, param2 = 0}
		}
	},
	flags = "force_placement"
})



--
-- Trees
--

	-- Grey Mangrove
australia.generate_schematics("grey_mangrove_tree", {
	type = "mangrove",
	v = 4, max_v = 6, trunk_height = 3,
	tree = "australia:grey_mangrove_tree", leaves = "australia:grey_mangrove_leaves"
})
local count = #australia.schematics.grey_mangrove_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:mangrove_mud", "default:dirt", "default:sand"},
		y_min = -2,
		y_max = 3,
		fill_ratio = 0.003,
		biomes = {"mangroves"},
		schematic = australia.schematics.grey_mangrove_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Mangrove Apple
australia.generate_schematics("mangrove_apple_tree", {
	type = "tree",
	v = 3, max_v = 5, trunk_height = 1, ht = 4,
	tree = "australia:mangrove_apple_tree", leaves = "australia:mangrove_apple_leaves",
	fruit = "australia:mangrove_apple", limbs = nil
})
local count = #australia.schematics.mangrove_apple_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:mangrove_mud", "default:dirt", "default:sand"},
		y_min = 0,
		y_max = 3,
		fill_ratio = (count - i + 1) / 5000,
		biomes = {"mangroves"},
		schematic = australia.schematics.mangrove_apple_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Stilted Mangrove
australia.generate_schematics("stilted_mangrove_tree", {
	type = "mangrove",
	v = 4, max_v = 6, trunk_height = 3,
	tree = "australia:stilted_mangrove_tree", leaves = "australia:stilted_mangrove_leaves"
})
local count = #australia.schematics.stilted_mangrove_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:mangrove_mud", "default:dirt", "default:sand"},
		y_min = -2,
		y_max = 3,
		fill_ratio = 0.003,
		biomes = {"mangroves"},
		schematic = australia.schematics.stilted_mangrove_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end