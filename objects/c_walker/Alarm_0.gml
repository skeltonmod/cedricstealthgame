with(c_floor) {
    instance_create_layer(x, y - 16, "Solids", c_wall)
    instance_create_layer(x + 16, y - 16, "Solids", c_wall)
    instance_create_layer(x + 32, y - 16, "Solids", c_wall)
    instance_create_layer(x + 32, y, "Solids", c_wall)
    instance_create_layer(x + 32, y + 16, "Solids", c_wall)
    instance_create_layer(x - 16, y, "Solids", c_wall)
    instance_create_layer(x - 16, y + 16, "Solids", c_wall)
    instance_create_layer(x - 16, y + 32, "Solids", c_wall)
    instance_create_layer(x, y + 32, "Solids", c_wall)
    instance_create_layer(x + 16, y + 32, "Solids", c_wall)
    instance_create_layer(x + 32, y + 32, "Solids", c_wall)
}

if(!instance_exists(c_cedric)){
	instance_create_layer(x, y, "Instances", c_cedric);
}

with(c_wall) {
    if (place_meeting(x, y, c_floor)) {
        instance_destroy();
    }
}


populatelevel();

alarm[1] = 2;