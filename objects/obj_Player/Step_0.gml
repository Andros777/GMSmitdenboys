/// @description Checks for movement input.
// You can write your code in this editor
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

inputDirection = point_direction(0, 0, key_right - key_left, key_down - key_up);
inputMagnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

horizontalspeed = lengthdir_x(inputMagnitude * movementspeed, inputDirection);
verticalspeed = lengthdir_y(inputMagnitude * movementspeed, inputDirection);

//player collision checks

scr_playerCollision()

//update sprite index

var oldSprite = sprite_index;
if (inputMagnitude != 0){
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (oldSprite != sprite_index) localFrame = 0;

//update image index
scr_animatePlayerSprite();