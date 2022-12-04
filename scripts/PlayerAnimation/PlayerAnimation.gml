
function PlayerAnimation( sprite, endScript = -1 )
{
	state = PlayerStateAction;
	sprite_index = sprite;
	animationEndScript = endScript;

	localFrame = 0;
	image_index = 0;
	
	PlayerAnimateSprite( );
}
