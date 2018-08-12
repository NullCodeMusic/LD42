/// @description Insert description here
// You can write your code in this editor

global.spaceDecay+=0.001
space=hp


if pwrspeedtime > 0 then objSpeed = 8 else objSpeed = 5


if(mouse_check_button(mb_right)&&dodgeCharge<35){

	dodgeCharge++

}

if(mouse_check_button_released(mb_right)){

	dodge2Speed = dodgeCharge
	dodgeCharge = 0
	dir2 = image_angle

}

dodgeSpeed/=2
dodge2Speed/=1.2

motion_set(dir2, dodge2Speed)



hMod= keyboard_check(ord("D")) -keyboard_check(ord("A"))
vMod= keyboard_check(ord("S")) -keyboard_check(ord("W"))

if(abs(hMod)>=1 and abs(vMod)>=1){
	
	hvSpeed= objSpeed/sqrt(abs(hMod)+abs(vMod)) +floor(dodgeSpeed)

	}else{
	
	hvSpeed = objSpeed+floor(dodgeSpeed)
	
	}

x+=hMod*hvSpeed
y+=vMod*hvSpeed
x=round(x)
y=round(y)

image_angle=point_direction(x,y,mouse_x,mouse_y)
drawID = 0
outside = 0
repeat(ds_list_size(global.genList)){

	genNear = ds_list_find_value(global.genList,drawID)

	if(distance_to_object(genNear)>=genNear.space-8){

		outside++

	}
	drawID ++

}
if(outside >=ds_list_size(global.genList)&&iFrames = 0){

	hp -=0.5

}else{

	hp =15

}

if(mouse_check_button(mb_left)&&cooldown<=0){

if pwrwidetime > 0 {	
	
	with(instance_create_depth(x,y,0,obj_widebullet)){
	
		dir = point_direction(x,y,mouse_x,mouse_y)
		image_angle = dir
		audio_play_sound(snd_schut,1,0)
		
		if(instance_exists(obj_generator)){
				genID =instance_nearest(x,y,obj_generator)
		genID.space --
	}
		
	}

	
	if pwrfiretime > 0 then cooldown = 6
	else cooldown = 18
} else {

	with(instance_create_depth(x,y,0,obj_bullet)){
	
		dir = point_direction(x,y,mouse_x,mouse_y)
		image_angle = dir
		audio_play_sound(snd_schut,1,0)
		
		if(instance_exists(obj_generator)){
				genID =instance_nearest(x,y,obj_generator)
		genID.space --
	}
		
	}

	
	if pwrfiretime > 0 then cooldown = 6
	else cooldown = 18
	
}

}

if(cooldown > 0){

	cooldown--

}



if(hp>15){

hp = 15

}

if(hp<=0){
	
instance_destroy()

}



if pwrfiretime > 0 { pwrfiretime --}
if pwrspeedtime > 0 { pwrspeedtime --}
if pwrwidetime > 0 { pwrwidetime --}





if(floor(dodgeSpeed)>0){iFrames = 1
	instance_create_depth(x,y,1,obj_hitdot)
	
	}else{iFrames = 0}
