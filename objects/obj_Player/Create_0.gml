/// @description Sets initial player variables.
// You can write your code in this editor
state = scr_playerStateFree;
stateAttack = scr_AttackSlash;
hitByAttack = -1;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Layer_Collider"));

movementspeed = 2.0;
horizontalspeed = 0;
verticalspeed = 0;

rollingspeed = 3.0;
rollingdistance = 62;
distanceWallBounce = 30;
distanceWallBounceHeight = 6;
speedWallBounce = 1.5;
z = 0;

spriteRoll = spr_PlayerRolling;
spriteIdle = spr_Player;
spriteRun = spr_PlayerRun;
localFrame = 0;

image_speed = 0;