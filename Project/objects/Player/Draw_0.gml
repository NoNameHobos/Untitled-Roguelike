switch(state) {
	
	case PLAYER_STATE.IDLE:
		sprite_index = sprite_idle;
		break;
	
}

if (state != previous_state) {
	image_index = 0;	
}

if (arm_angle <= 270 and arm_angle >= 90) {
	image_xscale = -1;
	arm_yscale = -1;
} else {
	image_xscale = 1;
	arm_yscale = 1;
}

draw_self();
draw_sprite_ext(sprite_arm_idle,arm_frame,x+arm_x,y+arm_y,arm_xscale,arm_yscale,arm_angle,image_blend,image_alpha);
