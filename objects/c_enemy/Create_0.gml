path = path_add();

path_next_point = 0;

px = 0;
py = 0;

movable = true;
move_timer = 0;
pause_timer = 10;
min_move_time = 50;
max_move_time = 100;
move_radius = 128;

input_x = 0;
input_y = 0;

state = "WANDER";

move_to_point = function (_tx, _ty, CELLSIZE = 32){
	_tx = floor(_tx / CELLSIZE) * CELLSIZE;
	_ty = floor(_ty / CELLSIZE) * CELLSIZE;
	_ty += CELLSIZE / 2;
	_ty += CELLSIZE / 2;
	
	var can_move = mp_grid_path(global.mp_grid, path, x, y, _tx, _ty, false);
	
	if(can_move){
		path_next_point = 1;
	}
}

// Some detection stuff
detection_radius = 50;
