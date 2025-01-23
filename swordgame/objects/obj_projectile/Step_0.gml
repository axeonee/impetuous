/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

//Get nearest enemy
var nearest = instance_nearest(x, y, par_enemy)

if (place_meeting(x, y, obj_hero))
{
	global.hp -= 10
}

// If sword touches projectile, set parried to true and make the projectile head towards the nearest enemy
else if (place_meeting(x, y, obj_sword))
{
	parried = true
	direction = point_direction(x, y, nearest.x, nearest.y)	
}

// If a projectile has been parried and it touches an enemy, decrease its hp by 5
else if (place_meeting(x, y, par_enemy) && parried)
{
	nearest.hp -= 5
	parried = false
	instance_destroy()
	// TO DO: Add SFX
}