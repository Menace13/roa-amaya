//post-draw

if (bambood && other_player_id == bambood_id){
    var bamboo_sprite = -1;
    with (bambood_id){
        //sprite_get can only be called directly by the workshop character
        if (other.land_time < 6)
            bamboo_sprite = sprite_get("mark_small_front");
        else
            bamboo_sprite = sprite_get("mark_front");
        shader_start();
    }
    if (bamboo_sprite != -1)
        draw_sprite(bamboo_sprite, get_gameplay_time()*.3, x, y-char_height*.5);
    with (bambood_id){
        shader_end();
    }
}