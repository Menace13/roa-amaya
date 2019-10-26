//article2_update

if (init == 0){
    init = 1;
    
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
}

result = point_distance(0, 0, hsp, vsp) / connect.knockback_adj;

create_hitbox(AT_NSPECIAL, 1, x-11, y-40);
set_hitbox_value(AT_NSPECIAL,2,HG_BASE_KNOCKBACK,result);
set_hitbox_value(AT_NSPECIAL,HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL,HG_HITBOX_EFFECT, 8);