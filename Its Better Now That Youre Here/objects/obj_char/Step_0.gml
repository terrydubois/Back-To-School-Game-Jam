if (place_free(x, y + vspeed + 1)) {
	gravity = 1;
	gravity_direction = 270;
}

if (keyboard_check_pressed(vk_up) && !place_free(x, y + 1)) {
	vspeed = -10;
}

if (keyboard_check(vk_left) && place_free(x - 5, y)) {
	x -= 5;
}
if (keyboard_check(vk_right) && place_free(x + 5, y)) {
	x += 5;
}