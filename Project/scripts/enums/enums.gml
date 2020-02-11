#region GAME_STATE

	enum GAME_STATE {
		PLAY,
		MENU
	}

#endregion

#region PLAYER_STATE

	enum PLAYER_STATE {
		IDLE,
		WALK,
		SKID,
		JUMP,
		DJUMP,
		FALL
	}

#endregion

#region PLAYER

	enum PLAYER {
		TEST = 0	
	}
	
#endregion

#region PLAYER_STATS
   //hp, weight, walk_speed, jump_speed, jumps, jump_time,air_control
	enum PLAYER_STATS {
		HP,
		WEIGHT,
		WALK_SPEED,
		JUMPS,
		JUMP_SPEED,
		JUMP_TIME,
	    JUMP_AIR_CONTROL,
		DJUMP_SPEED,
		DJUMP_TIME,
		DJUMP_AIR_CONTROL
	}

#endregion

#region PLAYER_SPRITES

	enum PLAYER_SPRITES {
		IDLE,
		ARM_IDLE,
		ARM_X,
		ARM_Y
	}

#endregion