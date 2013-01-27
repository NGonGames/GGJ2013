width = display_get_gui_width();
height = display_get_gui_height();

X = 0;
Y = 1;
W = 2;
H = 3;


hp = Player.hp;
heartbeat = Player.heart.heartCur;
instance_deactivate_all(true);
instance_activate_object(GameData);
instance_activate_object(Input);


healthW = 319;
healthH = 63;
healthX = 458 - (healthW/2);
healthY = 111 - (healthH/2);

hbW = 319;
hbH = 63;
hbX = 458 - (hbW/2);
hbY = 242 - (hbH/2);

kx = 825;
ky = 50;

lvlX = 825;
lvlY = 180;
