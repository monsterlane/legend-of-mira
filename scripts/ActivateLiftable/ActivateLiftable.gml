
function ActivateLiftable( target_id )
{
	if ( global.lifting == noone ) {
		PlayerAnimation( sPlayerLift );

		global.lifting = target_id;

		with ( global.lifting ) {
			lifted = true;

			persistent = true;
		}
	}
}
