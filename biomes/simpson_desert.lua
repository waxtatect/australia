minetest.register_biome({
	name = "simpson_desert",
	--node_dust = "",
	node_top = "australia:red_sand",
	depth_top = 3,
	node_filler = "australia:red_stone",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	node_river_water = "australia:muddy_river_water_source",
	y_min = 36,
	y_max = 31000,
	heat_point = 85,
	humidity_point = 10
})



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
		place_on = {"australia:red_sand"},
		y_min = 36,
		y_max = 150,
		fill_ratio = (count - i + 1) / 20000,
		biomes = {"simpson_desert"},
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
		place_on = {"australia:red_sand"},
		y_min = 36,
		y_max = 130,
		fill_ratio = (count - i + 1) / 15000,
		biomes = {"simpson_desert"},
		schematic = australia.schematics.quandong_tree[i],
		flags = "place_center_x, place_center_z",
		rotation = "random"
	})
end