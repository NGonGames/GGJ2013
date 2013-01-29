if (place_meeting(x, y - 1, Solid)) {
    instance_destroy();
    exit;
}
if(y < 0)
{
    instance_destroy();
    exit;
}
vel.y -= 1;
event_inherited();
