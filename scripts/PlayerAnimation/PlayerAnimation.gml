
function PlayerAnimation( _sprite, _endScript = -1 )
{
	state = PlayerStateAction;
	sprite_index = _sprite;
	animationEndScript = _endScript;

	localFrame = 0;
	image_index = 0;
	
	PlayerAnimateSprite( );
}
