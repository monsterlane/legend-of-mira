
function SlimeHurt( )
{
	sprite_index = spriteHurt;
	
	var _distanceToGo = point_distance( x, y, xTo, yTo );
	
	if ( _distanceToGo > enemySpeed ) {
		image_speed = 1.0;
		
		dir = point_direction( x, y, xTo, yTo );
		
		xSpeed = lengthdir_x( enemySpeed, dir );
		ySpeed = lengthdir_y( enemySpeed, dir );
		
		if ( xSpeed != 0 ) {
			image_xscale = -sign( xSpeed );
		}
		
		// collide and move
		if ( EnemyTileCollision( ) ) {
			xTo = x;
			yTo = y;
		}
		else {
			x = xTo;
			y = yTo;
			
			if ( statePrevious != ENEMY_STATE.ATTACK ) {
				state = statePrevious;
			}
			else {
				state = ENEMY_STATE.CHASE;
			}
		}
	}
}
