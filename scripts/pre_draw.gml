shader_start();

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_USPECIAL){
            if (window == 5 || window == 6){
                var bamboo_dir = point_direction(x,y-56,bamboo.x,bamboo.y);
                if (spr_dir == -1) bamboo_dir += 180;
                var bamboo_dist = point_distance(x,y-56,bamboo.x,bamboo.y);
                
                //since the arm sprite's origin isn't centered, do some math
                if (bamboo_dist < 7) bamboo_dist = 7; //needs minimum distance to prevent arcsin errors
                var arm_dir = darcsin(6 / bamboo_dist);
                arm_dir = bamboo_dir - arm_dir*spr_dir;
                if (spr_dir == -1) arm_dir += 180;
                
                if (bamboo_dist > 64){
                    var rope_x = x + lengthdir_x(6, arm_dir+90*spr_dir) + lengthdir_x(54, arm_dir);
                    var rope_y = y - 56 + lengthdir_y(6, arm_dir+90*spr_dir) + lengthdir_y(54, arm_dir);
                    
                    var rope_length = 0;
                    var max_rope_length = point_distance(rope_x, rope_y, bamboo.x, bamboo.y);
                    if (window == 5){
                        var window_length = get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH);
                        max_rope_length = max_rope_length * (window_timer / window_length);
                    }
                    while (rope_length < max_rope_length-16){
                        draw_sprite_ext(sprite_get("uspecial_rope"), 0, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                        rope_x += lengthdir_x(16, arm_dir);
                        rope_y += lengthdir_y(16, arm_dir);
                        rope_length += 16;
                    }
                    draw_sprite_ext(sprite_get("uspecial_rope"), 1, rope_x, rope_y, 1, 1, arm_dir, c_white, 1);
                }
                
                draw_sprite_ext(sprite_get("uspecial_arm"), window-5, x, y-56, 1, spr_dir, arm_dir, c_white, 1);
            }
        }
    break;
}

shader_end();