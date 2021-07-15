local settings = australia.settings

if settings.contents then
	minetest.clear_registered_biomes()
	minetest.clear_registered_decorations()
	minetest.clear_registered_ores()
end

--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

if settings.ores then
		-- Clay
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:clay",
		wherein			= {"default:sand"},
		clust_scarcity	= 16 * 16 * 16,
		clust_size		= 5,
		y_min			= -15,
		y_max			= 0,
		noise_threshold	= 0.0,
		noise_params	= {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		}
	})

		-- Sand
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:sand",
		wherein			= {"default:stone", "default:sandstone"},
		clust_scarcity	= 16 * 16 * 16,
		clust_size		= 5,
		y_min			= -31,
		y_max			= 4,
		noise_threshold = 0.0,
		noise_params	= {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		}
	})

		-- Dirt
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:dirt",
		wherein			= {"default:stone", "default:sandstone"},
		clust_scarcity	= 16 * 16 * 16,
		clust_size		= 5,
		y_min			= -31,
		y_max			= 31000,
		noise_threshold	= 0.0,
		noise_params	= {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		}
	})

		-- Gravel
	minetest.register_ore({
		ore_type		= "blob",
		ore				= "default:gravel",
		wherein			= {"default:stone"},
		clust_scarcity	= 16 * 16 * 16,
		clust_size		= 5,
		y_min			= -31000,
		y_max			= 31000,
		noise_threshold	= 0.0,
		noise_params	= {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		}
	})

		-- Coal
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_coal",
		wherein			= "default:stone",
		clust_scarcity	= 8 * 8 * 8,
		clust_num_ores	= 8,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= 64
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_coal",
		wherein			= "default:stone",
		clust_scarcity	= 24 * 24 * 24,
		clust_num_ores	= 27,
		clust_size		= 6,
		y_min			= -31000,
		y_max			= 0
	})

		-- Iron
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_iron",
		wherein			= "default:stone",
		clust_scarcity	= 12 * 12 * 12,
		clust_num_ores	= 3,
		clust_size		= 2,
		y_min			= -15,
		y_max			= 2
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_iron",
		wherein			= "default:stone",
		clust_scarcity	= 9 * 9 * 9,
		clust_num_ores	= 5,
		clust_size		= 3,
		y_min			= -63,
		y_max			= -16
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_iron",
		wherein			= "default:stone",
		clust_scarcity	= 7 * 7 * 7,
		clust_num_ores	= 5,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= -64
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_iron",
		wherein			= "default:stone",
		clust_scarcity	= 24 * 24 * 24,
		clust_num_ores	= 27,
		clust_size		= 6,
		y_min			= -31000,
		y_max			= -64
	})

		--Mese
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_mese",
		wherein			= "default:stone",
		clust_scarcity	= 18 * 18 * 18,
		clust_num_ores	= 3,
		clust_size		= 2,
		y_min			= -255,
		y_max			= -64
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_mese",
		wherein			= "default:stone",
		clust_scarcity	= 14 * 14 * 14,
		clust_num_ores	= 5,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= -256
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:mese",
		wherein			= "default:stone",
		clust_scarcity	= 36 * 36 * 36,
		clust_num_ores	= 3,
		clust_size		= 2,
		y_min			= -31000,
		y_max			= -1024
	})

		-- Gold
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_gold",
		wherein			= "default:stone",
		clust_scarcity	= 15 * 15 * 15,
		clust_num_ores	= 3,
		clust_size		= 2,
		y_min			= -255,
		y_max			= -64
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_gold",
		wherein			= "default:stone",
		clust_scarcity	= 13 * 13 * 13,
		clust_num_ores	= 5,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= -256
	})

		-- Diamond
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_diamond",
		wherein			= "default:stone",
		clust_scarcity	= 17 * 17 * 17,
		clust_num_ores	= 4,
		clust_size		= 3,
		y_min			= -255,
		y_max			= -128
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_diamond",
		wherein			= "default:stone",
		clust_scarcity	= 15 * 15 * 15,
		clust_num_ores	= 4,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= -256
	})

		-- Copper
	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_copper",
		wherein			= "default:stone",
		clust_scarcity	= 12 * 12 * 12,
		clust_num_ores	= 4,
		clust_size		= 3,
		y_min			= -63,
		y_max			= -16
	})

	minetest.register_ore({
		ore_type		= "scatter",
		ore				= "default:stone_with_copper",
		wherein			= "default:stone",
		clust_scarcity	= 9 * 9 * 9,
		clust_num_ores	= 5,
		clust_size		= 3,
		y_min			= -31000,
		y_max			= -64
	})
end



--
-- Biomes
--

local BP = australia.MP .. "biomes/"

	-- Underground biome
if australia.underground then
	dofile(BP .. "underground.lua")
end

	-- Coastal biomes
if australia.mangroves then
	dofile(BP .. "mangroves.lua")
end
if australia.tasman_sea then
	dofile(BP .. "tasman_sea.lua")
end
if australia.great_australian_bight then
	dofile(BP .. "great_australian_bight.lua")
end
if australia.indian_ocean then
	dofile(BP .. "indian_ocean.lua")
end
if australia.great_barrier_reef then
	dofile(BP .. "great_barrier_reef.lua")
end
if australia.timor_sea then
	dofile(BP .. "timor_sea.lua")
end

	-- Lowland biomes
if australia.jarrah_karri_forests then
	dofile(BP .. "jarrah_karri_forests.lua")
end
if australia.eastern_coasts then
	dofile(BP .. "eastern_coasts.lua")
