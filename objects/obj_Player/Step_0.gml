/// @description Checks for movement input.
// You can write your code in this editor
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_roll = keyboard_check_pressed(vk_space);

inputDirection = point_direction(0, 0, key_right - key_left, key_down - key_up);
inputMagnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

script_execute(state);