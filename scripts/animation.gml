if (get_player_color( player ) == 10){
    if (state == PS_CROUCH) {
        sprite_index = sprite_get( "abyss_crouch" );
    }
}
else if (get_player_color( player ) == 11){
    if (state == PS_CROUCH) {
        sprite_index = sprite_get( "gba_crouch" );
    }
}