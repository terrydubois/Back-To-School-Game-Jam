gravity = 1;
gravity_direction = 270;

/*
if (keyboard_check_pressed(vk_up) && !place_free(x, y + 1)) {
	vspeed = -jumpSpeed;
}
*/


if (place_meeting(x + moveSpeed + 3, y, obj_wallRamp1)) {
	vspeed = -jumpSpeed;
}
if ((place_meeting(x + moveSpeed, y, obj_wall)) && !place_free(x, y + 1)) {
	vspeed = -jumpSpeed;
}
if (distance_to_object(obj_wallRamp1) <= moveSpeed) {
	vspeed = -jumpSpeed;
}



if (place_free(x + moveSpeed, y) && obj_control.gameStarted && !obj_control.gameFinished) {
	hspeed = moveSpeed;
}
else {
	hspeed = 0;
}





if (abs(x - obj_house.x) < 50) {
	if (!obj_control.gameFinished) {
		obj_control.gameFinished = true;
		obj_control.currentText = "";
		obj_control.typePos = 0;
		obj_control.typeString = "";
		obj_control.noText = true;
		alarm[2] = 120;
	}
}

if (obj_control.gameFinished) {
	sprite_index = spr_charIdle;
	hspeed = 0;
}

if (obj_control.balloons <= 0) {
	sprite_index = spr_charFall;
	hspeed = 0;
	obj_control.currentText = "";
	obj_control.typeString = "";
	
	if (!pressSpaceToEnd) {
		pressSpaceToEnd = true;
		alarm[4] = 60;
	}
}

if (ableToPressSpaceToEnd and keyboard_check_released(vk_space)) {
	game_restart();
}