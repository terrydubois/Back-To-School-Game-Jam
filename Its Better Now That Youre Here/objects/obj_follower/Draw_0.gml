draw_set_font(fnt_followerText);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(1);

if (idle && textYDest != textYDestOriginal) {
	for (var i = 0; i < 3; i++) {
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_text(x + i, y + i, followerText);
	}
	draw_text(x, textY, followerText);
}

draw_self();

/*
draw_text(x, y - 140, "x:" + string(x));
draw_text(x, y - 120, string(destX));