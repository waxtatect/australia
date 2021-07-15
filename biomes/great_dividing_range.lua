minetest.register_biome({
	name = "great_dividing_range",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 25,
	humidity_point = 65
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

	-- Bluestone (Basalt)
minetest.register_ore({
	ore_type		= "blob",
	ore				= "australia:bluestone",
	wherein			= {"default:stone"},
	clust_scarcity	= 16 * 16 * 16,
	clust_size		= 8,
	biomes			= {"great_dividing_range"},
	y_min			= 36,
	y_max			= 31000,
	noise_threshold = 0.0,
	noise_params	= {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 677,
		octaves = 1,
		persist = 0.0
	}
})

if australia.settings.ores then
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_coal",
		wherein			= "default:stone",
		clust_scarcity	= 24 * 24 * 24,
		clust_num_ores	= 24,
		clust_size		= 5,
		biomes			= {"great_dividing_range"},
		y_min			= -64,
		y_max			= 64
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:coalblock",
		wherein			= "default:stone",
		clust_scarcity	= 48 * 48 * 48,
		clust_num_ores	= 8,
		clust_size		= 3,
		biomes			= {"great_dividing_range"},
		y_min			= -64,
		y_max			= 64
	})
end



--
-- Ferns
--

	-- Big Tree Fern
local n1 = {name = "air", prob = 0}
local n2 = {name = "australia:tree_fern_leaf_big_end"}
local n3 = {name = "australia:tree_fern_leaf_big"}
local n4 = {name = "australia:fern_trunk_big"}
local n5 = {name = "australia:tree_fern_leaf_big_end", param2 = 1}
local n6 = {name = "australia:fern_trunk_big_top"}
local n7 = {name = "australia:tree_fern_leaf_big_end", param2 = 3}
local n8 = {name = "australia:tree_fern_leaves_giant"}
local n9 = {name = "australia:tree_fern_leaf_big_end", param2 = 2}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 36,
	y_max = 70,
	fill_ratio = 0.002,
	biomes = {"great_dividing_range"},
	schematic = {
		size = {y = 7, x = 9, z = 9},
		yslice_prob = {},
		data = {
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1,
				n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n5,
				n1, n1, n1, n6, n1, n1, n1, n7, n1, n3, n1, n3, n8, n3, n1, n3, n1,
				n1, n1, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n9, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1
		}
	},
	flags = "place_center_x, place_center_z"
})

	-- Small Tree Fern
local f1 = {name = "australia:fern_trunk"}
local f2 = {name = "australia:tree_fern_leaves_02"}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 36,
	y_max = 80,
	fill_ratio = 0.004,
	biomes = {"great_dividing_range"},
	schematic = {
		size = {y = 4, x = 1, z = 1},
		yslice_prob = {},
		data = {f1, f1, f1, f2}
	}
})

	-- Ruddy Ground Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.005,
		spread = {x = 200, y = 200, z = 200},
		seed = 80,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"great_dividing_range"},
	y_min = 36,
	y_max = 160,
	decoration = "australia:fern"
})

	-- Sickle Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.007,
		spread = {x = 200, y = 200, z = 200},
		seed = 81,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"great_dividing_range"},
	y_min = 36,
	y_max = 140,
	decoration = "australia:small_fern"
})



--
-- Decorations
--

if australia.settings.decorations then
	local function register_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"great_dividing_range"},
			y_min = 36,
			y_max = 31000,
			decoration = "default:grass_" .. length
		})
	end

		-- Grasses
	register_grass_decoration(-0.03,  0.09,	 5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration( 0,	  0.06,	 3)
	register_grass_decoration( 0.015, 0.045, 2)
	register_grass_decoration( 0.03,  0.03,	 1)
end



--
-- Logs
--

	-- River Red Gum
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 33,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"great_dividing_range"},
	y_min = 36,
	y_max = 170,
	schematic = {
		size = {x = 3, y = 3, z = 1},
		yslice_prob = {},
		data = {
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "air", prob = 0},
			{name = "australia:river_red_gum_tree", param2 = 12, prob = 191},
			{name = "australia:river_red_gum_tree", param2 = 12},
			{name = "australia:river_red_gum_tree", param2 = 12, prob = 127},
			{name = "air", prob = 0},
			{name = "flowers:mushroom_brown", prob = 63},
			{name = "air", prob = 0}
		}
	},
	flags = "place_center_x",
	rotation = "random"
})



--
-- Moss
--

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.06,
	biomes = {"great_dividing_range"},
	y_min = 36,
	y_max = 31000,
	decoration = "australia:moss",
})



--
-- Trees
--

	-- Black Wattle
australia.generate_schematics("black_wattle_tree", {
	type = "tree",
	v = 5, max_v = 6, trunk_height = 4, ht = 8,
	tree = "australia:black_wattle_tree", leaves = "australia:black_wattle_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.black_wattle_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.black_wattle_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Blue Gum
australia.generate_schematics("blue_gum_tree", {
	type = "tree",
	v = 6, max_v = 7, trunk_height = 10, ht = 12,
	tree = "australia:blue_gum_tree", leaves = "australia:blue_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.blue_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 180,
		fill_ratio = (count - i + 1) / 8000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.blue_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Australian Cherry
australia.generate_schematics("cherry_tree", {
	type = "conifer",
	v = 2, max_v = 3, trunk_height = 3, radius = 2,
	tree = "australia:cherry_tree", leaves = "australia:cherry_leaves",
	fruit = "australia:cherry"
})
local count = #australia.schematics.cherry_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.cherry_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Golden Wattle
australia.generate_schematics("golden_wattle_tree", {
	type = "tree",
	v = 2, max_v = 3, trunk_height = 2, ht = 3,
	tree = "australia:golden_wattle_tree", leaves = "australia:golden_wattle_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.golden_wattle_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.golden_wattle_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Lilly Pilly
australia.generate_schematics("lilly_pilly_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 1, ht = 8,
	tree = "australia:lilly_pilly_tree", leaves = "australia:lilly_pilly_leaves",
	fruit = "australia:lilly_pilly_berries", limbs = nil
})
local count = #australia.schematics.lilly_pilly_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.lilly_pilly_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Red Bottlebrush
australia.generate_schematics("red_bottlebrush_tree", {
	type = "tree",
	v = 2, max_v = 3, trunk_height = 1, ht = 4,
	tree = "australia:red_bottlebrush_tree", leaves = "australia:red_bottlebrush_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.red_bottlebrush_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.red_bottlebrush_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- River Red Gum
australia.generate_schematics("river_red_gum_tree", {
	type = "giant_tree",
	v = 10, max_v = 13, trunk_height = 7, ht = 13,
	tree = "australia:river_red_gum_tree", leaves = "australia:river_red_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.river_red_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.river_red_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Southern Sassafras
australia.generate_schematics("southern_sassafras_tree", {
	type = "conifer",
	v = 4, max_v = 5, trunk_height = 6, radius = 4,
	tree = "australia:southern_sassafras_tree", leaves = "australia:southern_sassafras_leaves",
	fruit = nil
})
local count = #australia.schematics.southern_sassafras_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 180,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.southern_sassafras_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Tea Tree
australia.generate_schematics("tea_tree_tree", {
	type = "tree",
	v = 2, max_v = 3, trunk_height = 1, ht = 4,
	tree = "australia:tea_tree_tree", leaves = "australia:tea_tree_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.tea_tree_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.tea_tree_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end