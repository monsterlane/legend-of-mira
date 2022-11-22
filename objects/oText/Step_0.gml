
lerpProgress += ( 1 - lerpProgress ) * 0.5;
textProgress += global.textSpeed;

x1 = lerp( x1, x1Target, lerpProgress );
x2 = lerp( x2, x2Target, lerpProgress );

// cycle through responses
keyUp = keyboard_check_pressed( vk_up ) || keyboard_check_pressed( ord( "E" ) );
keyDown = keyboard_check_pressed( vk_down ) || keyboard_check_pressed( ord( "D" ) );

responseSelected += ( keyDown - keyUp );

var _max = array_length_1d( responses ) - 1;
var _min = 0;

if ( responseSelected > _max ) {
	responseSelected = _min;
}
else if ( responseSelected < _min ) {
	responseSelected = _max;
}

if ( keyboard_check_pressed( vk_space ) ) {
	var _messageLength = string_length( textMessage );
	
	if ( textProgress >= _messageLength ) {
		instance_destroy( );
		
		if ( instance_exists( oTextQueued ) ) {
			with ( oTextQueued ) {
				ticket--;
			}
		}
		else {
			with ( oPlayer ) {
				state = lastState;
			}
		}
	}
	else {
		if ( textProgress > 2 ) {
			textProgress = _messageLength;
		}
	}
}
