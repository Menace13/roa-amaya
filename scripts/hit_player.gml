//hit_player - called when one of your hitboxes hits a player

if ((my_hitboxID.attack == AT_USPECIAL && my_hitboxID.type == 2)
|| my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_DSPECIAL
|| my_hitboxID.attack == AT_DSPECIAL_AIR){
    if (!hit_player_obj.bambood)
        sound_play(sound_get("mark"));
    hit_player_obj.bambood = true;
    hit_player_obj.bambood_id = id;
}

if (my_hitboxID.attack == AT_NSPECIAL && hit_player_obj.bambood && hit_player_obj.bambood_id == id){
    if (my_hitboxID.hbox_num == 1){
        ate_player_bamboo = true;
        hit_player_obj.should_make_shockwave = false;
    } else
        hit_player_obj.bambood = false;
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1){
     hit_player_obj.orig_knock /= hit_player_obj.knockback_adj;
}

if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1){
     hit_player_obj.orig_knock /= hit_player_obj.knockback_adj;
}

if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1){
     hit_player_obj.orig_knock /= hit_player_obj.knockback_adj;
}

if (hit_player_obj.affected_by_cloud) {
	hit_player_obj.should_make_shockwave = false;
}