minetest.register_biome({
	name = "far_north_queensland",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	--node_river_water = "",
	y_min = 4,
	y_max = 35,
	heat_point = 75,
	humidity_point = 90
})



--
-- Ferns
--

	-- Big Tree Fern
local n1 = {name = "air", prob = 0}
local n2 = {name = "australia:tree_fern_leaf_big_end"}
local n3 = {name = "australia:tree_fern_leaf_big"}
local n4 = {name = "australia:fern_trunk_big"}
local n5 = {name = "australia:tree_fern_leaf_big_end", param2 = 1}
local n6 = {name = "australia:fern_trunk_big_top"}
local n7 = {name = "australia:tree_fern_leaf_big_end", param2 = 3}
local n8 = {name = "australia:tree_fern_leaves_giant"}
local n9 = {name = "australia:tree_fern_leaf_big_end", param2 = 2}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 6,
	y_max = 20,
	fill_ratio = 0.003,
	biomes = {"far_north_queensland"},
	schematic = {
		size = {y = 7, x = 9, z = 9},
		yslice_prob = {},
		data = {
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1,
				n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n5,
				n1, n1, n1, n6, n1, n1, n1, n7, n1, n3, n1, n3, n8, n3, n1, n3, n1,
				n1, n1, n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n9, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1
		}
	},
	flags = "place_center_x, place_center_z"
})

	-- Giant Tree Fern
local n1 = {name = "air", prob = 0}
local n2 = {name = "australia:tree_fern_leaf_big_end"}
local n3 = {name = "australia:tree_fern_leaf_big"}
local n4 = {name = "australia:fern_trunk_big"}
local n5 = {name = "australia:tree_fern_leaf_big_end", param2 = 1}
local n6 = {name = "australia:fern_trunk_big_top"}
local n7 = {name = "australia:tree_fern_leaf_big_end", param2 = 3}
local n8 = {name = "australia:tree_fern_leaves_giant"}
local n9 = {name = "australia:tree_fern_leaf_big_end", param2 = 2}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 7,
	y_max = 18,
	fill_ratio = 0.005,
	biomes = {"far_north_queensland"},
	schematic = {
		size = {y = 13, x = 9, z = 9},
		yslice_prob = {},
		data = {
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n2, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1,
				n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1,
				n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1,
				n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1, n4,
				n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n1, n1, n1, n1,
				n4, n1, n1, n1, n1, n1, n1, n1, n1, n4, n1, n1, n1, n1, n5, n1, n1,
				n1, n6, n1, n1, n1, n7, n1, n3, n1, n3, n8, n3, n1, n3, n1, n1, n1,
				n3, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n3, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n3, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n9, n1, n1, n1, n1, n1, n1,
				n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1, n1
		}
	},
	flags = "place_center_x, place_center_z"
})

	-- Small Tree Fern
local f1 = {name = "australia:fern_trunk"}
local f2 = {name = "australia:tree_fern_leaves_02"}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 6,
	y_max = 21,
	fill_ratio = 0.01,
	biomes = {"far_north_queensland"},
	schematic = {
		size = {y = 4, x = 1, z = 1},
		yslice_prob = {},
		data = {f1, f1, f1, f2}
	}
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
			biomes = {"far_north_queensland"},
			y_min = 5,
			y_max = 35,
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
			biomes = {"far_north_queensland"},
			y_min = 22,
			y_max = 35,
			decoration = "default:dry_grass_" .. length
		})
	end

		-- Grasses
	register_grass_decoration(-0.03,  0.09,	 5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration( 0,	  0.06,	 3)
	register_grass_decoration( 0.015, 0.045, 2)
	register_grass_decoration( 0.03,  0.03,	 1)

		-- Dry grasses
	register_dry_grass_decoration(0.01,	0.05, 5)
	register_dry_grass_decoration(0.03,	0.03, 4)
end



--
-- Trees
--

	-- Daintree Stringybark
australia.generate_schematics("daintree_stringybark_tree", {
	type = "tree",
	v = 6, max_v = 7, trunk_height = 9, ht = 10,
	tree = "australia:daintree_stringybark_tree", leaves = "australia:daintree_stringybark_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.daintree_stringybark_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 25,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.daintree_stringybark_tree[i],
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
		place_on = {"default:dirt_with_grass"},
		y_min = 25,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.darwin_woollybutt_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Australian Fan Palm
australia.generate_schematics("fan_palm_tree", {
	type = "fanpalm",
	v = 9, max_v = 9, trunk_height = 9, r = 3,
	tree = "australia:fan_palm_tree", leaves = "australia:fan_palm_leaves"
})
local count = #australia.schematics.fan_palm_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 5,
		y_max = 20,
		fill_ratio = (count - i + 1) / 300,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.fan_palm_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Lemon Eucalyptus
australia.generate_schematics("lemon_eucalyptus_tree", {
	type = "tree",
	v = 4, max_v = 5, trunk_height = 8, ht = 7,
	tree = "australia:lemon_eucalyptus_tree", leaves = "australia:lemon_eucalyptus_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.lemon_eucalyptus_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 20,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.lemon_eucalyptus_tree[i],
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
		y_min = 20,
		y_max = 35,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.lilly_pilly_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Merbau
australia.generate_schematics("merbau_tree", {
	type = "rainforest",
	v = 8, max_v = 12, trunk_height = 12, r = 8,
	tree = "australia:merbau_tree", leaves = "australia:merbau_leaves"
})
local count = #australia.schematics.merbau_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 6,
		y_max = 25,
		fill_ratio = (count - i + 1) / 6000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.merbau_tree[i],
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
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"far_north_queensland"},
		schematic = australia.schematics.river_oak_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end