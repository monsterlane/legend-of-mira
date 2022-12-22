
function ActivateLiftable( _target )
{
	if ( global.lifting == noone ) {
		PlayerAnimation( sPlayerLift );

		spriteIdle = sPlayerCarrying;
		spriteRun = sPlayerRunCarrying;

		global.lifting = _target;

		with ( global.lifting ) {
			lifted = true;

			persistent = true;

			entityCollision = false;
		}
	}
}
