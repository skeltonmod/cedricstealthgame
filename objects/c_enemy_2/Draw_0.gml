var _xx = x + lengthdir_x(10, gunangle);
var _yy = y + lengthdir_y(10, gunangle);

draw_sprite(s_pistol_generic, floor(gunangle / 45), _xx, _yy);

// Inherit the parent event
event_inherited();

