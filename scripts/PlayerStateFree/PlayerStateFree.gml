
function PlayerStateFree( )
{
	// movement
	xSpeed = lengthdir_x( inputMagnitude * speedWalk, inputDirection );
	ySpeed = lengthdir_y( inputMagnitude * speedWalk, inputDirection );

	// collision
	PlayerCollision( );

	// animate
	var _oldSprite = sprite_index;

	if ( inputMagnitude != 0 ) {
		direction = inputDirection;
		sprite_index = spriteRun;
	}
	else {
		sprite_index = spriteIdle;
	}

	if ( _oldSprite != sprite_index ) {
		localFrame = 0;
	}

	PlayerAnimateSprite( );
	
	// change state
	if ( activate ) {
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
	}
}
