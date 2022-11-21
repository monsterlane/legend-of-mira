
function PlayerStateFree( )
{
	// movement
	xSpeed = lengthdir_x( inputMagnitude * speedWalk, inputDirection );
	ySpeed = lengthdir_y( inputMagnitude * speedWalk, inputDirection );

	// collision
	PlayerCollision( );

	// animate
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

	// change state
	if ( activate ) {
		var _activateX = lengthdir_x( 10, direction );
		var _activateY = lengthdir_y( 10, direction );
		
		activated = instance_position( x + _activateX, y + _activateY, pEntity );
		
		if ( activated == noone || activated.entityActivateScript == -1 ) {
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll;
		}
		else {
			// activate the entity
			ScriptExecuteArray( activated.entityActivateScript, activated.entityActivateArgs );
		}
		
		// make an npc face the player
		if ( activated.entityNPC ) {
			with ( activated ) {
				direction = point_direction( x, y, other.x, other.y );
				
				image_index = CARDINAL_DIR;
			}
		}
	}
}
