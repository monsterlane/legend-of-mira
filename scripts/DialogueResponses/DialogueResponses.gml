
function DialogueResponses( response )
{
	if ( response == 1 ) {
		NewTextbox( "How can I help?", 1, [ "2:Controls", "0:Goodbye." ] );		
	}
	else if ( response == 2 ) {
		NewTextbox( "I'm an NPC, I can't move!", 1 );
	}
}
