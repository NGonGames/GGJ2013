var dc = draw_get_color();

draw_sprite(pausemenu_sprite, 0, 0, 0);

draw_text(kx, ky, string(GameData.num_keys));

for (var i = 114, j = 0; i < 920; i += 159) {
    draw_sprite(weapon_sprite,
        iff(GameData.item[j], j + 6 * iff(GameData.weapon == j, 0, 1), sprite_get_number(weapon_sprite) - 1),
        i - sprite_get_width(weapon_sprite)/2,
        401 - sprite_get_height(weapon_sprite)/2);
    j++
}

draw_set_color(dc);
