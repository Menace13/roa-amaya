//article2_update
if (init == 0) {
	with (asset_get("obj_article2")) {
		if (init == 1) {
			instance_destroy(self);
		}
	}
	init = 1;
}

var l_owner = player_id;
var cloud_multiplier = player_id.CLOUD_MULT;

with (asset_get("oPlayer")) {
	if (id != l_owner) {
		if (affected_by_cloud) {
			if (hitpause && hitstop <= 0) {
				orig_knock /= cloud_multiplier;
			}
			if (state == PS_HITSTUN) {
				if (!hitpause) hitstun += 1 - (1 / cloud_multiplier);
				hitstun_grav = normal_hitstun_grav / (cloud_multiplier * cloud_multiplier);
				air_friction = normal_air_friction / (cloud_multiplier * cloud_multiplier);
				dumb_di_mult = 1 / (cloud_multiplier * cloud_multiplier);
			} else {
				affected_by_cloud = false;
				leaving_cloud = true;
			}
		}
		with (asset_get("obj_article2")) {
			if (player_id == l_owner) {
				if (place_meeting(x,y,other.id)) {
					if (!other.affected_by_cloud && other.state == PS_HITSTUN) {
						other.hsp /= cloud_multiplier;
						other.vsp /= cloud_multiplier;
						other.affected_by_cloud = true;
					}
				} else {
					if (other.affected_by_cloud) {
						other.leaving_cloud = true;
					}
					other.affected_by_cloud = false;
					
				}
			}
		}

	}
}

/*
with (asset_get("obj_article2")) {
    if (player_id.hit_player_obj && player_id.hit_player_obj != id  && place_meeting(x,y,player_id.hit_player_obj.id)) {
        with (player_id) {
            with (hit_player_obj) {
                if (state == PS_HITSTUN && !affected_by_cloud) {        
                    vsp /= 2;
                    hsp /= 2;
                    affected_by_cloud = true;
                }
            }
        }
    } else {
        with (player_id.hit_player_obj) {
            affected_by_cloud = false;
        }
    }
}
*/
state_timer++;
if (state_timer > 600) {
	with (asset_get("oPlayer")) {
		if (id != l_owner && affected_by_cloud) {
			with (asset_get("obj_article2")) {
				if (player_id == l_owner) {
					if (place_meeting(x,y,other.id)) {
						other.affected_by_cloud = false;
						other.leaving_cloud = true;
					}
				}
			}
		}
	}
	instance_destroy(self);
}