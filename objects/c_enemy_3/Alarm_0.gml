alarm[0] = 10 + random(5)

makeTarget();

if target > 0 {
    if collision_line(x, y, target.x, target.y, wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) < 64 {
            alarm[0] = 20
            wepangle = -wepangle
            motion_add(gunangle, 6)
            gunangle = point_direction(x, y, target.x, target.y)

            /*
				with instance_create(x, y, EnemySlash) {
                image_angle = other.gunangle
                motion_add(other.gunangle + random(10) - 5, 2)
                team = other.team
            }
			*/
            alarm[1] = 2 + random(5)
        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = 40 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}