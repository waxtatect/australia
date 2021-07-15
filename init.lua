-- MOD: australia
-- See README.md for licensing and other information.
-- Designed for valleys mapgen in Minetest 0.4.14, but will work with mgv5,
-- mgv7, flat and fractal with limitations.

if not minetest.get_translator then -- minetest.get_biome_id
	error("[Mod australia] Your Minetest version is no longer supported. (version < 5.0.0)")
end

-- Definitions made by this mod that other mods can use too
australia = {
	S = minetest.get_translator("australia"),
	MP = minetest.get_modpath("australia") .. "/",
	schematics = {},
	settings = {
		-- mapgens
		contents		= true,		-- kepp biomes, decorations and ores currently registered
		decorations		= true,		-- decorations (mostly grasses) registered by each biome
		ores			= true,		-- ores (mostly common ores) registered by each biome
		-- nodes support
		fence			= true,
		fence_gate		= false,	-- optional doors mod needed
		fence_rail		= false,
		mese_post_light	= false,
		stairs			= true,		-- optional stairs mod needed
		stairsplus		= false,	-- optional moreblocks mod needed (only tree/wood supported)
		technic_cnc		= false,	-- optional technic_cnc mod needed (only tree/wood supported)
		-- compatibility
		old_stairs		= false,	-- compatibility (aliases) with stairs registered on previous versions of this mod
		old_stairsplus	= false,	-- rename (aliases) stair, outer, inner and slab of moreblocks mod - stairs setting needed
		--
		extra = true
	}
}

-- Read settings from configuration file
for k, _ in pairs(australia.settings) do
	local setting = minetest.settings:get_bool("australia_" .. k)
	if setting ~= nil then
		australia.settings[k] = setting
	end
end

-- Set the following to true/false to enable/disable the corresponding biome
	-- Underground biome
australia.underground				= true
	-- Coastal biomes
australia.mangroves					= true
australia.tasman_sea				= true
australia.great_australian_bight	= true
australia.indian_ocean				= true
australia.great_barrier_reef		= true
australia.timor_sea					= true
	-- Lowland biomes
australia.jarrah_karri_forests		= true
australia.eastern_coasts			= true
australia.goldfields_esperence		= true
australia.arnhem_land				= true
australia.gulf_of_carpentaria		= true
australia.far_north_queensland		= true
australia.pilbara					= true
australia.kimberley					= true
	-- Highland biomes
australia.tasmania					= true
australia.great_dividing_range		= true
australia.victorian_forests			= true
australia.flinders_lofty			= true
australia.murray_darling_basin		= true
australia.mulga_lands				= true
australia.central_australia			= true
australia.simpson_desert			= true
	-- Alpine biome
australia.australian_alps			= true

-- Load files
dofile(australia.MP .. "crafting.lua")
dofile(australia.MP .. "craftitems.lua")
dofile(australia.MP .. "functions.lua")
dofile(australia.MP .. "noairblocks.lua")
dofile(australia.MP .. "mapgen.lua")
dofile(australia.MP .. "nodes.lua")
dofile(australia.MP .. "trees.lua")
if minetest.global_exists("bonemeal") then
	dofile(australia.MP .. "bonemeal.lua")
end
-- dofile(australia.MP .. "voxel.lua")

minetest.log("action", "[MOD] australia loaded")