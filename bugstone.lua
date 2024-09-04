mobs:register_mob("forgotten_monsters:bugstone", {
	type = "monster",
	passive = false,
	attack_animals = true,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 20,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.2, -0.4, -0.2, 0.2, 0.1, 0.01},
	visual = "mesh",
	mesh = "dude_stone.b3d",
	rotate = 180,
	textures = {
		{
			"dude_stone.png",
			"dude_stone2.png",
		},
	},
	blood_texture = "faisca.png",
	makes_footstep_sound = true,
	sounds = {},
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 20,
	drops = {},
	lava_damage = 4,
	light_damage = 2,
	water_damage = 0.01,
	fall_damage = true,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 15,
		walk_end = 33,
		run_start = 35,
		run_end = 43,
		punch_start = 45,
		punch_end = 53,
	},
})

mobs:register_egg("forgotten_monsters:bugstone", forgotten_monsters.S("Bug Stone"), "default_stone.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.bugstone then
	mobs:spawn(forgotten_monsters.spawns.bugstone)
end
