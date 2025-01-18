/// @description Insert description here

// Set direction to hero
direction = point_direction(x, y, obj_hero.x, obj_hero.y)

// Set speed to 4
speed = 4

// Move
x += sign(speed)
y += sign(speed)

// If coliding with the sword and isn't damaged
if(place_meeting(x, y, obj_sword) && !hit)
{
	// Check if hp is 1 and destroy if it is
	if(hp <= 1)
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