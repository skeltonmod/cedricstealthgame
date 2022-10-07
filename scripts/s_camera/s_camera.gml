// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function s_camera(fx, fy, tx, ty) {
    var dist, dir;
    dist = point_distance(fx, fy, tx, ty) * 0.45
    dir = point_direction(fx, fy, tx, ty)
    x = fx + lengthdir_x(dist, dir)
    y = fy + lengthdir_y(dist, dir)
}