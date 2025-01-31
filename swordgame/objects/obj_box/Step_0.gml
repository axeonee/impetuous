/// @description Fun < 50 = Unexist
// You can write your code in this editor

if (fun >= 50) {
	image_index = 0;
}

if (fun <= 50 && !waittime) {
	image_index = 1;
	instance_destroy()
}