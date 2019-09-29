plusY = lerp(plusY, plusYDest, 0.2);

if (abs(x - obj_control.x) < xDiff) {
	plusYDest = 0;
}

x = followerInst.x;
y = followerInst.y - sprite_get_height(spr_follower) - randoY + plusY;

if (obj_control.endTextFadeout && followerInst != obj_control.lastFollower) {
	alpha -= 0.01;
}
alpha = clamp(alpha, 0, 1);