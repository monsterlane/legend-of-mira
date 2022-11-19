
function ScreenShake( magnitude, frames )
{
	with ( global.camera ) {
		if ( magnitude > shakeRemain ) {
			shakeMagnitude = magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = frames;
		}
	}
}
