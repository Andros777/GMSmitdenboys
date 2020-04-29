/// @description Insert description here
// You can write your code in this editor
lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

//cycle through responses
key_up = keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(ord("S"));
responseSelected += (key_down - key_up);
var _max = array_length_1d(responses) - 1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;

if (keyboard_check_pressed(ord("E"))){
	var messageLength = string_length(message);
	if (textProgress >= messageLength){
		if (responses[0] != -1){
			with(originInstance) scr_DialogueResponses(other.responseScripts[other.responseSelected]);
		}
		instance_destroy();
		if (instance_exists(obj_TextQueued)){
			with(obj_TextQueued) diagqueue--;
		} else {
			with (obj_Player) state = lastState;
		}
	} else {
		if (textProgress > 2){
			textProgress = messageLength;
		}
	}
}