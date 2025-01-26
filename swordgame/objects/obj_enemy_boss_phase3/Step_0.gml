/// @description Movement, damage & collisions

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

if(hp > 40)
{
	x = lerp(x, 500, dspeed) 
	y = lerp(y, 280, dspeed)
	//Spawn projectiles 
	scr_spawn_projectiles(0, 0, 6, 128, "right", 4, 6);
}
else if(hp <= 40 && hp > 30) 
{
	x = lerp(x, 500, dspeed)
	y = lerp(y, 20, dspeed)

}
else if(hp <= 30 && hp > 20) 
{
	x = lerp(x, 500, dspeed)
	y = lerp(y, 500, dspeed)
}
else if(hp <= 20 && hp > 10) 
{
	x = lerp(x, 20, dspeed)
	y = lerp(y, 290, dspeed)
}
else if(hp <= 10 && hp > 0)
{
	x = lerp(x, 920, dspeed)
	y = lerp(y, 290, dspeed)
}


// If coliding with the sword and isn't damaged
if(place_meeting(x, y, obj_sword) && !hit)
{
	// Otherwise, decrease HP and set hit to true and start the cooldown
		hp--
		hit = true
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
		// Play sound
}

// Damage player
if(place_meeting(x, y, obj_hero) && !hit && !obj_hero.inv && damaged) {
	global.hp -= 10
	alarm[1] = game_get_speed(gamespeed_fps) & 0.5
}
