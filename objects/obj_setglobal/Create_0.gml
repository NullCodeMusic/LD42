/// @description Insert description here
// You can write your code in this editor
global.spaceDecay = 0.001
global.difficulty = 1
game_set_speed(60,gamespeed_fps)
global.genList = ds_list_create()
instance_create_depth(x,y,0,obj_generator)
instance_create_depth(x,y,0,obj_draw_global)
global.bulletList = ds_list_create()
global.actorList = ds_list_create()





/*

view_set_hport(1,display_get_height())
view_set_wport(1,display_get_width())
window_set_size(display_get_width(),display_get_height())

win_wid=window_get_width();
win_hgt=window_get_height();
view_hport[1]=win_hgt;
view_wport[1]=win_wid;