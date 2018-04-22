///change_state(statename);

with o_state_machine {
    if argument0 != state {
        previous_state = state;
        state = argument0;
    }
}
