
// scaler has issues with opera GX
window_set_size(320 * 2, 240 * 2);
window_center()

grid_size = 16
global.doom_timer = 60;
pause_timer = 10;

//global.mp_grid = mp_grid_create(0, 0, room_width / grid_size, room_height / grid_size, grid_size, grid_size)
//mp_grid_add_instances(global.mp_grid, static_parent, 0)
// this should broadcast to all enemies that the player is idle
global.player_idle = false;
global.debug = false;
global.enemies_count = 0;

//global.mp_grid = mp_grid_create(0, 0, room_width / GRID_W, room_height / GRID_W, GRID_W, GRID_W);
//mp_grid_add_instances(global.mp_grid, static_parent, 0);
horrifi_enable(true);

horrifi_bloom_set(true,8,0.23,0.59);
horrifi_chromaticab_set(true,0.18);
horrifi_scanlines_set(true,0.19);
horrifi_vhs_set(true,0.19);
horrifi_vignette_set(true,0.09,0.98);
horrifi_crt_set(false,2.56);
horrifi_noise_set(true,0.05);