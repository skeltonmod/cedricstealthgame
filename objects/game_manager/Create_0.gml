window_set_size(320 * 2, 240 * 2);
window_center()
grid_size = 16
//global.mp_grid = mp_grid_create(0, 0, room_width / grid_size, room_height / grid_size, grid_size, grid_size)
//mp_grid_add_instances(global.mp_grid, static_parent, 0)

// this should broadcast to all enemies that the player is idle
global.player_idle = false;



global.mp_grid = mp_grid_create(0, 0, room_width, room_height, grid_size, grid_size);

mp_grid_add_instances(global.mp_grid, static_parent, 0);