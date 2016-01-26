type = argument0;

rooms_to_return = 0;

var i;
for (i = 0; i < global.overworld_width; i++) {
    var j;
    for (j = 0; j < global.overworld_height; j++) {
        if (type == "all") {
            if (global.overworld_ints[i, j] > 0) rooms_to_return += 1;
        }
        if (type == "gate_rooms") {
            if (ds_map_exists(global.gate_rooms, global.overworld[i, j])) {
                rooms_to_return += 1;
            }
        }                  
    }
}

return rooms_to_return;
