/// @description Movement, damage & collisions

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

if(global.bosshp > 40)
{
	x = lerp(x, 500, dspeed) 
	y = lerp(y, 280, dspeed)

}
else if(global.bosshp <= 40 && global.bosshp > 30) 
{
	x = lerp(x, 500, dspeed)
	y = lerp(y, 20, dspeed)

}
else if(global.bosshp <= 30 && global.bosshp > 20) 
{
	x = lerp(x, 500, dspeed)
	y = lerp(y, 500, dspeed)
}
else if(global.bosshp <= 20 && global.bosshp > 10) 
{
	x = lerp(x, 20, dspeed)
	y = lerp(y, 290, dspeed)
}
else if(global.bosshp <= 10 && global.bosshp > 0)
{
	x = lerp(x, 920, dspeed)
	y = lerp(y, 290, dspeed)
}
//Spawn projectiles
if (canSpawn) {
	canSpawn = false
	// Spawn from random side
	var randomSide = irandom(4)
	if (randomSide == 1 )
	{
		scr_spawn_projectiles(0, 0, 6, 128, "right", 3.5)
	}
	else if(randomSide == 2)
	{
		scr_spawn_projectiles(960, 0, 6, 128, "left", 3.5)
	}
	else if(randomSide == 3)
	{
		scr_spawn_projectiles(200, 550, 6, 128, "up", 3.5)
	}
	else if(randomSide == 4)
	{
		scr_spawn_projectiles(200, 0, 6, 128, "down", 3.5)
	}
	alarm[2] = game_get_speed(gamespeed_fps) * 2
}

// If coliding with the sword and isn't damaged
if(place_meeting(x, y, obj_sword) && !hit)
{
	// Otherwise, decrease HP and set hit to true and start the cooldown
		global.bosshp--
		hit = true
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
		// Play sound
		audio_play_sound(snd_hit, 800, 0, 1, 0, irandom(5))
}

// Damage player
if(place_meeting(x, y, obj_hero) && !hit && !obj_hero.inv && damaged) {
	global.hp -= 10
	alarm[1] = game_get_speed(gamespeed_fps) & 0.5
	// Play sound
	audio_play_sound(snd_hit, 800, 0, 1, 0, irandom(5))
}

// Face correct direction
if (direction > 90 && direction < 270) image_xscale = -1
else image_xscale = 1