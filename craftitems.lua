local S = australia.S

	-- Fiddlehead
minetest.register_craftitem("australia:fiddlehead", {
	description = S("Fiddlehead"),
	inventory_image = "aus_fiddlehead.png",
	on_use = minetest.item_eat(-1) -- slightly poisonous when raw
})

minetest.register_craftitem("australia:fiddlehead_roasted", {
	description = S("Roasted Fiddlehead"),
	inventory_image = "aus_fiddlehead_roasted.png",
	on_use = minetest.item_eat(1) -- edible when cooked
})

	-- Fern tuber
minetest.register_craftitem("australia:ferntuber", {
	description = S("Fern Tuber"),
	inventory_image = "aus_ferntuber.png"
})

minetest.register_craftitem("australia:ferntuber_roasted", {
	description = S("Roasted Fern Tuber"),
	inventory_image = "aus_ferntuber_roasted.png",
	on_use = minetest.item_eat(3)
})

	-- Bucket muddy_water
bucket.register_liquid(
	"australia:muddy_river_water_source",
	"australia:muddy_river_water_flowing",
	"australia:bucket_muddy_river_water",
	"aus_bucket_muddy_water.png",
	S("Muddy River Water Bucket"),
	{tool = 1},
	true
)