width = display_get_gui_width();
height = display_get_gui_height();

X = 0;
Y = 1;
W = 2;
H = 3;

kx = 100;
ky = 100;

instance_deactivate_all(true);
instance_activate_object(GameData);
instance_activate_object(Input);
