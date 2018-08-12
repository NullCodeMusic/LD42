/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){

x = obj_player.x+random_range(-global.shake,global.shake)
y = obj_player.y+random_range(-global.shake,global.shake)

}else{
}

if(global.shake>0){ global.shake-- }
