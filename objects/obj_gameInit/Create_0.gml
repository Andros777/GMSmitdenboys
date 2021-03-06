/// @description sets various things
// You can write your code in this editor
draw_set_font(fn_Arial);

//changes seed and randomizes rooms
randomize();

scr_dungeonRandomize();


//sets global variables
global.playerMoney = 0;
global.playerWeapon = 0;
global.weaponEquipped = false;
global.playerHealth = 2.5;
global.playerHealthMax = 3;
global.currentRoomList = randomRoomList;
global.roomCounter = 0;
global.starterRoom = ds_list_find_value(global.currentRoomList, 0);
//global.nextRoom = ds_list_find_value(global.currentRoomList, (1 + global.roomCounter));
global.keydoor = 0;
global.gamePaused = false;
global.textSpeed = .75;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);