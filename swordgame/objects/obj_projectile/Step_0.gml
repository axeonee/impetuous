/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

//Get nearest enemy
var nearest = instance_nearest(x, y, par_enemy)

if (place_meeting(x, y, obj_hero) && !parried)
{
	global.hp -= 7
	instance_destroy()
}

// If sword touches projectile, set parried to true and make the projectile head towards the nearest enemy
else if (place_meeting(x, y, obj_sword) && instance_exists(nearest))
{
	// Play sound
	audio_play_sound(snd_deflect_temp, 800, 0, 1, 0, irandom(5))
	parried = true
	direction = point_direction(x, y, nearest.x, nearest.y)	
	
}

// If a projectile has been parried and it touches an enemy, decrease its hp by 2
else if (place_meeting(x, y, par_enemy) && parried)
{
	nearest.hp -= 2
	parried = false
	instance_destroy()
	// TO DO: Add sound
}

// Make sure its facing the right way
image_angle = direction