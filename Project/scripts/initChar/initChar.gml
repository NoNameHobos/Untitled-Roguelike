///initChar(x,y,character)
var xx = argument[0];  //the x position of the start point
var yy = argument[1]; //the y position of the start point
var character = argument[2]; //the character to spawn

#region playerdata
	//hp, weight, walk_speed, jump_speed, jumps, jump_time,jump_air_control
	//sprite,arm sprite,arm_x,arm_y
	#region Test (0)
	
	//stats
	
	playerStats[PLAYER.TEST,PLAYER_STATS.HEARTS] = 9;
	playerStats[PLAYER.TEST,PLAYER_STATS.WEIGHT] = 70;
	playerStats[PLAYER.TEST,PLAYER_STATS.WALK_SPEED] = 12;
	playerStats[PLAYER.TEST,PLAYER_STATS.DJUMPS] = 1;
	
	playerStats[PLAYER.TEST,PLAYER_STATS.JUMP_SPEED] = 10;
	playerStats[PLAYER.TEST,PLAYER_STATS.JUMP_TIME] = 10;
	playerStats[PLAYER.TEST,PLAYER_STATS.JUMP_AIR_CONTROL] = 0.2;
	
	playerStats[PLAYER.TEST,PLAYER_STATS.DJUMP_SPEED] = 9;
	playerStats[PLAYER.TEST,PLAYER_STATS.DJUMP_TIME] = 10;
	playerStats[PLAYER.TEST,PLAYER_STATS.DJUMP_AIR_CONTROL] = 0.2;
	
	//sprites

	playerSprites[PLAYER.TEST,PLAYER_SPRITES.IDLE] = spr_charTestIdle;
	playerSprites[PLAYER.TEST,PLAYER_SPRITES.ARM_IDLE] = spr_charTestArmIdle;
	playerSprites[PLAYER.TEST,PLAYER_SPRITES.ARM_X] = 0;
	playerSprites[PLAYER.TEST,PLAYER_SPRITES.ARM_Y] = -3;
	
	#endregion
	
#endregion
char = instance_create_layer(xx,yy,"Player",Player);

//Set stats
char.maxHp = playerStats[character,PLAYER_STATS.HEARTS]*2;
char.hp = char.maxHp;
char.weight = weightKgToDec(playerStats[character,PLAYER_STATS.WEIGHT]);
char.walk_speed = playerStats[character,PLAYER_STATS.WALK_SPEED];
char.djumps = playerStats[character,PLAYER_STATS.DJUMPS];

char.jump_speed = playerStats[character,PLAYER_STATS.JUMP_SPEED];
char.jump_time = playerStats[character,PLAYER_STATS.JUMP_TIME];
char.jump_air_control = playerStats[character,PLAYER_STATS.JUMP_AIR_CONTROL];

char.djump_speed = playerStats[character,PLAYER_STATS.DJUMP_SPEED];
char.djump_time = playerStats[character,PLAYER_STATS.DJUMP_TIME];
char.djump_air_control = playerStats[character,PLAYER_STATS.DJUMP_AIR_CONTROL];

//Set sprite values
char.sprite_idle = playerSprites[character,PLAYER_SPRITES.IDLE];
char.sprite_arm_idle = playerSprites[character,PLAYER_SPRITES.ARM_IDLE];
char.arm_x = playerSprites[character,PLAYER_SPRITES.ARM_X];
char.arm_y = playerSprites[character,PLAYER_SPRITES.ARM_Y];

return char;