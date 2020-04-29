//roll movement
horizontalspeed = lengthdir_x(rollingspeed, direction);
verticalspeed = lengthdir_y(rollingspeed, direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - rollingspeed);

//roll collision check
var collided = scr_playerCollision();

//update player sprite
sprite_index = spriteRoll;
var totalFrames = sprite_get_number(sprite_index) / 4;
image_index = (CARDINAL_DIR * totalFrames) + min(((1 - (moveDistanceRemaining / rollingdistance)) * (totalFrames)), totalFrames - 1);

//change state
if (moveDistanceRemaining <= 0){
	state = scr_playerStateFree;
}

if (collided){
	state = scr_playerStateWallBounce;
	moveDistanceRemaining = distanceWallBounce;
	scr_ScreenShake(2, 8);
}