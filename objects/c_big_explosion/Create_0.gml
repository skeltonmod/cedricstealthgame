repeat(3){
	instance_create_layer(bbox_left + random(bbox_right-bbox_left) -3 + random(6), bbox_top + random(bbox_bottom-bbox_top) + 4 - 2 + random(4), "Instances", c_fire);
}