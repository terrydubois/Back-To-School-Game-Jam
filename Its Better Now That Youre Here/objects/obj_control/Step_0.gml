if (gameTextIndex < ds_list_size(gameTextList)) {
	currentText = ds_list_find_value(gameTextList, gameTextIndex);
}
else {
	currentText = "";
	typeString = "";
}

if (gameFinished) {
	if (noText) {
		currentText = "";
		typeString = "";
		typePos = 0;
	}
	else {
		typeRate = 7;
		currentText = "SO HOW WAS YOUR DAY?";
	}
}



if (gameStarted) {
	if (cameraPan) {
		if (abs(x - lastFollower.x) > 5) {
			move_towards_point(lastFollower.x, lastFollower.y - 40, 5);
		}
		else {
			endTextFadeout = true;
			x = lerp(x, lastFollower.x, 0.1);
			y = lerp(y, lastFollower.y - 40, 0.1);
			
			if (!endAlarmTriggered) {
				endAlarmTriggered = true;
				alarm[2] = 300;
			}
		}
	}
	else {
		x = lerp(x, obj_char.x, 0.3);
		y = lerp(y, obj_char.y - 40, 0.3);
	}
}
else {
	x = 0;
	y = obj_char.y - 40;
}








if (typeRateIncr <= 0) {
	typeRateIncr = 20;
	typeRate = clamp(typeRate - 1, 2, 5);
}


textAnim = (sin(current_time / textAnimDiv)) * (obj_char.moveSpeed * 3);

if (gameStarted && !obj_char.ableToPressSpaceToEnd) {
	pressSpaceTextPlusYDest = 250;
}
else {
	pressSpaceTextPlusYDest = 0;
}
pressSpaceTextPlusY = lerp(pressSpaceTextPlusY, pressSpaceTextPlusYDest, 0.1);


if (ds_list_size(obj_char.followerList) > 0) {
	lastFollower = ds_list_find_value(obj_char.followerList, ds_list_size(obj_char.followerList) - 1);
}