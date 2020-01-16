///initChar(character, hp, weight, walk_speed, jump_speed, jumps)

var character = argument[0]; //arg[0] = "TEST" or some other Macro
var hp = argument[1];
var weight = argument[2];
var walk_speed = argument[3];
var jump_speed = argument[4];
var jumps = argument[5];

switch(character) {
	case "TEST":
	
		//Create new Test Char
		char = instance_create_layer(room_width/2,room_height/2,"Player",CharTest);
		//Set Default Variables
		char.hp = hp;
		char.weight = weight;
		char.walk_speed = walk_speed;
		char.jump_speed = jump_speed;
		char.jumps = jumps;
		break;
	default:
		show_debug_message("INVALID CHARACTER TYPE");
		break;
}

return char;