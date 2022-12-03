
function RoomTransition( transitionType, targetRoom )
{
	if ( !instance_exists( oTransition ) ) {
		with ( instance_create_depth( 0, 0, -9999, oTransition ) ) {
			type = transitionType;
			target = targetRoom;
		}
	}
	else {
		show_debug_message( "Trying to transition while transition is happening!" );
	}
}
