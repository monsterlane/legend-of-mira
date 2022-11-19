// collision
collisionMap = layer_tilemap_get_id( layer_get_id( "Collision" ) );

// defaults
image_speed = 0;
speedWalk = 2.0;

// velocity
xSpeed = 0;
ySpeed = 0;

// state
localFrame = 0;

spriteRun = sPlayerRun;
spriteIdle = sPlayer;
