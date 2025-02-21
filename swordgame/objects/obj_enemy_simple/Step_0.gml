/// @description Movement, damage & collisions

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

// Set speed to 4
speed = 4

// Move
if place_meeting(x+(sign(speed))*8, y, par_enemy)
{
	while !place_meeting(x+(sign(speed)*8),y, par_enemy)
	{
		x += sign(speed)	
	}
	if place_meeting(x+(sign(speed)*8), y+16, par_enemy)
	{
		y -= 4	
	}
	else if place_meeting(x+(sign(speed)*8), y-16, par_enemy)
	{
		y += 4
	}
}

if place_meeting(x, y+(sign(speed))*8, par_enemy)
{
	while !place_meeting(x, y+(sign(speed)*8), par_enemy)
	{
		y += sign(speed)	
	}
	if place_meeting(x+16, y+(sign(speed)*8), par_enemy)
	{
		x -= 4	
	}
	else if place_meeting(x-16, y+(sign(speed)*8), par_enemy)
	{
		x += 4
	}
}

// If coliding with the sword and isn't damaged
if(place_meeting(x, y, obj_sword) && !hit)
{
	// Otherwise, decrease HP and set hit to true and start the cooldown
		hp--
		hit = true
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
		// Play sound
		audio_play_sound(snd_hit, 800, 0, 1, 0, irandom(5))
}

// Damage player
if(place_meeting(x, y, obj_hero) && !hit && !obj_hero.inv) {
	instance_destroy()
	global.hp -= 10
	// Play sound
	audio_play_sound(snd_hit, 800, 0, 1, 0, irandom(5))
}

// Face correct direction
if (direction > 90 && direction < 270) image_xscale = -1
else image_xscale = 1