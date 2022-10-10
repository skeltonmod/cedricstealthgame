if(global.debug){
	draw_circle(x, y, interact_range, true);
	
	drawtext(x, y - 20, string(sprite_direction), -1, 320, font_1, 32);
}

if(is_idle){
	draw_sprite(sprite_index, 40 + sprite_direction, round(x), round(y));
}else{
	draw_sprite(sprite_index, sub_image, round(x), round(y));
}