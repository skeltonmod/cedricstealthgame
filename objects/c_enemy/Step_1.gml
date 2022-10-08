// follow AI Path

if(alert_level == 1){
	state = "CHASE";
}

if(collision_circle(x, y, detection_radius, c_cedric, false, true)){
	if(!collision_line(x, y, c_cedric.x, c_cedric.y, static_parent, false, true)){
		state = "CHECKOUT";
	}
	
}

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
