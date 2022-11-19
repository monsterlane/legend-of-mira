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

// movement
xSpeed = lengthdir_x( inputMagnitude * speedWalk, inputDirection );
ySpeed = lengthdir_y( inputMagnitude * speedWalk, inputDirection );

// collision
PlayerCollision( );

// update
var _oldSprite = sprite_index;

if ( inputMagnitude != 0 ) {
	direction = inputDirection;
	sprite_index = spriteRun;
}
else {
	sprite_index = spriteIdle;
}

if ( _oldSprite != sprite_index ) {
	localFrame = 0;
}

PlayerAnimateSprite( );
