tick = 120
global.crntScore = 0
global.enemyScore = 0

ini_open("highscore.txt");
global.highScore =  ini_read_real("scores","hi",0)