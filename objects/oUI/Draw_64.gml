
// draw health
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFraction = frac( _playerHealth );

_playerHealth -= _playerHealthFraction;

for ( var i = 1; i <= _playerHealthMax; i++ ) {
	var _imageIndex = ( i > _playerHealth );
	
	if ( i == _playerHealth + 1 ) {
		_imageIndex += ( _playerHealthFraction > 0 );
		_imageIndex += ( _playerHealthFraction > 0.25 );
		_imageIndex += ( _playerHealthFraction > 0.5 );
	}
	
	draw_sprite( sHealth, _imageIndex, 8 + ( ( i - 1 ) * 16 ), 8 );
}
