minetest.register_craft({
	output = 'australia:red_stonebrick 4',
	recipe = {
		{'australia:red_stone', 'australia:red_stone'},
		{'australia:red_stone', 'australia:red_stone'}
	}
})

minetest.register_craft({
	output = 'australia:bluestone_brick 4',
	recipe = {
		{'australia:bluestone', 'australia:bluestone'},
		{'australia:bluestone', 'australia:bluestone'}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "australia:fiddlehead 3",
	recipe = {"australia:fern_01"},
	replacements = {
		{"australia:fern_01", "australia:ferntuber"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "australia:fiddlehead 3",
	recipe = {"australia:tree_fern_leaves"},
	replacements = {
		{"australia:tree_fern_leaves", "australia:sapling_tree_fern"}
	}
})



--
-- Cooking recipes
--

minetest.register_craft({
	type = "cooking",
	output = "australia:bluestone",
	recipe = "australia:bluestone_cobble"
})

minetest.register_craft({
	type = "cooking",
	output = "australia:red_stone",
	recipe = "australia:red_cobble"
})

minetest.register_craft({
	type = "cooking",
	output = "australia:ferntuber_roasted",
	recipe = "australia:ferntuber",
	cooktime = 3
})

minetest.register_craft({
	type = "cooking",
	output = "australia:fiddlehead_roasted",
	recipe = "australia:fiddlehead",
	cooktime = 1
})