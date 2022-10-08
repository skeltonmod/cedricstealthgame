switch(state){
	case "IDLE":
		// DO Nothing
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
	
	
}