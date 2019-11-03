//article2_update
if (init == 0) { // article initialization code
	with (asset_get("obj_article2")) {
		if (init == 1) {
			instance_destroy(self); // kill old cloud
		}
	}
	state = 1;
	state_timer = 0;
	init = 1;
}

var l_owner = player_id;
var cloud_multiplier = player_id.CLOUD_MULT;

if (state == 1) {
	if (state_timer >= 90) { // state exit code
		state = 2;
		state_timer = 0;
	} else { // state continue code
		with (asset_get("pHitBox")) {
			if (player_id != l_owner && proj_break == 0) {
				with (asset_get("obj_article2")) {
					if (player_id == l_owner) {
						if (place_meeting(x,y,other.id)) {
							state = 3;
							state_timer = 0;
						}
					}
				}
			}
		}
	}
}

if (state == 2) {
	if (state_timer == 0) { // state enter code
		/* if you want to change the animation when the cloud becomes
		 * active, that should go here; or, to change the animation
		 * every frame, you can do that in the state continue code
		 */
	}
	if (state_timer >= 600) { // state exit code
		state = 3;
		state_timer = 0;
	} else { // state continue code
		with (asset_get("oPlayer")) {
			if (id != l_owner) {
				if (affected_by_cloud) {
					if (hitpause && hitstop <= 0) {
						orig_knock /= cloud_multiplier;
					}
					if (state == PS_HITSTUN) {
						if (!hitpause) {
							hitstun += 1 - (1 / cloud_multiplier);
						}
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
							if (!other.hitpause) {
								if (other.state == PS_HITSTUN) {
									other.time_in_cloud += 1;
								} else if (place_meeting(x,y,other.hurtboxID)) {
									other.time_in_cloud += cloud_multiplier;
								}
							}
							if (!other.affected_by_cloud && other.state == PS_HITSTUN) {
								other.hsp /= cloud_multiplier;
								other.vsp /= cloud_multiplier;
								other.affected_by_cloud = true;
							}
						} else {
							if (other.affected_by_cloud) {
								other.leaving_cloud = true;
							}
							other.time_in_cloud = 0;
							other.affected_by_cloud = false;
						}
					}
				}
			}
		}
	}
}

if (state == 3) {
	/* if you want a special animation when the cloud is dying,
	 * that would go here, and delay the instance_destroy()
	 * until the state_timer reaches a certain time
	 */
	with (asset_get("oPlayer")) {
		if (id != l_owner && affected_by_cloud) {
			with (asset_get("obj_article2")) {
				if (player_id == l_owner) {
					if (place_meeting(x,y,other.id)) {
						other.time_in_cloud = 0;
						other.affected_by_cloud = false;
						other.leaving_cloud = true;
					}
				}
			}
		}
	} 
	instance_destroy(self);
}

// end of frame code
state_timer++;