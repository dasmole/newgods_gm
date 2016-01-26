var i;
for (i = 0; i < global.overworld_width; i++) {
    var j;
    for (j = 0; j < global.overworld_height; j++) {
        if (global.overworld_ints[i, j] == -1) {
            global.overworld[i, j] = rm_overland_water;
        } else {
            global.overworld[i, j] = global.room_listing[global.overworld_ints[i, j]];
        }
    }
}

