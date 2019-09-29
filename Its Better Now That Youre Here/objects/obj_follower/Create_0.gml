idle = true;
destX = 0;

image_speed = 0.5;

xOffset = random_range(-100, 100);
alarm[0] = random_range(60, 120);

textYDestOriginal = y - (sprite_get_height(sprite_index) * 0.5);
textYDest = textYDestOriginal;
textY = textYDest;


jonahMode = true;

followerText = choose("?", "!", "?!", "??", "...",);

balloonsDec = false;



var rando = irandom(5);
switch (rando) {
	case 0:
		spriteIdle = spr_terryIdle;
		spriteFollow = spr_terryFollow;
		break;
	case 1:
		spriteIdle = spr_caylaIdle;
		spriteFollow = spr_caylaFollow;
		break;
	case 2:
		spriteIdle = spr_meritaIdle;
		spriteFollow = spr_meritaFollow;
		break;
	case 3:
		if (jonahMode) {
			spriteIdle = spr_jonahIdle;
			spriteFollow = spr_jonahFollow;
		}
		else {
			spriteIdle = spr_caylaIdle;
			spriteFollow = spr_caylaFollow;
		}
		break;
	case 4:
		spriteIdle = spr_dressgirlIdle;
		spriteFollow = spr_dressgirlFollow;
		break;
	case 5:
		spriteIdle = spr_devinIdle;
		spriteFollow = spr_devinFollow;
		break;
	default:
		break;
}