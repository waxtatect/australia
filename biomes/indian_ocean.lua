minetest.register_biome({
	name = "indian_ocean",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sandstone",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = -64,
	y_max = 3,
	heat_point = 60,
	humidity_point = 50
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:stone_kelp_brown",
	wherein			= "default:sand",
	clust_scarcity	= 9 * 9 * 9,
	clust_num_ores	= 25,
	clust_size		= 6,
	biomes			= {"indian_ocean"},
	y_min			= -10,
	y_max			= -3
})

if australia.settings.extra then
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "australia:woodship",
		wherein			= "default:sand",
		clust_scarcity	= 30 * 30 * 30,
		clust_num_ores	= 1,
		clust_size		= 12,
		biomes			= {"indian_ocean"},
		y_min			= -64,
		y_max			= -6
	})
end



--
-- Decorations
--

if not australia.settings.decorations then
	local function register_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"indian_ocean"},
			y_min = 3,
			y_max = 3,
			decoration = "default:grass_" .. length
		})
	end

	local function register_dry_grass_decoration(offset, scale, length)
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:sand"},
			sidelen = 16,
			noise_params = {
				offset = offset,
				scale = scale,
				spread = {x = 200, y = 200, z = 200},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			biomes = {"indian_ocean"},
			y_min = 3,
			y_max = 3,
			decoration = "default:dry_grass_" .. length
		})
	end

		-- Grasses
	register_grass_decoration(0.015, 0.045,	2)
	register_grass_decoration(0.03,	 0.03,	1)

		-- Dry grasses
	register_dry_grass_decoration(0.01,	0.05, 5)
	register_dry_grass_decoration(0.03,	0.03, 4)
	register_dry_grass_decoration(0.05,	0.01, 3)
end

	-- Narrowleaf Seagrass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 80,
	fill_ratio = 0.01,
	biomes = {"indian_ocean"},
	y_min = -10,
	y_max = -2,
	decoration = "australia:sea_grass",
	flags = "force_placement"
})