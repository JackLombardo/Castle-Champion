if (dead) {
	
	sprite_index = sBoss2;
	
	speed = 0;
	
	image_speed = 0;

} else {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = random_range(1, 3);

if (direction > 90 && direction < 270) {
	sprite_index = sOgre;
} else {
	sprite_index = sOgreB;
	}
}