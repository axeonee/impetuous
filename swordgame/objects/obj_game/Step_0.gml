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
