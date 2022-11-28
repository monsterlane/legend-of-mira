
function PlayerCollision( )
{
	var _collision = false;
	var _entityList = ds_list_create( );

	// horizontal tiles
	if ( tilemap_get_at_pixel( collisionMap, x + xSpeed, y ) ) {
		x -= x mod TILE_SIZE;

		if ( sign( xSpeed ) == 1 ) {
			x += TILE_SIZE - 1;
		}

		xSpeed = 0;

		_collision = true;
	}
	
	// horizontal entities
	var _entityCount = instance_position_list( x + xSpeed, y, pEntity, _entityList, false );
	var _snapX;
	
	while ( _entityCount > 0 ) {
		var _entityCheck = _entityList[| 0 ];
		
		if ( _entityCheck.entityCollision == true ) {
			// move as close as we can
			if ( sign( xSpeed ) == -1 ) {
				_snapX = _entityCheck.bbox_right + 1;
			}
			else {
				_snapX = _entityCheck.bbox_left - 1;
			}

			x = _snapX;
			xSpeed = 0;

			_collision = true;
			_entityCount = 0;
		}

		ds_list_delete( _entityList, 0 );
		_entityCount--;
	}
		
	x += xSpeed;
	
	ds_list_clear( _entityList );

	// vertical tiles
	if ( tilemap_get_at_pixel( collisionMap, x, y + ySpeed ) ) {
		y -= y mod TILE_SIZE;
		 
		if ( sign( ySpeed ) == 1 ) {
			y += TILE_SIZE - 1;
		}

		ySpeed = 0;

		_collision = true;
	}
	
	// vertical entities
	var _entityCount = instance_position_list( x, y + ySpeed, pEntity, _entityList, false );
	var _snapY;

	while ( _entityCount > 0 ) {
		var _entityCheck = _entityList[| 0 ];
		
		if ( _entityCheck.entityCollision == true ) {
			// move as close as we can
			if ( sign( ySpeed ) == -1 ) {
				_snapY = _entityCheck.bbox_bottom + 1;
			}
			else {
				_snapY = _entityCheck.bbox_top - 1;
			}

			y = _snapY;
			ySpeed = 0;

			_collision = true;
			_entityCount = 0;
		}

		ds_list_delete( _entityList, 0 );
		_entityCount--;
	}
	
	y += ySpeed;
	
	ds_list_destroy( _entityList );
	
	return _collision;
}
