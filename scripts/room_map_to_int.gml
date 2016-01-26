int_to_return = 0;
int_to_return += (ds_map_find_value(argument0, "e") * 8);
int_to_return += (ds_map_find_value(argument0, "n") * 4);
int_to_return += (ds_map_find_value(argument0, "w") * 2);
int_to_return += (ds_map_find_value(argument0, "s") * 1);
return int_to_return;
