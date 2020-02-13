#region GAME_STATE

	enum GAME_STATE {
		PLAY, //State for when the game is running
		MENU //State for menus?
	}

#endregion

#region PLAYER_STATE

	enum PLAYER_STATE {
		IDLE, //State when the player isnt moving
		WALK, //State when the player is moving along a surface
		SKID, //State when the player releases a movement key on a surface but still has speed
		JUMP, //State for when the player jumps or double jumps
		DJUMP,
		FALL //State when the player is falling
	}

#endregion

#region PLAYER

	enum PLAYER {
		TEST = 0 //test character
	}
	
#endregion

#region PLAYER_STATS
   //hp, weight, walk_speed, jump_speed, jumps, jump_time,air_control
	enum PLAYER_STATS {
		HEARTS, //Amount of hearts a character has
		WEIGHT, //The weight, average is 70
		WALK_SPEED, //The characters top speed
		DJUMPS, //The amount of double jumps a character has
		JUMP_SPEED, //The speed of the first (standing)
		JUMP_TIME, //The max time the character maintains standing jump speed
	    JUMP_AIR_CONTROL, //Air control for a standing jump, factor of weight
		DJUMP_SPEED, //Djump stats are the same as standing jumps, but apply to double jumps
		DJUMP_TIME,
		DJUMP_AIR_CONTROL
	}

#endregion

#region PLAYER_SPRITES

	enum PLAYER_SPRITES {
		IDLE, //sprite the player uses when in the idle state
		ARM_IDLE, //idle sprite for the player arm
		ARM_X, // x and y offset from the players centre to draw the arm
		ARM_Y
	}

#endregion