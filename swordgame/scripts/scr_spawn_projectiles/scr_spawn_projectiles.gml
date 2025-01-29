// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_projectiles()
{
	/// scr_spawn_projectiles(x, y, num_projectiles, spacing, direction, speed)
	/// @param x The starting x position
	/// @param y The starting y position
	/// @param num_projectiles The number of projectiles to spawn
	/// @param spacing The spacing between projectiles
	/// @param direction The direction of the projectiles ("left", "right", "up", "down")
	/// @param speed The speed of the projectiles

	var start_x = argument0            // Starting x position
	var start_y = argument1           // Starting y position
	var num_projectiles = argument2	 // Number of projectiles
	var spacing = argument3			// Spacing between projectiles
	var pDirection = argument4	   // Direction: "left", "right", "up", "down"
	var pSpeed = argument5		  // Projectile speed
	
	for (var i = 0; i < num_projectiles; i++) 
	{
		 var px = start_x
		 var py = start_y
		 var projectile = noone
		 
		 // Set the projectile speed and direction
		switch (pDirection)
		{
			case "right":
				py += i * spacing
				projectile = instance_create_layer(px, py, layer, obj_projectile_boss_phase3_BIG);
				projectile.hspeed = pSpeed
				projectile.vspeed = 0
				projectile.image_angle = 0
				break
			case "left":
				py += i * spacing
				projectile = instance_create_layer(px, py, layer, obj_projectile_boss_phase3_BIG);
				projectile.hspeed = -pSpeed
				projectile.vspeed = 0
				projectile.image_angle = 180
				break
			case "up":
				px += i * spacing
				projectile = instance_create_layer(px, py, layer, obj_projectile_boss_phase3_BIG);
				projectile.hspeed = 0 
				projectile.vspeed = -pSpeed
				projectile.image_angle = 90
				break
			case "down":
				px += i * spacing
				projectile = instance_create_layer(px, py, layer, obj_projectile_boss_phase3_BIG);
				projectile.hspeed = 0
				projectile.vspeed = pSpeed
				projectile.image_angle = 270
				break
			default:
				show_debug_message("Error: Invalid direction " + string(pDirection))
				break
				
		}
	}
}