draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, 0, c_white, 1); 
    draw_set_font(intro_font);
switch(scene) {
    case 0:    
        draw_text_ext_color(47, 171, words[0], 62, 930 , c_white, c_white, c_white, c_white, transition);
        break;
    case 1:    
        draw_text_ext_color(47, 171, words[1], 62, 930 , c_white, c_white, c_white, c_white, transition);
        break;
    case 2:    
        draw_text_ext_color(47, 171, words[2], 62, 930 , c_white, c_white, c_white, c_white, transition);
        break;
    case 3:    
        draw_text_ext_color(47, 141, words[3], 62, 884 , c_white, c_white, c_white, c_white, transition);
        break;
}
