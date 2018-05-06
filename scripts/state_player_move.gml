///state_player1_move(player);


with argument0 {
    if destination > position {
        var next = position + 1;
        if x != ds_list_find_value(o_track.track,next).x {
            x ++;
            isMoving = true;
        } else{
            next += 1;
            position +=1;
        }
    } else if isMoving{
        isMoving = false;
        o_run_animation.alarm[0] = room_speed * 1;
        
        //Go to next state, depending on whose turn it is
        switch argument0 {
            case o_player1: o_run_animation.next = states.player2_roll; break;
            case o_player2: o_run_animation.next = states.player3_roll; break;
            case o_player3: o_run_animation.next = states.player4_roll; break;
            case o_player4: o_run_animation.next = states.player1_roll; break;
        }
    }
    
    if isMoving and not instance_exists(o_run_animation){
        instance_create(room_width/2, room_height/2, o_run_animation);
    }
}

/*
//Moves the player
if !instance_exists(o_run_animation) {
    
    with o_tile {
        if position == o_player1.destination {
            o_player1.position = position;
        }
    }
    
    instance_create(room_width/2, room_height/2, o_run_animation);
    
    o_run_animation.alarm[0] = room_speed * 5;
    o_run_animation.next = states.player2_roll;
    
    target_x = ds_list_find_value(o_track.track,o_player1.destination).x - 8;
}

if o_player1.x < target_x {
    o_player1.x += 1;
}


/*
1) If player on destination - stop
2) Else, if obstacle, stop
3) Else, position + 1
