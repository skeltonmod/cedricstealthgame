image_speed = 0
image_index = choose(0,0,0,0,0,0,0,1,2)

if(random(150) < 1){
	image_index = 3;
}

top_sprite = s_wall_1_top;
sprite_index = s_wall_1_bot;

top_index = choose(0,0,0,0,0,0,0,1,2);

if(random(200) < 1){
	top_index = 3
}

if(!place_meeting(x, y + 16, c_floor)){
	visible = false;
}