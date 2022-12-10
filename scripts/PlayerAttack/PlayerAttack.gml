
function AttackSlash( )
{
	if ( sprite_index != sPlayerAttackSlash ) {
		sprite_index = sPlayerAttackSlash;
		localFrame = 0;
		image_index = 0;

		if ( !ds_exists( hitByAttack, ds_type_list ) ) {
			hitByAttack = ds_list_create( );
		}

		ds_list_clear( hitByAttack );
	}

	CalcAttack( sPlayerAttackSlashHB );

	PlayerAnimateSprite( );
	
	if ( animationEnd ) {
		state = PlayerStateFree;

		animationEnd = false;
	}
}

function CalcAttack( _hitbox )
{
	mask_index = _hitbox;

	var _hitByAttackNow = ds_list_create( );
	var _hits = instance_place_list( x, y, pEntity, _hitByAttackNow, false );

	if ( _hits > 0 ) {
		for ( var i = 0; i < _hits; i++ ) {
			var _hitId = _hitByAttackNow[| i ];

			if ( ds_list_find_index( hitByAttack, _hitId ) == -1 ) {
				ds_list_add( hitByAttack, _hitId );

				with ( _hitId ) {
					if ( object_is_ancestor( object_index, pEnemy ) ) {
						HurtEnemy( id, 5, other.id, 10 );
					}
					else if ( entityHitScript != -1 ) {
						script_execute( entityHitScript );
					}
				}
			}
		}
	}

	ds_list_destroy( _hitByAttackNow );

	mask_index = sPlayer;
}

function HurtEnemy( _target, _damage, _source, _knockback )
{
	with ( _target ) {
		if ( state != ENEMY_STATE.DIE ) {
			enemyHP -= _damage;
			flash = 1;
			
			if ( enemyHP <= 0 ) {
				state = ENEMY_STATE.DIE;
			}
			else {
				if ( state != ENEMY_STATE.HURT ) {
					statePrevious = state;

					state = ENEMY_STATE.HURT;
				}
			}

			image_index = 0;
			
			if ( _knockback != 0 ) {
				var _knockDirection = point_direction( x, y, _source.x, _source.y );
				
				xTo = x - lengthdir_x( _knockback, _knockDirection );
				yTo = y - lengthdir_y( _knockback, _knockDirection );
			}
		}
	}
}
