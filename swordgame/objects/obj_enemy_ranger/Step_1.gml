/// @description Death

// Kill enemy if hp is 0
if(hp <= 0)
{
	// Play sound
	with (mywand) instance_destroy()
	instance_destroy()
}