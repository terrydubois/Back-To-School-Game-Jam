gameStarted = false;
gameFinished = false;

cameraPan = false;
noText = false;

gameTextList = ds_list_create();
gameTextIndex = 0;
safe = false;

ds_list_add(gameTextList,
"MAN, IVE GOTTA SHARE THIS FEELING!", 
"HEY! I JUST HAD THE BEST DAY EVER",
"AND I GOTTA TELL YOU ABOUT IT!",
"I WOKE UP THINKING IT MUST HAVE BEEN",
"ELEVEN BUT IT TURNS OUT IT WAS ONLY EIGHT",
"WHICH MEANT EVEN MORE TIME IN THE SUN",
"AND OF COURSE THOSE BEAUTIFUL FLUFFY CLOUDS",
"THAT THE LIGHT WAS PEEKING OUT FROM",
"ONCE I OPENED UP MY WINDOW",
"AND THEN I WENT INTO THE KITCHEN",
"AND POURED MYSELF A HEARTY BOWL",
"OF CRISPY-OS AND LOW AND BEHOLD",
"THERES A PRIZE AT THE BOTTOM",
"AND YOULL NEVER GUESS WHAT IT WAS",
"OF COURSE ONE OF THOSE SPOONS",
"THAT CHANGES COLOR, YOU KNOW,", 
"LIKE THE ONES YOU STICK IN THE MILK",
"AND I WAS SO JAZZED ABOUT HOW MY DAY HAD",
"STARTED THAT I DECIDED TO PULL ON A COZY", 
"SWEATER AND GO FOR A WALK CAUSE WHY NOT",
"ITS A SATURDAY AND I DONT HAVE ANY PLANS",
"OR A CARE IN THE WORLD AND ITS A BEAUTIFUL",
"AUTUMN DAY WITH A LOVELY BREEZE",
"SO I STEP OUTSIDE THE HOUSE AND ONTO",
"THE SIDEWALK AND I SEE A LITTLE FLOWER",
"STICKING OUT OF A CRACK AND IT JUST",
"HAPPENS TO BE A PRETTY LITTLE POPPY",
"WHICH IS, OF COURSE, MY FAVORITE FLOWER",
"AND SO I WALK DOWN THE STREET AND",
"RIGHT INTO BEANS PLACE AND",
"YOULL NEVER GUESS WHAT WAS PLAYING",
"YOURE DOIN GOOD WHICH IS OBVIOUSLY",
"MY FAVORITE SONG AND THERE WAS NO LINE",
"AT ALL AND THE BARISTA TOLD ME",
"SHE LIKED MY SWEATER, GOD THATS THE BEST",
"WHEN YOU GET A COMPLIMENT",
"FROM AN ACQUAINTANCE, ANYWAYS",
"I READ A BOOK AND SIPPED MY TEA",
"FOR A WHILE BUT I HAD TO GET UP AND GO",
"CAUSE I WAS JUST FEELING SO JAZZED",
"ABOUT THE DAY THAT I COULDNT SIT STILL", 
"SO IM WALKING ALONG",
"NO WORRIES IN MY MIND WITH MY HEAD",
"IN THE CLOUDS AND I STICK MY HANDS",
"IN MY BACK POCKETS AND FIND A FEW DOLLARS",
"I DIDNT KNOW I HAD AND RIGHT THEN",
"AN ICE CREAM TRUCK DRIVES BY SO",
"I GOTTA STOP FOR SOME AND KEEP STROLLIN",
"DOWN THE SIDEWALK UNTIL I STUMBLE ACROSS",
"A DOG PARK SO OF COURSE I GOTTA GO",
"CHECK IT OUT BECAUSE YOU KNOW ME",
"AND IT HAPPENS THAT I HAD SOME TREATS",
"IN MY POCKET FROM THE OTHER DAY WHEN",
"I WALKED MY OWN LITTLE POOCH SO",
"I WALK INTO THE GATE AND IMMEDIATELY",
"GET TACKLED INTO A PUPPY PILE", 
"MAN, THAT WAS THE BEST AND AFTER",
"I GAVE THEM SOME TREATS AND PETS",
"I THOUGHT TO MYSELF I WISH EVERYONE",
"COULD BE THIS JAZZED EVERY DAY SO",
"I DECIDED TO KEEP THIS FEELING GOING"
);

lastFollower = -1;

typeRate = 8;
typePos = 0;
typeString = "";

typeRateIncr = 20;

currentText = "";

balloons = 3;
for (var i = 0; i < balloons; i++) {
	var balloonInst = instance_create_layer(obj_char.x, obj_char.y, "InstBalloons", obj_balloon);
	balloonInst.balloonXOffset = i * random_range(-40, -60) + random_range(40, 50);
	balloonInst.balloonYOffset = i * random_range(-25, -40) + random_range(-10, 10);
	balloonInst.dir = 0;
	balloonInst.dirIncr = 1;
	balloonInst.len = random_range(40, 60);
	balloonInst.balloonNum = i;
	balloonInst.balloonLineX = obj_char.x + 16;
	balloonInst.balloonLineY = obj_char.y - 66;
}



textAnim = 0;
textAnimDiv = 200;


hueRate = 30;
textOutlineColor = make_color_rgb(237, 21, 104);
textOutlineHue = 0;
//alarm[1] = hueRate;


panDestX = 35623;


pressSpaceTextPlusYDest = 300;
pressSpaceTextPlusY = pressSpaceTextPlusYDest;




endTextFadeout = false;



scr_followerEndText();
