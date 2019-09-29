if (typeString == currentText) {
	gameTextIndex++;
	typePos = 0;
	typeString = "";
}
else {

	typePos++;

	var currentChar = string_char_at(currentText, typePos);
	typeString += currentChar;
}



alarm[0] = typeRate;