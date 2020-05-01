/// @description drop fragments and items
if (entityFragmentCount > 0){
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	scr_DropItems(x, y, fragmentArray);
}
