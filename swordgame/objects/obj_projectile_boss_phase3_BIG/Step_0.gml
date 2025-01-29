/// @description Insert description here
// You can write your code in this editor

// Move in the direction specified by hspeed and vspeed
x += hspeed
y += vspeed

if (image_index >= image_number) image_speed = 0

// Destroy the projectile if it goes off-screen
if (x < 0 || x > room_width || y < 0 || y > room_height) 
{
    instance_destroy()
}
if (place_meeting(x, y, obj_hero))
{
	instance_create_layer(x, y, "Enemies", obj_explosion)
	global.hp -= 5
	instance_destroy()
	
}
