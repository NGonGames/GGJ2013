var dc = draw_get_color();

draw_set_color(c_white);
draw_sprite(pausemenu_sprite, 0, 0, 0);


//draw weapon images
var j = 0;
show_debug_message(string(GameData.item[j]))
for (var i = 114; i < 920; i += 159) {
    draw_sprite(weapon_sprite,
        iff(GameData.item[j], j + 6 * iff(GameData.weapon == j, 1, 0), sprite_get_number(weapon_sprite) - 1),
        i - sprite_get_width(weapon_sprite)/2,
        401 - sprite_get_height(weapon_sprite)/2);
    j++
}
j = 0;
//draw selected weapon
draw_sprite(weapon_sprite, GameData.weapon, 155 - sprite_get_width(weapon_sprite)/2, 178 - sprite_get_height(weapon_sprite)/2);

//draw player health

draw_sprite_ext(health_sprite, 0, healthX, healthY, healthW/sprite_get_width(health_sprite), healthH/sprite_get_height(health_sprite),0,c_white,1);
draw_sprite_ext(health_sprite, 1, healthX, healthY, healthW/sprite_get_width(health_sprite) * (hp/100), healthH/sprite_get_height(health_sprite),0,c_white,1);


//draw player heartbeat

if (heartbeat > 80) {
    draw_sprite_ext(hb5_sprite, -1, hbX,hbY, hbW/sprite_get_width(hb5_sprite), hbH/sprite_get_height(hb5_sprite),0,c_white,1);
} else if (heartbeat > 60) {
    draw_sprite_ext(hb4_sprite, -1, hbX,hbY, hbW/sprite_get_width(hb5_sprite), hbH/sprite_get_height(hb5_sprite),0,c_white,1);
} else if (heartbeat > 40) {
    draw_sprite_ext(hb3_sprite, -1, hbX,hbY, hbW/sprite_get_width(hb5_sprite), hbH/sprite_get_height(hb5_sprite),0,c_white,1);
} else if (heartbeat > 20) {
    draw_sprite_ext(hb2_sprite, -1, hbX,hbY, hbW/sprite_get_width(hb5_sprite), hbH/sprite_get_height(hb5_sprite),0,c_white,1);
} else {
    draw_sprite_ext(hb1_sprite, -1, hbX,hbY, hbW/sprite_get_width(hb5_sprite), hbH/sprite_get_height(hb5_sprite),0,c_white,1);
}

//draw keys 
draw_set_font(font0);
draw_set_color(c_white);
draw_text_transformed(kx, ky, string(GameData.num_keys), 1, 1, 0);
draw_set_color(c_black);
draw_text_transformed(kx+4, ky+6, string(GameData.num_keys), 0.9, 0.9, 0);

//draw level 
draw_set_font(font0);
draw_set_color(c_white);
draw_text_transformed(lvlX, lvlY, string(GameData.level), 1, 1, 0);
draw_set_color(c_black);
draw_text_transformed(lvlX+4, lvlY+6, string(GameData.level), 0.9, 0.9, 0);

draw_set_color(dc);
