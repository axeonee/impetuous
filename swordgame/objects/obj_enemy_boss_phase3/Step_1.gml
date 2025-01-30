/// @description Death

// Kill enemy if hp is 0
if(global.bosshp <= 0)
{
	// Shake the screen & go to end screen
	scr_screenshake(150, 5, 0.5)
	instance_create_layer(x, y, "Player", obj_fade)
	// Play sound
	audio_play_sound(snd_boss, 800, 0)
	with (mywand) instance_destroy()
	instance_destroy()
}