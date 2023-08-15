dir = "right"
spd = 4
state = "walk"
larm1 = noone
time1 = noone 
larm2 = noone

global.jk = oPlayerBot

if(larm1 != noone){
	alarm[0] = larm1 * 60	
}
if(larm2 != noone){
	alarm[1] = (larm2 + time1) * 60
}