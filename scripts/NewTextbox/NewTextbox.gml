
function NewTextbox( text, bgId = 1, responseList = [-1] )
{	
	var _obj = ( instance_exists( oText ) ) ? oTextQueued: oText;

	with ( instance_create_layer( 0, 0, "Instances", _obj ) ) {
		textMessage = text;
		
		originInstance = ( instance_exists( other ) ) ? other.id : noone;
		
		background = bgId;

		if ( responseList[ 0 ] != -1 ) {
			for ( var i = 0, len = array_length( responseList ); i < len; i++ ) {
				var _marker = string_pos( ":", responseList[ i ] );
				
				responseScripts[ i ] = real( string_copy( responseList[ i ], 1, _marker - 1 ) );
				responses[ i ] = string_delete( responseList[ i ], 1, _marker );
			}
		}
		else {
			responses = [-1];
			responseScripts = [-1];
		}
	}
	
	with ( oPlayer ) {
		if ( state != PlayerStateLocked ) {
			lastState = state;
			
			state = PlayerStateLocked;
		}
	}
}
