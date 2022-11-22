
// draw textbox
draw_sprite_stretched( sTextboxBg, background, x1, y1, x2 - x1, y2 - y1 );
draw_set_font( fText );
draw_set_halign( fa_center );
draw_set_valign( fa_top );
draw_set_color( c_black );

var _print = string_copy( textMessage, 1, textProgress );

if ( responses[ 0 ] != -1 && textProgress >= string_length( textMessage ) ) {
	for ( var i = 0, len = array_length( responses ); i < len; i++ ) {
		_print += "\n";
		
		if ( i == responseSelected ) {
			_print += "> ";
		}
		
		_print += responses[ i ];
		
		if ( i == responseSelected) {
			_print += " <";
		}
	}
}

draw_text( ( x1 + x2 ) * 0.5, y1 + 8, _print );
draw_set_color( c_white );
draw_text( ( x1 + x2 ) * 0.5, y1 + 7, _print );
