
function DialogueResponses( _response )
{
	if ( _response == 1 ) {
		NewTextbox( "How can I help?", 1, [ "2:Controls", "0:Goodbye." ] );		
	}
	else if ( _response == 2 ) {
		NewTextbox( "I'm an NPC, I can't move!", 1 );
	}
	else if ( _response == 3 ) {
		NewTextbox( "Thanks!", 2 );
		NewTextbox( "I think I left my hat in that\nscary cave to the north east.", 2 );

		global.questStatus[? "TheHatQuest" ] = 1;
	}
	else if ( _response == 4 ) {
		NewTextbox( ":(", 2 );
	}
}
