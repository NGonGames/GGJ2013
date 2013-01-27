
if (Input_Pressed(Input.menu)) {
    instance_activate_all();
    instance_destroy();
}

for (var i = 0; i < 5; i++) {
    if (device_mouse_check_button_pressed(i, mb_left)) {
        
    }
}
