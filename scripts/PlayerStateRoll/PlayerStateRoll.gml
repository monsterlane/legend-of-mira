
function PlayerStateRoll( )
{
	xSpeed = lengthdir_x( speedRoll, direction );
	ySpeed = lengthdir_y( speedRoll, direction );
	
	moveDistanceRemaining = max( 0, moveDistanceRemaining - speedRoll );
	
	var _collided = PlayerCollision( );
	
	// update sprite
	sprite_index = spriteRoll;
	
	var _totalFrames = sprite_get_number( sprite_index ) / 4;
	
	image_index = ( CARDINAL_DIR * _totalFrames ) + min( ( ( 1 - ( moveDistanceRemaining / distanceRoll ) ) * _totalFrames ), _totalFrames - 1 );
	
	// change state
	if ( moveDistanceRemaining <= 0 ) {
		state = PlayerStateFree;
	}
	
	if ( _collided ) {
		state = PlayerStateFree;

		ScreenShake( 6, 20 );
	}
}
