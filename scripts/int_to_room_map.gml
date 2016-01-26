room_map = ds_map_create();
if ((argument0 div 8) == 1) {
    ds_map_add(room_map, "e", 1);
} else {
    ds_map_add(room_map, "e", 0);
}

next_bit = argument0 mod 8;

if ((next_bit div 4) == 1) {
    ds_map_add(room_map, "n", 1);
} else {
    ds_map_add(room_map, "n", 0);
}

next_bit = next_bit mod 4;

if ((next_bit div 2) == 1) {
    ds_map_add(room_map, "w", 1);
} else {
    ds_map_add(room_map, "w", 0);
}

next_bit = next_bit mod 2;


if (next_bit == 1) {
    ds_map_add(room_map, "s", 1);
} else {
    ds_map_add(room_map, "s", 0);
}

return room_map;
