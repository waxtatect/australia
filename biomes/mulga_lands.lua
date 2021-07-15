minetest.register_biome({
	name = "mulga_lands",
	--node_dust = "",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 75,
	humidity_point = 45
})



--
-- Decorations
--

if australia.settings.decorations then
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
			biomes = {"mulga_lands"},
			y_min = 36,
			y_max = 190,
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



--
-- Trees
--

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
		place_on = {"australia:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.coolabah_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.quandong_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Mulga Tree
australia.generate_schematics("mulga_tree", {
	type = "tree",
	v = 3, max_v = 4, trunk_height = 2, ht = 4,
	tree = "australia:mulga_tree", leaves = "australia:mulga_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.mulga_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 4000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.mulga_tree[i],
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
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.river_oak_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- River Red Gum
australia.generate_schematics("river_red_gum_tree", {
	type = "giant_tree",
	v = 10, max_v = 13, trunk_height = 7, ht = 13,
	tree = "australia:river_red_gum_tree", leaves = "australia:river_red_gum_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.river_red_gum_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 140,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.river_red_gum_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end

	-- Shoestring Acacia
australia.generate_schematics("shoestring_acacia_tree", {
	type = "tree",
	v = 2, max_v = 3, trunk_height = 3, ht = 5,
	tree = "australia:shoestring_acacia_tree", leaves = "australia:shoestring_acacia_leaves",
	fruit = nil, limbs = nil
})
local count = #australia.schematics.shoestring_acacia_tree
for i = 1, count do
	minetest.register_decoration({
		deco_type = "schematic",
		sidelen = 80,
		place_on = {"default:dirt_with_dry_grass"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 12000,
		biomes = {"mulga_lands"},
		schematic = australia.schematics.shoestring_acacia_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end