//roll movement
horizontalspeed = lengthdir_x(rollingspeed, direction);
verticalspeed = lengthdir_y(rollingspeed, direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - rollingspeed);

//roll collision check
var collided = scr_playerCollision();

//update player sprite
sprite_index = spriteRoll;
var totalFrames = sprite_get_number(sprite_index) / 4;
image_index = (CARDINAL_DIR * totalFrames) + ((1 - (moveDistanceRemaining / rollingdistance)) * totalFrames);

//change state
if (moveDistanceRemaining <= 0){
	state = scr_playerStateFree;
}