/// @description Insert description here
// You can write your code in this editor
ds_list_delete(global.actorList,ds_list_find_index(global.actorList,id))

repeat(bleed){
	with(
instance_create_depth(x,y,obj_generator,0)){

space = 40

}

}
global.spaceDecay/=1.2

global.shake=15

global.enemyScore++

if irandom(5) = 5 then instance_create_depth(x,y,0,obj_pwr_firerateup)