
// pause game
if ( keyboard_check_pressed( vk_escape ) ) {
	global.paused = !global.paused;
	
	if ( global.paused ) {
		with ( all ) {
			gamePausedImageSpeed = image_speed;
			
			image_speed = 0;
		}
	}
	else {
		with ( all ) {
			image_speed = gamePausedImageSpeed;
		}
	}
}