// You can write your code in this editor
x_vel = 0;
y_vel = 0;

// some glitch effect
abberation = 0.26;

max_projectile_delay = 3;
// Shooting cooldown lmao
projectile_delay = max_projectile_delay;

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
