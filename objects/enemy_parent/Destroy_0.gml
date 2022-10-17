instance_create_layer(x, y, "Effects", c_explosion2);
for(var i = 0; i < 6; i++){
	with(instance_create_layer(x, y, "Instances", c_gibs)){
		type = floor(random(4));
		direction = irandom(360);
		}
}

if(variable_global_exists("enemies_count")){
	global.enemies_count -= 1;
}