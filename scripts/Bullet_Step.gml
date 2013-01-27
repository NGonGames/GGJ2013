if(motion != -1 ) {
    show_debug_message(string(vel.x));
    Move_X(motion, 0);
    Move_Y(motion);
}
//if  bullet does not colides with view screen
if(x<view_xview - 50 || x>view_xview + view_wview + 50 || y<view_yview - 50 || y>view_yview + view_hview + 50) {
    instance_destroy();
}
