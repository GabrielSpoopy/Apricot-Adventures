#region VARIABLES
	hcol = place_meeting(x + 1, y, oGround) || place_meeting(x - 1, y, oGround)
	ground = place_meeting(x, y +1, oGround)
	
	var right, left, jump
	right = max(keyboard_check(vk_right))
	left = max(keyboard_check(vk_left))
	jump = max(keyboard_check(ord("Z")))
		
	var inputX = right - left
	hspd = inputX * spd
#endregion

if(ground){
	if(jump){
		vspd = -jumpForce
	}
}
else{
	vspd += grv	
}

#region COLLISION
	var signx = sign(hspd)
	var signy = sign(vspd)
	
	if(place_meeting(x +hspd, y, oGround)){
		while(!place_meeting(x + signx, y, oGround)){
			x += signx	
		}
		hspd = 0
	}
	
	if(place_meeting(x, y +vspd, oGround)){
		while(!place_meeting(x, y + signy, oGround)){
			y += signy	
		}
		vspd = 0
	}
#endregion

//making move
x += hspd
y += vspd

//animation
//mirroring
if(right)
image_xscale = 1
else if(left)
image_xscale = -1
if(hspd == 0 && vspd == 0 && ground)
sprite_index = sPlayerIdle
else if(hspd != 0 && ground)
sprite_index = sPlayerWalk
else if(vspd != 0 || hspd !=0 && vspd != 0)
sprite_index =  sPlayerJump