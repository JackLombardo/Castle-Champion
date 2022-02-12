enemyHP -=1;
instance_destroy(other);
sprite_index = sSkeletonEnemyDead;
score += 50;

if (enemyHP == 0) {
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other);
	instance_destroy(id);
	//alarm[0] = 60
}