if(!audio_is_playing(sounds[scene])) {
    if(scene == 3) {
        room_goto(test0);
    }
    scene++;
    transition = 0;
    audio_play_music(sounds[scene], false);
    sprite_index = images[scene];
}
if(transition<1) {
    transition += 0.05;
}
