// animation stuff
// Draw shit
right = choose(1, -1);
sub_image = 0;
sprite_direction = 0;

frame = 0;
max_frames = 1;

target = c_cedric;
wall = c_wall;

team = 1;

flash_counter = 0;

makeTarget = function () {
	var _target = target;
	if (!instance_exists(_target)){
		target = -1
	}
	if (target = -1) {
	    if instance_exists(_target)
	    target = instance_nearest(x, y, target)
	}
}