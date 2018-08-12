/// @description Insert description here
// You can write your code in this editor
if(global.spaceDecay>=0){
	
space -= sqrt(global.spaceDecay)

}else{

space -= global.spaceDecay

}

if(space<=0){instance_destroy()}
