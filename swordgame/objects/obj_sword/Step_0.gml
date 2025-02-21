/// @description Insert description here
// You can write your code in this editor

// Center position (hero position)
var center_x = obj_hero.x
var center_y = obj_hero.y

// Set target x and y
target_x = mouse_x
target_y = mouse_y

// Interpolate from the current pos to the mouse pos
x = lerp(x, target_x, swing_speed)
y = lerp(y, target_y, swing_speed)

// Rotate the sword to face cursor
image_angle = point_direction(center_x, center_y, mouse_x, mouse_y) - 90

// Check if it has hit an enemy, and if it has make player invulnerable for a few secs
if (place_meeting(x, y, par_enemy) && !obj_hero.inv)
{
	obj_hero.inv = true
	alarm[0] = game_get_speed(gamespeed_fps) * 0.7
}

// Dash ability
if(mouse_check_button_pressed(mb_left) && !dashing)
{
	dashing = true
	obj_hero.inv = true
	swing_speed = 0.5
	// reset speed
	alarm[1] = game_get_speed(gamespeed_fps) * 0.15
	// dash cooldown
	alarm[2] = game_get_speed(gamespeed_fps)
}