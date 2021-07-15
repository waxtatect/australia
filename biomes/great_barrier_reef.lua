minetest.register_biome({
	name = "great_barrier_reef",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = -64,
	y_max = 3,
	heat_point = 75,
	humidity_point = 75
})



--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_brain",
	wherein			= "default:sand",
	clust_scarcity	= 20 * 20 * 20,
	clust_num_ores	= 8,
	clust_size		= 3,
	biomes			= {"great_barrier_reef"},
	y_min			= -12,
	y_max			= -3
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cauliflower_brown",
	wherein			= "default:sand",
	clust_scarcity	= 11 * 11 * 11,
	clust_num_ores	= 25,
	clust_size		= 8,
	biomes			= {"great_barrier_reef"},
	y_min			= -12,
	y_max			= -4
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cauliflower_green",
	wherein			= "default:sand",
	clust_scarcity	= 11 * 11 * 11,
	clust_num_ores	= 25,
	clust_size		= 8,
	biomes			= {"great_barrier_reef"},
	y_min			= -12,
	y_max			= -4
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cauliflower_pink",
	wherein			= "default:sand",
	clust_scarcity	= 11 * 11 * 11,
	clust_num_ores	= 25,
	clust_size		= 8,
	biomes			= {"great_barrier_reef"},
	y_min			= -12,
	y_max			= -4
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cluster_green",
	wherein			= "default:sand",
	clust_scarcity	= 15 * 15 * 15,
	clust_num_ores	= 20,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -8,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cluster_orange",
	wherein			= "default:sand",
	clust_scarcity	= 15 * 15 * 15,
	clust_num_ores	= 20,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -8,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_cluster_purple",
	wherein			= "default:sand",
	clust_scarcity	= 15 * 15 * 15,
	clust_num_ores	= 20,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -8,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_hammer",
	wherein			= "default:sand",
	clust_scarcity	= 64 * 64 * 64,
	clust_num_ores	= 20,
	clust_size		= 12,
	biomes			= {"great_barrier_reef"},
	y_min			= -10,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_seafan",
	wherein			= "default:sand",
	clust_scarcity	= 24 * 24 * 24,
	clust_num_ores	= 9,
	clust_size		= 3,
	biomes			= {"great_barrier_reef"},
	y_min			= -10,
	y_max			= -5
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_staghorn_blue",
	wherein			= "default:sand",
	clust_scarcity	= 10 * 10 * 10,
	clust_num_ores	= 24,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -6,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_staghorn_pink",
	wherein			= "default:sand",
	clust_scarcity	= 9 * 9 * 9,
	clust_num_ores	= 25,
	clust_size		= 5,
	biomes			= {"great_barrier_reef"},
	y_min			= -6,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_staghorn_purple",
	wherein			= "default:sand",
	clust_scarcity	= 13 * 13 * 13,
	clust_num_ores	= 20,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -6,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_staghorn_yellow",
	wherein			= "default:sand",
	clust_scarcity	= 12 * 12 * 12,
	clust_num_ores	= 22,
	clust_size		= 4,
	biomes			= {"great_barrier_reef"},
	y_min			= -6,
	y_max			= -2
})

minetest.register_ore({
	ore_type		= "scatter",
	ore				= "australia:coral_stone_tube_sponge",
	wherein			= "default:sand",
	clust_scarcity	= 21 * 21 * 21,
	clust_num_ores	= 10,
	clust_size		= 2,
	biomes			= {"great_barrier_reef"},
	y_min			= -15,
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
		biomes			= {"great_barrier_reef"},
		y_min			= -64,
		y_max			= -6
	})
end



--
-- Decorations
--

	-- Narrowleaf Seagrass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:sand"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"great_barrier_reef"},
	y_min = -10,
	y_max = -2,
	decoration = "australia:sea_grass",
	flags = "force_placement"
})



--
-- ABM'S
--

minetest.register_abm({
	label = "[australia][great_barrier_reef] add coral",
	nodenames = {"group:reef"},
	interval = 15,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		pos.y = pos.y + 1
		local nodename = minetest.get_node(pos).name
		if nodename == "default:water_source" or nodename == "australia:water_source" then
			local name = node.name:gsub("coral_stone_", "")
			if name ~= "australia:tube_sponge" then
				if name:match("_") then
					name = name:gsub("_", "_coral_")
				else
					name = name:gsub("$", "_coral")
				end
			end
			minetest.add_node(pos, {name = name})
		end
	end
})

minetest.register_abm({
	label = "[australia][great_barrier_reef] heal objects",
	nodenames = {"group:coral"},
	interval = 3,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local nodename1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name
		local nodename2 = minetest.get_node({x = pos.x, y = pos.y + 2, z = pos.z}).name
		if (nodename1 == "default:water_source" or nodename1 == "australia:water_source") and
			(nodename2 == "default:water_source" or nodename2 == "australia:water_source")
		then
			for _, obj in ipairs(minetest.get_objects_inside_radius(pos, 2)) do
				obj:set_hp(obj:get_hp() + 1)
			end
		end
	end
})