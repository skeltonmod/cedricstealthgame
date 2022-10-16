// count the doom_timer
if(global.doom_timer <= 0){
	/*
		repeat(2){
		var floor_instance = instance_find(c_floor, irandom(instance_number(c_floor) - 1))
		with(floor_instance){
			visible = false;
		}
	}
	*/
}else{
	global.doom_timer -= 0.4;
}

global.enemies_count = instance_number(enemy_parent);