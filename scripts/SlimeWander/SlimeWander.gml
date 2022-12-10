
function SlimeWander( )
{
	sprite_index = spriteMove;

	if ( ( x == xTo ) && ( y == yTo ) ) || ( timePassed > enemyWanderDistance / enemySpeed ) {
		// reached goal
		xSpeed = 0;
		ySpeed = 0;
		
		// end our move animation
		if ( image_index < 1 ) {
			image_speed = 0.0;
			image_index = 0;
		}
		
		// set goal
		if ( ++wait >= waitDuration ) {
			wait = 0;
			
			timePassed = 0;
			dir = point_direction( x, y, xstart, ystart ) + irandom_range( -45, 45 );
			
			xTo = x + lengthdir_x( enemyWanderDistance, dir );
			yTo = y + lengthdir_y( enemyWanderDistance, dir );
		}
	}
	else {
		// move towards goal
		timePassed++;
		image_speed = 1.0;
		
		
		var _distanceToGo = point_distance( x, y, xTo, yTo );
		var _speedThisFrame = enemySpeed;
		
		if ( _distanceToGo < enemySpeed ) {
			_speedThisFrame = _distanceToGo;
		}
		
		dir = point_direction( x, y, xTo, yTo );
		xSpeed = lengthdir_x( _speedThisFrame, dir );
		ySpeed = lengthdir_y( _speedThisFrame, dir );
		
		if ( ySpeed != 0 ) {
			image_xscale = sign( xSpeed );
		}
		
		// interact
		EnemyTileCollision( );
		
	}
	
	// check for aggro
	if ( ++aggroCheck >= aggroCheckDuration ) {
		aggroCheck = 0;
		
		if ( instance_exists( oPlayer ) ) && ( point_distance( x, y, oPlayer.x, oPlayer.y ) <= enemyAggroRadius ) {
			state = ENEMY_STATE.CHASE;
			
			target = oPlayer;
		}
	}
}
