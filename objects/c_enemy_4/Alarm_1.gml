
if ammo > 0 {
    if ammo = 16
    with instance_create_layer(x + lengthdir_x(17, gunangle), y + lengthdir_y(17, gunangle), "Effects", c_bullet) {
        motion_add(other.gunangle + sin(other.wave) * 20, 12)
        team = other.team
        image_angle = direction
    }
	with instance_create_layer(x + lengthdir_x(17, gunangle), y + lengthdir_y(17, gunangle), "Effects", c_bullet) {
        motion_add(other.gunangle + sin(other.wave) * 20, 12)
        team = other.team
        image_angle = direction
    }
    
    alarm[1] = 2
    wave += 0.1
    ammo -= 1
}
else {
    rest = 1
    alarm[0] = 10
}