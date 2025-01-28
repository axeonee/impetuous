/// @description Death

// Kill enemy if hp is 0
if(hp <= 0)
{
	// Shake the screen
	scr_screenshake(10, 5, 0.5)
	// Play sound
	with (mywand) instance_destroy()
	instance_destroy()
}