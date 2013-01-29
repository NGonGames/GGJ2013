var file;
file = file_text_open_write(working_directory + "\dat1.sav");

file_text_write_real(file, save_x);
file_text_writeln(file);

file_text_write_real(file, save_y);
file_text_writeln(file);

file_text_write_real(file, save_room);
file_text_writeln(file);

file_text_write_real(file, player_weapon);
file_text_writeln(file);

var i;
for (i = 0; i < 6; i += 1) {
    file_text_write_real(file, item[i]);
    file_text_writeln(file);
}
file_text_close(file);
