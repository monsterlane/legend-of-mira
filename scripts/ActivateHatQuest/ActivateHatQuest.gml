
function ActivateHatQuest( )
{
	var _hasHat = ( global.lifting != noone ) && ( global.lifting.object_index == oHat );
	
	switch ( global.questStatus[? "TheHatQuest" ] )
	{
		case 0:
		{
			if ( _hasHat ) {
				// complete quest
				NewTextbox( "Wow, you found my hat without me even asking you to!", 2 );
				NewTextbox( "You are a true hero indeed.", 2 );
				
				global.questStatus[? "TheHatQuest" ] = 2;
				
				with ( oQuestie ) {
					sprite_index = sQuestieHat;
				}
				
				with ( oHat ) {
					instance_destroy( );
				}
				
				global.lifting = noone;
				
				with ( oPlayer ) {
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			}
			else {
				// offer quest
				NewTextbox( "Hello there! You look like a brave adventurer\nWhat with the cape and all.", 2 );
				NewTextbox( "Could you help me find my missing hat?", 2, [ "3:Of course!", "4:This task is beneath me" ] );
			}

		}break;
		
		case 1: {
			// quest in progress
			if ( _hasHat ) {
				// complete quest
				NewTextbox( "Wow, you found my hat!", 2 );
				NewTextbox( "You are a true hero indeed.", 2 );

				global.questStatus[? "TheHatQuest" ] = 2;
				
				with ( oQuestie ) {
					sprite_index = sQuestieHat;
				}
				
				with ( oHat ) {
					instance_destroy( );
				}
				
				global.lifting = noone;
				
				with ( oPlayer ) {
					spriteIdle = sPlayer;
					spriteRun = sPlayerRun;
				}
			}
			else {
				// clue reminder
				NewTextbox( "I think I left my hat in that\nscary cave to the north east.", 2 );
				NewTextbox( "You might need some items to get there!", 2 );
			}

		}break;
		
		case 2: {
			// quest already completed
			NewTextbox( "Thanks again!", 2 );

		}break;
	}
}
