/// @description Insert description here
// You can write your code in this editor
if (!global.gamePaused){
	//Bounce
	if (bounceCount != 0){
		fragBounce += (pi * bounceSpeed);
		if (fragBounce > pi){
			fragBounce -= pi;
			bounceHeight *= 0.6;
			bounceCount--;
		}
		z = sin(fragBounce) * bounceHeight; //could use abs(sin(bounce)) to have the sinus curve above 0 the entire time, not needed because of previous statements tho
	}
	else z = 0;
	
	//Deteriorate
	fragDeteriorate++;
	if (fragDeteriorate > deteriorateAfter){
		image_alpha -= 1 / deteriorateTime;
		if (image_alpha <= 0) instance_destroy();
	}
	
	//Friction
	fragFriction = 0.05
	if (z == 0) fragFriction = 0.10;
	
	//Move
	x += lengthdir_x(fragSpeed, direction);
	y += lengthdir_y(fragSpeed, direction);
	if (tilemap_get_at_pixel(collisionMap, x, y) > 0) fragSpeed = 0;
	fragSpeed = max(fragSpeed - fragFriction, 0);
}