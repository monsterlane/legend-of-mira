
function SlimeDie( )
{
	sprite_index = spriteDie;
	
	image_speed = 1.0;
	
	var _distanceToGo = point_distance( x, y, xTo, yTo );
	
	if ( _distanceToGo > enemySpeed ) {
		dir = point_direction( x, y, xTo, yTo );
		
		xSpeed = lengthdir_x( enemySpeed, dir );
		ySpeed = lengthdir_y( enemySpeed, dir );
		
		if ( xSpeed != 0 ) {
			image_xscale = -sign( xSpeed );
		}
		
		// collide and move
		EnemyTileCollision( );
	}
	else {
		x = xTo;
		y = yTo;
	}
	
	if ( image_index + ( sprite_get_speed( sprite_index ) / game_get_speed( gamespeed_fps ) ) >= image_number ) {
		instance_destroy( );
	}
}