end
if australia.goldfields_esperence then
	dofile(BP .. "goldfields_esperence.lua")
end
if australia.arnhem_land then
	dofile(BP .. "arnhem_land.lua")
end
if australia.gulf_of_carpentaria then
	dofile(BP .. "gulf_of_carpentaria.lua")
end
if australia.far_north_queensland then
	dofile(BP .. "far_north_queensland.lua")
end
if australia.pilbara then
	dofile(BP .. "pilbara.lua")
end
if australia.kimberley then
	dofile(BP .. "kimberley.lua")
end

	-- Highland biomes
if australia.tasmania then
	dofile(BP .. "tasmania.lua")
end
if australia.great_dividing_range then
	dofile(BP .. "great_dividing_range.lua")
end
if australia.victorian_forests then
	dofile(BP .. "victorian_forests.lua")
end
if australia.flinders_lofty then
	dofile(BP .. "flinders_lofty.lua")
end
if australia.murray_darling_basin then
	dofile(BP .. "murray_darling_basin.lua")
end
if australia.mulga_lands then
	dofile(BP .. "mulga_lands.lua")
end
if australia.central_australia then
	dofile(BP .. "central_australia.lua")
end
if australia.simpson_desert then
	dofile(BP .. "simpson_desert.lua")
end

	-- Alpine biome
if australia.australian_alps then
	dofile(BP .. "australian_alps.lua")
end



--
-- ABM'S
--

if not (australia.tasman_sea or australia.indian_ocean or australia.great_australian_bight) then
	return
end

minetest.register_abm({
	label = "[australia] add kelp_brown",
	nodenames = {"australia:stone_kelp_brown"},
	interval = 15,
	chance = 5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		pos.y = pos.y + 1
		local nodename = minetest.get_node(pos).name
		if nodename == "default:water_source" or nodename == "australia:water_source" then
			minetest.add_node(pos, {name = "australia:kelp_brown"})
		end
	end
})

if not settings.extra then
	return
end

minetest.register_abm({
	label = "[australia] add woodship",
	nodenames = {"australia:woodship"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local nodename = minetest.get_node({x = pos.x, y = pos.y + 3, z = pos.z}).name
		if nodename ~= "default:water_source" and nodename ~= "australia:water_source" then
			return
		end

		minetest.add_node(pos, {name = "default:sand"})

		pos.y = pos.y + 1
		pos.x = pos.x - 6

		for a = 1, 11 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:tree"})
		end

		pos.z = pos.z + 1
		pos.x = pos.x - 10

		for a = 1, 9 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:tree"})
		end

		pos.z = pos.z - 2
		pos.x = pos.x - 9

		for a = 1, 9 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:tree"})
		end

		pos.y = pos.y + 1
		pos.x = pos.x - 8
		pos.z = pos.z - 1

		for a = 1, 7 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:tree"})
		end

		pos.z = pos.z + 4
		pos.x = pos.x - 7

		for a = 1, 7 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:tree"})
		end

		pos.z = pos.z - 1
		pos.x = pos.x + 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z - 1
		pos.x = pos.x + 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.x = pos.x + 1
		minetest.add_node(pos, {name = "default:tree"})

		pos.z = pos.z - 1
		pos.x = pos.x - 2
		minetest.add_node(pos, {name = "default:tree"})

		pos.z = pos.z + 2
		pos.x = pos.x - 8
		minetest.add_node(pos, {name = "default:tree"})

		pos.z = pos.z - 1
		pos.x = pos.x - 1
		minetest.add_node(pos, {name = "default:tree"})

		pos.x = pos.x - 1
		minetest.add_node(pos, {name = "default:tree"})

		pos.z = pos.z - 1
		pos.x = pos.x + 2
		minetest.add_node(pos, {name = "default:tree"})

		pos.y = pos.y + 1
		pos.z = pos.z - 1

		for a = 1, 7 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.z = pos.z + 4
		pos.x = pos.x - 7

		for a = 1, 7 do
			pos.x = pos.x + 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.z = pos.z - 1
		pos.x = pos.x + 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z - 1
		pos.x = pos.x + 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z - 1
		pos.x = pos.x - 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z + 2
		pos.x = pos.x - 8
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z - 1
		pos.x = pos.x - 1
		minetest.add_node(pos, {name = "default:wood"})

		for a = 1, 3 do
			pos.x = pos.x - 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.z = pos.z - 1
		pos.x = pos.x + 4
		minetest.add_node(pos, {name = "default:wood"})

		pos.z = pos.z + 1
		pos.x = pos.x + 3
		minetest.add_node(pos, {name = "default:wood"})

		pos.y = pos.y + 1
		minetest.add_node(pos, {name = "default:wood"})

		pos.y = pos.y - 2
		minetest.add_node(pos, {name = "default:wood"})

		pos.y = pos.y + 3
		pos.z = pos.z - 4

		for a = 1, 7 do
			pos.z = pos.z + 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.z = pos.z - 3

		for a = 1, 2 do
			pos.y = pos.y + 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.y = pos.y + 1
		pos.z = pos.z - 3

		for a = 1, 5 do
			pos.z = pos.z + 1
			minetest.add_node(pos, {name = "default:wood"})
		end

		pos.y = pos.y + 1
		pos.z = pos.z - 2
		minetest.add_node(pos, {name = "default:wood"})

		pos.y = pos.y - 7
		pos.z = pos.z + 1
		pos.x = pos.x - 2
		minetest.add_node(pos, {name = "australia:woodshipchest"})
	end
})