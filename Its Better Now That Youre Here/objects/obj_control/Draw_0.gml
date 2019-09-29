draw_set_font(fnt_gameText);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);

var gameTextX = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2) - (string_width(currentText) / 2);
var gameTextY = camera_get_view_y(view_camera[0]) + (string_height("0") * 1.1);
gameTextY += textAnim;

draw_set_alpha(0.2);
draw_text_transformed(gameTextX, gameTextY, currentText, 1, 1, 0);


for (var i = 0; i < 5; i++) {
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text_transformed(gameTextX + i, gameTextY + i, typeString, 1, 1, 0);
}

draw_set_color(c_black);
draw_set_alpha(1);
draw_text_transformed(gameTextX, gameTextY, typeString, 1, 1, 0);





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
draw_text(devVarsX + 100, devVarsY + 200, "textAnim: " + string(textAnim));