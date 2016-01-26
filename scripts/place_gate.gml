gate_room_number = irandom(count_rooms("gate_rooms") - 1);

current_gate_room = 0;

show_debug_message("Gate room will be number " + string(gate_room_number));

var i;
for (i = 0; i < global.overworld_width; i++) {
    var j;
    for (j = 0; j < global.overworld_height; j ++) {
        if (ds_map_exists(global.gate_rooms, global.overworld[i, j])) {
            show_debug_message("found a candidate.");
            if (current_gate_room == gate_room_number) {
                global.gate_x = i;
                global.gate_y = j;
            }
            current_gate_room += 1;
        }
    }
}
show_debug_message("gate_room x is: " + string(global.gate_x));
show_debug_message("gate_room y is: " + string(global.gate_y));
