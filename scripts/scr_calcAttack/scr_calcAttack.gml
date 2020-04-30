//use attack hitbox and check for any hits
mask_index = argument0;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, parent_Entity, hitByAttackNow, false);
if (hits > 0) {
	for (var i = 0; i < hits; i++){
		//if this instance has not yet been hit by this attack, hit it
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack, hitID) == -1){
			ds_list_add(hitByAttack, hitID);
			//what happens to the hit entity
			with(hitID){
				if (entityHitScript != -1) script_execute(entityHitScript);
			}
		}
	}
}


mask_index = spr_Player;