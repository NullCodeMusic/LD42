/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_generator)){
enID =instance_nearest(x,y,obj_enemybeam)
genID =instance_nearest(x,y,obj_generator)
genID.space -= enID.hp
}