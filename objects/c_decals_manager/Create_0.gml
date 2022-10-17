// Decal Stuff
globalvar d_list, d_index, decal_surface;

d_index = 0;

for(var i = 0; i < 200; ++i){
	d_list[i, 0] = noone;
	d_list[i, 1] = 0;
	d_list[i, 2] = 0;
	d_list[i, 3] = 0;
	d_list[i, 4] = 0;
}

decal_surface = surface_create(room_width, room_height);

alarm[0] = 60;