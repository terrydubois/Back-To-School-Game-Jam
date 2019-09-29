obj_control.cameraPan = true;



var endTextIndex = 0;


for (var i = 0; i < instance_number(obj_follower); i++) {
	var instFollower = instance_find(obj_follower, i);
	
	var instFollowerEndText = instance_create_layer(instFollower.x, instFollower.y, "InstHouse", obj_followerEndText);
	instFollowerEndText.followerInst = instFollower;
	instFollowerEndText.randoY = random_range(10, 180);
	instFollowerEndText.xDiff = random_range(10, 180);
	instFollowerEndText.plusY = 100;
	instFollowerEndText.plusYDest = 100;
	instFollowerEndText.alpha = 1;
	
	endTextIndex++;
	if (endTextIndex >= ds_list_size(obj_control.followerEndTextList)) {
		endTextIndex = 0;
	}
	instFollowerEndText.followerText = ds_list_find_value(obj_control.followerEndTextList, endTextIndex);
	if (instFollower == obj_control.lastFollower) {
		instFollowerEndText.followerText = "ITS BETTER NOW THAT YOURE HERE";
	}
}