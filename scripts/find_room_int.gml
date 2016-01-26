///arguments: (x, y) location of room in overworld map
world_x = argument0;
world_y = argument1;
new_room = ds_map_create();

north_room_int = global.overworld_ints[world_x, (world_y - 1)];
south_room_int = global.overworld_ints[world_x, (world_y + 1)];
east_room_int = global.overworld_ints[world_x + 1, world_y];
west_room_int = global.overworld_ints[world_x - 1, world_y];


//check if anything but -1 or 0 surrounding. If not, remain -1
if (global.overworld_ints[(world_x + 1), world_y] <= 0) &&
   (global.overworld_ints[world_x, (world_y - 1)] <= 0) &&
   (global.overworld_ints[(world_x - 1), world_y] <= 0) &&
   (global.overworld_ints[world_x, (world_y + 1)] <= 0) {
    return -1;
}
   
if !(has_adjacent_door(world_x, world_y)){
    return -1;
}

//check and assign east
if (east_room_int == -1) {
    ds_map_add(new_room, "e", irandom(1));
} else {
    east_room = int_to_room_map(east_room_int);
    ds_map_add(new_room, "e", ds_map_find_value(east_room, "w"));
}


//check and assign north
if (north_room_int == -1) {
    ds_map_add(new_room, "n", irandom(1));
} else {
    north_room = int_to_room_map(north_room_int);
    ds_map_add(new_room, "n", ds_map_find_value(north_room, "s"));
}


//check and assign west
if (west_room_int == -1) {
    ds_map_add(new_room, "w", irandom(1));
} else {
    west_room = int_to_room_map(west_room_int);
    ds_map_add(new_room, "w", ds_map_find_value(west_room, "e"));
}


//check and assign south
if (south_room_int == -1) {
    ds_map_add(new_room, "s", irandom(1));
} else {
    south_room = int_to_room_map(south_room_int);
    ds_map_add(new_room, "s", ds_map_find_value(south_room, "n"));
}

return room_map_to_int(new_room);
