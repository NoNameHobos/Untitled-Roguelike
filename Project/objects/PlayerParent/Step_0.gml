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



#endregion

#region State Dependant Events

	switch(playerState) {
		case playerState.idle:
			//idle code here
			break;
		case playerState.walk:
			//walk code here
			break;
		default:
			show_debug_message("Invalid Player State");
			break;
}

#endregion

#region Move

	x += x_speed;
	y += y_speed;

#endregion


