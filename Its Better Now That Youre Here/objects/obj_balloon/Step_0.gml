dir += dirIncr;
dirIncr += random_range(-0.2, 0.2);
dirIncr = clamp(dirIncr, 0, 3);
len += random_range(-1, 1);
len = clamp(len, 5, 60);

if (obj_control.balloons > balloonNum) {
	destX = obj_char.x - obj_char.hspeed + balloonXOffset + lengthdir_x(len, dir);
	destY = obj_char.y - 200 + balloonYOffset + lengthdir_y(len, dir);
	
	balloonLineX = obj_char.x + 16;
	balloonLineY = obj_char.y - 66;
	
	move_towards_point(destX, destY, point_distance(x, y, destX, destY) / 20);
}
else {
	destX = camera_get_view_x(view_camera[0]) - 500;
	destY = camera_get_view_y(view_camera[0]) - 500;
	
	balloonLineX = x + lengthdir_x(150, point_direction(x, y, obj_char.x, obj_char.y));
	balloonLineY = y + lengthdir_y(150, point_direction(x, y, obj_char.x, obj_char.y));
	
	move_towards_point(destX, destY, point_distance(x, y, destX, destY) / 200);
}

image_angle = lerp(image_angle, point_direction(x, y, obj_char.x, obj_char.y) - 270, 0.2);

