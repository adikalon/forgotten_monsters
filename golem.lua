mobs:register_mob("forgotten_monsters:golem", {
	nametag = forgotten_monsters.S("Golem"),
	type = "monster",
	passive = false,
	attack_animals = true,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 6,
	damage = 12,
	hp_min = 3500,
	hp_max = 4000,
	armor = 80,
	collisionbox = {-1.0, -2.0, -1.0, 1.0, 1.2, 1.0},
	visual = "mesh",
	mesh = "golem.b3d",
	rotate = 180,
	textures = {
		{"golem.png"},
	},
	glow = 2,
	blood_texture = "faisca.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "monster",
	},
	walk_velocity = 2,
	run_velocity = 4,
	jump_height = 5,
	stepheight = 3.0,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "default:diamondblock", chance = 1, min = 5, max = 10},
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
		walk_end = 33,
		run_start = 35,
		run_end = 53,
		punch_start = 55,
		punch_end = 63,
	},
})

mobs:register_egg("forgotten_monsters:golem", forgotten_monsters.S("Golem"), "egggoelm.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.golem then
	mobs:spawn(forgotten_monsters.spawns.golem)
end
