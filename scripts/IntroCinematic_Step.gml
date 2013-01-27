if(scene < 4){
    if(!audio_is_playing(sounds[scene])) {
        scene++;
        if(scene<4){
            transition = 0;
            audio_play_music(sounds[scene], false);
        }
        sprite_index = images[scene*2]; //play_once
    }
}
    if (sprite_index == images[scene*2] && image_index == sprite_get_number(sprite_index)-1) {
        if(scene == 4) {
            room_goto(test0);
            exit;
        }
        sprite_index = images[(scene*2)+1];
    }
if(transition<1) {
    transition += 0.05;
}
