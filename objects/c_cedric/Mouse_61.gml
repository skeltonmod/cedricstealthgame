weapon -= 1;
weapon = clamp(weapon, 0, array_length(weapons) - 1);

var weapon_map = weapons[weapon];
sprite = ds_map_find_value(weapon_map, "sprite");
length = weapon_map[? "length"];
delay = weapon_map[? "delay"];
bulletspeed = weapon_map[? "bulletspeed"];
projectile = weapon_map[? "projectile"];
weapon_name = weapon_map[? "weapon_name"];
sound = weapon_map[? "sound"];