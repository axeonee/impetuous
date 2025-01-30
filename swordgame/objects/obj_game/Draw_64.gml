/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_fade) && room != EndScreen)
{
	draw_sprite(spr_hpbar_bg, 0, healthbar_x, healthbar_y)
	draw_sprite_stretched(spr_healthbar, 0, healthbar_x - 125, healthbar_y - 20, (global.hp/hpMax) * healthbar_width, healthbar_height)
	draw_sprite(spr_hpbar, 0, healthbar_x, healthbar_y)
}

if (room = EndScreen)
{	draw_set_color(c_white)
	draw_set_font(kennypixel)
	draw_text_transformed(100, 100, "Congrats! You won!\n I hope you enjoyed our small little game. While unpolished, I hope it was fun!\n and hopefully not too annoying! Sorry.\n\nMain Programmer: AxeOne\nProgramming Help: Yellowbebo\nArt: Mr_Jessy\nMusic: Dtrondon\nFont: Kenney Mini", 2, 2, 0)
}