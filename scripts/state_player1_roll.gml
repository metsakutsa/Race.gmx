///state_player1_roll();

//Draws button and waits for the player's input to roll die
if !instance_exists(o_roll_btn){
    instance_create(room_width/2, room_height/2, o_roll_btn);
} else {
    
    with o_roll_btn {
        if mouse_check_button_released(mb_left) and visible {
            roll = irandom_range(1,4);
            visible = false;
            draw_message(string(roll),3);
            alarm[0] = room_speed * 3;
            
            o_player1.roll = roll;
            o_player1.destination = o_player1.position + roll;
        }
    }
}
