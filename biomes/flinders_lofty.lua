minetest.register_biome({
	name = "flinders_lofty",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 50,
	humidity_point = 50
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

if australia.settings.ores then
		-- Copper
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:stone_with_copper",
		wherein			= {"default:stone"},
		clust_scarcity	= 48 * 48 * 48,
		clust_size		= 8,
		biomes			= {"flinders_lofty"},
		y_min			= -64,
		y_max			= 64,
		noise_threshold = 1,
		noise_params	= {
			offset = 0,
			scale = 3,
			spread = {x = 16, y = 16, z = 16},
			seed = 892,
			octaves = 3,
			persist = 0.6
		}
	})
end



--
-- Decorations
--

if australia.settings.decorations then
	local function register_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_dry_grass"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"flinders_lofty"},
			y_min = 36,
			y_max = 200,
			decoration = "default:grass_" .. length
		})
	end

	local function register_dry_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_dry_grass"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"flinders_lofty"},
			y_min = 36,
			y_max = 200,
			decoration = "default:dry_grass_" .. length
		})
	end

		-- Grasses
	register_grass_decoration(0.015, 0.045,	2)
	register_grass_decoration(0.03,	 0.03,	1)

		-- Dry grasses
	register_dry_grass_decoration(0.01,	 0.05, 5)
	register_dry_grass_decoration(0.03,	 0.03, 4)
	register_dry_grass_decoration(0.05,	 0.01, 3)
	register_dry_grass_decoration(0.07,	-0.01, 2)
	register_dry_grass_decoration(0.09,	-0.03, 1)
end



--
-- Logs
--

	-- River Red Gum Log
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0018,
		scale = 0.0011,
		spread = {x = 250, y = 250, z = 250},
		seed = 33,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"flinders_lofty"},
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"flinders_lofty"},
		schematic = australia.schematics.black_wattle_tree[i],
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 120,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"great_dividing_range"},
		schematic = australia.schematics.cherry_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

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
		place_on = {"australia:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"flinders_lofty"},
		schematic = australia.schematics.coolabah_tree[i],
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"flinders_lofty"},
		schematic = australia.schematics.golden_wattle_tree[i],
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"flinders_lofty"},
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"flinders_lofty"},
		schematic = australia.schematics.sugar_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end