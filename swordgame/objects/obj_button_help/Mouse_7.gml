/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_font(FontRenogare);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 100, "Sorry pal, not implemented yet :p");

// JIC*: reset all values back to default to not interfere with other stuff
draw_set_font(FontDefault);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// JIC: Just In Case