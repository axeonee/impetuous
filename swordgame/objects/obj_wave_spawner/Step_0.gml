/// @description Insert description here
// You can write your code in this editor

if (triggered)
{
	// Check list for enemies ready to spawn and if they are the right wave/time spawn 'em
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer) 
		{
			var spawnpoint = next[_SPAWN]
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Enemies", next[_TYPE])	
		}
	}
	// Increase timer
	timer++
	
	// Next wave or end spawner if all enemies are dead
	if (remaining[current_wave] <= 0)
	{
		if (current_wave == total_waves)
		{
			// If this isn't the last level, go to the next.
			if (room != Level4)
			{
				with (instance_create_layer(x, y, "Player", obj_fade))
				{
					room_to_transition = room_next(room)
				}
			}
			instance_destroy()	
		}
		else
		{
			current_wave++
			timer = 0
		}
	}
}