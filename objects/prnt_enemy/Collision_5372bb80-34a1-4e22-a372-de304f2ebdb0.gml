/// @description Insert description here
// You can write your code in this editor
hp--
hitID=instance_nearest(x,y,obj_bullet)



if(hp<=0){

instance_destroy()

}else{

repeat(bleed){
with(instance_create_depth(x+random_range(-15,15),y+random_range(-15,15),0,obj_generator)){
global.spaceDecay-=0.02
space=15


}
}
}