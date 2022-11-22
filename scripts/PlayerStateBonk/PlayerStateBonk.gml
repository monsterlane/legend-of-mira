
function PlayerStateBonk( )
{
	xSpeed = lengthdir_x( speedBonk, direction - 180 );
	ySpeed = lengthdir_y( speedBonk, direction - 180 );
	
	moveDistanceRemaining = max( 0, moveDistanceRemaining - speedBonk );
	
	var _collided = PlayerCollision( );
	
	// update sprite
	sprite_index = sPlayerHurt;
	image_index = CARDINAL_DIR + 2;
	
	// change height
	z = sin( ( ( moveDistanceRemaining / distanceBonk ) * pi ) ) * distanceBonkHeight;

	// change state
	if ( moveDistanceRemaining <= 0 ) {
		state = PlayerStateFree;
	}
}
