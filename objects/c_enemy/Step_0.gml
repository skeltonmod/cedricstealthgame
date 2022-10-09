switch(state){
	case "IDLE":
		// DO Nothing
		movable = false;
		pause_timer--;
		if(pause_timer <= 0){
			pause_timer = max_pause_timer;
			movable = true;
			state = "WANDER";
		}
	break
	
	case "WANDER":
	if(movable){
		if(move_timer < 0){
			var _distance = irandom_range(16, move_radius);
			var _direction = irandom(360);
		
			var _x = xstart + lengthdir_x(_distance, _direction);
			var _y = ystart + lengthdir_y(_distance, _direction);
			move_to_point(_x, _y);
		
			move_timer = irandom_range(min_move_time, max_move_time);
		}else{
			move_timer--;
		}
	}
	break;
	
	case "CHASE":
		move_to_point(c_cedric.x, c_cedric.y);
	break;
	
	case "CHECKOUT":
		last_x = c_cedric.x;
		last_y = c_cedric.y;
		direction = point_direction(x, y, last_x, last_y);
		
		if(pause_timer <= 0){
			pause_timer = max_pause_timer;
			move_to_point(last_x, last_y);
			state = "CHECKINGOUT";
		}else{
			pause_timer--;
		}
	break;
	
	case "CHECKINGOUT":
		if(distance_to_point(last_x, last_y) <= 40){
			last_x = 0;
			last_y = 0;
			state = "DISAPPOINTED";
		}
	break;
	
	// didn't find anything, disappointed in life
	case "DISAPPOINTED":
		pause_timer--;
		if(pause_timer <= 0){
			pause_timer = max_pause_timer;
			state = "IDLE";
		}
	break;
}