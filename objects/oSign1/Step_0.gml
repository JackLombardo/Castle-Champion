/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y, oPlayer)){
	//if I haven't already created my textbox, make one:
	if(keyboard_check_pressed(vk_space)){
	if(myTextBox == noone){
	myTextBox = instance_create_layer(x,y, "Text", oTextBox);
	myTextBox.text = myText;
	myTextBox.creator = self;
	myTextBox.name = myName;
		}
	}
} else {
	if(myTextBox != noone){
		instance_destroy(myTextBox);
		myTextBox = noone;
	}
}