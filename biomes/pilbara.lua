minetest.register_biome({
	name = "pilbara",
	--node_dust = "",
	node_top = "australia:red_gravel",
	depth_top = 2,
	node_filler = "australia:red_stone",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 4,
	y_max = 35,
	heat_point = 80,
	humidity_point = 20
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

if australia.settings.ores then
		-- Iron
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "air",
		wherein			= {"default:stone"},
		clust_scarcity	= 24 * 24 * 24,
		clust_size		= 8,
		biomes			= {"pilbara"},
		y_min			= -64,
		y_max			= 35,
		noise_threshold = 1,
		noise_params	= {
			offset = 0,
			scale = 3,
			spread = {x = 16, y = 16, z = 16},
			seed = 895,
			octaves = 3,
			persist = 0.6
		}
	})
end



--
-- Decorations
--

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"australia:red_gravel"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"pilbara"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:dry_grass_" .. length
	})
end

	-- Dry grasses
register_dry_grass_decoration(0.07,	-0.01, 2)
register_dry_grass_decoration(0.09,	-0.03, 1)

	-- Mitchell Grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_gravel"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"pilbara"},
	y_min = 6,
	y_max = 31000,
	decoration = "australia:mitchell_grass"
})

	-- Spinifex
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"australia:red_gravel"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"pilbara"},
	y_min = 8,
	y_max = 31000,
	decoration = "australia:spinifex"
})



--
-- Trees
--

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
		place_on = {"australia:red_gravel"},
		y_min = 10,
		y_max = 35,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"pilbara"},
		schematic = australia.schematics.desert_oak_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end