
mobs:register_mob("forgotten_monsters:spectrum", {
	type = "monster",
	passive = false,
	attack_animals = false,
	attack_npcs = true,
	attack_type = "shoot",
	shoot_interval = 2.0,
	shoot_offset = 1.5,
	arrow = "forgotten_monsters:spectrum_arrow",
	pathfinding = true,
	reach = 3,
	damage = 6,
	hp_min = 80,
	hp_max = 80,
	armor = 80,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "spectrum.b3d",
	rotate = 180,
	textures = {
		{"spectrum.png"},
	},
	glow = 8,
	blood_texture = "blood_spectrum.png",
	sounds = {
		random = "spectrum",
	},
	fly = true ,
	fly_in = "air",
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 25,
	drops = {},
	lava_damage = 4,
	light_damage = 4,
	water_damage = 0.01,
	animation = {
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 15,
		walk_end = 33,
		run_start = 35,
		run_end = 53,
		shoot_start = 55,
		shoot_end = 84,
	},
	do_custom = function(self, dtime)
		local specpos = self.object:get_pos()
		local chanceOfParticle = math.random(0, 1)
		if chanceOfParticle == 1 then
			minetest.add_particle({
				pos = {x=specpos.x+math.random(-1,1)*math.random()/2,y=specpos.y+math.random(0,3),z=specpos.z+math.random(-1,1)*math.random()/2},
				velocity = {x=math.random(-.25,.25), y=math.random(-.25,.25), z=math.random(-.25,.25)},
				acceleration = {x=math.random(-.5,.5), y=math.random(-.5,.5), z=math.random(-.5,.5)},
				expirationtime = math.random(),
				size = math.random(),
				collisiondetection = true,
				vertical = false,
				texture = "pectrum_arrow.png",
			})
		end
	end,
})

minetest.register_craftitem("forgotten_monsters:spectrum_magic_arrow", {
	description = forgotten_monsters.S("Spectrum Magic arrow"),
	inventory_image = "pectrum_arrow.png",
	groups = {not_in_creative_inventory = 1}
})


mobs:register_arrow("forgotten_monsters:spectrum_arrow", {
	visual = "wielditem",
	visual_size = {x = 0.3, y = 0.3},
	velocity = 12,
	textures = {"forgotten_monsters:spectrum_magic_arrow"},
	damage = 2,
	glow = 5,
	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,
	hit_mob = function(self, player)
		player:punch(self.object,1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,
	hit_node = function(self, pos, node)
	end
})

mobs:register_egg("forgotten_monsters:spectrum", forgotten_monsters.S("Spectrum"), "eggspec.png", 1)

if not forgotten_monsters.custom_spawn and forgotten_monsters.spawns.spectrum then
	mobs:spawn(forgotten_monsters.spawns.spectrum)
end
