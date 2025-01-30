/// @description Insert description here
// You can write your code in this editor
x = owner.x
y = owner.y
image_xscale = abs(owner.image_xscale)
image_yscale = abs(owner.image_yscale)

if (instance_exists(obj_hero))
{
	if (obj_hero.x < x) image_yscale = -image_yscale
	if (point_distance(obj_hero.x, obj_hero.y, x, y) < 600)
	{
		image_angle = point_direction(x, y, obj_hero.x, obj_hero.y)
		countdown--
		if (countdown <= 0)
		{
			// Start shoot animation
			shooting = true
			
			countdown = countdownrate
			// Play sound
			audio_play_sound(snd_arrow, 800, 0, 1, 0, irandom(5))
			with (instance_create_layer(x, y, "Projectiles", obj_projectile))
			{
				spd = 8
				direction = other.image_angle + random_range(-3, 3)
				image_angle = direction
				
			}
		}
	}
	// Set appropiate shoot speed
	switch (owner.sprite_index)
	{
		case spr_simple_ranger:
			break
		case spr_fast_ranger:
			// Change shoot cooldown
			countdownrate = 30
			break
	}
	//Play animation if shooting, else stop.
	if (shooting)
		{
			image_speed = 1
			if(image_index >= image_number - 1) 
			{
				shooting = false
				image_index = 0
				image_speed = 0
			}
		}
		else 
		{
			image_speed = 0
			image_index = 0
		}
}
