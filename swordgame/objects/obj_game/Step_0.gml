/// @description Insert description here
// You can write your code in this editor

// Death
if(global.hp <= 0)
{
	game_restart();
}


// Manual reset
if(keyboard_check_pressed(ord("R")))
{
	game_restart();
}

// God mode
if(keyboard_check_pressed(ord("G")))
{
	global.hp = 99999999
}
// Spawn simple enemy for testing
/*if(keyboard_check_pressed(ord("X")))
{
	instance_create_layer(700, 130, "Enemies", obj_enemy_simple)
}

// Spawn dasher enemy for testing
else if(keyboard_check_pressed(ord("C")))
{
	instance_create_layer(700, 130, "Enemies", obj_enemy_dasher)
}

// Spawn dasher enemy for testing
else if(keyboard_check_pressed(ord("V")))
{
	instance_create_layer(700, 130, "Enemies", obj_enemy_chaser)
}*/

// Goto wave for testing
if(keyboard_check_pressed(ord("1")))
{
	room_goto(0)
}
else if(keyboard_check_pressed(ord("2")))
{
	room_goto(1)
}
else if(keyboard_check_pressed(ord("3")))
{
	room_goto(2)
}
else if(keyboard_check_pressed(ord("4")))
{
	room_goto(3)
}
