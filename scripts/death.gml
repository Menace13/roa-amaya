//death.gml

with (asset_get("obj_article1")){
    if (player_id == other.id && state == 1){
        state = 2;
        state_timer = 0;
    }
}

with (asset_get("oPlayer")){
    if (bambood && bambood_id == other.id){
        bambood = false;
    }
}