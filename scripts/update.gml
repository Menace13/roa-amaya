//update

if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_DASH) {
    max_jump_hsp = 6.9;
} else if(state == PS_WAVELAND) {
    max_jump_hsp = 3;
} else if(state != PS_JUMPSQUAT) {
    max_jump_hsp = 2.5;
}

var FRAMES_PER_TICK = 10 * CLOUD_MULT; // number of frames per tick of damage

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        bambood = false;
    }
	if (id != other.id) {
		if (leaving_cloud) {
			hitstun_grav = normal_hitstun_grav;
			air_friction = normal_air_friction;
			dumb_di_mult = 1;
			vsp *= other.CLOUD_MULT;
			hsp *= other.CLOUD_MULT;
			time_in_cloud = 0;
			leaving_cloud = false;
		}
		if (time_in_cloud > 0 && time_in_cloud % FRAMES_PER_TICK == 0) {
			take_damage(player, other.player, 1);
		}
	}
}

/*
connect = opponents[hit_player_obj];
if (place_meeting(x, y, dampcloud) && place_meeting(x, y, dampcloud) && connect.free) {
	connect.air_max_speed = connect.air_max_speed / 2;
	connect.air_accel = connect.air_accel / 2;
	connect.hsp = connect.old_hsp / 2;
	connect.vsp = connect.old_vsp / 2;
} else {
connect.air_max_speed = connect.air_max_speed;
connect.air_accel = connect.air_accel;
}
*/