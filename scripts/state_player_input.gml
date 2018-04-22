///state_player_input();

//Waits for the player's input to roll die

with o_roll_btn {
    visible = true;
    
    //If pressed disappear, produce a number, and go to move state
    if mouse_check_button_released(mb_left){
        visible = false;
        roll = random_range(1,6);
        draw_message(string(roll),3);
    }
}
