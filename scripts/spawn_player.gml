if (global.from_dir == "n") {
    //instance_create(global.player_x, 30, obj_player1);
    global.player1_id.x = global.player_x;
    global.player1_id.y = 30;
}
if (global.from_dir == "s") {
    //instance_create(global.player_x, 410, obj_player1);
    global.player1_id.x = global.player_x;
    global.player1_id.y = 410;
}
if (global.from_dir == "w") {
    //instance_create(30, global.player_y, obj_player1);
    global.player1_id.x = 30;
    global.player1_id.y = global.player_y;
}
if (global.from_dir == "e") {
    //instance_create(620, global.player_y, obj_player1);
    global.player1_id.x = 620;
    global.player1_id.y = global.player_y;
}
if (global.from_dir == "none") {
    global.player1_id = instance_create(160, 110, obj_player1);
}

