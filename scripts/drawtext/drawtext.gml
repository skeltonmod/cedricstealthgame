function drawtext(_x,_y,_string,sep,w,sprite,firstchar){
	if(_string == ""){
		return 0;
	}
	
	var count = 0;
	var check = "";
	var lines = 0;
	
	for(var i = 0; i < string_length(_string); ++i){
		check = string_char_at(_string, i + 1);
		if(check == "#"){
			count = 0;
			lines++;
		}else{
			draw_sprite(sprite, ord(check) - firstchar, _x + (8 * count), _y + (lines * sep));
			count++;
		}
	}
}