
// init
randomize( );

// globals
global.paused = false;
global.camera = instance_create_layer( 0, 0, layer, oCamera );
global.textSpeed = 0.75;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

// start
surface_resize( application_surface, RESOLUTION_WIDTH, RESOLUTION_HEIGHT );
room_goto( ROOM_START );
