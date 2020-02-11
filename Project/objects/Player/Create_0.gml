// some stats/sprite values are explained in the enum script

#region Stats

hp = null;
weight = null;
walk_speed = null;
djumps = null;

jump_speed = null;
jump_time = null;
jump_air_control = null;

djump_speed = null;
djump_time = null;
djump_air_control = null;

#endregion

#region sprites

sprite_idle = null
sprite_arm_idle = null;
arm_x = null;
arm_y = null;

arm_xscale = 1; //Equivalents of image_xscale and image_yscale but for the arm sprite
arm_yscale = 1;

#endregion

#region Movement Variables

y_speed = 0; //vertical movement speed (px/f)
x_speed = 0; //horiztonal movement speed (px/f)
arm_frame = 0; //animation frame of the arm sprite (image_index)
arm_angle = 0; //Angle the arm is facing
state = PLAYER_STATE.IDLE; //Current state of the player
previous_state = PLAYER_STATE.IDLE; //Previous State of the player
timer_jump = null; //Used to measure how long the player has jumped, decreases each frame after a jump
djumps_used = 0; //How many times the player has double jumped

#endregion