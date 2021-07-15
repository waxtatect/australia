minetest.register_biome({
	name = "jarrah_karri_forests",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 4,
	y_max = 35,
	heat_point = 20,
	humidity_point = 50
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
	wherein			= {"default:stone", "default:sandstone"},
	clust_scarcity	= 16 * 16 * 16,
	clust_size		= 8,
	biomes			= {"jarrah_karri_forests"},
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
	},
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
			biomes = {"jarrah_karri_forests"},
			y_min = 5,
			y_max = 31000,
			decoration = "default:grass_" .. length
		})
	end

	local function register_dry_grass_decoration(offset, scale, length)
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
			biomes = {"jarrah_karri_forests"},
			y_min = 5,
			y_max = 31000,
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

	-- Couch Honeypot
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"jarrah_karri_forests"},
	decoration = "australia:couch_honeypot"
})



--
-- Trees
--

	-- Bull Banksia
australia.generate_schematics("bull_banksia_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 2, ht = 5,
	tree = "australia:bull_banksia_tree", leaves = "australia:bull_banksia_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.bull_banksia_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.bull_banksia_tree[i],
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
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.coolabah_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Jarrah
australia.generate_schematics("jarrah_tree", {
	type = "giant_tree",
	v = 8, max_v = 10, trunk_height = 8, ht = 12,
	tree = "australia:jarrah_tree", leaves = "australia:jarrah_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.jarrah_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 8000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.jarrah_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Karri
australia.generate_schematics("karri_tree", {
	type = "giant_tree",
	v = 10, max_v = 12, trunk_height = 20, ht = 10,
	tree = "australia:karri_tree", leaves = "australia:karri_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.karri_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.karri_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Marri
australia.generate_schematics("marri_tree", {
	type = "giant_tree",
	v = 8, max_v = 10, trunk_height = 8, ht = 12,
	tree = "australia:marri_tree", leaves = "australia:marri_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.marri_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.marri_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Rottnest Island Pine
australia.generate_schematics("rottnest_island_pine_tree", {
	type = "conifer",
	v = 2, max_v = 3, trunk_height = 3, radius = 2,
	tree = "australia:rottnest_island_pine_tree", leaves = "australia:rottnest_island_pine_leaves",
	fruit = nil
})
local count = #australia.schematics.rottnest_island_pine_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 6,
		y_max = 20,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.rottnest_island_pine_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Swamp Paperbark
australia.generate_schematics("swamp_paperbark_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 3, ht = 9,
	tree = "australia:swamp_paperbark_tree", leaves = "australia:swamp_paperbark_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.swamp_paperbark_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 7,
		y_max = 25,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"jarrah_karri_forests"},
		schematic = australia.schematics.swamp_paperbark_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end