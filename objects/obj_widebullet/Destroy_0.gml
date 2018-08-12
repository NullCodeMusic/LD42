/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth,obj_explode_blue)
ds_list_delete(global.bulletList,ds_list_find_index(global.bulletList,id))
instance_create_depth(x,y,0,obj_bloop)