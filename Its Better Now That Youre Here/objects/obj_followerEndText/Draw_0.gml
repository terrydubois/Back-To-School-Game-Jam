draw_set_font(fnt_followerText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(alpha);

if (plusYDest == 0 and alpha > 0) {
	draw_set_color(c_black);
	draw_set_alpha(1);
	for (var i = 0; i < 7; i++) {
		draw_text(x + lengthdir_x(1, (360 / 8) * i), y + lengthdir_y(1, (360 / 8) * i), followerText);
	}
	for (var i = 0; i < 4; i++) {
		draw_text(x + i, y + i, followerText);
	}
	draw_set_color(c_white);
	draw_text(x, y, followerText);
}