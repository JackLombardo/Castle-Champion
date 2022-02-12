_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));


//hsp = (_right - _left) * 4;
//vsp = (_down - _up) * 4;

var _inputX = _right - _left;
var _inputY = _down - _up;

var bbox_side;

moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;


if (moveX > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap,bbox_side+moveX,bbox_top) != 0) || (tilemap_get_at_pixel(tilemap,bbox_side+moveX,bbox_bottom) != 0)
{
	if (moveX > 0) x = x - (x mod 32) + 31 - (bbox_right - x);
	else x = x - (x mod 32) - (bbox_left - x);
	moveX = 0;
}
x += moveX;
if (moveY > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+moveY) != 0) || (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+moveY) != 0)
{
	if (moveY > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y)
	moveY = 0;
}
y += moveY;

image_speed = .5;
sprite_index = sPlayerIdle
if (keyboard_check(ord("W"))) {
	image_speed = 1.5;
	sprite_index = sPlayerU
}
if (keyboard_check(ord("A"))) {
	image_speed = 1.5;
	sprite_index = sPlayerL;
}
if (keyboard_check(ord("S"))) {
	image_speed = 1.5;
	sprite_index = sPlayerIdle;
}
if (keyboard_check(ord("D"))) {
	image_speed = 1.5;
	sprite_index = sPlayerR;
}
if (keyboard_check(vk_escape)){
	room_goto(rMainMenu1)
}