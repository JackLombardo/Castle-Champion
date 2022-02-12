global.bossOneHP -=1;
instance_destroy(other);
sprite_index = sSkeletonEnemyDead;
score += 150;

if (global.bossOneHP == 0) {
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
	instance_destroy(oSkeletonEnemy1);
	room_goto(rBoss2Start);
	score += 1000;
}