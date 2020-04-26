var collisioncheck = false;

//Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x + horizontalspeed, y)){
	x -= x mod TILE_SIZE;
	if (sign(horizontalspeed) == 1) x += TILE_SIZE - 1;
	horizontalspeed = 0;
	collisioncheck = true;
}

//Horizontal Move Commit
x += horizontalspeed;

//Vertical Tiles
if (tilemap_get_at_pixel(collisionMap, x, y + verticalspeed)){
	y -= y mod TILE_SIZE;
	if (sign(verticalspeed) == 1) y += TILE_SIZE - 1;
	verticalspeed = 0;
	collisioncheck = true;
}

//Vertical Move COmmit
y += verticalspeed;

return collisioncheck;