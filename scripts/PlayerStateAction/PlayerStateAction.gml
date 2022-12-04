
function PlayerStateAction( )
{
	// update sprite
	PlayerAnimateSprite( );
	
	if ( animationEnd ) {
		state = PlayerStateFree;
		animationEnd = false;
		
		if ( animationEndScript != -1 ) {
			script_execute( animationEndScript );
			
			animationEndScript = -1;
		}
	}
}
