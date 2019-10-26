set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 27);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 28);
set_window_value(AT_UTILT, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2)
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 87);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, .3);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2)
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -7);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 68);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, .3);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));