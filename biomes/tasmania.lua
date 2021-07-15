minetest.register_biome({
	name = "tasmania",
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
	y_min = 36,
	y_max = 31000,
	heat_point = 15,
	humidity_point = 85
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
	y_min = 36,
	y_max = 70,
	fill_ratio = 0.006,
	biomes = {"tasmania"},
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

	-- Small Tree Fern
local f1 = {name = "australia:fern_trunk"}
local f2 = {name = "australia:tree_fern_leaves_02"}

minetest.register_decoration({
	deco_type = "schematic",
	sidelen = 80,
	place_on = {"default:dirt_with_grass"},
	y_min = 36,
	y_max = 80,
	fill_ratio = 0.01,
	biomes = {"tasmania"},
	schematic = {
		size = {y = 4, x = 1, z = 1},
		yslice_prob = {},
		data = {f1, f1, f1, f2}
	}
})

	-- Ruddy Ground Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.006,
		spread = {x = 200, y = 200, z = 200},
		seed = 80,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 36,
	y_max = 160,
	decoration = "australia:fern"
})

	-- Sickle Fern
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.008,
		spread = {x = 200, y = 200, z = 200},
		seed = 81,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 36,
	y_max = 140,
	decoration = "australia:small_fern"
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
			biomes = {"tasmania"},
			y_min = 3,
			y_max = 31000,
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
-- Moss
--

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.9,
	biomes = {"tasmania"},
	y_min = 8,
	y_max = 31000,
	decoration = "australia:moss"
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"tasmania"},
	y_min = 8,
	y_max = 31000,
	decoration = "australia:moss_with_fungus"
})



--
-- Mushrooms
--

if australia.settings.decorations then
		-- Brown Mushroom
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 200, y = 200, z = 200},
			seed = 55,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"tasmania"},
		y_min = 7,
		y_max = 31000,
		decoration = "flowers:mushroom_brown"
	})

		-- Red Mushroom
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.006,
			spread = {x = 200, y = 200, z = 200},
			seed = 56,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"tasmania"},
		y_min = 7,
		y_max = 31000,
		decoration = "flowers:mushroom_red"
	})
end



--
-- Trees
--

	-- Blue Gum
australia.generate_schematics("blue_gum_tree", {
	type = "tree",
	v = 6, max_v = 7, trunk_height = 10, ht = 12,
	tree = "australia:blue_gum_tree", leaves = "australia:blue_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.blue_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"tasmania"},
		schematic = australia.schematics.blue_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Celery-top Pine
australia.generate_schematics("celery_top_pine_tree", {
	type = "conifer",
	v = 4, max_v = 5, trunk_height = 5, radius = 4,
	tree = "australia:celery_top_pine_tree", leaves = "australia:celery_top_pine_leaves",
	fruit = nil
})
local count = #australia.schematics.celery_top_pine_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 180,
		fill_ratio = (count - i + 1) / 8000,
		biomes = {"tasmania"},
		schematic = australia.schematics.celery_top_pine_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Huon Pine
australia.generate_schematics("huon_pine_tree", {
	type = "tree",
	v = 4, max_v = 4, trunk_height = 4, ht = 8,
	tree = "australia:huon_pine_tree", leaves = "australia:huon_pine_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.huon_pine_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"tasmania"},
		schematic = australia.schematics.huon_pine_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Southern Sassafras
australia.generate_schematics("southern_sassafras_tree", {
	type = "conifer",
	v = 4, max_v = 5, trunk_height = 6, radius = 4,
	tree = "australia:southern_sassafras_tree", leaves = "australia:southern_sassafras_leaves",
	fruit = nil
})
local count = #australia.schematics.southern_sassafras_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 170,
		fill_ratio = (count - i + 1) / 8000,
		biomes = {"tasmania"},
		schematic = australia.schematics.southern_sassafras_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Swamp Gum
australia.generate_schematics("swamp_gum_tree", {
	type = "giant_tree",
	v = 6, max_v = 6, trunk_height = 26, ht = 18,
	tree = "australia:swamp_gum_tree", leaves = "australia:swamp_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.swamp_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 120,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"tasmania"},
		schematic = australia.schematics.swamp_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Tasmanian Myrtle
australia.generate_schematics("tasmanian_myrtle_tree", {
	type = "big_tree",
	v = 6, max_v = 8, trunk_height = 6, ht = 14,
	tree = "australia:tasmanian_myrtle_tree", leaves = "australia:tasmanian_myrtle_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.tasmanian_myrtle_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 10000,
		biomes = {"tasmania"},
		schematic = australia.schematics.tasmanian_myrtle_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end