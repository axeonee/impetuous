/// @description Set Variables 
dspeed = 0.07

hp = 100
hit = false

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand_boss_phase3)
with (mywand)
{
	owner = other.id	
}
