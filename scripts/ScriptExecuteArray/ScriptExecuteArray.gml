
function ScriptExecuteArray( _source, _args )
{
	var _argLength = array_length( _args );
	
	if ( _argLength == 1 ) {
		return script_execute( _source, _args[ 0 ] );
	}
	else if ( _argLength == 2 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ] );
	}
	else if ( _argLength == 3 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ] );
	}
	else if ( _argLength == 4 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ], _args[ 3 ] );
	}
	else if ( _argLength == 5 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ], _args[ 3 ], _args[ 4 ] );
	}
	else if ( _argLength == 6 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ], _args[ 3 ], _args[ 4 ], _args[ 5 ] );
	}
	else if ( _argLength == 7 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ], _args[ 3 ], _args[ 4 ], _args[ 5 ], _args[ 6 ] );
	}
	else if ( _argLength == 8 ) {
		return script_execute( _source, _args[ 0 ], _args[ 1 ], _args[ 2 ], _args[ 3 ], _args[ 4 ], _args[ 5 ], _args[ 6 ], _args[ 7 ] );
	}
	else {
		show_error( "ScriptExecuteArray: Argument count not supported!", false );
	}
}
