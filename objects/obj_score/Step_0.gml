/// @description Insert description here
// You can write your code in this editor

global.realScore = global.crntScore*10+global.enemyScore

if(global.realScore > global.highScore){global.highScore = global.realScore
	ini_open("highscore.txt");
    ini_write_real("scores","hi",global.highScore)
    ini_close()
    }

tick--
if(tick<=0 && instance_exists(obj_player)){

	global.crntScore++
	tick = 120
	
}