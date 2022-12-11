
// draw health
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFraction = frac( _playerHealth );

_playerHealth -= _playerHealthFraction;

for ( var i = 1; i <= _playerHealthMax; i++ ) {
	var _imageIndex = ( i > _playerHealth );
	
	if ( i == _playerHealth + 1 ) {
		_imageIndex += floor( _playerHealthFraction * 4 );
	}
	
	draw_sprite( sHealth, _imageIndex, 8 + ( ( i - 1 ) * 16 ), 8 );

	display_set_gui_size( RESOLUTION_WIDTH, RESOLUTION_HEIGHT );
}
