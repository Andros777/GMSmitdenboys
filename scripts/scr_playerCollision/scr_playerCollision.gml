var collisioncheck = false;
var entityList = ds_list_create();

//Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x + horizontalspeed, y)){
	x -= x mod TILE_SIZE;
	if (sign(horizontalspeed) == 1) x += TILE_SIZE - 1;
	horizontalspeed = 0;
	collisioncheck = true;
}

//Horizontal Entities
var entityCount = instance_position_list(x + horizontalspeed, y, parent_Entity, entityList, false);
var snapX;
while (entityCount > 0){
	var entityCheck = entityList[| 0]; //could also use ds_list_find_value(entityList, 0)
	if (entityCheck.entityCollision == true){
		//move as close as we can to the entity
		if (sign(horizontalspeed) == -1){
			snapX = entityCheck.bbox_right + 1;
		} else {
			snapX = entityCheck.bbox_left - 1;
		}
		x = snapX;
		horizontalspeed = 0;
		collisioncheck = true;
		entityCount = 0;
	}
	ds_list_delete(entityList, 0);
	entityCount--;
}


//Horizontal Move Commit
x += horizontalspeed;

ds_list_clear(entityList);

//Vertical Tiles
if (tilemap_get_at_pixel(collisionMap, x, y + verticalspeed)){
	y -= y mod TILE_SIZE;
	if (sign(verticalspeed) == 1) y += TILE_SIZE - 1;
	verticalspeed = 0;
	collisioncheck = true;
}

//Vertical Entities
var entityCount = instance_position_list(x, y + verticalspeed, parent_Entity, entityList, false);
var snapY;
while (entityCount > 0){
	var entityCheck = entityList[| 0]; //could also use ds_list_find_value(entityList, 0)
	if (entityCheck.entityCollision == true){
		//move as close as we can to the entity
		if (sign(verticalspeed) == -1){
			snapY = entityCheck.bbox_bottom + 1;
		} else {
			snapY = entityCheck.bbox_top - 1;
		}
		y = snapY;
		verticalspeed = 0;
		collisioncheck = true;
		entityCount = 0;
	}
	ds_list_delete(entityList, 0);
	entityCount--;
}


//Vertical Move COmmit
y += verticalspeed;

ds_list_destroy(entityList);

return collisioncheck;