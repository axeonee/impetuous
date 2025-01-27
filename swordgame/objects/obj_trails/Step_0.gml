// Base of the sword
var base_x = obj_sword.x + lengthdir_x(origin_offset, obj_sword.image_angle - 180) // Adjusted base
var base_y = obj_sword.y + lengthdir_y(origin_offset, obj_sword.image_angle - 180)

// Tip of the sword
var angle = obj_sword.image_angle // Sword's rotation angle in degrees
var tip_x = base_x + lengthdir_x(sword_length, angle)
var tip_y = base_y + lengthdir_y(sword_length, angle)

// Thickness offset (perpendicular to the sword's angle)
var perp_angle = angle + 90 // Perpendicular angle
var offset_x = lengthdir_x(sword_thickness / 2, perp_angle)
var offset_y = lengthdir_y(sword_thickness / 2, perp_angle)

// Calculate the four corners of the sword
var corner1_x = base_x + offset_x // Bottom-left corner
var corner1_y = base_y + offset_y
var corner2_x = base_x - offset_x // Bottom-right corner
var corner2_y = base_y - offset_y
var corner3_x = tip_x + offset_x // Top-left corner
var corner3_y = tip_y + offset_y
var corner4_x = tip_x - offset_x // Top-right corner
var corner4_y = tip_y - offset_y

// Add the four corners as a "trail segment" (a struct)
var trail_segment = 
{
    c1x: corner1_x, c1y: corner1_y,
    c2x: corner2_x, c2y: corner2_y,
    c3x: corner3_x, c3y: corner3_y,
    c4x: corner4_x, c4y: corner4_y
};
ds_list_add(trail, trail_segment)

// Limit the trail size
if ds_list_size(trail) > trail_limit 
{
    ds_list_delete(trail, 0)
}