// follow AI Path

if(hp <= 0){
	instance_destroy();
}

if(collision_circle(x, y, detection_radius, c_cedric, false, true)){
	state = "CHASE";
}

//var _list = ds_list_create();
//var col_list = collision_circle_list(x, y, 8, c_wall, 0, true, _list, false);
/*
if(col_list > 0 && state != "CHASE"){
	var _distance = irandom_range(16, move_radius);
	var _direction = irandom(360);
		
	var _x = xstart + lengthdir_x(_distance, _direction);
	var _y = ystart + lengthdir_y(_distance, _direction);
	move_to_point(_x, _y);
}


*/


if(path_next_point > 0) {
	px = path_get_point_x(path, path_next_point);
	py = path_get_point_y(path, path_next_point);
	input_x = sign(px - x);
	input_y = sign(py - y);
}else{
	input_x = 0;
	input_y = 0;
}

mp_potential_step(px, py, 1, false);
