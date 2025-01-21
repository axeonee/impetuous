/// @description Set Variables 

hp = 2
hit = false

// Create wand
mywand = instance_create_layer(x, y, "Wand", obj_wand)
with (mywand)
{
	owner = other.id	
}
