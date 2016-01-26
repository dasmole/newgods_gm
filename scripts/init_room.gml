spawn_player();
view_visible[0] = true;
instance_create(0, 0, obj_controllable);
if ((global.current_room_x == global.gate_x) && (global.current_room_y == global.gate_y)) {
    instance_create(320, 220, obj_dungeon_gtwy_yellowgreen);
}
if ((global.current_room_x == global.key_x) && (global.current_room_y == global.key_y)) {
    instance_create(300, 200, obj_key);
}
