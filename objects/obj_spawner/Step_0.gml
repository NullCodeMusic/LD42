/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player))
if(tick>=0){tick--}else{
	
tick = 60
repeat(round(global.crntScore/15)+1){
position = irandom(3)

if(position=0){

x=obj_player.x+250
y=obj_player.y

}

if(position=1){

x=obj_player.x-250
y=obj_player.y

}

if(position=2){

y=obj_player.y-250
x=obj_player.x

}

if(position=3){

y=obj_player.y+250
x=obj_player.x

}




formation = irandom(14)


if(formation = 0){
instance_create_depth(x,y,1,obj_enemy)
instance_create_depth(x+10,y+10,1,obj_enemy)
instance_create_depth(x,y+10,1,obj_enemy)
instance_create_depth(x,y-10,1,obj_enemy)
}

if(formation = 1){
instance_create_depth(x,y,1,obj_enemy)
instance_create_depth(x-10,y,1,obj_enemy)
instance_create_depth(x+10,y-10,1,obj_enemy)
instance_create_depth(x,y-10,1,obj_enemy)
}

if(formation = 2){
instance_create_depth(x-10,y,1,obj_enemy)
instance_create_depth(x-10,y,1,obj_enemy)
instance_create_depth(x+10,y,1,obj_enemy)
instance_create_depth(x,y,1,obj_enemy)
}

if(formation = 3){
instance_create_depth(x,y,1,obj_enemy)
instance_create_depth(x-10,y-10,1,obj_enemy)
instance_create_depth(x,y-10,1,obj_enemy)
instance_create_depth(x,y+10,1,obj_enemy)
}

if(formation = 4){
instance_create_depth(x,y,1,obj_enemy)
instance_create_depth(x+10,y,1,obj_enemy)
instance_create_depth(x-10,y+10,1,obj_enemy)
instance_create_depth(x,y+10,1,obj_enemy)
}

if(formation = 5){
instance_create_depth(x+10,y,1,obj_enemy)
instance_create_depth(x+10,y,1,obj_enemy)
instance_create_depth(x-10,y,1,obj_enemy)
instance_create_depth(x,y,1,obj_enemy)
}

if(formation =7 or formation = 8){
instance_create_depth(x,y,1,obj_enemy1)

}

if(formation >=9 && formation<13){
instance_create_depth(x,y,1,obj_enemy2)

}

if(formation =14){
instance_create_depth(x,y,1,obj_enemy_generator)

}

}
}