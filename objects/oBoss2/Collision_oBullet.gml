global.bossTwoHP -=1;
instance_destroy(other);
sprite_index = sBossDead;
score += 150;

if (global.bossTwoHP == 0) {
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
	instance_destroy(oBoss2);
	room_goto(rBoss3Start);
	score += 1500;
}