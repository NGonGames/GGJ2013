var file;
file = file_text_open_read(working_directory + "\dat1.sav");

save_x = file_text_read_real(file);
file_text_readln(file);

save_y = file_text_read_real(file);
file_text_readln(file);

save_room = file_text_read_real(file);
file_text_readln(file);

weapon = file_text_read_real(file);
file_text_readln(file);


var i;
for (i = 0; i < 8; i += 1) {
    weapon_unlocked[i] = file_text_read_real(file);
    file_text_readln(file);
}

file_text_close(file);

global.player_start_x = save_x;
global.player_start_y = save_y;

room_goto(save_room);
