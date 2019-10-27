//article2_update
with (asset_get("obj_article2")) {
    if (player_id.hit_player_obj && player_id.hit_player_obj != id  && place_meeting(x,y,player_id.hit_player_obj.id)) {
        with (player_id) {
            with (hit_player_obj) {
                if (state == PS_HITSTUN) {        
                    vsp = 0;
                    hsp = 0;
                }
            }
        }
    }
}