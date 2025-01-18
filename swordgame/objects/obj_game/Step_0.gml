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
	instance_create_layer(700, 130, "Enemies", obj_enemy)
}

