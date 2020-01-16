#region Player Inputs
	var x_input = 0;
	var y_input = 0;
	
	x_input += sign(keyboard_check(vk_right)+keyboard_check(ord("D")));
	x_input -= sign(keyboard_check(vk_left)+keyboard_check(ord("A")));
	
	y_input += sign(keyboard_check(vk_down)+keyboard_check(ord("S")));
	y_input -= sign(keyboard_check(vk_up)+keyboard_check(ord("W")));
	
	var jump_input = 0;
	jump_input += sign(keyboard_check(vk_space));
	var jump_pressed_input = 0;
	jump_pressed_input += sign(keyboard_check_pressed(vk_space));
	
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
		case playerState.idle:
		
			if (x_input != 0) {
				state = playerState.walk;
				break;
			}
			
			x_speed = 0;
			
			break;
			
		case playerState.walk:
		
			if (x_input == 0) {
				state = playerState.skid;
				break;
			}
		
			x_speed = x_input*lerp(abs(x_speed),walk_speed,weight);
			
			break;
			
		case playerState.skid:
			
			if (x_input != 0) {
				state = playerState.walk;
				break;
			}
			
			if (abs(x_speed) < 0.1) {
				state = playerState.idle;
				break;
			}
			
			x_speed = lerp(x_speed,0,weight);
			
			break;
			
		default:
			show_debug_message("Invalid Player State");
			break;
}

#endregion

