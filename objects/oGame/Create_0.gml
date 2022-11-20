
// init
randomize( );

// globals
global.paused = false;
global.camera = instance_create_layer( 0, 0, layer, oCamera );
global.textSpeed = 0.75;

// start
surface_resize( application_surface, RESOLUTION_WIDTH, RESOLUTION_HEIGHT );
room_goto( ROOM_START );
