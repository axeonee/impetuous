/// @description Death

// Kill enemy if hp is 0
if(global.bosshp <= 0)
{
	// Shake the screen
	scr_screenshake(150, 5, 0.5)
	// Play sound
	with (mywand) instance_destroy()
	instance_destroy()
}