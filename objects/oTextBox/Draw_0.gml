/// @description Insert description here
// You can write your code in this editor

// draw textbox
draw_rectangle(x+2, y-2, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(sTextBox, 0, x,y);

//set font

draw_set_font(fnt_score);

//draw text

if(charCount < string_length(text[page])){
charCount += 1;
}
textPart = string_copy(text[page], 1, charCount);

//Draw the name
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x+( boxWidth/2) ,y+yBuffer, name);
draw_set_halign(fa_left);

//Draw part of text
draw_set_colour(c_white);
draw_text_ext(x+xBuffer,y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);