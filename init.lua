minetest.register_globalstep(function(dtime)
	for _, player in ipairs(minetest.get_connected_players()) do
		local pos = vector.new(player:get_pos())
		local pos1 = vector.subtract(pos, { x = 10, y = 10, z = 10 })
		local pos2 = vector.add(pos, { x = 10, y = 10, z = 10 })
		
		for _, tmp_node in ipairs(minetest.find_nodes_in_area(pos1, pos2, { "group:falling_node" })) do
			minetest.check_for_falling(tmp_node)
		end
	end
end)
