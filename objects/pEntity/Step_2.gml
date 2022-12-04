
// entity loop
if ( !global.paused ) {
	depth = -bbox_bottom;
	
	if ( lifted && instance_exists( oPlayer ) ) {
		if ( oPlayer.sprite_index != sPlayerLift ) {
			x = oPlayer.x;
			y = oPlayer.y;

			z = CARRY_HEIGHT;

			depth = oPlayer.depth - 1;
		}
	}

	if ( !lifted ) {
		if ( thrown ) {
			throwDistanceTravelled = min( throwDistanceTravelled + 3, throwDistance );

			x = xstart + lengthdir_x( throwDistanceTravelled, direction );
			y = ystart + lengthdir_y( throwDistanceTravelled, direction );

			if ( tilemap_get_at_pixel( collisionMap, x, y ) > 0 ) {
				thrown = false;
				grav = GRAVITY;
			}

			throwPercent = throwStartPercent + lerp( 0, 1 - throwStartPercent, throwDistanceTravelled / throwDistance );

			z = throwPeakHeight * sin( throwPercent * pi );

			if ( throwDistance == throwDistanceTravelled ) {
				thrown = false;

				if ( entityThrowBreak ) {
					instance_destroy( );
				}
			}
		}
		else {
			// fall back to earth
			if ( z > 0 ) {
				z = max( z - grav, 0 );
				
				grav += GRAVITY;
				
				if ( z == 0 && entityThrowBreak ) {
					instance_destroy( );
				}
				else {
					grav = GRAVITY;
				}
			}
		}
	}
}

flash = max( flash - EFFECT_FLASH, 0 );
