
if (Input_Pressed(Input.menu)) {
    instance_activate_all();
    instance_destroy();
}

for (var i = 0; i < 5; i++) {
    if (device_mouse_check_button_pressed(i, mb_left)) {
        var dx = device_mouse_raw_x(i), dy = device_mouse_raw_y(i);
        for (var j = 114, k = 0; j < 920; j += 159) {
            var dis = point_distance(dx, dy, j, 401);
            if (dis < 71 && GameData.item[k]) {
                GameData.weapon = k;
            }
            ++k;
        }
        
        var dis = point_distance(dx, dy, 965, 60);
        if (dis < 46) {
            instance_activate_all();
            instance_destroy();
        }
    }
}
