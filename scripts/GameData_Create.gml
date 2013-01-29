instance_create(0, 0, Input);

global.player_start_x = noone;
global.player_start_y = noone;
/// TODO: Create Logger

num_keys = 0;
level = 1;

item[0] = 1;
item[1] = 0;
item[2] = 0;
item[3] = 0;
item[4] = 0;
item[5] = 0;

save_x = 0;
save_y = 0;

weapon = 0;

for (var i = 0; i < 16; ++i) {
    key[i] = 0;
}
for (var i = 0; i < 16; ++i) {
    gate[i] = 0;
}
