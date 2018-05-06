///state_idle();

if instance_exists(o_player1){
    tile = ds_list_find_value(o_track.track, o_player1.position);
    if o_player1.position == tile.position {
        o_player1.x = tile.x;
        o_player1.y = tile.y;
    }
}

if instance_exists(o_player2){
    tile = ds_list_find_value(o_track.track, o_player2.position);
    if o_player2.position == tile.position {
        o_player2.x = tile.x;
        o_player2.y = tile.y;
    }
}

if instance_exists(o_player3){
    tile = ds_list_find_value(o_track.track, o_player3.position);
    if o_player3.position == tile.position {
        o_player3.x = tile.x;
        o_player3.y = tile.y;
    }
}

if instance_exists(o_player4){
    tile = ds_list_find_value(o_track.track, o_player4.position);
    if o_player4.position == tile.position {
        o_player4.x = tile.x;
        o_player4.y = tile.y;
    }
}
