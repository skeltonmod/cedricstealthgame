draw_self();

draw_path(path, 0, 0, 1);
draw_circle(x, y, detection_radius, true);

drawtext(x, y - 20, "PAUSE:" + string(pause_timer) , -1, 320, font_1, 32);
drawtext(x, y - 30, "MOVE: "+ string(move_timer), -1, 320, font_1, 32);