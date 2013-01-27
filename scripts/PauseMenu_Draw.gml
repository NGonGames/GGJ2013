var dc = draw_get_color();

draw_set_color(c_black);
draw_rectangle(0, 0, width, height, 0);
draw_set_color(c_white);

draw_text(kx, ky, "Keys: " + string(GameData.num_keys)); 

draw_set_color(dc);
