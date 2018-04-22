///state_player1_move(roll);

//Moves the player
if !instance_exists(o_run_animation) {
    with o_tile {
        if position == o_player1.destination {
            o_player1.position = position;
        }
    }

    instance_create(room_width/2, room_height/2, o_run_animation);
    
    o_run_animation.alarm[0] = room_speed*5;
    o_run_animation.next = states.player2_roll;
    
    target_x = ds_list_find_value(o_track.track,o_player1.destination).x;
}

if o_player1.x < target_x {
    o_player1.x += 1;
}
