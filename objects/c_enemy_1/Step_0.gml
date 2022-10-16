makeTarget();

if walk > 0 {
    walk -= 1
    motion_add(direction, 0.2)
}

if hspeed > 0{
	right = 1
}
else if hspeed < 0{
	right = -1
}
	
if (speed > 1){
	speed = 1
}

// Inherit the parent event
event_inherited();

