/// @description Insert description here
// You can write your code in this editor
x = owner.x
y = owner.y
image_xscale = abs(owner.image_xscale)
image_yscale = abs(owner.image_yscale)

if (instance_exists(obj_hero))
{
	if (obj_hero.x < x) image_yscale = -image_yscale
	if (point_distance(obj_hero.x, obj_hero.y, x, y) < 900)
	{
		image_angle = point_direction(x, y, obj_hero.x, obj_hero.y)
		countdown--
		if (countdown <= 0)
		{
			countdown = countdownrate
			// Play sound
			with (instance_create_layer(x, y, "Projectiles", obj_projectile_boss_phase3))
			{
				spd = 7
				direction = other.image_angle + random_range(-3, 3)
				image_angle = direction
				
			}
		}
	}
}