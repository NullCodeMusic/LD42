obj_player.pwr = "firerateup"
obj_player.pwrtime = 240


	with(
instance_create_depth(x,y,obj_generator,0)){

space = 50
}
global.spaceDecay/=1.2


instance_destroy()