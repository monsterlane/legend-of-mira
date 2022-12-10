
function ScreenShake( _magnitude, _frames )
{
	with ( global.camera ) {
		if ( _magnitude > shakeRemain ) {
			shakeMagnitude = _magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = _frames;
		}
	}
}
