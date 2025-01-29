/// @description Set Variables 


global.bosshp = 25
obj_boss_bar.hpMax = global.bosshp
hit = false
damaged = false

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand_boss)
with (mywand)
{
	owner = other.id	
}
