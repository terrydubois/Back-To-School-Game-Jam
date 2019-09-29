draw_set_font(fnt_gameText);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);



//draw_set_alpha(0.2);
//draw_text_transformed(gameTextX, gameTextY, currentText, 1, 1, 0);

var gameTextX = 0;
var gameTextY = 0;

var gameText = typeString;

if (gameFinished) {
	textAnim = 0;
}

if (!gameStarted) {
	gameText = "ITS BETTER NOW THAT YOURE HERE";	
	gameTextX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2) - (string_width(gameText) / 2);
	gameTextY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - (string_height("0") * 1.5) + textAnim - 375;
}
else {
	gameTextX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2) - (string_width(currentText) / 2);
	gameTextY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - (string_height("0") * 1.5) + textAnim;
}

textOutlineColor = (gameStarted) ? make_color_rgb(204, 142, 75) : c_black;
draw_set_color(textOutlineColor);
draw_set_alpha(1);
for (var i = 0; i < 7; i++) {
	draw_text_transformed(gameTextX + lengthdir_x(2, (360 / 8) * i), gameTextY + lengthdir_y(2, (360 / 8) * i), gameText, 1, 1, 0);
}
for (var i = 0; i < 7; i++) {
	draw_text_transformed(gameTextX + i, gameTextY + i, gameText, 1, 1, 0);
}

draw_set_color(c_white);
draw_set_alpha(1);
draw_text_transformed(gameTextX, gameTextY, gameText, 1, 1, 0);





// press space text
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_alpha(1);
draw_set_font(fnt_pressSpace);

var pressSpaceTextX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
var pressSpaceTextY = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.75) + pressSpaceTextPlusY;

var pressSpaceText = "PRESS SPACE";
if (obj_char.ableToPressSpaceToEnd) {
	pressSpaceText = "PRESS SPACE TO RESTART";
}

draw_set_color(c_white);
draw_text(pressSpaceTextX, pressSpaceTextY, pressSpaceText);




if (creditsFadein) {
	creditsAlpha += 0.02;
	creditsAlpha = clamp(creditsAlpha, 0, 1);
	draw_sprite_ext(spr_credits, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, creditsAlpha);
}


// dev vars
/*
draw_set_font(fnt_dev);
draw_set_alpha(1);
draw_set_halign(fa_left);

var devVarsX = camera_get_view_x(view_camera[0]) + 20;
var devVarsY = camera_get_view_y(view_camera[0]);
draw_text(devVarsX, devVarsY + 20, "typePos: " + string(typePos));
draw_text(devVarsX, devVarsY + 35, "typeString: " + string(typeString));
draw_text(devVarsX, devVarsY + 50, "currentText: " + string(currentText));
draw_text(devVarsX, devVarsY + 65, "gameTextIndex: " + string(gameTextIndex));
draw_text(devVarsX, devVarsY + 80, "gameTextListSize: " + string(ds_list_size(gameTextList)));
draw_text(devVarsX, devVarsY + 95, "safe: " + string(safe));
draw_set_halign(fa_right);
draw_text(devVarsX + 100, devVarsY + 200, "panDestX: " + string(panDestX));

if (instance_exists(lastFollower)) {
	draw_text(lastFollower.x, lastFollower.y - 200, "me!!");
}