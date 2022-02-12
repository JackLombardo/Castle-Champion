global.HP -=1

if(global.HP == 0){
	room_goto(rDeathScreen)
}

//if (!other.dead) room_goto(rDeathScreen);