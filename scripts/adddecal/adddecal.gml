// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function adddecal(_sprite_index, _image_index , _image_angle, _x, _y){
	d_list[d_index,0] = _sprite_index;
	d_list[d_index,1] = _image_index;        
	d_list[d_index,2] = _image_angle;
	d_list[d_index,3] = _x;
	d_list[d_index,4] = _y;
	
	d_index++;
	
	if(d_index >= 200){
		d_index = 0;
	}
}