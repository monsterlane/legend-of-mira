
function CalcAttack( hitbox )
{
	mask_index = hitbox;
	
	var hitByAttackNow = ds_list_create( );
	var hits = instance_place_list( x, y, pEntity, hitByAttackNow, false );
	
	if ( hits > 0 ) {
		for ( var i = 0; i < hits; i++ ) {
			var hitId = hitByAttackNow[| i ];
			
			if ( ds_list_find_index( hitByAttack, hitId ) == -1 ) {
				ds_list_add( hitByAttack, hitId );
				
				with ( hitId ) {
					image_blend = c_red;
				}
			}
		}
	}
	
	ds_list_destroy( hitByAttackNow );
	
	mask_index = sPlayer;
}
