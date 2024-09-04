local path = minetest.get_modpath(minetest.get_current_modname())

forgotten_monsters = {}

forgotten_monsters.S = minetest.get_translator(minetest.get_current_modname())

forgotten_monsters.custom_spawn = false
local input = io.open(path .. "/spawn.lua", "r")

if input then
	forgotten_monsters.custom_spawn = true
	input:close()
	input = nil
end

-- CONFIG
dofile(path .. "/0_config.lua")

-- MONSTERS
dofile(path .. "/bugstone.lua")
dofile(path .. "/golem.lua")
dofile(path .. "/growler.lua")
dofile(path .. "/hungry.lua")
dofile(path .. "/meselord.lua")
dofile(path .. "/skullking.lua")
dofile(path .. "/spectrum.lua")
dofile(path .. "/spoky.lua")

if forgotten_monsters.custom_spawn then
	dofile(path .. "/spawn.lua")
end
