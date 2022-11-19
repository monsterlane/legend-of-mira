// collision
collisionMap = layer_tilemap_get_id( layer_get_id( "Collision" ) );

// defaults
image_speed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;

// velocity
xSpeed = 0;
ySpeed = 0;

// animations
localFrame = 0;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;

// state
state = PlayerStateFree;
