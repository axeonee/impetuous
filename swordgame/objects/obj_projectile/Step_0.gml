/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd, direction)
y += lengthdir_y(spd, direction)

if (place_meeting(x, y, obj_hero))
{
	global.hp -= 10
}