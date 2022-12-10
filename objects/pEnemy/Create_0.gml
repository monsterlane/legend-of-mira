
event_inherited( );

// intrinsic variables
state = ENEMY_STATE.IDLE;

hSpeed = 0;
ySpeed = 0;
dir = 0;

xTo = xstart;
yTo = ystart;

timePassed = 0;
waitDuration = 0;
wait = 0;

aggroCheck = 0;
aggroCheckDuration = 5;

// enemy sprites
spriteMove = sSlime;

// enemy scripts
enemyScript[ ENEMY_STATE.ATTACK ] = -1;
enemyScript[ ENEMY_STATE.CHASE ] = -1;
enemyScript[ ENEMY_STATE.DIE ] = -1;
enemyScript[ ENEMY_STATE.IDLE ] = -1;
enemyScript[ ENEMY_STATE.WAIT ] = -1;
enemyScript[ ENEMY_STATE.WANDER ] = -1;
