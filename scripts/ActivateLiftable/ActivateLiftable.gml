
function ActivateLiftable( _target )
{
	if ( global.lifting == noone ) {
		PlayerAnimation( sPlayerLift );

		global.lifting = _target;

		with ( global.lifting ) {
			lifted = true;

			persistent = true;

			entityCollision = false;
		}
	}
}
