// handle the animation frames
frame += 1;
if(frame >= 1){
	frame = 0;
}else{
	frame = 0;
}

if(flash_counter > 0){
	flash_counter -= 1;
}else{
	flash_counter = 0;
}

sprite_direction = floor(direction / 45);
sub_image = frame + sprite_direction * 1;

if(hp <= 0){
	instance_destroy();
}

if(place_meeting(x, y, static_parent)) {
	for(var i = 0; i < 1000; ++i) {
		//Right
		if(!place_meeting(x + i, y, static_parent)) {
			x += i;
			break;
		}
		//Left
		if(!place_meeting(x - i, y, static_parent)) {
			x -= i;
			break;
		}
		//Up
		if(!place_meeting(x, y - i, static_parent)) {
			y -= i;
			break;
		}
		//Down
		if(!place_meeting(x, y + i, static_parent)) {
			y += i;
			break;
		}
	}
}
