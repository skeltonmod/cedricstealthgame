if(flash_counter > 0){
	draw_sprite(sprite_index, sprite_direction + 8, round(x), round(y));
}else{
	draw_sprite(sprite_index, sprite_direction, round(x), round(y));
}