/// @description Insert description here
// You can write your code in this editor
ds_list_add(global.actorList,id)
objSpeed = 40
hMod = 0
vMod = 0
objSlow = 0.1
hp = 600
audio_play_sound(sound3,1,0)
bleed = 2
if(instance_exists(obj_player)){
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
image_xscale = sqrt(obj_enemy2.charge)/16+0.5
}else{instance_destroy()}