minetest.register_biome({
	name = "goldfields_esperence",
	--node_dust = "",
	node_top = "default:desert_sand",
	depth_top = 2,
	node_filler = "default:sandstone",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "default:dirt_with_dry_grass",
	y_min = 4,
	y_max = 35,
	heat_point = 60,
	humidity_point = 20
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

if australia.settings.ores then
		-- Gold
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:stone_with_gold",
		wherein			= {"default:stone"},
		clust_scarcity	= 36 * 36 * 36,
		clust_size		= 8,
		biomes			= {"goldfields_esperence"},
		y_min			= -64,
		y_max			= 0,
		noise_threshold = 0.8,
		noise_params	= {
			offset = 0,
			scale = 3,
			spread = {x = 16, y = 16, z = 16},
			seed = 891,
			octaves = 3,
			persist = 0.6
		}
	})
end



--
-- Decorations
--

if australia.settings.decorations then
	local function register_dry_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:desert_sand"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"goldfields_esperence"},
			y_min = 5,
			y_max = 35,
			decoration = "default:dry_grass_" .. length
		})
	end

		-- Dry grasses
	register_dry_grass_decoration(0.01,	 0.05, 5)
	register_dry_grass_decoration(0.03,	 0.03, 4)
	register_dry_grass_decoration(0.05,	 0.01, 3)
	register_dry_grass_decoration(0.07,	-0.01, 2)
	register_dry_grass_decoration(0.09,	-0.03, 1)
end

	-- Spinifex
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"goldfields_esperence"},
	y_min = 6,
	y_max = 35,
	decoration = "australia:spinifex"
})



--
-- Trees
--

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
		place_on = {"default:desert_sand"},
		y_min = 6,
		y_max = 35,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"goldfields_esperence"},
		schematic = australia.schematics.quandong_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end