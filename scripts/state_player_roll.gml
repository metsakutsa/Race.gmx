///state_player1_roll(player);

//Draws button and waits for the player's input to roll die
if !instance_exists(o_roll_btn){
    instance_create(room_width/2, room_height/2, o_roll_btn);
} else{
    if argument0 == o_player1 {
        with o_roll_btn {
            if alarm[0] < 0 {
                visible = true;
            }
            if mouse_check_button_released(mb_left) and visible{
                roll = irandom_range(1,4);
                visible = false;
                draw_message(argument0.name + ": " + string(roll),3);
                alarm[0] = room_speed * 3;
                
                argument0.roll = roll;
                argument0.destination = argument0.position + roll;
            }
        }
    }
    else{
        if o_roll_btn.alarm[0] < 0{
            var roll = irandom_range(1,4);
            draw_message(argument0.name + ": " + string(roll),3);
            o_roll_btn.alarm[0] = room_speed * 3;
            
            argument0.roll = roll;
            argument0.destination = argument0.position + roll;
        }
    }
}
