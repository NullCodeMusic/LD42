/// @description Insert description here
// You can write your code in this editor
motion_set(dir,objSpeed)
objSpeed-=0.5
image_xscale=objSpeed/7
image_yscale+=0.1
if(objSpeed<=0){instance_destroy()}