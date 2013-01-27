sounds[0] = introcinematic_sound1;
sounds[1] = introcinematic_sound2;
sounds[2] = introcinematic_sound3;
sounds[3] = introcinematic_sound4;

images[0] = introcinematic_1f_sprite;//play once
images[1] = introcinematic_1l_sprite;
images[2] = introcinematic_2f_sprite;//play once
images[3] = introcinematic_2l_sprite;
images[4] = introcinematic_3f_sprite;//play once
images[5] = introcinematic_3l_sprite;
images[6] = introcinematic_4f_sprite;//play once
images[7] = introcinematic_4l_sprite;
images[8] = introcinematic_4e_sprite;//play once

words[0] = "A great darkness rained down from the sky and filled the hearts of the people with apathy and sadness.";
words[1] = "The darkness fed upon the hearts of the people ...";
words[2] = "... and created its army. ";
words[3] = "As one of the few who didn’t give into the apathy you must stay vigilant and try to find a way to survive in the darkness.";

scene = 0;
transition = 0;

audio_play_music(sounds[0], false);
sprite_index = images[0];
image_xscale = 2;
image_yscale = 2;
