/// @description Insert description here
// You can write your code in this editor
	


if(place_meeting(x,y, oPlayer)){
	//if I haven't already created my textbox, make one:
	if(keyboard_check_pressed(vk_space)){
		if(global.Quest == 1){
			if(myTextBox == noone){
				myTextBox = instance_create_layer(x,y, "Text", oTextBox);
				myTextBox.text = myText;
				myTextBox.creator = self;
				myTextBox.name = myName;
	}
}
		if (global.Quest == 2){
			if(woodQuest == noone){
				woodQuest = instance_create_layer(x,y, "Text", oTextBox);
				woodQuest.text = mywoodQuest;
				woodQuest.creator = self;
				woodQuest.name = myName;
				global.Quest = 3;
			}
		}
		if (global.Quest == 3){
			if(quest_Two == noone){
				quest_Two = instance_create_layer(x,y, "Text", oTextBox);
				quest_Two.text = myQuestTwo;
				quest_Two.creator = self;
				quest_Two.name = myName;
				global.Quest = 4;
			}
		}
	} 
}