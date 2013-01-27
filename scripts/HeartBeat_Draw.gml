var w = display_get_gui_width();

draw_sprite(health_sprite, 0, w, 0);
draw_sprite_part(health_sprite, 1, 0, 0, 128 * (Player.hp / 100), 34, w - 128, 0);
draw_sprite(health_sprite, 2, w, 0);

if (heartCur > 80) {
    draw_sprite(hb5_sprite, -1, w, 34);
} else if (heartCur > 60) {
    draw_sprite(hb4_sprite, -1, w, 34);
} else if (heartCur > 40) {
    draw_sprite(hb3_sprite, -1, w, 34);
} else if (heartCur > 20) {
    draw_sprite(hb2_sprite, -1, w, 34);
} else {
    draw_sprite(hb1_sprite, -1, w, 34);
}
