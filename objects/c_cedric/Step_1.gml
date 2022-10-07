projectile_delay -= 1;

if(idle_time < 0){
	idle_time = 0;
}

if(is_idle){
	idle_time -= 0.5;
}else{
	idle_time = 50;
}

if(mouse_check_button(mb_left) && projectile_delay < 0 && is_idle){
	projectile_delay = 10;
	var mouse_direction = point_direction(x, y, mouse_x, mouse_y);
	var offset_x = x + lengthdir_x(6, mouse_direction + 325);
	var offset_y = y + lengthdir_y(6, mouse_direction + 325);
	//with(instance_create_layer(offset_x, offset_y, "Projectiles", m_smoke)){
		//image_speed = 1;
		//direction = point_direction(other.x, other.y, mouse_x, mouse_y);
		//image_angle = direction;
	//}
	
	with(instance_create_layer(offset_x, offset_y, "Instances", c_bullet)){
		direction = point_direction(other.x, other.y, mouse_x, mouse_y);
		image_angle = direction;
		speed = 4
	}
}