path = path_add();

path_next_point = 0;

px = 0;
py = 0;

movable = true;
move_timer = 0;
max_pause_timer = 120;
pause_timer = max_pause_timer;
min_move_time = 50;
max_move_time = 100;
move_radius = 128;

input_x = 0;
input_y = 0;

// Last seen position
last_x = 0;
last_y = 0;

// needed for the gameplay to work
alert_level = 0;

// The state
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
vision_length = 50;
shoot_radius = 30;

// gameplay stuff
hp = 100;

// animation stuff
// Draw shit
sub_image = 0;
sprite_direction = 0;

frame = 0;
max_frames = 1;
