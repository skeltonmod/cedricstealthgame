with(c_wall){
	if(place_meeting(x, y + 16, c_floor)){
		draw_set_alpha(0.5)
		draw_sprite_ext(s_wall_1_top, 0, x, y + 12, 1, 1, 0, c_black, 1);
		draw_set_alpha(1)
	}
}