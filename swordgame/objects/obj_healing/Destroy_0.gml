/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_wave_spawner))
{
	with (obj_wave_spawner)
	{
		if (triggered)
		{
			remaining[current_wave]--
		}
	}
}