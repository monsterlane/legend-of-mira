
function SlimeChase( )
{
	sprite_index = spriteMove;
	
	if ( instance_exists( target ) ) {
		xTo = target.x;
		yTo = target.y;

		image_speed = 1.0;

		dir = point_direction( x, y, xTo, yTo );

		var _distanceToGo = point_distance( x, y, xTo, yTo );
		
		if ( _distanceToGo > enemySpeed ) {
			xSpeed = lengthdir_x( enemySpeed, dir );
			ySpeed = lengthdir_y( enemySpeed, dir );
		}
		else {
			xSpeed = lengthdir_x( _distanceToGo, dir );
			ySpeed = lengthdir_y( _distanceToGo, dir );
		}
		
		if ( xSpeed != 0 ) {
			image_xscale = sign( xSpeed );
		}

		// collision
		EnemyTileCollision( );
	}
	
	// check if close enough to launch an attack
	if ( instance_exists( target ) ) && ( point_distance( x, y, target.x, target.y ) <= enemyAttackRadius ) {
		state = ENEMY_STATE.ATTACK;
		
		sprite_index = spriteAttack;
		image_index = 0;
		image_speed = 1.0;
		
		// target 8px past the player
		xTo += lengthdir_x( 8, dir );
		yTo += lengthdir_y( 8, dir );
	}
}
