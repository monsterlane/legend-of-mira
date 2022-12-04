
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

	// attack
	if ( attack ) {
		state = PlayerStateAttack;
		stateAttack = AttackSlash;
	}

	// use
	if ( activate ) {
		var _activateX = x + lengthdir_x( 10, direction );
		var _activateY = y + lengthdir_y( 10, direction );
		
		var _activateSize = 4;
		var _activateList = ds_list_create( );

		activated = noone;
		
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		);

		// find the best entity to activate
		while ( _entitiesFound > 0 ) {
			var _check = _activateList[| --_entitiesFound ];

			if ( _check != global.lifting && _check.entityActivateScript != -1 ) {
				activated = _check;

				break;
			}
		}

		ds_list_destroy( _activateList );
		
		if ( activated == noone ) {
			if ( global.lifting != noone ) {
				// throw something
				PlayerThrow( );
			}
			else {
				// roll
				state = PlayerStateRoll;
				moveDistanceRemaining = distanceRoll;
			}			
		}
		else {
			// activate the entity
			ScriptExecuteArray( activated.entityActivateScript, activated.entityActivateArgs );

			// make an npc face the player
			if ( activated.entityNPC ) {
				with ( activated ) {
					direction = point_direction( x, y, other.x, other.y );
				
					image_index = CARDINAL_DIR;
				}
			}
		}
	}
}
