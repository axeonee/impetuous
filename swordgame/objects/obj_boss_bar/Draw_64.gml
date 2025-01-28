/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_boss_hpbar_bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_x - 125, healthbar_y - 20, (global.bosshp/hpMax) * healthbar_width, healthbar_height);
draw_sprite(spr_boss_hpbar, 0, healthbar_x, healthbar_y);