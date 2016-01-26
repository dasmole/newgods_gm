globalvar overworld;
globalvar overworld_ints;
globalvar overworld_width;
globalvar overworld_height;
globalvar room_listing;
globalvar current_room_x;
globalvar current_room_y;
globalvar from_dir;
globalvar player_x;
globalvar player_y;
globalvar damage_timeout;
globalvar player1_id;
globalvar has_key;


global.min_rooms = 50;
global.overworld_width = 10;
global.overworld_height = 10;
global.current_room_x = 5;
global.current_room_y = 5;
global.from_dir = "none";
global.damage_timeout = 20;
global.has_key = false;

//KEY ROOMS
globalvar key_x;
globalvar key_y;
global.key_x = 0;
global.key_y = 0;

//GATE ROOMS
globalvar gate_rooms;
global.gate_rooms = ds_map_create()
globalvar gate_x;
globalvar gate_y;
global.gate_x = 0;
global.gate_y = 0;
init_gate_rooms();

//ALL THE ROOMS
global.room_listing[0] = rm_overland_00000;
global.room_listing[1] = rm_overland_00001;
global.room_listing[2] = rm_overland_00002;
global.room_listing[3] = rm_overland_00003;
global.room_listing[4] = rm_overland_00004;
global.room_listing[5] = rm_overland_00005;
global.room_listing[6] = rm_overland_00006;
global.room_listing[7] = rm_overland_00007;
global.room_listing[8] = rm_overland_00008;
global.room_listing[9] = rm_overland_00009;
global.room_listing[10] = rm_overland_00010;
global.room_listing[11] = rm_overland_00011;
global.room_listing[12] = rm_overland_00012;
global.room_listing[13] = rm_overland_00013;
global.room_listing[14] = rm_overland_00014;
global.room_listing[15] = rm_overland_00015;

