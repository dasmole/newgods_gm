key_room_number = irandom(count_rooms("all") - 1);

current_key_room = 0;

show_debug_message("Key room will be number " + string(key_room_number));

var i;
for (i = 0; i < global.overworld_width; i++) {
    var j;
    for (j = 0; j < global.overworld_height; j ++) {
        if (global.overworld_ints[i, j] > 0) {
            show_debug_message("found a candidate.");
            if (current_key_room == key_room_number) {
                global.key_x = i;
                global.key_y = j;
            }
            current_key_room += 1;
        }
    }
}
show_debug_message("key_room x is: " + string(global.key_x));
show_debug_message("key_room y is: " + string(global.key_y));
