minetest.register_biome({
	name = "gulf_of_carpentaria",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 4,
	y_max = 35,
	heat_point = 75,
	humidity_point = 55
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
		clust_scarcity	= 44 * 44 * 44,
		clust_size		= 8,
		biomes			= {"gulf_of_carpentaria"},
		y_min			= -64,
		y_max			= 0,
		noise_threshold = 1,
		noise_params	= {
			offset = 0,
			scale = 3,
			spread = {x = 16, y = 16, z = 16},
			seed = 890,
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
			biomes = {"gulf_of_carpentaria"},
			y_min = 4,
			y_max = 9,
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
			biomes = {"gulf_of_carpentaria"},
			y_min = 7,
			y_max = 35,
			decoration = "default:dry_grass_" .. length
		})
	end

		-- Grasses
	register_grass_decoration(0,	 0.06,	3)
	register_grass_decoration(0.015, 0.045,	2)
	register_grass_decoration(0.03,	 0.03,	1)

		-- Dry grasses
	register_dry_grass_decoration(0.01,	 0.05, 5)
	register_dry_grass_decoration(0.03,	 0.03, 4)
	register_dry_grass_decoration(0.05,	 0.01, 3)
	register_dry_grass_decoration(0.07,	-0.01, 2)
	register_dry_grass_decoration(0.09,	-0.03, 1)
end

	-- Mitchell Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"gulf_of_carpentaria"},
	y_min = 12,
	y_max = 35,
	decoration = "australia:mitchell_grass"
})



--
-- Trees
--

	-- Cloncurry Box
australia.generate_schematics("cloncurry_box_tree", {
	type = "tree",
	v = 5, max_v = 6, trunk_height = 3, ht = 4,
	tree = "australia:cloncurry_box_tree", leaves = "australia:cloncurry_box_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.cloncurry_box_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 6,
		y_max = 35,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"gulf_of_carpentaria"},
		schematic = australia.schematics.cloncurry_box_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Darwin Woollybutt
australia.generate_schematics("darwin_woollybutt_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 6, ht = 5,
	tree = "australia:darwin_woollybutt_tree", leaves = "australia:darwin_woollybutt_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.darwin_woollybutt_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"gulf_of_carpentaria"},
		schematic = australia.schematics.darwin_woollybutt_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- River Oak (small)
australia.generate_schematics("river_oak_small_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 2, ht = 6,
	tree = "australia:river_oak_tree", leaves = "australia:river_oak_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.river_oak_small_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"gulf_of_carpentaria"},
		schematic = australia.schematics.river_oak_small_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end