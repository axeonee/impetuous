/// @description Insert description here
// You can write your code in this editor

// Death
if(global.hp = 0)
{
	game_restart();
}

// Spawn enemy for testing
if(keyboard_check_pressed(ord("X")))
{
	ScreenHeight = display_get_height() / 2;
	ScreenWidth = display_get_width() / 2;
	dir = point_direction(ScreenWidth, ScreenHeight)
	instance_create_layer(700, 130, "Enemies", obj_enemy)
}

