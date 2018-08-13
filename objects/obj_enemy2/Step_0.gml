/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
if(distance_to_object(obj_player)>200){
if(abs(x-obj_player.x)>abs(y-obj_player.y)){
hMod= -(x>obj_player.x) + (x<obj_player.x)
vmod = 0
}else{
vMod= -(y>obj_player.y) + (y<obj_player.y)
hMod = 0
}
}else{

hMod = 0
vMod = 0
charge*=1.2
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
audio_play_sound(sound3,1,0)
}
}
if(instance_exists(obj_generator)){

genID = instance_nearest(x,y,obj_generator)
hvSpeed = objSpeed


if(hMod>=objSpeed){hMod=objSpeed}
if(vMod>=objSpeed){vMod=objSpeed}

x+=hMod*2
y+=vMod*2
x=round(x)
y=round(y)
	

}

if(charge>=10){

instance_create_depth(x,y,1,obj_enemybeam)
charge*=distance_to_object(obj_player)/200
}else{

image_index = floor(charge)

}
if(!instance_exists(obj_player)){instance_deactivate_object(obj_enemy2)}