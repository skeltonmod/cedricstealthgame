/// @description Camera Behavior

// Scroll
var cam = view_get_camera(0);
var _x = choose(-shake_magnitude, shake_magnitude);
var _y = choose(-shake_magnitude, shake_magnitude);

_xx = c_cedric.x / 320;
_xx -= frac(_xx);
_xx *= 320;

_yy = c_cedric.y / 240;
_yy -= frac(_yy);
_yy *= 240;

if(shake){
	shake_time -= 1;
	
	if(shake_time <= 0){
		shake_magnitude -= shake_fade;
		
		if(shake_magnitude <= 0){
			camera_set_view_pos(view_camera[0], x, y);
			shake = false;
		}
	}
}

// Offset the viewport to accomodate screenshake
camera_set_view_pos(cam, _x, _x);