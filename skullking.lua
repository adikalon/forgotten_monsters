local skullking = {
	nametag = forgotten_monsters.S("Skull King"),
	type = "monster",
	attack_animals = false,
	attack_npcs = true,
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 8,
	damage = 15,
	hp_min = 4000,
	hp_max = 5000,
	armor = 80,
	visual_size = {x = 1.3, y = 1.3},
	collisionbox = {-0.5, -1.67, -0.4, 0.5, 2.3, 0.5},
	visual = "mesh",
	mesh = "skull_king_deep.b3d",
	rotate = 180,
	textures = {
		{"skull_king_deep.png"},
	},
	blood_texture = "bonex.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "skullking",
		death = "falling_bones",
	},
	walk_velocity = 2,
	run_velocity = 7,
	jump_height = 3,
	stepheight = 3,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "default:goldblock", chance = 1, min = 20, max = 40},
	},
	lava_damage = 4,
	light_damage = 0,
	water_damage = 0.01,
	fall_damage = true,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 15,
		walk_end = 34,
		run_start = 35,
		run_end = 44,
		punch_start = 45,
		punch_end =84,
		punch_speed = 23,
	},
}

if minetest.registered_items["bonemeal:bone"] then
	table.insert(skullking.drops, {name = "bonemeal:bone", chance = 1, min = 150, max = 300})
end

mobs:register_mob("forgotten_monsters:skullking", skullking)
mobs:register_egg("forgotten_monsters:skullking", forgotten_monsters.S("Skull King"), "eggsking.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.skullking then
	mobs:spawn(forgotten_monsters.spawns.skullking)
end
