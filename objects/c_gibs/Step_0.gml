z_speed -= z_gravity;
z += z_speed;
if(z <= 0){
	z -= z_speed;
	z_speed = -z_speed / 2;
	speed -= 0.5;
}else{
	image += frame_speed;
}

if(speed < 0){
	speed = 0;
	instance_destroy();
}
// Animate
frame = type;