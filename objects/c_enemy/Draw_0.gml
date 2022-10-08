draw_self();
if(state != "WANDER"){
	draw_sprite_ext(s_placeholder, 0, last_x, last_y, image_xscale, image_yscale, 0, image_blend, 0.5);
}
if(global.debug){
	draw_path(path, 0, 0, 1);
	draw_circle(x, y, detection_radius, true);

	drawtext(x, y - 20, string(state), -1, 320, font_1, 32);

	// draw the vision cone
	var get_line_x = x + lengthdir_x(vision_length, direction);
	var get_line_y = y + lengthdir_y(vision_length, direction);
	var angle = 20;

	var line_above_x = x + lengthdir_x(vision_length, direction - angle);
	var line_above_y = y + lengthdir_y(vision_length, direction - angle);

	var line_below_x = x + lengthdir_x(vision_length, direction + angle);
	var line_below_y = y + lengthdir_y(vision_length, direction + angle);

	draw_line_color(x, y, line_above_x, line_above_y, c_red, c_red);
	draw_line_color(x, y, line_below_x, line_below_y, c_red, c_red);
}