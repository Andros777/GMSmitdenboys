/// @description Insert description here
// You can write your code in this editor
fragBounce = 0;
fragDeteriorate = 0;
z = 0;
fragSpeed = 0;
fragFriction = 0;
image_speed = 0;
image_index = irandom(image_number - 1);
collisionMap = layer_tilemap_get_id(layer_get_id("Layer_Collider"));
image_xscale = choose(-1, 1);