/// @arg Message
/// @arg Background
/// @arg [Responses]



var obj;
if (instance_exists(obj_Text)) obj = obj_TextQueued; else obj = obj_Text;
with (instance_create_layer(0, 0, "Layer_Instances", obj)){
	message = argument[0];
	if (instance_exists(other)) originInstance = other.id else originInstance = noone;
	if (argument_count > 1) background = argument[1]; else background = 1;
	if (argument_count > 2){
		//trim markers from responses
		responses = argument[2];
		for (var i = 0; i < array_length_1d(responses); i++){
		var markerPosition = string_pos(":", responses[i]);
		responseScripts[i] = string_copy(responses[i], 1, markerPosition - 1);
		responseScripts[i] = real(responseScripts[i]);
		responses[i] = string_delete(responses[i], 1, markerPosition);
		breakpoint = 10;
		}
	} else {
		responses = [-1];
		responseScripts = [-1];
	}
}

with (obj_Player){
	if (state != scr_playerStateLocked){
		lastState = state;
		state = scr_playerStateLocked;
	}
}