-- Generate schematics
function australia.generate_schematics(name, def)
	if australia.schematics[name] then
		return
	end

	australia.schematics[name] = {}
	local tree_type = def.type
	local max_v = def.max_v
	local trunk_height = def.trunk_height
	local ht, r, radius = def.ht, def.r, def.radius
	local trunk = def.tree
	local leaf = def.leaves
	local fruit = def.fruit
	local limbs = def.limbs

	for v = def.v, max_v do
		local schematic = {}

		if tree_type == "tree" or tree_type == "big_tree" or tree_type == "giant_tree" then
			schematic = australia["generate_" .. tree_type .. "_schematic"](trunk_height,
				{x = v, y = ht, z = v}, trunk, leaf, fruit, limbs)
		elseif tree_type == "conifer" then
			schematic = australia.generate_conifer_schematic(trunk_height, radius, trunk, leaf, fruit)
		elseif tree_type == "mangrove" then
			schematic = australia.generate_mangrove_tree_schematic(trunk_height, trunk, leaf)
		elseif tree_type == "rainforest" then
			schematic = australia.generate_rainforest_tree_schematic(trunk_height, r, trunk, leaf)
		elseif tree_type == "fanpalm" then
			schematic = australia.generate_fanpalm_tree_schematic(trunk_height, r, trunk, leaf)
		end

		table.insert(australia.schematics[name], schematic)
	end
end

-- Create and initialize a table for a schematic.
local function schematic_array(width, height, depth)
	-- Dimensions of data array.
	local schematic = {
		size = {x = width, y = height, z = depth},
		yslice_prob = {},
		data = {}
	}

	for z = 0, depth - 1 do
		for y = 0, height - 1 do
			for x = 0, width - 1 do
				local i = z * width * height + y * width + x + 1
				schematic.data[i] = {name = "air", param1 = 000}
			end
		end
	end

	return schematic
end

local random = math.random
local floor = math.floor
local sqrt = math.sqrt
local max = math.max
local ceil = math.ceil
local min = math.min

	-- Rainforest tree
