/// @description sets various things
// You can write your code in this editor
draw_set_font(fn_Arial);

//changes seed
randomize();

//sets global variables
global.keydoor = 0;
global.currentgameroom = room;
global.gamePaused = false;
global.textSpeed = .75;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
