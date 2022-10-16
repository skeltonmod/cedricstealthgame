if (walk > 0) {
    walk -= 1
    motion_add(direction, 0.3)
}

if (speed > 1) {
    speed = 1
}
// Inherit the parent event
event_inherited();

