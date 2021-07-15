--
-- noairblocks
--
-- Code modified from Duane Robertson's valleys_c mod
-- (https://github.com/duane-r/valleys_c).
--
-- Original code Copyright (C) 2012 Perttu Ahola <celeron55@gmail.com>
--
-- This library is free software; you can redistribute it and/or modify it under
-- the terms of the GNU Lesser General Public License as published by the Free
-- Software Foundation; either version 2.1 of the License, or (at your option)
-- any later version.
--
-- This library is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
-- details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this library; if not, write to the Free Software Foundation, Inc.,
-- 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA


local water_nodes = {"default:water_source", "default:water_flowing", "default:river_water_source", "default:river_water_flowing"}
local aus_nodes = {"australia:water_source", "australia:water_flowing", "australia:river_water_source", "australia:river_water_flowing"}

for _, name in ipairs(water_nodes) do
	local water = table.copy(minetest.registered_nodes[name])
	water.liquid_alternative_source = water.liquid_alternative_source:gsub('default', 'australia')
	water.liquid_alternative_flowing = water.liquid_alternative_flowing:gsub('default', 'australia')
	water.groups.not_in_creative_inventory = 1

	minetest.register_node(name:gsub('default', 'australia'), water)
end


local check_pos = {
	{x = -1, y = 0, z = 0},
	{x = 1, y = 0, z = 0},
	{x = 0, y = 0, z = -1},
	{x = 0, y = 0, z = 1},
	{x = 0, y = 1, z = 0}
}

minetest.register_abm({
	label = "[australia] add water",
	nodenames = {"group:sea"},
	neighbors = {"group:water"},
	interval = 10,
	chance = 1,
	action = function(pos)
		for _, offset in ipairs(check_pos) do
			local check = vector.add(pos, offset)
			if offset == {0, -1, 0} or minetest.get_node(vector.add(check, {x = 0, y = 1, z = 0})).name ~= "air" then
				local name = minetest.get_node(check).name
				for node_num = 1, #water_nodes do
					if name == water_nodes[node_num] then
						minetest.add_node(check, {name = aus_nodes[node_num]})
					end
				end
			end
		end
	end
})

minetest.register_abm({
	label = "[australia] remove water",
	nodenames = aus_nodes,
	neighbors = {"air"},
	interval = 20,
	chance = 1,
	action = function(pos)
		if minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name == "air" then
			minetest.remove_node(pos)
		end
	end
})