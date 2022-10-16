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

draw_sprite(s_rifle, mouse_direction, _xx, _yy);

// draw the doom timer
//draw_text(x, y - 20, string(global.enemies_count))

//draw_line_color(x, y, x + lengthdir_x(17, _mouse_dir), y + lengthdir_y(17, _mouse_dir), c_red, c_red);