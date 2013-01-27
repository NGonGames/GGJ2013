if (place_meeting(x, y, Player)) {
    if (Input_Pressed(Input.interact) && msg != "" && !instance_exists(Dialog)) {
        with (instance_create(0, 0, Dialog)) {
            msg = other.msg;
        }
    }
}
