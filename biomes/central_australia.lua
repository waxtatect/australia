minetest.register_biome({
	name = "central_australia",
	--node_dust = "",
	node_top = "australia:red_dirt",
	depth_top = 1,
	node_filler = "australia:red_stone",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 80,
	humidity_point = 25
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

-- Uranium from Technic modpack: technic_worldgen mod
if minetest.get_modpath("technic_worldgen") then
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "technic:mineral_uranium",
		wherein			= "default:stone",
		clust_scarcity	= 20 * 20 * 20,
		clust_num_ores	= 6,
		clust_size		= 4,
		biomes			= {"central_australia"},
		y_min			= -64,
		y_max			= 64,
		noise_params	= {
			offset = 0,
			scale = 1,
			spread = {x = 100, y = 100, z = 100},
			seed = 421,
			octaves = 3,
			persist = 0.7
		},
		noise_threshold = 0.6
	})
end



--
-- Decorations
--

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"australia:red_dirt"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"central_australia"},
		y_min = 36,
		y_max = 190,
		decoration = "default:dry_grass_" .. length
	})
end

	-- Dry grasses
register_dry_grass_decoration(0.05,	 0.01, 3)
register_dry_grass_decoration(0.07,	-0.01, 2)
register_dry_grass_decoration(0.09,	-0.03, 1)

	-- Mitchell Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_dirt"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"central_australia"},
	y_min = 37,
	y_max = 180,
	decoration = "australia:mitchell_grass"
})

	-- Spinifex
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_dirt"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"central_australia"},
	y_min = 37,
	y_max = 170,
	decoration = "australia:spinifex"
})



--
-- Trees
--

	-- Coolabah Tree
australia.generate_schematics("coolabah_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 3, ht = 7,
	tree = "australia:coolabah_tree", leaves = "australia:coolabah_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.coolabah_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"central_australia"},
		schematic = australia.schematics.coolabah_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Desert Oak
australia.generate_schematics("desert_oak_tree", {
	type = "big_tree",
	v = 6, max_v = 8, trunk_height = 6, ht = 5,
	tree = "australia:desert_oak_tree", leaves = "australia:desert_oak_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.desert_oak_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"central_australia"},
		schematic = australia.schematics.desert_oak_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Desert Quandong
australia.generate_schematics("quandong_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 2, ht = 4,
	tree = "australia:quandong_tree", leaves = "australia:quandong_leaves",
	fruit = "australia:quandong", limbs = nil
})
local count = #australia.schematics.quandong_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 130,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"central_australia"},
		schematic = australia.schematics.quandong_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Wirewood
australia.generate_schematics("wirewood_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 2, ht = 4,
	tree = "australia:wirewood_tree", leaves = "australia:black_wattle_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.wirewood_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"central_australia"},
		schematic = australia.schematics.wirewood_tree[i],
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
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"central_australia"},
		schematic = australia.schematics.river_red_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Sugar Gum
australia.generate_schematics("sugar_gum_tree", {
	type = "tree",
	v = 9, max_v = 11, trunk_height = 8, ht = 10,
	tree = "australia:sugar_gum_tree", leaves = "australia:sugar_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.sugar_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"australia:red_dirt"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"central_australia"},
		schematic = australia.schematics.sugar_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end