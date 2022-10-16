alarm[0] = 3+random(10)


if target > 0 {
    if collision_line(x, y, target.x, target.y, wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 48 {
            if random(4) < 1 {
                wkick = 4
				var offset_x = x + lengthdir_x(17, gunangle);
				var offset_y = y + lengthdir_y(17, gunangle);
                with instance_create_layer(offset_x, offset_y, "Instances", c_bullet) {
                    motion_add(other.gunangle + random(20) - 10, 4)
                    image_angle = direction
                    team = other.team
                }
                gunangle = point_direction(x, y, target.x, target.y)
                alarm[0] = 3 + random(5)
            }
            else {
                direction = point_direction(x, y, target.x, target.y)
                speed = 0.4
                walk = 10 + random(10)
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
        else {
            direction = point_direction(target.x, target.y, x, y)
            speed = 0.4
            walk = 40 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        //if target.x < x
        //right = -1
        //else if target.x > x
        //right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[0] = walk + 10 + random(30)
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
    alarm[0] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}