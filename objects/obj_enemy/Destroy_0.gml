/// @description Insert description here
// You can write your code in this editor
ds_list_delete(global.actorList,ds_list_find_index(global.actorList,id))

repeat(bleed){
	with(
instance_create_depth(x,y,obj_generator,0)){

space = 65

}

}
global.spaceDecay/=1.2

global.shake=5

global.enemyScore++

i = irandom(200)
if i = 1 then instance_create_depth(x,y,0,obj_pwr_firerateup)
if i = 2 then instance_create_depth(x,y,0,obj_pwr_movespeedup)
if i = 3 then instance_create_depth(x,y,0,obj_pwr_bulletwide)