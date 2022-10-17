image_speed = 0.5;

alarm[0] = 120;
temp = floor(random(30));

image_index += temp/2+1;

alarm[0] -= temp;
alarm[1]=alarm[0] + 18;

out = 0;