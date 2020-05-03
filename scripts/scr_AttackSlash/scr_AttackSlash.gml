if (sprite_index != spr_PlayerSlashAttack){
	sprite_index = spr_PlayerSlashAttack;
	direction = point_direction(x, y, mouse_x, mouse_y);
	localFrame = 0;
	image_index = 0;
	
	if (!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
	ds_list_clear(hitByAttack);
}

scr_calcAttack(spr_PlayerSlashAttackHB);

//Update Sprite
scr_animatePlayerSprite();

if (animationEnd){
	state = scr_playerStateFree;
	animationEnd = false;
}