local S = australia.S

--
-- Trees
--

local treelist = {
	-- treename, treedesc, treetrunk_dia, treesapling, treefruit, treefruit_desc, treefruit_scale, treefruit_health, tree_height, leaf_radius
	{"black_box", "Eucalyptus largiflorens: Black Box", 1.0, "eucalyptus", nil, nil, nil, nil, 20, 8},
	{"black_wattle", "Acacia melanoxylon: Black Wattle", 0.75, "acacia", nil, nil, nil, nil, 21, 6},
	{"blue_gum", "Eucalyptus globulus: Blue Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 34, 7},
	{"boab", "Adansonia gregorii: Boab", 1.0, "boab", nil, nil, nil, nil, 11, 4},
	{"bull_banksia", "Banksia grandis: Bull Banksia", 0.33, "banksia", nil, nil, nil, nil, 12, 4},
	{"celery_top_pine", "Phyllocladus aspleniifolius: Celery-top Pine", 1, "pine", nil, nil, nil, nil, 18, 5},
	{"cherry", "Exocarpos cupressiformis: Australian Cherry", 0.5, "berry", "cherry", "Australian Cherries", 0.67, 1, 10, 3},
	{"cloncurry_box", "Eucalyptus leucophylla: Cloncurry Box", 1.0, "eucalyptus", nil, nil, nil, nil, 12, 6},
	{"coast_banksia", "Banksia integrifolia: Coast Banksia", 1.0, "banksia", nil, nil, nil, nil, 16, 6},
	{"coolabah", "Eucalyptus coolabah: Coolabah", 1.0, "eucalyptus", nil, nil, nil, nil, 16, 5},
	{"daintree_stringybark", "Eucalyptus pellita: Daintree Stringybark", 1.0, "eucalyptus", nil, nil, nil, nil, 28, 7},
	{"darwin_woollybutt", "Eucalyptus miniata: Darwin Woollybutt", 1.0, "eucalyptus", nil, nil, nil, nil, 15, 4},
	{"desert_oak", "Allocasuarina decaisneana: Desert Oak", 1.0, "acacia", nil, nil, nil, nil, 16, 8},
	{"fan_palm", "Licuala ramsayi: Australian Fan Palm", 1.0, "palm", nil, nil, nil, nil, 18, 3},
	{"golden_wattle", "Acacia pycnantha: Golden Wattle", 0.33, "acacia", nil, nil, nil, nil, 9, 3},
	{"grey_mangrove", "Avicennia marina: Grey Mangrove", 0.25, "mangrove", nil, nil, nil, nil, 6, 3},
	{"huon_pine", "Lagarostrobos franklinii: Huon Pine", 1.0, "pine", nil, nil, nil, nil, 21, 4},
	{"illawarra_flame", "Brachychiton acerifolius: Illawarra Flame", 1.0, "illawarra_flame", nil, nil, nil, nil, 13, 6},
	{"jarrah", "Eucalyptus marginata: Jarrah", 1.0, "eucalyptus", nil, nil, nil, nil, 32, 10},
	{"karri", "Eucalyptus diversicolor: Karri", 1.0, "eucalyptus", nil, nil, nil, nil, 40, 12},
	{"lemon_eucalyptus", "Eucalyptus citriodora: Lemon Eucalyptus", 1.0, "eucalyptus", nil, nil, nil, nil, 20, 5},
	{"lemon_myrtle", "Backhousia citriodora: Lemon Myrtle", 0.5, "myrtle", nil, nil, nil, nil, 9, 3},
	{"lilly_pilly", "Syzygium smithii: Lilly Pilly", 0.33, "berry", "lilly_pilly_berries", "Lilly Pilly Berries", 0.67, 1, 18, 5},
	{"macadamia", "Macadamia tetraphylla: Prickly Macadamia", 0.75, "macadamia", "macadamia", "Macadamia Nuts", 0.67, 1, 14, 6},
	{"mangrove_apple", "Sonneratia caseolaris: Mangrove Apple", 0.75, "mangrove_apple", "mangrove_apple", "Mangrove Apple", 0.67, 1, 9, 5},
	{"merbau", "Intsia bijuga: Merbau", 1.0, "merbau", nil, nil, nil, nil, 24, 8},
	{"marri", "Corymbia calophylla: Marri", 1.0, "eucalyptus", nil, nil, nil, nil, 32, 10},
	{"moreton_bay_fig", "Ficus macrophylla: Moreton Bay Fig", 1.0, "fig", "moreton_bay_fig", "Moreton Bay Fig", 0.67, 1, 26, 13},
	{"mulga", "Acacia aneura: Mulga", 0.5, "acacia", nil, nil, nil, nil, 10, 4},
	{"paperbark", "Melaleuca quinquenervia: Paper Bark", 1.0, "melaleuca", nil, nil, nil, nil, 19, 5},
	{"quandong", "Santalum acuminatum: Desert Quandong", 0.25, "quandong", "quandong", "Desert Quandong", 0.5, 1, 10, 4},
	{"red_bottlebrush", "Melaleuca citrina: Red Bottlebrush", 0.33, "melaleuca", nil, nil, nil, nil, 8, 3},
	{"river_oak", "Casuarina cunninghamiana: River Oak", 1.0, "acacia", nil, nil, nil, nil, 22, 5},
	{"river_red_gum", "Eucalyptus camaldulensis: River Red Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 32, 13},
	{"rottnest_island_pine", "Callitris preissii: Rottnest Island Pine", 0.75, "pine", nil, nil, nil, nil, 10, 3},
	{"scribbly_gum", "Eucalyptus haemastoma: Scribbly Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 14, 5},
	{"shoestring_acacia", "Acacia stenophylla: Shoestring Acacia", 1.0, "acacia", nil, nil, nil, nil, 12, 3},
	{"snow_gum", "Eucalyptus pauciflora: Snow Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 10, 4},
	{"southern_sassafras", "Atherosperma moschatum: Southern Sassafras", 1, "pine", nil, nil, nil, nil, 19, 5},
	{"stilted_mangrove", "Rhizophora stylosa: Stilted Mangrove", 0.25, "mangrove", nil, nil, nil, nil, 6, 3},
	{"sugar_gum", "Eucalyptus cladocalyx: Sugar Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 29, 11},
	{"swamp_bloodwood", "Corymbia ptychocarpa: Swamp Bloodwood", 1.0, "eucalyptus", nil, nil, nil, nil, 13, 4},
	{"swamp_gum", "Eucalyptus regnans: Swamp Gum", 1.0, "eucalyptus", nil, nil, nil, nil, 62, 6},
	{"swamp_paperbark", "Melaleuca rhaphiophylla: Swamp Paperbark", 0.5, "melaleuca", nil, nil, nil, nil, 21, 5},
	{"tasmanian_myrtle", "Lophozonia cunninghamii: Tasmanian Myrtle", 1.0, "myrtle", nil, nil, nil, nil, 34, 8},
	{"tea_tree", "Melaleuca alternifolia: Tea", 0.5, "melaleuca", nil, nil, nil, nil, 8, 3},
	{"white_box", "Eucalyptus albens: White Box", 1.0, "eucalyptus", nil, nil, nil, nil, 19, 8},
	{"wirewood", "Acacia coriacea: Wirewood", 0.33, "acacia", nil, nil, nil, nil, 10, 4}
}

local sublist = { -- small trees
	-- tree_height, leaf_radius
	coast_banksia = {9, 4},
	river_oak = {12, 4}
}

local function register_sapling(subname_sapling, subname, desc, leaf_radius, tree_height)
	local sapling_texture = "aus_" .. subname_sapling .. ".png"

	minetest.register_node("australia:" .. subname, {
		description = S(desc),
		drawtype = "plantlike",
		visual_scale = 1.0,
		tiles = {sapling_texture},
		inventory_image = sapling_texture,
		wield_image = sapling_texture,
		paramtype = "light",
		sunlight_propagates = true,
		walkable = false,
		on_timer = function(pos)
			if not default.can_grow(pos) then
				-- try again 5 min later
				minetest.get_node_timer(pos):start(300)
				return
			end

			australia["grow_" .. subname](pos)
		end,
		selection_box = {
			type = "fixed",
			fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
		},
		groups = {snappy = 2, dig_immediate = 3, flammable = 2,
			attached_node = 1, sapling = 1},
		sounds = default.node_sound_leaves_defaults(),

		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(250, 900))
		end,

		on_place = function(itemstack, placer, pointed_thing)
			itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
				"australia:" .. subname,
				-- minp, maxp to be checked, relative to sapling pos
				-- minp_relative.y = 1 because sapling pos has been checked
				{x = -leaf_radius, y = 1, z = -leaf_radius},
				{x = leaf_radius, y = tree_height, z = leaf_radius},
				-- maximum interval of interior volume check
				4)
			return itemstack
		end
	})
end

local settings = australia.settings
local fence_gate_enabled = settings.fence_gate and minetest.global_exists("doors")
local stairs_enabled = settings.stairs and minetest.global_exists("stairs")
local use_stairsplus = minetest.get_modpath("moreblocks") and minetest.global_exists("stairsplus")
local stairsplus_enabled = settings.stairsplus and use_stairsplus
local technic_cnc_enabled = settings.technic_cnc and minetest.global_exists("technic_cnc")

local function register_tree(name, def, small_tree)
	local treedesc			= def[2]
	local treetrunk_dia		= def[3]
	local treesapling		= def[4]
	local treefruit			= def[5]
	local treefruit_desc	= def[6]
	local treefruit_scale	= def[7]
	local treefruit_health	= def[8]
	local tree_height		= def[9]
	local leaf_radius		= def[10]

	local tree, wood, leaves, sapling = name .. "_tree", name .. "_wood",
		name .. "_leaves", ""

	if small_tree then
		treesapling = treesapling .. "_small_sapling"
		local saplinglist = sublist[name]
		tree_height = saplinglist[1]
		leaf_radius = saplinglist[2]
		sapling = name .. "_small_sapling"
	else
		treesapling = treesapling .. "_sapling"
		sapling = name .. "_sapling"
	end

	-- tree
	local tree_def = {
		description = S(treedesc .. " Tree"),
		tiles = {
			"aus_" .. name .. "_treetop.png",
			"aus_" .. name .. "_treetop.png",
			"aus_" .. name .. "_tree.png"
		},
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, tree = 1},
		sounds = default.node_sound_wood_defaults(),
		on_place = minetest.rotate_node,
	}
	-- Some trunks aren't a meter wide.
	if treetrunk_dia and treetrunk_dia ~= 1 then
		local radius = treetrunk_dia / 2
		tree_def.paramtype = "light"
		tree_def.drawtype = "nodebox"
		tree_def.node_box = {type = "fixed",
			fixed = {{-radius, -0.5, -radius, radius, 0.5, radius}}
		}
		tree_def.selection_box = {type = "fixed",
			fixed = {{-radius, -0.5, -radius, radius, 0.5, radius}}
		}
	end
	minetest.register_node("australia:" .. tree, tree_def)

	-- wood
	local wood_texture = "aus_" .. wood .. ".png"

	minetest.register_node("australia:" .. wood, {
		description = S(treedesc .. " Wood Planks"),
		tiles = {wood_texture},
		paramtype2 = "facedir",
		place_param2 = 0,
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		sounds = default.node_sound_wood_defaults()
	})

	-- wood planks
	minetest.register_craft({
		output = "australia:" .. wood .. " 4",
		recipe = {{"australia:" .. tree}}
	})

	-- leaves
	minetest.register_node("australia:" .. leaves, {
		description = S(treedesc .. " Leaves"),
		drawtype = "allfaces_optional",
		waving = 1,
		visual_scale = 1.3,
		tiles = {"aus_" .. leaves .. ".png"},
		paramtype = "light",
		is_ground_content = false,
		groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
		drop = {
			max_items = 1,
			items = {
				{items = {"australia:" .. sapling}, rarity = 50},
				{items = {"australia:" .. leaves}}
			}
		},
		sounds = default.node_sound_leaves_defaults(),
		after_place_node = default.after_place_leaves
	})

	-- sapling
	register_sapling(treesapling, sapling,
		treedesc .. (small_tree and " Small" or "") .. " Sapling", leaf_radius, tree_height)

	if australia.schematics[name .. "_small_tree"] and not small_tree then
		local ndef = table.copy(minetest.registered_nodes["australia:" .. name .. "_sapling"])
		local sapling_texture = ndef.tiles[1]:gsub("_sapling", "_small_sapling")
		local sapling = name .. "_small_sapling"
		local saplinglist = sublist[name]
		local tree_height = saplinglist[1]
		local leaf_radius = saplinglist[2]

		ndef.description = S(treedesc .. " Small Sapling")
		ndef.tiles = {sapling_texture}
		ndef.inventory_image = sapling_texture
		ndef.wield_image = sapling_texture
		ndef.on_timer = function(pos)
			if not default.can_grow(pos) then
				-- try again 5 min later
				minetest.get_node_timer(pos):start(300)
				return
			end

			australia["grow_" .. sapling](pos)
		end
		ndef.on_place = function(itemstack, placer, pointed_thing)
			itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
				"australia:" .. sapling,
				-- minp, maxp to be checked, relative to sapling pos
				-- minp_relative.y = 1 because sapling pos has been checked
				{x = -leaf_radius, y = 1, z = -leaf_radius},
				{x = leaf_radius, y = tree_height, z = leaf_radius},
				-- maximum interval of interior volume check
				4)
			return itemstack
		end

		table.insert(minetest.registered_nodes["australia:" .. name .. "_leaves"].drop.items,
			1, {items = {"australia:" .. sapling}, rarity = 50})

		minetest.register_node("australia:" .. sapling, ndef)
	end

	if settings.fence then -- fence
		default.register_fence("australia:fence_" .. wood, {
			description = S(treedesc .. " Fence"),
			texture = wood_texture,
			inventory_image = "default_fence_overlay.png^" .. wood_texture ..
				"^default_fence_overlay.png^[makealpha:255,126,126",
			material = "australia:" .. wood,
			groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
			sounds = default.node_sound_wood_defaults()
		})
	end

	if fence_gate_enabled then -- fence gate
		doors.register_fencegate("australia:gate_" .. wood, {
			description = S(treedesc .. " Fence Gate"),
			texture = wood_texture,
			material = "australia:" .. wood,
			groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
		})
	end

	if settings.fence_rail then	-- fence rail
		default.register_fence_rail("australia:fence_rail_" .. wood, {
			description = S(treedesc .. " Fence Rail"),
			texture = wood_texture,
			inventory_image = "default_fence_rail_overlay.png^" .. wood_texture ..
				"^default_fence_rail_overlay.png^[makealpha:255,126,126",
			wield_image = "default_fence_rail_overlay.png^" .. wood_texture .. "^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
			material = "australia:" .. wood,
			groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
			sounds = default.node_sound_wood_defaults()
		})
	end

	if settings.mese_post_light then -- mese post light
		default.register_mesepost("australia:mese_post_light_" .. wood, {
			description = S(treedesc .. " Wood Mese Post Light"),
			texture = wood_texture,
			material = "australia:" .. wood
		})
	end

	if stairs_enabled then -- stairs and slabs
		stairs.register_stair_and_slab(
			wood, "australia:" .. wood,
			{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
			{wood_texture},
			S(treedesc .. " Wood Stair"),
			S(treedesc .. " Wood Slab"),
			default.node_sound_wood_defaults()
		)

		if settings.old_stairs then
			minetest.register_alias("stairs:stair_aus_" .. wood, "stairs:stair_" .. wood)
			minetest.register_alias("stairs:stair_outer_aus_" .. wood, "stairs:stair_outer_" .. wood)
			minetest.register_alias("stairs:stair_inner_aus_" .. wood, "stairs:stair_inner_" .. wood)
			minetest.register_alias("stairs:slab_aus_" .. wood, "stairs:slab_" .. wood)
		end

		if settings.old_stairsplus and not stairsplus_enabled then
			minetest.register_alias("australia:stair_" .. wood, "stairs:stair_" .. wood)
			minetest.register_alias("australia:stair_" .. wood .. "_outer", "stairs:stair_outer_" .. wood)
			minetest.register_alias("australia:stair_" .. wood .. "_inner", "stairs:stair_inner_" .. wood)
			minetest.register_alias("australia:slab_" .. wood, "stairs:slab_" .. wood)
		end
	end

	if stairsplus_enabled or technic_cnc_enabled then -- stairsplus/technic_cnc
		for _, v in ipairs({"tree", "wood"}) do
			if v == "wood" or treetrunk_dia and treetrunk_dia == 1 then
				local subname = name .. "_" .. v
				local nodename = "australia:" .. subname
				local ndef = table.copy(minetest.registered_nodes[nodename])
				ndef.groups[v] = nil
				ndef.groups.snappy = 2

				if stairsplus_enabled then -- stairsplus
					ndef.sunlight_propagates = true
					stairsplus:register_all("australia", subname, nodename, ndef)
					if v == "wood" then
						minetest.register_alias_force("stairs:stair_" .. subname, "australia:stair_" .. subname)
						minetest.register_alias_force("stairs:stair_outer_" .. subname, "australia:stair_" .. subname .. "_outer")
						minetest.register_alias_force("stairs:stair_inner_" .. subname, "australia:stair_" .. subname .. "_inner")
						minetest.register_alias_force("stairs:slab_" .. subname, "australia:slab_" .. subname)
					end
				end

				if technic_cnc_enabled then -- technic_cnc
					ndef.groups.not_in_creative_inventory = 1
					if v == "wood" then	ndef.description = S(treedesc .. " Wood") end
					technic_cnc.register_all(nodename, ndef.groups,
						{"aus_" .. subname .. ".png"}, ndef.description)
				end
			end
		end
	end

	if treefruit then -- fruit, if applicable
		local treefruit_texture = "aus_" .. treefruit .. ".png"

		minetest.register_node("australia:" .. treefruit, {
			description = S(treefruit_desc),
			drawtype = "plantlike",
			visual_scale = treefruit_scale,
			tiles = {treefruit_texture},
			inventory_image = treefruit_texture,
			wield_image = treefruit_texture,
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			is_ground_content = false,
			selection_box = {
				type = "fixed",
				fixed = {-0.1, -0.5, -0.1, 0.1, -0.25, 0.1}
			},
			groups = {fleshy = 3, dig_immediate = 3, flammable = 2, leafdecay = 3, leafdecay_drop = 1},
			-- Fruit makes you healthy.
			on_use = minetest.item_eat(treefruit_health),
			sounds = default.node_sound_leaves_defaults(),

			after_place_node = function(pos, placer, itemstack)
				minetest.set_node(pos, {name = "australia:" .. treefruit .. "", param2 = 1})
			end,

			after_dig_node = function(pos, oldnode, oldmetadata, digger)
				if oldnode.param2 == 0 then
					minetest.set_node(pos, {name = "australia:" .. treefruit .. "_mark"})
					minetest.get_node_timer(pos):start(math.random(250, 850))
				end
			end
		})

		local treefruit_mark_texture = treefruit_texture .. "^default_invisible_node_overlay.png"

		minetest.register_node("australia:" .. treefruit .. "_mark", {
			description = S(treefruit_desc .. " Marker"),
			inventory_image = treefruit_mark_texture,
			wield_image = treefruit_mark_texture,
			drawtype = "airlike",
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			pointable = false,
			diggable = false,
			buildable_to = true,
			drop = "",
			groups = {not_in_creative_inventory = 1},
			on_timer = function(pos, elapsed)
				if not minetest.find_node_near(pos, 1, "australia:" .. leaves) then
					minetest.remove_node(pos)
				elseif minetest.get_node_light(pos) < 11 then
					minetest.get_node_timer(pos):start(200)
				else
					minetest.set_node(pos, {name = "australia:" .. treefruit})
				end
			end
		})

		default.register_leafdecay({
			trunks = {"australia:" .. tree},
			leaves = {"australia:" .. treefruit, "australia:" .. leaves},
			radius = leaf_radius
		})
	else
		default.register_leafdecay({
			trunks = {"australia:" .. tree},
			leaves = {"australia:" .. leaves},
			radius = leaf_radius
		})
	end
end

for _, def in ipairs(treelist) do
	local name = def[1]
	if australia.schematics[name .. "_tree"] then
		register_tree(name, def)
	elseif australia.schematics[name .. "_small_tree"] then
		register_tree(name, def, true)
	end
end