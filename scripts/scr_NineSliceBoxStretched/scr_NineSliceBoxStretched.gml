var size = sprite_get_width(argument0) / 3;
//dialoguebox (sprite, x1, y1, x2, y2);

var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var index = argument5;
var w = x2 - x1;
var h = y2 - y1;

//middle
draw_sprite_part_ext(argument0, index, size, size, 1, 1, x1+size, y1+size, w-(size*2), h-(size*2), c_white, 1);

//corners
//top left
draw_sprite_part(argument0, index, 0, 0, size, size, x1, y1);
//top right
draw_sprite_part(argument0, index, size*2, 0, size, size, x1+w-size, y1);
//bottom left
draw_sprite_part(argument0, index, 0, size*2, size, size, x1, y1+h-size);
//bottom right
draw_sprite_part(argument0, index, size*2, size*2, size, size, x1+w-size, y1+h-size);

//edges
//left edge
draw_sprite_part_ext(argument0, index, 0, size, size, 1, x1, y1+size, 1, h-(size*2), c_white, 1);
//right edge
draw_sprite_part_ext(argument0, index, size*2, size, size, 1, x1+w-size, y1+size, 1, h-(size*2), c_white, 1);
//top edge
draw_sprite_part_ext(argument0, index, size, 0, 1, size, x1+size, y1, w-(size*2), 1, c_white, 1);
//bottom edge
draw_sprite_part_ext(argument0, index, size, size*2, 1, size, x1+size, y1+h-(size), w-(size*2), 1, c_white, 1);