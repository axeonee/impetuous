/// @description Insert description here

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

// Move
x += sign(speed)
y += sign(speed)

// If not dashing and cooldown is down
if (canDash)
{
	canDash = false
	speed = 25
	// reset speed
	alarm[1] = game_get_speed(gamespeed_fps) * 0.15
	// dash cooldown
	alarm[2] = game_get_speed(gamespeed_fps) * 0.50
}

// If coliding with the sword and isn't damaged
if(place_meeting(x, y, obj_sword) && !hit)
{
	// Check if hp is 1 and destroy if it is
	if(hp <= 1 )
	{
		instance_destroy(self)
	}
	// Otherwise, decrease HP and set hit to true and start the cooldown
	else
	{
		hp--
		hit = true
		alarm[0] = game_get_speed(gamespeed_fps) * 0.5
	}
}

// Damage player
if(place_meeting(x, y, obj_hero) && !hit) {
	instance_destroy(self)
	global.hp -= 10	
}