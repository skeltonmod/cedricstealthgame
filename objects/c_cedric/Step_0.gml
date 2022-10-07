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

if(place_meeting(x, y + y_vel, static_parent)){
	while(!place_meeting(x, y + sign(y_vel), static_parent)){
		y += sign(y_vel);
	}
	
	y_vel = 0;
}



x += x_vel;
y += y_vel;
