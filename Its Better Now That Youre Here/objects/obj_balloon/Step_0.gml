dir += dirIncr;
dirIncr += random_range(-0.2, 0.2);
dirIncr = clamp(dirIncr, 0, 3);
len += random_range(-1, 1);
len = clamp(len, 5, 60);

destX = obj_char.x - obj_char.hspeed + balloonXOffset + lengthdir_x(len, dir);
destY = obj_char.y - 200 + balloonYOffset + lengthdir_y(len, dir);

image_angle = lerp(image_angle, point_direction(x, y, obj_char.x, obj_char.y) - 270, 0.2);

move_towards_point(destX, destY, point_distance(x, y, destX, destY) / 20);