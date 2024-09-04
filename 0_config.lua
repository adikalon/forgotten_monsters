-- HEIGHTS
forgotten_monsters.height = {
	min = -31000,
	max = 31000,
}

if minetest.get_modpath("nether") then
	forgotten_monsters.height.min = nether.DEPTH_CEILING
end

if minetest.get_modpath("cloudlands") then
	forgotten_monsters.height.max = tonumber(minetest.settings:get("cloudlands_altitude")) or 200
end

if minetest.get_mapgen_setting("mg_name") == "v7" then
	local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags")
	local captures_float = string.match(mgv7_spflags, "floatlands")
	local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

	if not captures_nofloat and captures_float and forgotten_monsters.height.max > 1280 then
		forgotten_monsters.height.max = 1280
	end
end

-- SPAWNS
forgotten_monsters.spawns = {
	bugstone = {
		name = "forgotten_monsters:bugstone",
		nodes = {"group:cracky", "group:crumbly"},
		neighbors = {"air"},
		max_light = 7,
		interval = 30,
		chance = 20000,
		active_object_count = 1,
		min_height = forgotten_monsters.height.min,
		max_height = -10,
	},
	golem = {
		name = "forgotten_monsters:golem",
		nodes = {"group:cracky", "group:crumbly"},
		neighbors = {"air"},
		max_light = 7,
		interval = 30,
		chance = 20000,
		active_object_count = 1,
		min_height = forgotten_monsters.height.min,
		max_height = -3000,
	},
	growler = {
		name = "forgotten_monsters:growler",
		nodes = {"air"},
		neighbors = {"air"},
		max_light = 7,
		interval = 30,
		chance = 20000,
		active_object_count = 1,
		min_height = 0,
		max_height = forgotten_monsters.height.max,
	},
	hungry = {
		name = "forgotten_monsters:hungry",
		nodes = {"group:crumbly", "group:soil", "group:dirt"},
		neighbors = {"air"},
		mix_light = 0,
		interval = 30,
		chance = 20000,
		active_object_count = 1,
		min_height = forgotten_monsters.height.min,
		max_height = forgotten_monsters.height.max,
	},
	meselord = {
		name = "forgotten_monsters:meselord",
		nodes = {"air"},
		neighbors = {"air"},
		mix_light = 0,
		interval = 30,
		chance = 20000,
		active_object_count = 1,
		min_height = forgotten_monsters.height.min,
		max_height = -2000,
	},
}
