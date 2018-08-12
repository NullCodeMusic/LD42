/// @description Insert description here
// You can write your code in this editor
if(global.spaceDecay>=0){
	
space -= 1
instance_create_depth(x+random_range(-20,20),y+random_range(-20,20),1,obj_enemy3)

}

if(space<=0){instance_destroy()}

noise1=irandom_range(-1,1)
noise2=irandom_range(-1,1)
noise3=irandom_range(-1,1)