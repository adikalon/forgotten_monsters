mobs:register_mob("forgotten_monsters:growler", {
	type = "monster",
	passive = false,
	attack_animals = true,
	attack_npcs = true,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 3,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-1.1, -0.05, -0.8, 1.1, 0.7, 0.8},
	visual = "mesh",
	mesh = "growler.b3d",
	rotate = 180,
	textures = {
		{"growler.png"},
		{"growler2.png"},
	},
	blood_texture = "growler_blood.png",
	sounds = {
		attack = "growl_growler",
	},
	fly = true ,
	fly_in = "air",
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 3,
	stepheight = 1.1,
	floats = 1,
	view_range = 25,
	drops = {
		{name = "mobs:leather", chance = 1, min = 1, max = 1},
	},
	lava_damage = 4,
	light_damage = 2,
	water_damage = 0.01,
	animation = {
		speed_normal = 40,
		speed_run = 40,
		stand_start = 1,
		stand_end = 38,
		walk_start = 40,
		walk_end = 78,
		run_start = 80,
		run_end = 98,
		punch_start = 100,
		punch_end = 118,
	},
})

mobs:register_egg("forgotten_monsters:growler", forgotten_monsters.S("Growler"), "egggrowler.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.growler then
	mobs:spawn(forgotten_monsters.spawns.growler)
end


if not mobs.custom_spawn_monster then

mobs:spawn({
	name = "growler:growler",
	nodes = "air",
	neighbors = {
			"group:leaves"
		},
	min_light = 14,
	interval = 60, -- teste
	chance = 50000, -- teste
	min_height = 0,
	max_height = 200,
	day_toggle = true, -- teste
	active_object_count = 1, --teste
})

end




mobs:register_egg("growler:growler", "Growler", "egggrowler.png", 1)
--core.register_alias("growler:growler", "spawneggs:growler")



-- CARNE DE GROWLER

minetest.register_craftitem("growler:growler_meat_raw", {
    description = "Growler Meat Raw",
    inventory_image = "growler_meat_raw.png",
    on_use = minetest.item_eat(-5),
})

minetest.register_craftitem("growler:growler_meat", {
    description = "Growler Meat",
    inventory_image = "growler_meat.png",
    on_use = minetest.item_eat(5),
})


minetest.register_craft({
	output = "growler:growler_meat",
	type = "cooking",
	recipe = "growler:growler_meat_raw",
	cooktime = 4
})


-- Suporte a Hunger_ng ( teste )

if minetest.get_modpath("hunger_ng") then

hunger_ng.add_hunger_data('growler:growler_meat_raw', {
		satiates = -5.0,
	})

hunger_ng.add_hunger_data('growler:growler_meat', {
		satiates = 5.0,
	})

end
