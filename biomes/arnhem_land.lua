minetest.register_biome({
	name = "arnhem_land",
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
	heat_point = 60,
	humidity_point = 80
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
		clust_scarcity	= 24 * 24 * 24,
		clust_num_ores	= 4,
		clust_size		= 3,
		biomes			= {"arnhem_land"},
		y_min			= -64,
		y_max			= 35,
		noise_params	= {
			offset = 0,
			scale = 1,
			spread = {x = 100, y = 100, z = 100},
			seed = 420,
			octaves = 3,
			persist = 0.7
		},
		noise_threshold = 0.6
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
			biomes = {"arnhem_land"},
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



--
-- Trees
--

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
		place_on = {"default:dirt_with_grass"},
		y_min = 8,
		y_max = 35,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"arnhem_land"},
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
		place_on = {"default:dirt_with_grass"},
		y_min = 12,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"arnhem_land"},
		schematic = australia.schematics.river_oak_small_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end