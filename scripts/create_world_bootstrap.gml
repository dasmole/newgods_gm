do {
    create_overworld_ints(global.overworld_width, global.overworld_height);
    create_overworld_rooms();
    place_gate();
    place_key();
    print_2d_array(global.overworld_width, global.overworld_height, global.overworld_ints);
    show_debug_message("total rooms: " + string(count_rooms("all")));
    show_debug_message("available gate rooms: " + string(count_rooms("gate_rooms")));
} until (count_rooms("all") > global.min_rooms)

