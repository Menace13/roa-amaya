//debug-draw

// hit_player_obj.vsp = 0;
// hit_player_obj.hsp = 0;
cool = asset_get("obj_article2");

with (cool) {
    draw_debug_text(x,y,"origin: " + string(x) + " , " +  string(y));
    draw_debug_text(x,y+20,"owner: " + string(player_id));
    draw_debug_text(x,y+40,"meeting: " + string(place_meeting(x,y,player_id.hit_player_obj.id)));
}
with (asset_get("oPlayer")){
    if (id != other.id) {
        draw_debug_text(x,y, "self: " + string(id));
        draw_debug_text(x,y+20, "affected_by_cloud: " + string(affected_by_cloud));

    }
}

// draw_debug_text(x,y,"has_article: " + string(bool(cool)));
// draw_debug_text(x,y+20,"hit_player_obj: " + string(hit_player_obj));