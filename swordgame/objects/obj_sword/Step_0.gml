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
    x = center_x + lengthdir_x(max_radius, angle)
    y = center_y + lengthdir_y(max_radius, angle)
} else {
    x = mouse_x
    y = mouse_y
}

// Rotate the sword to face cursor
image_angle = point_direction(center_x, center_y, mouse_x, mouse_y) - 90