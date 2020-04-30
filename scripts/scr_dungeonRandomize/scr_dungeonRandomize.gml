randomRoomList = ds_list_create(); //create empty list to be filled with rooms
currentRoomNumber = ROOM_NUMBER;
var i;

for (var i = 0; i < currentRoomNumber; i++){
	ds_list_add(randomRoomList, rm_TestRoom1 + i);
	ds_list_shuffle(randomRoomList);
}