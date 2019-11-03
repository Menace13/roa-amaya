set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 77);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 135);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 1, HG_DRIFT_MULTIPLIER, .8);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 88);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, .7);
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, .9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 37);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FTILT, 3, HG_SDI_MULTIPLIER, .7);
set_hitbox_value(AT_FTILT, 3, HG_DRIFT_MULTIPLIER, .9);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));