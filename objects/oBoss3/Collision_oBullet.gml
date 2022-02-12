global.bossThreeHP -=1;
instance_destroy(other);
sprite_index = sDragonBossDead;
score += 150;

if (global.bossThreeHP == 0) {
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
	instance_destroy(oBoss2);
	room_goto(rKingEndGame);
	score += 1500;
}