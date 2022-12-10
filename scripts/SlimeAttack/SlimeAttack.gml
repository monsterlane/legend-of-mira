
function SlimeAttack( )
{
	var _speed = enemySpeed;
	
	// dont move if were about to jump
	if ( image_index < 2 ) {
		_speed = 0;
	}
	
	// freeze animation while meadair and while landing
	var _frameIndex = floor( image_index );

	if ( _frameIndex == 3 ) || ( _frameIndex == 5 ) {
		image_speed = 0;
	}
	
	// how far we have to jump
	var _distanceToGo = point_distance( x, y, xTo, yTo );
	
	// landing animation
	if ( _distanceToGo < 4 ) && ( image_index < 5 ) {
		image_speed = 1.0;
	}
	
	// move
	if ( _distanceToGo > _speed ) {
		dir = point_direction( x, y, xTo, yTo );
		
		xSpeed = lengthdir_x( _speed, dir );
		ySpeed = lengthdir_y( _speed, dir );
		
		if ( xSpeed != 0 ) {
			image_xscale = sign( xSpeed );
		}
		
		// move
		if ( EnemyTileCollision( ) == true ) {
			xTo = x;
			yTo = y;
		}
	}
	else {
		x = xTo;
		y = yTo;
		
		if ( floor( image_index ) == 5 ) {
			stateTarget = ENEMY_STATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMY_STATE.WAIT;
		}
	}
}
