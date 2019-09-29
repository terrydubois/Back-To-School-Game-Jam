if (gameTextIndex < ds_list_size(gameTextList)) {
	currentText = ds_list_find_value(gameTextList, gameTextIndex);
}
else {
	currentText = "";
	typeString = "";
}

x = lerp(x, obj_char.x, 0.3);
y = lerp(y, obj_char.y - 150, 0.3);

if (typeRateIncr <= 0) {
	typeRateIncr = 15;
	typeRate = clamp(typeRate - 1, 1, 5);
//	textAnimDiv = clamp(textAnimDiv - 100, 50, 1000);
}


textAnim = (sin(current_time / textAnimDiv)) * (obj_char.moveSpeed * 3);