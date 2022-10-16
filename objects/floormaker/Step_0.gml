
if(instance_number(c_floor) > 110){
	instance_destroy();
}else{
	generatefloor();
	with(c_walker){
		alarm[0] = 2;
	}
}


