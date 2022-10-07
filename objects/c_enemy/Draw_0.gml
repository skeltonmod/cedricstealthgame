draw_sprite(s_e_placeholder, image_index, x, y);

draw_line_color(x, y, gx, gy, c_black, c_black)

draw_path(path_id, x, y, true);

draw_text_ext(x, y - 20, bool(spotted), 1, 32);

draw_healthbar(x-0.5,y-15,x+10,y-12,hp,c_black,c_lime,c_lime,0,1,1);

draw_line_color(x, y, enemy_nearest.x, enemy_nearest.y, enemy_in_sight ? c_red : c_green, enemy_in_sight ? c_red : c_green);