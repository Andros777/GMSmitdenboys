/// @description Insert description here
// You can write your code in this editor
if (global.keydoor = 1){
	if(room = rm_Surface){
		room_goto(global.starterRoom);
	} else {
	room_goto(ds_list_find_value(global.currentRoomList, (1 + global.roomCounter)));
	global.roomCounter += 1;
	}
	global.keydoor = 0;
}