gravity = 1;
gravity_direction = 270;


if (keyboard_check_pressed(vk_up) && !place_free(x, y + 1)) {
	vspeed = -jumpSpeed;
}


if (place_meeting(x + moveSpeed + 3, y, obj_wallRamp1)) {
	vspeed = -jumpSpeed;
}
if ((place_meeting(x + moveSpeed, y, obj_wall)) && !place_free(x, y + 1)) {
	vspeed = -jumpSpeed;
}
if (distance_to_object(obj_wallRamp1) < 10) {
	vspeed = -jumpSpeed;
}


	
if (place_free(x + moveSpeed, y)) {
	hspeed = moveSpeed;
}
else {
	hspeed = 0;
}