
function ScriptExecuteArray( source, args )
{
	var _argLength = array_length( args );
	
	if ( _argLength == 1 ) {
		return script_execute( source, args[ 0 ] );
	}
	else if ( _argLength == 2 ) {
		return script_execute( source, args[ 0 ], args[ 1 ] );
	}
	else if ( _argLength == 3 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ] );
	}
	else if ( _argLength == 4 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ], args[ 3 ] );
	}
	else if ( _argLength == 5 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ], args[ 3 ], args[ 4 ] );
	}
	else if ( _argLength == 6 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ], args[ 3 ], args[ 4 ], args[ 5 ] );
	}
	else if ( _argLength == 7 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ], args[ 3 ], args[ 4 ], args[ 5 ], args[ 6 ] );
	}
	else if ( _argLength == 8 ) {
		return script_execute( source, args[ 0 ], args[ 1 ], args[ 2 ], args[ 3 ], args[ 4 ], args[ 5 ], args[ 6 ], args[ 7 ] );
	}
	else {
		show_error( "ScriptExecuteArray: Argument count not supported!", false );
	}
}
