//movement

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

//attack key logic
if (key_attack) {
	state = scr_playerStateAttack;
	stateAttack = scr_AttackSlash;
}

//change state
if (key_roll){
	state = scr_playerStateRoll;
	moveDistanceRemaining = rollingdistance;
}

if (key_activate){
	//check for an entity to activate, if there is nothing to interact with, do nothing
	//otherwise, activate the entity. if it is an npc, make it face towards the player
	
	var activateX = lengthdir_x(10, direction);
	var activateY = lengthdir_y(10, direction);
	activate = instance_position(x+activateX, y+activateY, parent_Entity);
	
	//return to free state if there is nothing to interact with
	if (activate == noone || activate.entityActivateScript == -1){
		state = scr_playerStateFree;
	} else {
		//activate the entity
		scr_ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		if (activate.entityNPC){
			with(activate){
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}