
mobs:register_mob("forgotten_monsters:hungry", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 5,
	damage = 8,
	hp_min = 120,
	hp_max = 120,
	armor = 80,
	collisionbox = {-0.4, -1.0, -0.4, 0.4, 1.3, 0.5},
	visual = "mesh",
	rotate = 180,
	mesh = "hungry.b3d",
	textures = {
		{"hungry.png"},
	},
	blood_texture = "folha.png",
	makes_footstep_sound = true,
	sounds = {},
	walk_velocity =0,
	run_velocity = 0,
	jump_height = 0,
	stepheight = 1.1,
	floats = 0,
	view_range = 20,
	drops = {},
	lava_damage = 4,
	water_damage = 0.01,
	fall_damage = true,
	animation = {
	speed_normal = 15,
		speed_run = 0,
		stand_start = 0,
		stand_end = 0,
		punch_start = 15,
		punch_end = 34,
	},
})

mobs:register_egg("forgotten_monsters:hungry", forgotten_monsters.S("Hungry"), "hungryegg.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.hungry then
	mobs:spawn(forgotten_monsters.spawns.hungry)
end
