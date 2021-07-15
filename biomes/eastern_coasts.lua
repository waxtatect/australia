minetest.register_biome({
	name = "eastern_coasts",
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
	y_min = 4,
	y_max = 35,
	heat_point = 35,
	humidity_point = 60
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
	biomes			= {"eastern_coasts"},
	y_min			= 4,
	y_max			= 35,
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
		biomes			= {"eastern_coasts"},
		y_min			= -64,
		y_max			= 35
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:coalblock",
		wherein			= "default:stone",
		clust_scarcity	= 48 * 48 * 48,
		clust_num_ores	= 8,
		clust_size		= 3,
		biomes			= {"eastern_coasts"},
		y_min			= -64,
		y_max			= 35
	})
end



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
			biomes = {"eastern_coasts"},
			y_min = 4,
			y_max = 35,
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

	-- Waratah
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"eastern_coasts"},
	y_min = 6,
	y_max = 35,
	schematic = {
		size = {x = 2, y = 4, z = 2},
		yslice_prob = {},
		data = {
			{name = "ignore", param1 = 0, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "ignore", param1 = 0, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 225, param2 = 0},
			{name = "ignore", param1 = 0, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 225, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "ignore", param1 = 0, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0},
			{name = "australia:waratah", param1 = 255, param2 = 0}
		}
	},
	flags = "force_placement"
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
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
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
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.cherry_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Coast Banksia (big)
australia.generate_schematics("coast_banksia_tree", {
	type = "tree",
	v = 5, max_v = 6, trunk_height = 3, ht = 7,
	tree = "australia:coast_banksia_tree", leaves = "australia:coast_banksia_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.coast_banksia_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.coast_banksia_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Coast Banksia (small)
australia.generate_schematics("coast_banksia_small_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 1, ht = 4,
	tree = "australia:coast_banksia_tree", leaves = "australia:coast_banksia_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.coast_banksia_small_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 6,
		y_max = 10,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.coast_banksia_small_tree[i],
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
		place_on = {"australia:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.coolabah_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Illawarra Flame Tree
australia.generate_schematics("illawarra_flame_tree", {
	type = "tree",
	v = 5, max_v = 6, trunk_height = 4, ht = 5,
	tree = "australia:illawarra_flame_tree", leaves = "australia:illawarra_flame_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.illawarra_flame_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.illawarra_flame_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Lemon Myrtle
australia.generate_schematics("lemon_myrtle_tree", {
	type = "tree",
	v = 2, max_v = 3, trunk_height = 2, ht = 4,
	tree = "australia:lemon_myrtle_tree", leaves = "australia:lemon_myrtle_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.lemon_myrtle_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.lemon_myrtle_tree[i],
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
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.lilly_pilly_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Macadamia Tree
australia.generate_schematics("macadamia_tree", {
	type = "tree",
	v = 4, max_v = 6, trunk_height = 2, ht = 6,
	tree = "australia:macadamia_tree", leaves = "australia:macadamia_leaves",
	fruit = "australia:macadamia", limbs = nil
})
local count = #australia.schematics.macadamia_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.macadamia_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Moreton Bay Fig
australia.generate_schematics("moreton_bay_fig_tree", {
	type = "giant_tree",
	v = 11, max_v = 13, trunk_height = 2, ht = 12,
	tree = "australia:moreton_bay_fig_tree", leaves = "australia:moreton_bay_fig_leaves",
	fruit = "australia:moreton_bay_fig", limbs = nil
})
local count = #australia.schematics.moreton_bay_fig_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.moreton_bay_fig_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Paperbark Tree
australia.generate_schematics("paperbark_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 4, ht = 8,
	tree = "australia:paperbark_tree", leaves = "australia:paperbark_leaves",
	fruit = "australia:macadamia", limbs = nil
})
local count = #australia.schematics.paperbark_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.paperbark_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- River Oak (big)
australia.generate_schematics("river_oak_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 3, ht = 9,
	tree = "australia:river_oak_tree", leaves = "australia:river_oak_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.river_oak_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 25,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.river_oak_tree[i],
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
		y_min = 25,
		y_max = 35,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.river_red_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Scribbly Gum
australia.generate_schematics("scribbly_gum_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 4, ht = 5,
	tree = "australia:scribbly_gum_tree", leaves = "australia:scribbly_gum_leaves",
	fruit = "australia:macadamia", limbs = nil
})
local count = #australia.schematics.scribbly_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.scribbly_gum_tree[i],
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
		y_min = 7,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"eastern_coasts"},
		schematic = australia.schematics.tea_tree_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end