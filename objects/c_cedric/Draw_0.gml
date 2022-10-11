if(global.debug){
	draw_circle(x, y, interact_range, true);
	
	drawtext(x, y - 20, string(sprite_direction), -1, 320, font_1, 32);
}

if(is_idle){
	draw_sprite(sprite_index, sprite_direction, round(x), round(y));
}else{
	draw_sprite(sprite_index, sub_image, round(x), round(y));
}

//draw the gun kek
var _mouse_dir = point_direction(x, y, mouse_x, mouse_y);
var _xx = x + lengthdir_x(10, _mouse_dir);
var _yy = y + lengthdir_y(10, _mouse_dir);

draw_line(x, y, _xx, _yy)

draw_sprite(s_pistol, mouse_direction, _xx, _yy);