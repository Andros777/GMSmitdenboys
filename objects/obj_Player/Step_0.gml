/// @description Checks for movement input.
// You can write your code in this editor
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))

var horizontalmove = key_right - key_left;
var verticalmove = key_up - key_down;

horizontalspeed = horizontalmove * movementspeed;
verticalspeed = verticalmove * movementspeed;

if (place_meeting(x+horizontalspeed, y, obj_Wall1)){
	while (!place_meeting(x+sign(horizontalspeed), y, obj_Wall1)){
		obj_Player.x += sign(horizontalspeed);
	}
	horizontalspeed = 0;
}

if (place_meeting(x, y-verticalspeed, obj_Wall1)){
	while (!place_meeting(x, y-sign(verticalspeed), obj_Wall1)){
		obj_Player.x += sign(verticalspeed);
	}
	verticalspeed = 0;
}

obj_Player.x += horizontalspeed;
obj_Player.y -= verticalspeed;