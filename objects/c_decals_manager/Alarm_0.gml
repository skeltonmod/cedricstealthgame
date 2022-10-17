surface_set_target(decal_surface);

for(var i = 0; i < d_index; ++i){
	if(d_list[i, 1] != noone){
		draw_sprite_ext(d_list[i,0], d_list[i,1], d_list[i,3], d_list[i,4], 1, 1, d_list[i,2], -1, 1);
		
		d_list[i, 0] = noone;
	}
}

d_index = 0;
surface_reset_target();


alarm[0] = 60;