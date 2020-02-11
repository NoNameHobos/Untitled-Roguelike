#region Player Inputs
	var x_input = 0;
	var y_input = 0;
	
	x_input += sign(keyboard_check(vk_right)+keyboard_check(ord("D")));
	x_input -= sign(keyboard_check(vk_left)+keyboard_check(ord("A")));
	
	y_input += sign(keyboard_check(vk_down)+keyboard_check(ord("S")));
	y_input -= sign(keyboard_check(vk_up)+keyboard_check(ord("W")));
	
	var jump_input = 0;
	jump_input = sign(keyboard_check(vk_space));
	var jump_input_pressed = 0;
	jump_input_pressed = sign(keyboard_check_pressed(vk_space));
	
	arm_angle = point_direction(x+arm_x,y+arm_y,mouse_x,mouse_y);
	
	var attack_light_input = 0;
	attack_light_input = mouse_check_button_pressed(mb_left);
	
#endregion

#region Non-State Dependant Events

	y_speed += GRAVITY;

	if (place_meeting(x,y+y_speed,Solid)) {
		while (!place_meeting(x,y+sign(y_speed),Solid)) {
			y += sign(y_speed);
		}
		y_speed = 0;
	}
	
	y += y_speed;
	
	if (place_meeting(x+x_speed,y,Solid)) {
		while (!place_meeting(x+sign(x_speed),y,Solid)) {
			x += sign(x_speed);
		}
		x_speed = 0;
	}
	
	
	x += x_speed;

#endregion

#region State Dependant Events

	switch(state) {
		case PLAYER_STATE.IDLE:
		
			if (x_input != 0) {
				state = PLAYER_STATE.WALK;
				previous_state = PLAYER_STATE.IDLE;
				break;
			}
			
			if (jump_input != 0) {
				timer_jump = jump_time;
				state = PLAYER_STATE.JUMP;
				previous_state = PLAYER_STATE.IDLE;
				break;
			}
			
			x_speed = 0
			
			break;
			
		case PLAYER_STATE.WALK:
		
			if (jump_input != 0) {
				timer_jump = jump_time;
				state = PLAYER_STATE.JUMP;
				previous_state = PLAYER_STATE.WALK;
				break;
			}
		
			if (x_input == 0) {
				state = PLAYER_STATE.SKID;
				previous_state = PLAYER_STATE.WALK;
				break;
			}
			
			if (!place_meeting(x,y+1,Solid)) {
				state = PLAYER_STATE.FALL;
				previous_state = PLAYER_STATE.WALK;
				break;
			}
		
			x_speed = x_input*lerp(abs(x_speed),walk_speed,(1-weight));
			
			break;
			
		case PLAYER_STATE.SKID:
			
			if (x_input != 0) {
				state = PLAYER_STATE.WALK;
				previous_state = PLAYER_STATE.SKID;
				break;
			}
			
			if (abs(x_speed) < 0.1) {
				state = PLAYER_STATE.IDLE;
				previous_state = PLAYER_STATE.SKID;
				break;
			}
			
			if (!place_meeting(x,y+1,Solid)) {
				state = PLAYER_STATE.FALL;
				previous_state = PLAYER_STATE.SKID;
				break;
			}
			
			if (jump_input != 0) {
				timer_jump = jump_time;
				state = PLAYER_STATE.JUMP;
				previous_state = PLAYER_STATE.SKID;
				break;
			}
			
			x_speed = lerp(x_speed,0,(1-weight));
			
			break;
			
		case PLAYER_STATE.JUMP:
		
			if (jump_input != 0 && timer_jump > 0) {
				y_speed = -jump_speed;
			}
			
			if (jump_input == 0) {
				y_speed += GRAVITY*weight;
			}
			
			if (y_speed >= 0) {
				state = PLAYER_STATE.FALL;
				previous_state = PLAYER_STATE.JUMP;
				break;
			}
			
			if (jump_input_pressed != 0 && djumps != 0 && timer_jump != jump_time) {
				timer_jump = djump_time;
				djumps_used++;
				state = PLAYER_STATE.DJUMP;
				previous_state = PLAYER_STATE.JUMP;
				break;
			}
			
			if (x_input != 0) x_speed = lerp(x_speed,x_input*walk_speed,(1-weight)*jump_air_control);
			
			timer_jump--;
		
			break;
			
		case PLAYER_STATE.DJUMP:
		
			if (jump_input != 0 && timer_jump > 0) {
				y_speed = -jump_speed;
			}
			
			if (jump_input == 0) {
				y_speed += GRAVITY*weight;
			}
		
			if (y_speed >= 0) {
				state = PLAYER_STATE.FALL;
				previous_state = PLAYER_STATE.DJUMP;
				break;
			}
			
			if (jump_input_pressed != 0 && djumps > djumps_used && timer_jump != djump_time) {
				timer_jump = djump_time;
				djumps_used++;
				state = PLAYER_STATE.DJUMP;
				previous_state = PLAYER_STATE.DJUMP;
				break;
			}
			
			if (x_input != 0) x_speed = lerp(x_speed,x_input*walk_speed,(1-weight)*djump_air_control);
			
			timer_jump--;
		
			break;
	
		case PLAYER_STATE.FALL:
		
			if (place_meeting(x,y+1,Solid)) {
				state = PLAYER_STATE.SKID;
				previous_state = PLAYER_STATE.FALL;
				djumps_used = 0;
				break;
			}
			
			if (jump_input_pressed != 0 and djumps > djumps_used) {
				timer_jump = djump_time;
				djumps_used++;
				state = PLAYER_STATE.DJUMP;
				previous_state = PLAYER_STATE.FALL;
				break;
			}
			
			if (x_input != 0) x_speed = lerp(x_speed,x_input*walk_speed,(1-weight)*jump_air_control);
			
			break;
			
		default:
			show_debug_message("Invalid Player State");
			break;
}

#endregion

#region attack states

#endregion


