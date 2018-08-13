/// @description Insert description here
// You can write your code in this editor
if(global.spaceDecay>0){
	
space -= sqrt(global.spaceDecay)

}else{

space -= global.spaceDecay

}

if(space<=0){instance_destroy()}

noise1=irandom_range(-1,1)
noise2=irandom_range(-1,1)
noise3=irandom_range(-1,1)