function australia.generate_rainforest_tree_schematic(trunk_height, r, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = r
	local width = 2 * radius + 1
	local trunk_top = height - 4
	local s = schematic_array(width, height, width)

-- roots, trunk, and extra leaves
	for z = -1, 1 do
		for y = 1, trunk_top do
			for x = -1, 1 do
				local i = (z + radius) * width * height + y * width + (x + radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < 5 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > 10 then
					s.data[i].name = leaf
					s.data[i].param1 = 51
				end
			end
		end
	end

-- canopy
	for y = 1, trunk_top + 3 do
		if y > trunk_height and (y == trunk_top or random(1, height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = random(-1, 1) * 2
				z = random(-1, 1) * 2
			end
			for j = -2, 2, 2 do
				australia.generate_canopy(s, leaf, {x = j * x, y = y, z = j * z})
			end
		end
	end
	return s
end

	-- Fan Palm tree
function australia.generate_fanpalm_tree_schematic(trunk_height, r, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = r
	local width = 2 * radius + 1
	local trunk_top = height - 3
	local s = schematic_array(width, height, width)

-- trunk
	for z = -radius, radius do
		for y = 1, trunk_top do
			for x = -radius, radius do
				local i = (z + radius) * width * height + y * width + (x + radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

-- canopy
	for y = 1, trunk_top + 1 do
		if y > trunk_height and (y == trunk_top or random(1, height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = random(-1, 1) * 2
				z = random(-1, 1) * 2
			end
			for j = -1, 1, 2 do
				australia.generate_canopy(s, leaf, {x = j * x, y = y, z = j * z})
			end
		end
	end
	return s
end
	-- Mangrove tree
function australia.generate_mangrove_tree_schematic(trunk_height, trunk, leaf)
	local height = trunk_height * 2 + 1
	local radius = 2
	local width = 2 * radius + 1
	local trunk_top = height - 3
	local s = schematic_array(width, height, width)

-- roots, trunk, and extra leaves
	for z = -1, 1 do
		for y = 1, trunk_top do
			for x = -1, 1 do
				local i = (z + radius) * width * height + y * width + (x + radius) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < 3 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > 3 then
					s.data[i].name = leaf
					s.data[i].param1 = 50
				end
			end
		end
	end

-- canopy
	for y = 1, trunk_top + 2 do
		if y > trunk_height and (y == trunk_top or random(1, height - y) == 1) then
			local x, z = 0, 0
			while x == 0 and z == 0 do
				x = random(-1, 1) * 2
				z = random(-1, 1) * 2
			end
			for j = -1, 1, 2 do
				australia.generate_canopy(s, leaf, {x = j * x, y = y, z = j * z})
			end
		end
	end
	return s
end

	-- Create a canopy of leaves.
function australia.generate_canopy(s, leaf, pos)
	local height = s.size.y
	local width = s.size.x
	local rx = floor(s.size.x / 2)
	local rz = floor(s.size.z / 2)
	local r1 = 4 -- leaf decay radius
	local probs = {255, 200, 150, 100, 75}

	for z = -r1, r1 do
		for y = 0, 1 do
			for x = -r1, r1 do
				if x + pos.x >= -rx and x + pos.x <= rx and y + pos.y >= 0 and y + pos.y < height and z + pos.z >= -rz and z + pos.z <= rz then
					local i = (z + pos.z + rz) * width * height + (y + pos.y) * width + (x + pos.x+ rx) + 1
					local dist1 = sqrt(x^2 + y^2 + z^2)
					local dist2 = sqrt((x + pos.x)^2 + (z + pos.z)^2)
					if dist1 <= r1 then
						local newprob = probs[max(1, ceil(dist1))]
						if s.data[i].name == "air" then
							s.data[i].name = leaf
							s.data[i].param1 = newprob
						elseif s.data[i].name == leaf then
							s.data[i].param1 = max(s.data[i].param1, newprob)
						end
					end
				end
			end
		end
	end
end

	-- Create a spheroid of leaves.
function australia.generate_leaves(s, leaf, pos, radius, fruit, adjust)
	local height = s.size.y
	local width = s.size.x
	local rx = floor(s.size.x / 2)
	local rz = floor(s.size.z / 2)
	local r1 = min(3, radius) -- leaf decay radius
	local probs = {255, 200, 150, 100, 75}

	for z = -r1, r1 do
		for y = -r1, r1 do
			for x = -r1, r1 do
				if x + pos.x >= -rx and x + pos.x <= rx and y + pos.y >= 0 and y + pos.y < height and z + pos.z >= -rz and z + pos.z <= rz then
					local i = (z + pos.z + rz) * width * height + (y + pos.y) * width + (x + pos.x + rx) + 1
					local dist1 = sqrt(x^2 + y^2 + z^2)
					local dist2 = sqrt((x + pos.x)^2 + (z + pos.z)^2)
					if dist1 <= r1 then
						local newprob = probs[max(1, ceil(dist1))]
						if s.data[i].name == "air" then
							if fruit and (rx < 3 or dist2 / rx > 0.5) and random(1, 10) == 1 then
								s.data[i].name = fruit
								s.data[i].param1 = 127
							else
								s.data[i].name = leaf
								s.data[i].param1 = newprob
							end
						elseif adjust and s.data[i].name == leaf then
							s.data[i].param1 = max(s.data[i].param1, newprob)
						end
					end
				end
			end
		end
	end
end

	-- Generic Tree
function australia.generate_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height - radii.y - 1
	local s = schematic_array(width, height, width)

	-- the main trunk
	for y = 1, trunk_top do
		local i = radii.z * width * height + y * width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- some leaves for free
	australia.generate_leaves(s, leaf, {x = 0, y = trunk_top, z = 0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in ipairs(limbs) do
			local i = (p.z + radii.z) * width * height + p.y * width + (p.x + radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			australia.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z, radii.z do
			for y = -radii.y, radii.y do
				for x = -radii.x, radii.x do
					-- a smaller spheroid inside the radii
					if x^2 / (radii.x - 3)^2 + y^2 / (radii.y - 3)^2 + z^2 / (radii.z - 3)^2 <= 1 then
						if random(1, 6) == 1 then
							local i = (z + radii.z) * width * height + (y + trunk_top) * width + (x + radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							australia.generate_leaves(s, leaf, {x = x, y = trunk_top + y, z = z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

	-- Big Tree
function australia.generate_big_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height - radii.y - 1
	local s = schematic_array(width, height, width)

	-- the main trunk
	for y = 0, trunk_top do
		local i = radii.z * width * height + y * width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- wider trunk and extra leaves
	for z = 0, 1 do
		for y = 1, trunk_top do
			for x = 0, 1 do
				local i = (z + radii.z) * width * height + y * width + (x + radii.x) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < trunk_height + 4 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

	-- some leaves for free
	australia.generate_leaves(s, leaf, {x = 0, y = trunk_top, z = 0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in ipairs(limbs) do
			local i = (p.z + radii.z) * width * height + p.y * width + (p.x + radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			australia.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z, radii.z do
			for y = -radii.y, radii.y do
				for x = -radii.x, radii.x do
					-- a smaller spheroid inside the radii
					if x^2 / (radii.x - 3)^2 + y^2 / (radii.y - 3)^2 + z^2 / (radii.z - 3)^2 <= 1 then
						if random(1, 6) == 1 then
							local i = (z + radii.z) * width * height + (y + trunk_top) * width + (x + radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							australia.generate_leaves(s, leaf, {x = x, y = trunk_top + y, z = z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

	-- Giant Tree
function australia.generate_giant_tree_schematic(trunk_height, radii, trunk, leaf, fruit, limbs)
	-- trunk_height refers to the amount of trunk visible below any leaves.
	local height = trunk_height + radii.y * 2 + 2
	local width = 2 * radii.z + 1
	local trunk_top = height - radii.y - 1
	local s = schematic_array(width, height, width)

	-- the main trunk
	for y = 0, trunk_top do
		local i = radii.z * width * height + y * width + radii.x + 1
		s.data[i].name = trunk
		s.data[i].param1 = 255
		s.data[i].force_place = true
	end

	-- wider trunk and extra leaves
	for z = -1, 1 do
		for y = 1, trunk_top do
			for x = -1, 1 do
				local i = (z + radii.z) * width * height + y * width + (x + radii.x) + 1
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif (x == 0 or z == 0) and y < trunk_height + 4 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				end
			end
		end
	end

	-- some leaves for free
	australia.generate_leaves(s, leaf, {x = 0, y = trunk_top, z = 0}, radii.x, fruit)

	-- Specify a table of limb positions...
	if radii.x > 3 and limbs then
		for _, p in ipairs(limbs) do
			local i = (p.z + radii.z) * width * height + p.y * width + (p.x + radii.x) + 1
			s.data[i].name = trunk
			s.data[i].param1 = 255
			s.data[i].force_place = true
			australia.generate_leaves(s, leaf, p, radii.x, fruit, true)
		end
		-- or just do it randomly.
	elseif radii.x > 3 then
		for z = -radii.z, radii.z do
			for y = -radii.y, radii.y do
				for x = -radii.x, radii.x do
					-- a smaller spheroid inside the radii
					if x^2 / (radii.x - 3)^2 + y^2 / (radii.y - 3)^2 + z^2 / (radii.z - 3)^2 <= 1 then
						if random(1, 6) == 1 then
							local i = (z + radii.z) * width * height + (y + trunk_top) * width + (x + radii.x) + 1
							s.data[i].name = trunk
							s.data[i].param1 = 255
							s.data[i].force_place = true
							australia.generate_leaves(s, leaf, {x = x, y = trunk_top + y, z = z}, radii.x, fruit, true)
						end
					end
				end
			end
		end
	end
	return s
end

-- Round a number to the given decimal places
local function round(num, idp)
	local mult = 10^(idp or 0)
	return floor(num * mult + 0.5) / mult
end

	-- Conifer schematic
function australia.generate_conifer_schematic(trunk_height, radius, trunk, leaf, fruit)
	local height = trunk_height + radius * 3 + 2
	local width = 2 * radius + 1
	local trunk_top = height - radius - 1
	local s = schematic_array(width, height, width)

	-- the main trunk
	local probs = {200, 150, 100, 75, 50, 25}
	for z = -radius, radius do
		for y = 1, trunk_top do
			-- Gives it a vaguely conical shape.
			local r1 = ceil((height - y) / 4)
			-- But rounded at the bottom.
			if y == trunk_height + 1 then
				r1 = r1 -1
			end

			for x = -radius, radius do
				local i = (z + radius) * width * height + y * width + (x + radius) + 1
				local dist = round(sqrt(x^2 + z^2))
				if x == 0 and z == 0 then
					s.data[i].name = trunk
					s.data[i].param1 = 255
					s.data[i].force_place = true
				elseif y > trunk_height and dist <= r1 then
					s.data[i].name = leaf
					s.data[i].param1 = probs[dist]
				end
			end
		end
	end

	-- leaves at the top
	for z = -1, 1 do
		for y = trunk_top, height - 1 do
			for x = -1, 1 do
				local i = (z + radius) * width * height + y * width + (x + radius) + 1
				if (x == 0 and z == 0) or y < height - 1 then
					if fruit and random(1, 10) == 1 then
						s.data[i].name = fruit
						s.data[i].param1 = 127
					else
					s.data[i].name = leaf
					end
					if x == 0 and z == 0 then
						s.data[i].param1 = 255
					else
						s.data[i].param1 = 200
					end
				end
			end
		end
	end
	return s
end

-- Grow tree
function australia.grow_tree(pos, schematic)
	if not schematic then
		minetest.log("error", "[australia] Missing schematic for a sapling at " ..
			minetest.pos_to_string(pos))
		return
	end

	minetest.swap_node(pos, {name = "air"})
	minetest.place_schematic({
		x = pos.x - floor(schematic.size.x / 2),
		y = pos.y - 1,
		z = pos.z - floor(schematic.size.z / 2)
	}, schematic, 'random', nil, false)
end

function australia.grow_black_box_sapling(pos)
	local schematics = australia.schematics.black_box_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_black_wattle_sapling(pos)
	local schematics = australia.schematics.black_wattle_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_blue_gum_sapling(pos)
	local schematics = australia.schematics.blue_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_boab_sapling(pos)
	local schematics = australia.schematics.boab_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_bull_banksia_sapling(pos)
	local schematics = australia.schematics.bull_banksia_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_celery_top_pine_sapling(pos)
	local schematics = australia.schematics.celery_top_pine_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_cherry_sapling(pos)
	local schematics = australia.schematics.cherry_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_cloncurry_box_sapling(pos)
	local schematics = australia.schematics.cloncurry_box_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_coast_banksia_sapling(pos)
	local schematics = australia.schematics.coast_banksia_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_coast_banksia_small_sapling(pos)
	local schematics = australia.schematics.coast_banksia_small_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_coolabah_sapling(pos)
	local schematics = australia.schematics.coolabah_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_desert_oak_sapling(pos)
	local schematics = australia.schematics.desert_oak_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_daintree_stringybark_sapling(pos)
	local schematics = australia.schematics.daintree_stringybark_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_darwin_woollybutt_sapling(pos)
	local schematics = australia.schematics.darwin_woollybutt_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_fan_palm_sapling(pos)
	local schematics = australia.schematics.fan_palm_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_golden_wattle_sapling(pos)
	local schematics = australia.schematics.golden_wattle_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_grey_mangrove_sapling(pos)
	local schematics = australia.schematics.grey_mangrove_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_huon_pine_sapling(pos)
	local schematics = australia.schematics.huon_pine_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_illawarra_flame_sapling(pos)
	local schematics = australia.schematics.illawarra_flame_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_jarrah_sapling(pos)
	local schematics = australia.schematics.jarrah_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_karri_sapling(pos)
	local schematics = australia.schematics.karri_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_lemon_eucalyptus_sapling(pos)
	local schematics = australia.schematics.lemon_eucalyptus_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_lemon_myrtle_sapling(pos)
	local schematics = australia.schematics.lemon_myrtle_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_lilly_pilly_sapling(pos)
	local schematics = australia.schematics.lilly_pilly_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_macadamia_sapling(pos)
	local schematics = australia.schematics.macadamia_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_mangrove_apple_sapling(pos)
	local schematics = australia.schematics.mangrove_apple_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_marri_sapling(pos)
	local schematics = australia.schematics.marri_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_merbau_sapling(pos)
	local schematics = australia.schematics.merbau_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_moreton_bay_fig_sapling(pos)
	local schematics = australia.schematics.moreton_bay_fig_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_mulga_sapling(pos)
	local schematics = australia.schematics.mulga_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_paperbark_sapling(pos)
	local schematics = australia.schematics.paperbark_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_quandong_sapling(pos)
	local schematics = australia.schematics.quandong_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_red_bottlebrush_sapling(pos)
	local schematics = australia.schematics.red_bottlebrush_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_river_oak_sapling(pos)
	local schematics = australia.schematics.river_oak_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_river_oak_small_sapling(pos)
	local schematics = australia.schematics.river_oak_small_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_river_red_gum_sapling(pos)
	local schematics = australia.schematics.river_red_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_rottnest_island_pine_sapling(pos)
	local schematics = australia.schematics.rottnest_island_pine_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_scribbly_gum_sapling(pos)
	local schematics = australia.schematics.scribbly_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_shoestring_acacia_sapling(pos)
	local schematics = australia.schematics.shoestring_acacia_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_snow_gum_sapling(pos)
	local schematics = australia.schematics.snow_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_southern_sassafras_sapling(pos)
	local schematics = australia.schematics.southern_sassafras_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_stilted_mangrove_sapling(pos)
	local schematics = australia.schematics.stilted_mangrove_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_sugar_gum_sapling(pos)
	local schematics = australia.schematics.sugar_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_swamp_bloodwood_sapling(pos)
	local schematics = australia.schematics.swamp_bloodwood_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_swamp_gum_sapling(pos)
	local schematics = australia.schematics.swamp_gum_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_swamp_paperbark_sapling(pos)
	local schematics = australia.schematics.swamp_paperbark_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_tasmanian_myrtle_sapling(pos)
	local schematics = australia.schematics.tasmanian_myrtle_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_tea_tree_sapling(pos)
	local schematics = australia.schematics.tea_tree_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_white_box_sapling(pos)
	local schematics = australia.schematics.white_box_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end
function australia.grow_wirewood_sapling(pos)
	local schematics = australia.schematics.wirewood_tree
	australia.grow_tree(pos, (schematics and #schematics > 0) and schematics[random(1, #schematics)])
end