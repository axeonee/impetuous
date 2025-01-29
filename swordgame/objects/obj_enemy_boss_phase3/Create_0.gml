/// @description Set Variables 
dspeed = 0.07

global.bosshp = 50
obj_boss_bar.hpMax = global.bosshp
hit = false
damaged = false

canSpawn = true

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand_boss_phase3)
with (mywand)
{
	owner = other.id	
}
