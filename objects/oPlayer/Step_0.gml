// bindings
moveLeft = keyboard_check( vk_left ) || keyboard_check( ord( "S" ) );
moveRight = keyboard_check( vk_right ) || keyboard_check( ord( "F" ) );
moveUp = keyboard_check( vk_up ) || keyboard_check( ord( "E" ) );
moveDown = keyboard_check( vk_down ) || keyboard_check( ord( "D" ) );

activate = keyboard_check_pressed( ord( "W" ) );
attack = keyboard_check_pressed( vk_shift );
 
// input
xDir = moveRight - moveLeft;
yDir = moveDown - moveUp;

inputDirection = point_direction( 0, 0, xDir, yDir );
inputMagnitude = ( xDir != 0 ) || ( yDir != 0 );

if ( global.paused == false ) {
	script_execute( state );
	
	invulnerable = max( invulnerable - 1, 0 );
	flash = max( flash - 0.05, 0 );
}

depth = -bbox_bottom;
