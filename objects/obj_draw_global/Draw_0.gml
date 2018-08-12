/// @description Insert description here
// You can write your code in this editor




//fullscreen scaling


application_surface_draw_enable(false)

global.monitorW=window_get_width()
global.monitorH=window_get_height()

if(global.monitorW>=1600 && global.monitorH>=1000)
then
{
surface_resize(application_surface,800,500)
global.xOffset=(global.monitorW-1600)/2
global.yOffset=(global.monitorH-1000)/2
drawScale = 2
}else{
	
global.xOffset=(global.monitorW-800)/2
global.yOffset=(global.monitorH-500)/2
surface_resize(application_surface,800,500)
}
//space outline
drawID = 0
repeat(ds_list_size(global.genList)){

	instID = ds_list_find_value(global.genList,drawID)
	draw_circle_color(instID.x,instID.y,instID.space+2,global.borderColor,global.borderColor,false)
	
	drawID++

}

//player health
if(instance_exists(obj_player)){
draw_circle_color(obj_player.x,obj_player.y,obj_player.space+2,$aaaaaa,$aaaaaa,false)
}

//overlap BG
drawID = 0
repeat(ds_list_size(global.genList)){

	instID = ds_list_find_value(global.genList,drawID)
	draw_circle_color(instID.x,instID.y,instID.space,$000000,$000000,false)
	
	drawID++

}

//draw player
if(instance_exists(obj_player)){

	obj_player.externaldraw = 1
	
}

//bullets

drawID = 0
repeat(ds_list_size(global.bulletList)){

	instID = ds_list_find_value(global.bulletList,drawID)
	
	draw_sprite_ext(sp_bullet,0,instID.x,instID.y,instID.image_xscale+1,instID.image_yscale+1,instID.image_angle,$000000,1)
	draw_sprite_ext(sp_bullet,0,instID.x,instID.y,instID.image_xscale,instID.image_yscale,instID.image_angle,global.borderColor,1)
	
	drawID++

}

//generators
/*
drawID = 0
repeat(ds_list_size(global.genList)){

	instID = ds_list_find_value(global.genList,drawID)
	
	draw_sprite_ext(sp_generator,0,instID.x,instID.y,instID.image_xscale+1,instID.image_yscale+1,instID.image_angle,$000000,1)
	draw_sprite_ext(sp_generator,0,instID.x,instID.y,instID.image_xscale,instID.image_yscale,instID.image_angle,$ffffff,1)
	
	drawID++

}
*/
//draw enemies

drawID = 0
repeat(ds_list_size(global.actorList)){

	instID = ds_list_find_value(global.actorList,drawID)
	
	//draw_sprite_ext(instID.sprite_index,instID.image_index,instID.x,instID.y,instID.image_xscale+1,instID.image_yscale+1,instID.image_angle,$000000,1)
	draw_sprite_ext(instID.sprite_index,instID.image_index,instID.x,instID.y,instID.image_xscale,instID.image_yscale,instID.image_angle,instID.image_blend,1)
	
	drawID++

}

if(!instance_exists(obj_player)){
	
draw_rectangle_color(0,0,room_width,room_height,$000000,$000000,$000000,$000000,false)
tAlpha+=0.003
draw_set_halign(fa_center)
global.borderColor=$afafaf
draw_text_color(obj_camera.x,obj_camera.y,"You scored "+string(global.crntScore*10+global.enemyScore)+" points.",global.borderColor,global.borderColor,global.borderColor,global.borderColor,tAlpha)
draw_text_color(obj_camera.x,obj_camera.y+20,"Press R to retry.",global.borderColor,global.borderColor,global.borderColor,global.borderColor,tAlpha)}


draw_sprite(smlcursor,0,mouse_x,mouse_y)