if (walk > 0) {
    walk -= 1
    motion_add(direction, 1)
    if target > 0
    mp_potential_step(target.x, target.y, 1, false)
}

if (speed > 1) {
    speed = 1
}

// Inherit the parent event
event_inherited();

