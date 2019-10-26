//update

if (!free || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

if (state == PS_DASH) {
    max_jump_hsp = 7;
} else if(state == PS_WAVELAND) {
    max_jump_hsp = 3;
} else if(state != PS_JUMPSQUAT) {
    max_jump_hsp = 2.5;
}

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        bambood = false;
    }
}

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