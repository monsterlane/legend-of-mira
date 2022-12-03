
function MACROS( )
{
	// render
	#macro FRAME_RATE 60
	#macro TILE_SIZE 16
	#macro RESOLUTION_WIDTH 320
	#macro RESOLUTION_HEIGHT 180

	// 8 dir, round( direction / 45 )
	#macro CARDINAL_DIR round( direction / 90 )

	// game
	#macro TRANSITION_SPEED 0.02
	#macro IN 1
	#macro OUT 0

	// init
	#macro ROOM_START rVillage

	ini_close( );
}
