
function NewTextbox( _message, _background = 1, _responseList = [-1] )
{
	var _obj = ( instance_exists( oText ) ) ? oTextQueued : oText;

	with ( instance_create_layer( 0, 0, "Instances", _obj ) ) {
		textMessage = _message;
		
		originInstance = ( instance_exists( other ) ) ? other.id : noone;
		
		background = _background;

		if ( _responseList[ 0 ] != -1 ) {
			for ( var i = 0, len = array_length( _responseList ); i < len; i++ ) {
				var _marker = string_pos( ":", _responseList[ i ] );
				
				responseScripts[ i ] = real( string_copy( _responseList[ i ], 1, _marker - 1 ) );
				responses[ i ] = string_delete( _responseList[ i ], 1, _marker );
			}
		}
		else {
			responses = [ -1 ];
			responseScripts = [ -1 ];
		}
	}
	
	with ( oPlayer ) {
		if ( state != PlayerStateLocked ) {
			lastState = state;
			
			state = PlayerStateLocked;
		}
	}
}
