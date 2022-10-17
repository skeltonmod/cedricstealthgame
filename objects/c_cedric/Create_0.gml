// You can write your code in this editor
x_vel = 0;
y_vel = 0;

// some glitch effect
abberation = 0.26;

// State
is_idle = true;
dir = 0;

// the meat of the game
idle_time = 50;

interact_range = 15;

// Draw shit
sub_image = 0;
sprite_direction = 0;

frame = 0;
max_frames = 1;

// aiming
mouse_direction = 0;

// weapons

// standard pistol
weapons[0] = ds_map_create();
ds_map_add(weapons[0], "sprite", s_pistol_2);
ds_map_add(weapons[0], "weapon_name", "m_pistol");
ds_map_add(weapons[0], "length", 15);
ds_map_add(weapons[0], "delay", 6);
ds_map_add(weapons[0], "bulletspeed", 10);
ds_map_add(weapons[0], "projectile", c_bullet);
ds_map_add(weapons[0], "sound", sd_machine_pistol);

// rifle
weapons[1] = ds_map_create();
ds_map_add(weapons[1], "sprite", s_rifle);
ds_map_add(weapons[1], "weapon_name", "rifle");
ds_map_add(weapons[1], "length", 20);
ds_map_add(weapons[1], "delay", 3);
ds_map_add(weapons[1], "bulletspeed", 10);
ds_map_add(weapons[1], "projectile", c_bullet);
ds_map_add(weapons[1], "sound", sd_rifle);

// rocket launcher
weapons[2] = ds_map_create();
ds_map_add(weapons[2], "sprite", s_rocket_launcher);
ds_map_add(weapons[2], "length", 15);
ds_map_add(weapons[2], "weapon_name", "rocket_launcher");
ds_map_add(weapons[2], "delay", 10);
ds_map_add(weapons[2], "bulletspeed", 4);
ds_map_add(weapons[2], "projectile", c_rocket);
ds_map_add(weapons[2], "sound", sd_rocket_launch);

// flamer
weapons[3] = ds_map_create();
ds_map_add(weapons[3], "sprite", s_flamer);
ds_map_add(weapons[3], "weapon_name", "flamer");
ds_map_add(weapons[3], "length", 10);
ds_map_add(weapons[3], "delay", 4);
ds_map_add(weapons[3], "bulletspeed", 2);
ds_map_add(weapons[3], "projectile", c_flame);
ds_map_add(weapons[3], "sound", sd_flamer);

// set the current weapon
weapon = 0;

var weapon_map = weapons[weapon];
sprite = ds_map_find_value(weapon_map, "sprite");
length = weapon_map[? "length"];
delay = weapon_map[? "delay"];
bulletspeed = weapon_map[? "bulletspeed"];
projectile = weapon_map[? "projectile"];
weapon_name = weapon_map[? "weapon_name"];
sound = weapon_map[? "sound"];

// Shooting cooldown lmao
projectile_delay = delay;

instance_create_layer(x, y, "Instances", c_camera);
