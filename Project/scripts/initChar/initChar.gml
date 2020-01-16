///initChar(character, hp, weight, walk_speed, jump_speed, jumps, jump_time)

var character = argument[0]; //arg[0] = "TEST" or some other Macro
var hp = argument[1];
var weight = argument[2];
var walk_speed = argument[3];
var jump_speed = argument[4];
var jumps = argument[5];
var jump_time = argument[6];
var air_control = argument[7];

switch(character) {
	case "TEST":
	
		//Create new Test Char
		char = instance_create_layer(room_width/2,room_height/2,"Player",CharTest);
		//Set Default Variables
		char.hp = hp;
		char.weight = weightDec(weight);
		char.walk_speed = walk_speed;
		char.jump_speed = jump_speed;
		char.jumps = jumps;
		char.jump_time = jump_time;
		char.air_control = air_control;
		break;
	default:
		show_debug_message("INVALID CHARACTER TYPE");
		break;
}

return char;