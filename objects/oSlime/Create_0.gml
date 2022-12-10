
event_inherited( );

state = ENEMY_STATE.WANDER;

// enemy sprites
spriteMove = sSlime;

// enemy scripts
enemyScript[ ENEMY_STATE.WANDER ] = SlimeWander;
enemyScript[ ENEMY_STATE.CHASE ] = SlimeChase;
