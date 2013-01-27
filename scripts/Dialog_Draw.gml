draw_sprite_ext(dialog_sprite, 0, 0, display_get_gui_height() - sprite_get_height(dialog_sprite) * 2, 2, 2, 0, c_white, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(npc_font);
draw_text(display_get_gui_width() / 2, display_get_gui_height() - sprite_get_height(dialog_sprite), msg);
