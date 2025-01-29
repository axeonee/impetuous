/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

//Get nearest enemy
var nearest = instance_nearest(x, y, par_enemy)

if (place_meeting(x, y, obj_hero) && !parried)
{
	global.hp -= 10
	instance_create_layer(x, y, "Enemies", obj_explosion)
	instance_destroy()
}

// If sword touches projectile, set parried to true and make the projectile head towards the nearest enemy
else if (place_meeting(x, y, obj_sword) && instance_exists(nearest))
{
	// Play sound
	parried = true
	direction = point_direction(x, y, nearest.x, nearest.y)	
}

// If a projectile has been parried and it touches an enemy, decrease its hp by 5
else if (place_meeting(x, y, par_enemy) && parried)
{
	global.bosshp -= 5
	parried = false
	instance_create_layer(x, y, "Enemies", obj_explosion)
	instance_destroy()
	// TO DO: Add sound
}

if (image_index >= image_number) image_speed = 0