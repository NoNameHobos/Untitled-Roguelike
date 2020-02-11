#region Attributes

hp = null;
weight = null;
walk_speed = null;
jumps = null;

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
arm_xscale = 1;
arm_yscale = 1;

#endregion

#region Movement Variables

y_speed = 0;
x_speed = 0;
arm_frame = 0;
arm_angle = 0;
state = PLAYER_STATE.IDLE;
previous_state = PLAYER_STATE.IDLE;
timer_jump = null;
jumps_used = 0;

#endregion