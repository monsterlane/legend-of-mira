
// entity loop
if ( !global.paused ) {
	depth = -bbox_bottom;
	
	if ( lifted && instance_exists( oPlayer ) ) {
		if ( oPlayer.sprite_index != sPlayerLift ) {
			x = oPlayer.x;
			y = oPlayer.y;

			z = 13;
			
			depth = oPlayer.depth - 1;
		}
	}
}

flash = max( flash - 0.04, 0 );
