
// scaler has issues with opera GX
window_set_size(320 * 2, 240 * 2);
window_center()

grid_size = 16
global.doom_timer = 60;
pause_timer = 10;

global.player_idle = false;
global.debug = false;

horrifi_enable(true);

horrifi_bloom_set(true,8,0.23,0.59);
horrifi_chromaticab_set(true,0.18);
horrifi_scanlines_set(true,0.19);
horrifi_vhs_set(true,0.19);
horrifi_vignette_set(true,0.09,0.98);
horrifi_crt_set(false,2.56);
horrifi_noise_set(true,0.05);

// Create the motherfucking decals
//instance_create_layer(x, y, "Effects", c_decals_manager);
//instance_create_layer(x, y, "Effects", c_decals_manager);