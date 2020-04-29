//roll movement
horizontalspeed = lengthdir_x(speedWallBounce, (direction - 180));
verticalspeed = lengthdir_y(speedWallBounce, (direction - 180));

moveDistanceRemaining = max(0, moveDistanceRemaining - speedWallBounce);

//update player sprite
sprite_index = spr_PlayerWallBounce;
image_index = CARDINAL_DIR - 2;

//Change Height
z = sin(((moveDistanceRemaining / distanceWallBounce) * pi)) * distanceWallBounceHeight;

//change state
if (moveDistanceRemaining <= 0){
	state = scr_playerStateFree;
}