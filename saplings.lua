-- unused

--[[
--
-- Grow trees from saplings
--

-- list of all saplings
local saplings = {
	["australia:black_box_sapling"] = australia.schematics.black_box_tree,
	["australia:black_wattle_sapling"] = australia.schematics.black_wattle_tree,
	["australia:blue_gum_sapling"] = australia.schematics.blue_gum_tree,
	["australia:boab_sapling"] = australia.schematics.boab_tree,
	["australia:bull_banksia_sapling"] = australia.schematics.bull_banksia_tree,
	["australia:celery_top_pine_sapling"] = australia.schematics.celery_top_pine_tree,
	["australia:cherry_sapling"] = australia.schematics.cherry_tree,
	["australia:cloncurry_box_sapling"] = australia.schematics.cloncurry_box_tree,
	["australia:coast_banksia_sapling"] = australia.schematics.coast_banksia_tree,
	["australia:coolabah_sapling"] = australia.schematics.coolabah_tree,
	["australia:daintree_stringybark_sapling"] = australia.schematics.daintree_stringybark_tree,
	["australia:darwin_woollybutt_sapling"] = australia.schematics.darwin_woollybutt_tree,
	["australia:desert_oak_sapling"] = australia.schematics.desert_oak_tree,
	["australia:fan_palm_sapling"] = australia.schematics.fan_palm_tree,
	["australia:golden_wattle_sapling"] = australia.schematics.golden_wattle_tree,
	["australia:grey_mangrove_sapling"] = australia.schematics.grey_mangrove_tree,
	["australia:huon_pine_sapling"] = australia.schematics.huon_pine_tree,
	["australia:illawarra_flame_sapling"] = australia.schematics.illawarra_flame_tree,
	["australia:jarrah_sapling"] = australia.schematics.jarrah_tree,
	["australia:karri_sapling"] = australia.schematics.karri_tree,
	["australia:lemon_eucalyptus_sapling"] = australia.schematics.lemon_eucalyptus_tree,
	["australia:lemon_myrtle_sapling"] = australia.schematics.lemon_myrtle_tree,
	["australia:lilly_pilly_sapling"] = australia.schematics.lilly_pilly_tree,
	["australia:macadamia_sapling"] = australia.schematics.macadamia_tree,
	["australia:mangrove_apple_sapling"] = australia.schematics.mangrove_apple_tree,
	["australia:marri_sapling"] = australia.schematics.marri_tree,
	["australia:merbau_sapling"] = australia.schematics.merbau_tree,
	["australia:moreton_bay_fig_sapling"] = australia.schematics.moreton_bay_fig_tree,
	["australia:mulga_sapling"] = australia.schematics.mulga_tree,
	["australia:paperbark_sapling"] = australia.schematics.paperbark_tree,
	["australia:quandong_sapling"] = australia.schematics.quandong_tree,
	["australia:red_bottlebrush_sapling"] = australia.schematics.red_bottlebrush_tree,
	["australia:river_oak_sapling"] = australia.schematics.river_oak_tree,
	["australia:river_red_gum_sapling"] = australia.schematics.river_red_gum_tree,
	["australia:rottnest_island_pine_sapling"] = australia.schematics.rottnest_island_pine_tree,
	["australia:scribbly_gum_sapling"] = australia.schematics.scribbly_gum_tree,
	["australia:shoestring_acacia_sapling"] = australia.schematics.shoestring_acacia_tree,
	["australia:snow_gum_sapling"] = australia.schematics.snow_gum_tree,
	["australia:southern_sassafras_sapling"] = australia.schematics.southern_sassafras_tree,
	["australia:stilted_mangrove_sapling"] = australia.schematics.stilted_mangrove_tree,
	["australia:sugar_gum_sapling"] = australia.schematics.sugar_gum_tree,
	["australia:swamp_bloodwood_sapling"] = australia.schematics.swamp_bloodwood_tree,
	["australia:swamp_gum_sapling"] = australia.schematics.swamp_gum_tree,
	["australia:swamp_paperbark_sapling"] = australia.schematics.swamp_paperbark_tree,
	["australia:tasmanian_myrtle_sapling"] = australia.schematics.tasmanian_myrtle_tree,
	["australia:tea_tree_sapling"] = australia.schematics.tea_tree_tree,
	["australia:white_box_sapling"] = australia.schematics.white_box_tree,
	["australia:wirewood_sapling"] = australia.schematics.wirewood_tree
}

-- create a list of just the node names
local saplings_list = {}
for sapling, _ in pairs(saplings) do
	table.insert(saplings_list, sapling)
end

-- This abm can handle all saplings.
minetest.register_abm({
	label = "[australia] grow tree",
	nodenames = saplings_list,
	interval = 10,
	chance = 50,
	action = function(pos, node)
		local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
		if not node_under or minetest.get_item_group(node_under.name, "soil") == 0 then
			return
		end

		local schematics = saplings[node.name]
		australia.grow_tree(pos, schematics[schematics and math.random(1, #schematics) or 0])
	end
})
--]]