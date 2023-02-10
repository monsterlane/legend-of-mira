/// @desc Drop fragments & items

// drop fragments
if ( entityFragmentCount > 0 ) {
	fragmentArray = array_create( entityFragmentCount, entityFragment );
	
	DropItems( x, y, fragmentArray );
}

// drop items
if ( entityDropList != -1 ) {
	DropItems( x, y, entityDropList );
}
