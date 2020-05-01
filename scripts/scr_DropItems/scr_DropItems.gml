/// @desc DropItems(x, y, [items])
/// @arg x
/// @arg y
/// @arg [items] array of items to drop

var items = array_length_1d(argument2);

if (items > 1){
	var anglePerItem = 360/items;
	var angle = random(360);
	for (var i = 0; i < items; i++){
		with(instance_create_layer(argument0, argument1, "Layer_Instances", argument2[i])){
			direction = angle;
			fragSpeed = 0.75 + (items * 0.1) + random(0.1);
		}
		angle += anglePerItem;
	}
	
} else instance_create_layer(argument0, argument1, "Layer_Instances", argument2[0]);