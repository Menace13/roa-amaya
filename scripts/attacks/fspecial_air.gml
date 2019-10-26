set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_syl_dstrong"));
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -12);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));