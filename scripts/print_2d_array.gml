//arguments(x, y, array)

var i;
for (i = 0; i < argument0; i++) {
    some_string = "";
    var j;
    for (j = 0; j < argument1; j++) {
        some_string = some_string + string(argument2[j, i]) + " ";
    }
    show_debug_message(some_string);
}
