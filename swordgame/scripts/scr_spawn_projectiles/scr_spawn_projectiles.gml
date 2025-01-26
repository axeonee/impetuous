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
	/// @param loop How many times to loop

	var start_x = argument0      // Starting x position
	var start_y = argument1      // Starting y position
	var num_projectiles = argument2 // Number of projectiles
	var spacing = argument3      // Spacing between projectiles
	var pDirection = argument4    // Direction: "left", "right", "up", "down"
	var pSpeed = argument5        // Projectile speed
	var loop = argument6 // How many times to loop
	for (var i = 0; i < loop; i++)
	{
		for (var i = 0; i < num_projectiles; i++) 
		{
		    var px = start_x
		    var py = start_y

		 // Adjust position based on direction and spacing
		    if (pDirection == "right" || pDirection == "left") {
		        py += i * spacing; // Stack vertically (adjust y-axis)
		    } else if (pDirection == "up" || pDirection == "down") {
		        px += i * spacing; // Stack horizontally (adjust x-axis)
		    }

		    // Create the projectile
		    var projectile = instance_create_layer(px, py, layer, obj_projectile_boss_phase3_BIG);

		    // Set the projectile speed and direction
		    if (pDirection == "right") { projectile.hspeed = pSpeed; projectile.vspeed = 0; }
		    if (pDirection == "left") { projectile.hspeed = -pSpeed; projectile.vspeed = 0; }
		    if (pDirection == "up") { projectile.hspeed = 0; projectile.vspeed = -pSpeed; }
		    if (pDirection == "down") { projectile.hspeed = 0; projectile.vspeed = pSpeed; }
		}
	}
}