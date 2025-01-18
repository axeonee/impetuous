/// @description Insert description here
// You can write your code in this editor

// Center position (hero position)
var center_x = obj_hero.x
var center_y = obj_hero.y

// Distance between sword and hero
var dx = mouse_x - center_x
var dy = mouse_y - center_y

// Calculate the distance
var dist = point_distance(center_x, center_y, mouse_x, mouse_y)

// Clamp the distance
var max_radius = 64
if (dist > max_radius) {
    var angle = point_direction(center_x, center_y, mouse_x, mouse_y)
	target_x = center_x + lengthdir_x(max_radius, angle);
	target_y = center_y + lengthdir_y(max_radius, angle);
} else {
    target_x = mouse_x
    target_y = mouse_y	
}
x = lerp(x, target_x, swing_speed)
y = lerp(y, target_y, swing_speed)

// Rotate the sword to face cursor
image_angle = point_direction(center_x, center_y, mouse_x, mouse_y) - 90