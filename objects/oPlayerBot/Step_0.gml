if(dir == "right" && state == "walk"){
	hspeed = spd
	sprite_index = sPlayerWalk
	image_xscale = 1
}
else if(dir == "left" && state == "walk"){
	hspeed = -spd
	sprite_index = sPlayerWalk
	image_xscale = -1
}

if(state == "idle"){
	sprite_index = sPlayerIdle
	hspeed = 0
}