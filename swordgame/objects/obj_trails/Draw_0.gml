/// @description Insert description here
// You can write your code in this editor

//draw_circle(obj_sword.x, obj_sword.y, 5, true);

// Draw the trail
for (var i = 1; i < ds_list_size(trail); i++) 
{
    var seg1 = trail[| i - 1] // Previous trail segment
    var seg2 = trail[| i]     // Current trail segment

    // Blend alpha for fading effect
    var alpha =  i / trail_limit
    draw_set_alpha(alpha)

    // Draw a quad between two trail segments
    draw_primitive_begin(pr_trianglestrip);
    draw_vertex_color(seg1.c2x, seg1.c2y, c_white, alpha); // Bottom-right
    draw_vertex_color(seg1.c1x, seg1.c1y, c_white, alpha); // Bottom-left
    draw_vertex_color(seg2.c2x, seg2.c2y, c_white, alpha); // Top-right
    draw_vertex_color(seg2.c1x, seg2.c1y, c_white, alpha); // Top-left
    draw_primitive_end()
}

// Reset alpha
draw_set_alpha(1)