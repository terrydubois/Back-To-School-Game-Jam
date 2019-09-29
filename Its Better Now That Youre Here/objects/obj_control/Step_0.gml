if (gameTextIndex < ds_list_size(gameTextList)) {
	currentText = ds_list_find_value(gameTextList, gameTextIndex);
}
else {
	currentText = "";
	typeString = "";
}

if (gameStarted) {
	x = lerp(x, obj_char.x, 0.3);
	y = lerp(y, obj_char.y - 40, 0.3);
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

if (gameStarted) {
	pressSpaceTextPlusYDest = 250;
}
else {
	pressSpaceTextPlusYDest = 0;
}
pressSpaceTextPlusY = lerp(pressSpaceTextPlusY, pressSpaceTextPlusYDest, 0.1);