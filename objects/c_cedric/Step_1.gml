projectile_delay -= 1;

if(idle_time < 0){
	idle_time = 0;
}

if(is_idle){
	idle_time -= 0.5;
}else{
	idle_time = 50;
}

if(mouse_check_button(mb_left) && projectile_delay <= 0){
	projectile_delay = max_projectile_delay;
	var mouse_direction = point_direction(x, y, mouse_x, mouse_y);
	var offset_x = x + lengthdir_x(20, mouse_direction);
	var offset_y = y + lengthdir_y(20, mouse_direction);
	horrifi_chromaticab_set(true, 1);
	//with(instance_create_layer(offset_x, offset_y, "Projectiles", m_smoke)){
		//image_speed = 1;
		//direction = point_direction(other.x, other.y, mouse_x, mouse_y);
		//image_angle = direction;
	//}
	
	with(instance_create_layer(offset_x, offset_y, "Instances", c_bullet)){
		direction = point_direction(other.x, other.y, mouse_x, mouse_y);
		image_angle = direction;
		speed = 10
	}
}else{
	horrifi_chromaticab_set(true, lerp(0.26, 1, 0.2));
}

