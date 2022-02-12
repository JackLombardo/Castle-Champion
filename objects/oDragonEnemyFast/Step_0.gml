if (dead) {
	
	sprite_index = sDragonFast;
	
	speed = 0;
	
	image_speed = 0;

} else {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = 5;

if (direction > 90 && direction < 270) {
	sprite_index = sDragonFast;
} else {
	sprite_index = sDragonFast;
	}
}