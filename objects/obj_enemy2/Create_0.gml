/// @description Insert description here
// You can write your code in this editor
ds_list_add(global.actorList,id)
objSpeed = 20+irandom(5)
hMod = 0
vMod = 0
objSlow = 0.1
hp = 15
bleed = 1

image_speed = 0
if(instance_exists(obj_player)){

if(abs(x-obj_player.x)>abs(y-obj_player.y)){
hMod= -(x>obj_player.x) + (x<obj_player.x)
vmod = 0
}else{
vMod= -(y>obj_player.y) + (y<obj_player.y)
hMod = 0
}

}
cooldown=-2
charge = 0.001