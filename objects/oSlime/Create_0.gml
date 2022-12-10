
event_inherited( );

state = ENEMY_STATE.WANDER;

// enemy sprites
spriteMove = sSlime;
spriteAttack = sSlimeAttack;

// enemy scripts
enemyScript[ ENEMY_STATE.ATTACK ] = SlimeAttack;
enemyScript[ ENEMY_STATE.CHASE ] = SlimeChase;
enemyScript[ ENEMY_STATE.WANDER ] = SlimeWander;
