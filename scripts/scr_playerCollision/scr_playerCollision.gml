var collisioncheck = false;

if (place_meeting(x+horizontalspeed,y,obj_Collider)){
	while (!place_meeting(x+sign(horizontalspeed),y,obj_Collider)){
		x += sign(horizontalspeed);
	}
	horizontalspeed = 0;
	collisioncheck = true;
}

x += horizontalspeed;

if (place_meeting(x,y+verticalspeed,obj_Collider)){
	while (!place_meeting(x,y+sign(verticalspeed),obj_Collider)){
		y += sign(verticalspeed);
	}
	verticalspeed = 0;
	collisioncheck = true;
}

y += verticalspeed;

return collisioncheck;