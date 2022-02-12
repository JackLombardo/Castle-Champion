if(place_meeting(x,y, oPlayer)){
	//if I haven't already created my textbox, make one:
	if(keyboard_check_pressed(vk_space)){
		global.Quest = 2;
		instance_destroy(oWood)
	}
}