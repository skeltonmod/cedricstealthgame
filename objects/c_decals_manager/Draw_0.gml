if(!surface_exists(decal_surface)){
	decal_surface = surface_create(room_width, room_height);
}else{
	draw_surface(decal_surface, 0, 0);
}

for(var i = 0; i < d_index; ++i){
	draw_sprite_ext(
		d_list[i, 0],
		d_list[i, 1],
		d_list[i, 3],
		d_list[i, 4],
		1,
		1,
		d_list[i, 2],
		-1,
		1
	)
}