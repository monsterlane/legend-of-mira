
event_inherited( );

state = ENEMY_STATE.WANDER;

// enemy sprites
spriteMove = sSlime;
spriteAttack = sSlimeAttack;
spriteDie = sSlimeDie;
spriteHurt = sSlimeHurt;

// enemy scripts
enemyScript[ ENEMY_STATE.ATTACK ] = SlimeAttack;
enemyScript[ ENEMY_STATE.CHASE ] = SlimeChase;
enemyScript[ ENEMY_STATE.WANDER ] = SlimeWander;
enemyScript[ ENEMY_STATE.HURT ] = SlimeHurt;
enemyScript[ ENEMY_STATE.DIE ] = SlimeDie;
