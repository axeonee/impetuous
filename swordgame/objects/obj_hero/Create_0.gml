/// @description Insert description here
// You can write your code in this editor

//Create sword above player
instance_create_layer(x, y-32, "Player", obj_sword)

target_x = 0
target_y = 0

swing_speed = 0.15; // Lower = slower

inv = false