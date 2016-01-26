///has_adjacent_door takes x, y coords as ints, and returns true/false on whether
///that room has a door currently adjacent

world_x = argument0;
world_y = argument1;

//check north
north_room = int_to_room_map(global.overworld_ints[world_x, world_y - 1]);
if (ds_map_find_value(north_room, "s") == 1) return true;

//check south
south_room = int_to_room_map(global.overworld_ints[world_x, world_y + 1]);
if (ds_map_find_value(south_room, "n") == 1) return true;

//check east
east_room = int_to_room_map(global.overworld_ints[world_x + 1, world_y]);
if (ds_map_find_value(east_room, "w") == 1) return true;

//check west
west_room = int_to_room_map(global.overworld_ints[world_x - 1, world_y]);
if (ds_map_find_value(west_room, "e") == 1) return true;


//fall through to false
return false;
