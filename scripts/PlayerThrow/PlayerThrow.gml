
function PlayerThrow( )
{
	with ( global.lifting ) {
		persistent = false;

		lifted = false;
		thrown = true;
		z = CARRY_HEIGHT;

		throwPeakHeight = z + 10;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = ( CARRY_HEIGHT / throwPeakHeight ) * 0.5;
		throwPercent = throwStartPercent;
		
		direction = other.direction;
		xstart = x;
		ystart = y;
	}

	PlayerAnimation( sPlayerLift );
	PlayerDropItems( );
}
