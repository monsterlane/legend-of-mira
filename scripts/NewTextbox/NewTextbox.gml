
function NewTextbox( msg, bg = 1 )
{
	var _obj = ( instance_exists( oText ) ) ? oTextQueued: oText;

	with ( instance_create_layer( 0, 0, "Instances", _obj ) ) {
		textMessage = msg;
		
		originInstance = ( instance_exists( other ) ) ? other.id : noone;
		background = bg;
	}
	
	with ( oPlayer ) {
		if ( state != PlayerStateLocked ) {
			lastState = state;
			
			state = PlayerStateLocked;
		}
	}
}