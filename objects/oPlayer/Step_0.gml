// bindings
moveLeft = keyboard_check( vk_left ) || keyboard_check( ord( "S" ) );
moveRight = keyboard_check( vk_right ) || keyboard_check( ord( "F" ) );
moveUp = keyboard_check( vk_up ) || keyboard_check( ord( "E" ) );
moveDown = keyboard_check( vk_down ) || keyboard_check( ord( "D" ) );
activate = keyboard_check_pressed( ord( "W" ) );
 
// input
xDir = moveRight - moveLeft;
yDir = moveDown - moveUp;

inputDirection = point_direction( 0, 0, xDir, yDir );
inputMagnitude = ( xDir != 0 ) || ( yDir != 0 );

script_execute( state );
