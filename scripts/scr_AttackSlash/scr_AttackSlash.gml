if (sprite_index != spr_PlayerSlashAttack){
	sprite_index = spr_PlayerSlashAttack;
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