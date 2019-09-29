gravity = 1;
gravity_direction = 270;


if (idle) {
	destX = x;
	sprite_index = spriteIdle;
	
	textY = lerp(textY, textYDest, 0.5);
	

}
else {
	var posInList = ds_list_find_index(obj_char.followerList, self.id) + 1;
	if (posInList >= 0) {	
		destX = obj_char.x - (sprite_get_width(spr_char) * posInList) + xOffset;
	}
	
	var moveSpeed = obj_char.moveSpeed;
	var jumpSpeed = obj_char.jumpSpeed;
	if (x < destX && place_free(x + moveSpeed, y)) {
		hspeed = moveSpeed;
	}
	else if (x > destX && place_free(x - moveSpeed, y)) {
		hspeed = -moveSpeed;
	}
	else {
		hspeed = 0;
	}
	
	if (abs(x - destX) <= moveSpeed + 1) {
		hspeed = 0;
	}

	if ((place_meeting(x + moveSpeed, y, obj_wall) && x < destX) && !place_free(x, y + 1)) {
		vspeed = -jumpSpeed;
	}
	
	sprite_index = spriteFollow;
}





if (abs(obj_char.x - x) < 200) {
	if (idle) {
		textYDest = y - sprite_get_height(sprite_index) - 20;
			
		if (keyboard_check_pressed(vk_space) && x > obj_char.x) {
			idle = false;
			obj_control.safe = true;
			obj_char.moveSpeed += 0.1;
			obj_control.typeRateIncr--;
	
			ds_list_insert(obj_char.followerList, 0, self.id);
		}
	}
}