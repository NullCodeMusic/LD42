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
cooldown = 30
dodgeSpeed = 2

}
}
if(instance_exists(obj_player)){

hvSpeed = objSpeed


if(hMod>=objSpeed){hMod=objSpeed}
if(vMod>=objSpeed){vMod=objSpeed}

x+=hMod*2
y+=vMod*2
x=round(x)
y=round(y)
	
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
}

if(instance_exists(obj_player)){
if(distance_to_object(obj_player)>1){
if(cooldown>=0){cooldown--}
if(cooldown >0){motion_set(image_angle+random_range(-5,5),dodgeSpeed)}
if(dodgeSpeed>0){dodgeSpeed--}
}else{motion_set(0,0)}

}