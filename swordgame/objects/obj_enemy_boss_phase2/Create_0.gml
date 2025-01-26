/// @description Set Variables 

hp = 50
hit = false
damaged = false

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand_boss)
with (mywand)
{
	owner = other.id	
}
