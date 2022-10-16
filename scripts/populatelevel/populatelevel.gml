// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function populatelevel(){
	
		if(random(3) < 1){
		instance_create_layer(x+16,y+16, "Instances", c_enemy_1)
	}else{
		if(random(2) < 1){
			instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_3)
			instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_2)
			instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_1)
			instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_4)
		}else{
			instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_2)
		}
	}
	
	//instance_create_layer(x+16+random(4)-2,y+16+random(4)-2, "Instances", c_enemy_4)
}