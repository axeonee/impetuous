/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_enemy_boss_phase2))
{
	audio_play_sound(snd_boss, 800, 0)
	instance_create_layer(x, y, "Enemies", obj_enemy_boss_phase2)
	instance_create_layer(x, y, "Enemies", obj_healing)
}