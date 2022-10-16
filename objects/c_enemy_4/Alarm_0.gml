alarm[0] = 2+random(5)
rest = 0
makeTarget();
if target > 0 {
    if collision_line(x, y, target.x, target.y, wall, 0, 0) < 0 {
        if ammo = 0 and point_distance(x, y, target.x, target.y) > 64 {
            makeTarget();
            if target > 0
            gunangle = point_direction(x, y, target.x, target.y)
            alarm[1] = 20

            ammo = 16
        }
        direction = point_direction(x, y, target.x, target.y) + (70 + random(40)) * choose(1, -1)
    }
    else
        motion_add(random(360), 0.5)
}
else
    motion_add(random(360), 0.5)