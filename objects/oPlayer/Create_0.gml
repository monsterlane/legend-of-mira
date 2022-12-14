
// collision
collisionMap = layer_tilemap_get_id( layer_get_id( "Collision" ) );

// defaults
image_speed = 0;

speedWalk = 2.0;
speedRoll = 3.0;
speedBonk = 1.5;

distanceRoll = 52;
distanceBonk = 40;
distanceBonkHeight = 12;

invulnerable = 0;

// velocity
xSpeed = 0;
ySpeed = 0;

// animations
localFrame = 0;
animationEndScript = -1;
z = 0;

flash = 0;
flashShader = shWhiteFlash;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;

// state
state = PlayerStateFree;
lastState = state;

stateAttack = AttackSlash;
hitByAttack = -1;

if ( global.targetX != -1 ) {
	x = global.targetX;
	y = global.targetY;
	
	direction = global.targetDirection;
}
