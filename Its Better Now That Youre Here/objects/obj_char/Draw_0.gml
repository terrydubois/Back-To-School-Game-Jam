draw_self();

if (showCallout) {
	draw_sprite_ext(spr_callout, calloutImageIndex, x + 24, y - (sprite_get_height(sprite_index) * 0.75), 1, 1, 0, c_white, 1);
}