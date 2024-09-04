mobs:register_mob("forgotten_monsters:spoky", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = false,
	attack_type = "explode",
	explosion_radius = 1,
	explosion_timer = 3,
	pathfinding = true,
	reach = 3,
	damage = 19,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-0.5, -0.4, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "spokyx.b3d",
	rotate = 180,
	textures = {
		{"spokyx.png"},
	},
	blood_texture = "tnt_smoke.png",
	makes_footstep_sound = true,
	sounds = {
		random = "polvora",
		explode = "tnt_explode",
		fuse = "chaleira2",
	},
	walk_velocity = 2,
	run_velocity = 3,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	drops = {},
	lava_damage = 4,
	light_damage = 2,
	water_damage = 0.01,
	fall_damage = true,
	animation = {
		stand_start = 0,
		stand_end = 0,
		speed_normal = 20,
		speed_run = 20,
		walk_start = 20,
		walk_end = 39,
		run_start = 20,
		run_end = 39,
		punch_start = 0,
		punch_end = 0,
	},
})

mobs:register_egg("forgotten_monsters:spoky", forgotten_monsters.S("Spoky"), "eggsspoky.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.spoky then
	mobs:spawn(forgotten_monsters.spawns.spoky)
end
