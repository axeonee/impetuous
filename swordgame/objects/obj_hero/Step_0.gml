/// @description Insert description here
// You can write your code in this editor

// Center position (sword position)
var center_x = obj_sword.x
var center_y = obj_sword.y

// Distance between sword and hero
var dx = mouse_x - center_x
var dy = mouse_y - center_y

// Calculate the distance
var dist = point_distance(x, y, center_x, center_y)

// Clamp the distance
var max_radius = 64
if (dist > max_radius) {
    var angle = point_direction(x, y, center_x, center_y)
	target_x = center_x + lengthdir_x(max_radius, angle);
	target_y = center_y + lengthdir_y(max_radius, angle);
} else {
    target_x = center_x
    target_y = center_y	
}
x = lerp(x, target_x, swing_speed)
y = lerp(y, target_y, swing_speed)

// Rotate player to face cursor
image_angle = point_direction(x, y, obj_sword.x, obj_sword.y) - 90

// Change if moving and change the sprite accordingly
if (x != xprevious || y != yprevious)
{
	sprite_index = spr_hero_moving
	obj_sword.sprite_index = spr_sword_held
}
else 
{
	sprite_index = spr_hero
	obj_sword.sprite_index = spr_sword
}