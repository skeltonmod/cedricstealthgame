hp -= 30;
instance_create_layer(x, y, "Instances", c_blood);


with(other){
	instance_destroy();
}