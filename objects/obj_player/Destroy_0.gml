/// @description Insert description here
// You can write your code in this editor
ds_list_delete(global.genList,ds_list_find_index(global.genList,id))
ds_list_delete(global.actorList,ds_list_find_index(global.actorList,id))
with(instance_create_depth(x,y,depth,obj_explode_blue)){

	maxSize = 25

}
audio_play_sound(snd_death,1,0)