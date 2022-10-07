if(instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
}

x += (x_to - x) / 25;
y += (y_to - y) / 25;

x = clamp(x, w_half, room_width - w_half);
y = clamp(y, h_half, room_height - h_half);

camera_set_view_pos(camera, x - w_half, y - h_half);
