horizontalspeed = lengthdir_x(inputMagnitude * movementspeed, inputDirection);
verticalspeed = lengthdir_y(inputMagnitude * movementspeed, inputDirection);


//player collision checks

scr_playerCollision()

//update sprite index

var oldSprite = sprite_index;
if (inputMagnitude != 0){
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (oldSprite != sprite_index) localFrame = 0;

//update image index
scr_animatePlayerSprite();

//change state
if (key_roll){
	state = scr_playerStateRoll;
	moveDistanceRemaining = rollingdistance;
}