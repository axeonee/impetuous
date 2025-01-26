/// @description Set Variables 
dspeed = 0.07

loops = 0
hp = 100
hit = false
damaged = false

canSpawn = true

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand_boss_phase3)
with (mywand)
{
	owner = other.id	
}
