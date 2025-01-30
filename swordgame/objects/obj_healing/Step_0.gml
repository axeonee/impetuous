/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_sword))
{
	global.hp = 50
	audio_play_sound(snd_healing, 800, 0)
	instance_destroy()
}