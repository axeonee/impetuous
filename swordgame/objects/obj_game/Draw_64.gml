/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_healthbar_bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_x - 50, healthbar_y - 5, (global.hp/hpMax) * healthbar_width, healthbar_height);
draw_sprite(spr_heatlhbar_border, 0, healthbar_x, healthbar_y);
//display_set_gui_maximise(3, 3);