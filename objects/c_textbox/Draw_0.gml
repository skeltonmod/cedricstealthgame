var skip_key = keyboard_check_pressed(vk_space);

var textbox_x = camera_get_view_x(view_camera[0]);
var textbox_y = camera_get_view_y(view_camera[0])+ 160;
var text_x_offset = 44;

if(!setup){
	setup = true;
	
	current_page = array_length(text);
	
	for(var i = 0; i < current_page; ++i){
		text_length = string_length(text[i]);
	}
}

// rendering the text
if (draw_char < text_length){
	draw_char += text_type_speed;
	draw_char = clamp(draw_char, 0, text_length);
}

if (skip_key){
	if(draw_char == text_length){
		if (page < current_page - 1){
			page++;
			draw_char = 0;
		}else{
			instance_destroy();
		}
	}
}

// draw the textbox
var textbox_sprite_w = sprite_get_width(textbox_sprite);
var textbox_sprite_h = sprite_get_height(textbox_sprite);

draw_sprite_ext(textbox_sprite, textbox_image, textbox_x + text_x_offset, textbox_y, textbox_width / textbox_sprite_w, textbox_height / textbox_sprite_h, 0, c_white, 1);


var _drawtext = string_copy(text[page], 1, draw_char);

draw_text_ext(textbox_x + text_x_offset + border, textbox_y + border, _drawtext, line_sep, line_width);