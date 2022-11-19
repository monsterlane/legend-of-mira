
// init
randomize( );

// globals
global.paused = false;
global.camera = instance_create_layer( 0, 0, layer, oCamera );

// start
room_goto( ROOM_START );
