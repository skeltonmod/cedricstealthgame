event_inherited();

var h = int64(keyboard_check(ord("D"))) - int64(keyboard_check(ord("A")));
var v = int64(keyboard_check(ord("S"))) - int64(keyboard_check(ord("W")));

var spd = sqrt(x_vel * x_vel + y_vel * y_vel);


// Movement
// TODO: use arcade movement, not this fucking gay shit
if (h == 0 && v == 0)
{
    x_vel = 0;
	y_vel = 0;
}

else
{
    dir = point_direction(0, 0, h, v);
	x_vel = lengthdir_x(1.3, dir);
	y_vel = lengthdir_y(1.3, dir);
}


is_idle = bool(h == 0 && v == 0);
if(place_meeting(x + x_vel, y, static_parent)){
	while(!place_meeting(x + sign(x_vel), y, static_parent)){
		x += sign(x_vel);
	}
	
	x_vel = 0;
}

sprite_direction = floor(dir / 45);

mouse_direction = floor(point_direction(x, y, mouse_x, mouse_y) / 45);

if(!is_idle){
	frame += 1;
	if(frame >= 1){
		frame = 0;
	}
}else{
	frame = 0;
}

sub_image = frame + sprite_direction * 1;

if(place_meeting(x, y + y_vel, static_parent)){
	while(!place_meeting(x, y + sign(y_vel), static_parent)){
		y += sign(y_vel);
	}
	
	y_vel = 0;
}



if(place_meeting(x, y, static_parent)) {
	for(var i = 0; i < 1000; ++i) {
		//Right
		if(!place_meeting(x + i, y, static_parent)) {
			x += i;
			break;
		}
		//Left
		if(!place_meeting(x - i, y, static_parent)) {
			x -= i;
			break;
		}
		//Up
		if(!place_meeting(x, y - i, static_parent)) {
			y -= i;
			break;
		}
		//Down
		if(!place_meeting(x, y + i, static_parent)) {
			y += i;
			break;
		}
	}
}


x += x_vel;
y += y_vel;
