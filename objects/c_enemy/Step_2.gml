event_inherited();

// Reach point in mp_grids
if(path_next_point > 0 && x == px && y == py){
	path_next_point++;
	if(path_next_point >= path_get_number(path)){
		path_next_point = 0
	}
	
	if(state != "CHECKINGOUT"){
		state = "IDLE";
	}
}
