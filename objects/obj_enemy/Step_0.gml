/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){

	


hvSpeed = objSpeed


if(hMod>=objSpeed){hMod=objSpeed}
if(vMod>=objSpeed){vMod=objSpeed}

x+=hMod*2
y+=vMod*2
x=round(x)
y=round(y)
	
if(distance_to_object(obj_player)>550){instance_destroy()}	
}
