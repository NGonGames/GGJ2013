if(motion != -1 ) {
    Move_X(motion);
    Move_Y(motion);
}
//if  bullet does not colides with view screen
if(x<view_xview - 50 || x>view_xview + view_wview + 50 || y<view_yview - 50 || y>view_yview + view_hview + 50) {
    instance_destroy();
    exit;
}

if (place_meeting(x + sign(vel.x), y, Solid)) {
    instance_destroy();
    exit;
}
