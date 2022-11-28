
function DropItems( x, y, items )
{
	var _itemCount = array_length( items );
	
	if ( _itemCount > 1 ) {
		var _anglePerItem = 360 / _itemCount;
		var _angle = random( 360 );
		
		for ( var i = 0; i < _itemCount; i++ ) {
			with ( instance_create_layer( x, y, "Instances", items[ i ] ) ) {
				direction = _angle;

				spd = 0.75 + ( _itemCount * 0.1 ) + random( 0.1 );
			}
			
			_angle += _anglePerItem;
		}
	}
	else {
		instance_create_layer( x, y, "Intances", items[ 0 ] );
	}
}
