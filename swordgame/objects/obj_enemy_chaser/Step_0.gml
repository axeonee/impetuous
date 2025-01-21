/// @description Movement, damage & collisions

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

// Set speed to 4
speed = 10

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
	// decrease HP and set hit to true and start the cooldown
		hp--
		hit = true
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
}

// Damage player
if(place_meeting(x, y, obj_hero) && !hit && !obj_hero.inv) {
	instance_destroy()
	global.hp -= 10	
}