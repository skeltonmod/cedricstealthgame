var _mouse_dir = point_direction(x, y, mouse_x, mouse_y);

if(is_idle){
	draw_sprite(sprite_index, mouse_direction, round(x), round(y));
}else{
	draw_sprite(sprite_index, mouse_direction, round(x), round(y));
}

//draw the gun kek

var _xx = x + lengthdir_x(10, _mouse_dir);
var _yy = y + lengthdir_y(10, _mouse_dir);

//draw_line(x, y, _xx, _yy)

draw_sprite(sprite, mouse_direction, _xx, _yy);

draw_text_ext(2, 5, "pre-release 0.5", 0, 10)
