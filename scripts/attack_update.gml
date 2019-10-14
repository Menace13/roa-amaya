//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL_AIR){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

if (attack == AT_UTILT){
	if (window == 1 && window_timer == 23){
		x = x - (28 * spr_dir);
	}
	if (window == 3 && window_timer == 3){
		x = x - (12 * spr_dir);
	}
	if (window == 3 && window_timer == 7){
		x = x - (22 * spr_dir);
	}
	if (free && window == 3 && window_timer >= 5){
		attack_end();
		vsp = 3.5;
		hsp = -2 * spr_dir
		attack = 0;
	}
}


if (attack == AT_DTILT){
	if (window == 3 && window_timer >= 11 && has_hit){
		iasa_script();
	}
}

if (attack == AT_DSTRONG){
    if (window == 3 && window_timer == 1 && !hitpause){
        with (asset_get("obj_article1")){
            if (player_id == other.id && state == 1){
                state = 3;
                state_timer = 0;
            }
        }
    }
}

if (attack == AT_NSPECIAL){
    if (window == 1 && window_timer == 1)
        ate_player_bamboo = false;
    if (window == 2){
        // this code moves the player toward the 2nd hitbox, guaranteeing that it hits
        with (asset_get("oPlayer")) {
            if (hitpause && bambood && bambood_id == other.id && state_cat == SC_HITSTUN && hit_player_obj == other.id
            && last_attack == other.attack && state != PS_FROZEN){
                x += (other.x+40*other.spr_dir - x)/5;
                if (free){
                    y += (other.y - y) / 5;
                }
            }
        }
        if (!hitpause && ate_player_bamboo){
            window = 5;
            window_timer = 0;
        }
    }
    if (window == 4){
        if (window_timer > 30 && window_timer < 41){
            //HEAL 10 DAMAGE
            take_damage(player, -1, -1);
            outline_color = [ 0, 127, 0 ];
            init_shader();
            outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
        }
        if (window_timer == 41){
            init_shader();
        }
    }
    if (window == 5 && window_timer == get_window_value(attack, 5, AG_WINDOW_LENGTH)){
        window = 6;
        window_timer = 0;
    }
    if (window == 6){
        if (window_timer > 7 && window_timer < 13){
            //HEAL 5 DAMAGE
            take_damage(player, -1, -1);
            outline_color = [ 0, 127, 0 ];
            init_shader();
            outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
        }
        if (window_timer == 13){
            init_shader();
        }
    }
}

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
    if (attack == AT_FSPECIAL_AIR && window < 3 && !free){
        attack = AT_FSPECIAL;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if (attack == AT_FSPECIAL && window < 3 && free){
        attack = AT_FSPECIAL_AIR;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }

    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 20; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
        //TRANSITION INTO WINDOW 4 ON HIT
        var should_swing = has_hit;
        with (asset_get("obj_article1")){
            if (player_id == other.id && state == 1){
                with (asset_get("pHitBox")){
                    if (player == other.player && attack == other.player_id.attack && hbox_num == 1
                    && instance_position(x, y, other.id)){
                        should_swing = true;
                        break;
                    }
                }
            }
        }
        with (asset_get("pHitBox")){
            if (type == 2 && player_id == other.id && attack == AT_USPECIAL){
                with (asset_get("pHitBox")){
                    if (player == other.player && attack == other.player_id.attack && hbox_num == 1
                    && instance_position(x, y, other.id)){
                        should_swing = true;
                        other.hitstop = 4;
                        other.in_hitpause = true;
                        break;
                    }
                }
            }
        }
        if (should_swing){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
            has_hit = false;
            has_hit_player = false;
        }
    }
    
    if (window < 3 || (window == 3 && !free) || window == 5){
        can_move = false;
    }
    
    can_wall_jump = false;
    if (window == 2 || window == 3 || window == 6)
        can_wall_jump = true;
    
    //END OF WINDOW CODE
    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        if (window == 4 || window == 5){
            window++;
            window_timer = 0;
            if (window == 6){
                //since the window is changed manually, the speed boost is not automatically applied
                hsp = get_window_value(attack, window, AG_WINDOW_HSPEED)*spr_dir;
                vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
            }
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 1){
        if (window_timer == 1){
            bamboo = noone;
            with (asset_get("pHitBox")){
                if (player == other.player && select == other.select && attack == AT_USPECIAL
                && ((point_distance(x,y,other.x,other.y-other.char_height*.5) < 450 && x < other.x+10)
                || (x > view_get_xview() - 32 && x < view_get_xview() + view_get_wview() + 32 && y < view_get_yview() + view_get_hview()))){
                    other.bamboo = id;
                    break;
                }
            }
            if (bamboo != noone){
                window = 4;
                window_timer = 0;
                //freeze the bamboo stick in place
                bamboo.hsp = 0;
                bamboo.vsp = 0;
                bamboo.grav = 0;
                bamboo.hitbox_timer = 0; //reset the bamboo's lifespan
            } else {
                if (free && vsp > -10)
                    vsp = -10;
            }
        }
    }
    
    if (window == 4){
        if (bamboo != noone){
            spr_dir = sign(bamboo.x - x);
            if (spr_dir == 0) spr_dir = 1;
            var bamboo_dir = point_direction(x,y-char_height*.5,bamboo.x,bamboo.y);
            bamboo_dir = 270 - bamboo_dir;
            if (bamboo_dir > 180) bamboo_dir -= 360;
            if (bamboo_dir < -180) bamboo_dir += 360;
            bamboo_dir = abs(bamboo_dir);
            var temp_img = 0;
            if (bamboo_dir > 144) temp_img = 4;
            else if (bamboo_dir > 108) temp_img = 3;
            else if (bamboo_dir > 72) temp_img = 2;
            else if (bamboo_dir > 36) temp_img = 1;
            set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11+temp_img);
            set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16+temp_img);
        }
    }
    
    //TETHERING TO THE BAMBOO
    if (window == 6 && !hitpause){
        if (bamboo != noone && instance_exists(bamboo)){
            //zoom toward the bamboo
            var bamboo_dir = point_direction(x, y-char_height*.5, bamboo.x, bamboo.y);
            var tether_speed = 32;
            hsp = lengthdir_x(tether_speed, bamboo_dir);
            vsp = lengthdir_y(tether_speed, bamboo_dir);
            
            //stop when close
            if (point_distance(x, y-char_height*.5, bamboo.x, bamboo.y) < 32){
                set_state(PS_IDLE_AIR);
                hsp = clamp(hsp, -6, 6);
                vsp = clamp(vsp, -10, -4);
                destroy_hitboxes();
                bamboo.destroyed = 1;
                //instance_destroy(bamboo);
            }
        } else {
            set_state(PS_IDLE_AIR);
            hsp = clamp(hsp, -6, 6);
            vsp = clamp(vsp, -10, -4);
            destroy_hitboxes();
        }
        move_cooldown[AT_USPECIAL] = 100;
    }
    
    //END OF WINDOW CODE
    if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        if (window == 1){
            var throw_speed = 7;
            if (special_down){
                throw_speed = 11;
            }
            var throw_angle = 65;
            if (!joy_pad_idle){
                var angle_diff = 90 - joy_dir;
                if (angle_diff < -180) angle_diff += 360;
                if (angle_diff > 180) angle_diff -= 360;
                var angle_change = 25*(dsin(angle_diff)*dsin(angle_diff));
                throw_angle -= sign(angle_diff)*spr_dir*angle_change;
            }
            set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, throw_speed*dcos(throw_angle));
            set_hitbox_value(attack, 1, HG_PROJECTILE_VSPEED, throw_speed*-dsin(throw_angle));
        }
        if (window == 4 || window == 5){
            window++;
            window_timer = 0;
        }
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 1){
        var temp_x = 32;
        var max_temp_x = 96;
        if (left_down) max_temp_x -= 48*spr_dir;
        if (right_down) max_temp_x += 48*spr_dir;
        while (temp_x < max_temp_x
        && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
        || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
        && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
            temp_x++;
        }
        var stalk = instance_create(x+temp_x*spr_dir, y, "obj_article1");
        stalk.player_id = id;
        stalk.player = player;
        stalk.spr_dir = spr_dir;
        
        move_cooldown[AT_DSPECIAL] = 60;
        move_cooldown[AT_DSPECIAL_AIR] = 60;
    }
}

if (attack == AT_DSPECIAL_AIR){
    if (!free){
        if (window == 1){
            attack = AT_DSPECIAL;
            hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE);
        }
        else {
            set_state(PS_LAND);
        }
    }
    if (window == 2 && window_timer == 1){
        move_cooldown[AT_DSPECIAL] = 60;
        move_cooldown[AT_DSPECIAL_AIR] = 60;
    }
}