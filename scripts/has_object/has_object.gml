// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function has_object(_x, _y, _object){
	var i,check, instNum;
	check=false;
	instNum = instance_number(_object);

	for (i=0;i<instNum && check==false ; i++)
	{
	    var inst = instance_find(_object,i);
    
	    if (inst.x==_x && inst.y==_y){
	        check=true;
		}
	}

	return check;
}