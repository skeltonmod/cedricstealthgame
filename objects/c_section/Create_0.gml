section_size = 10;
cell_size = 16;

_x = 0;
_y = 0

for(var xx = 0; xx < section_size; ++xx){
	var r = random_range(0, 1);
	_x = (xx * cell_size);
	
	instance_create_layer(x + _x , y, "Solids", choose(c_floor, c_block_16));
	
	for(var yy = 0; yy < section_size; ++yy){
		_y = (yy * cell_size);
		instance_create_layer(x + _x , y + _y, "Solids", choose(c_floor, c_block_16));
	}
	
	
}