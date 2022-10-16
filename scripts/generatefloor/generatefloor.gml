// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generatefloor(){
	var turn = 0;
	
	instance_create_layer(x, y, "Solids", c_floor);
	
	if(random(2) < 1){
		instance_create_layer(x+16,y, "Solids",c_floor)
		instance_create_layer(x+16,y+16, "Solids",c_floor)
		instance_create_layer(x,y+16, "Solids",c_floor)
	}
	
	turn = choose(90,-90,90,-90,180);
	
	direction += turn;
	
	x += lengthdir_x(16, direction);
	y += lengthdir_y(16, direction);
	
	instance_create_layer(x, y, "Solids", c_floor);
	
	if(random(29 + instance_number(floormaker)) > 30){
		instance_destroy();
	}
	
	if (random(20) < 1) {
		instance_create_layer(x, y, "Solids", floormaker);
	}
	
	
}