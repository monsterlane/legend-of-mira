
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
	#macro CARRY_HEIGHT 13
	#macro GRAVITY 0.1
	#macro EFFECT_FLASH 0.04

	#macro IN 1
	#macro OUT 0
	
	enum ENEMY_STATE {
		IDLE,
		WANDER,
		CHASE,
		ATTACK,
		DIE,
		WAIT
	}

	// init
	#macro ROOM_START rVillage
}
