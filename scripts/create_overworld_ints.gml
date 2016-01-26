///initializes and assigns room to the 2d array overworld. Pass (x_dimension, y_dimension) as ints

//initialize. j will be equivilant to 'x', and i will be equivilant to y
randomize()

var i;
for (i = 0; i < argument0; i++) {
    var j;
    for (j = 0; j < argument1; j++) {
        if ((j == 0) || (i == 0) || (j == (argument1 - 1)) || (i == (argument0 -1))) {
            global.overworld_ints[j, i] = 0;
        } else {
            global.overworld_ints[j, i] = -1;
        }
    }
}

//init starting place
global.overworld_ints[global.current_room_x, global.current_room_y] = 4;
global.overworld_ints[global.current_room_x, global.current_room_y - 1] = 15;


//loop through  map finding new terrain until all undecided coordinates (-1 value) are decided
var still_finding;
still_finding = true;

while still_finding {
    still_finding = false;
    for (i = 1; i < (argument0 - 1); i++) {
        var j;
        for (j = 1; j < (argument1 - 1); j++) {
            if (global.overworld_ints[j,i] == -1) {
                new_room_int = find_room_int(j, i);
                if (new_room_int != -1) still_finding = true;
                global.overworld_ints[j, i] = new_room_int;
            }
        }
    }
}

