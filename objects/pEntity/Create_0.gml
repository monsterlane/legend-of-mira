
// defaults
z = 0;
flash = 0;
lifted = 0;
thrown = false;

// collision
entityCollisionOriginal = entityCollision;
resetCollision = false;

// shaders
uFlash = shader_get_uniform( shWhiteFlash, "flash" );
