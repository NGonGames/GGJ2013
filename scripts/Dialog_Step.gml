image_alpha -= (image_alpha - 1) / 5;

if (image_alpha > .9) {
    if (Input_Pressed(Input.interact)) {
        instance_destroy();
    }
}
