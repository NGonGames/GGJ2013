var d = point_distance(x, y, Player.x, Player.y);

vel.x = Player.x - x;
vel.y = Player.y - y;
vel.x /= d;
vel.y /= d;
vel.x *= dive.spd;
vel.y *= dive.spd;

Move_X(motion);
Move_Y(motion);

if (d > 400) {
    State_Change(patrol);
    vel.x = sign(vel.x) * 6;
}


if(place_meeting(x,y,Player) && state != attack) {
    State_Change(attack);
    vel.x = sign(vel.x) * 6;
}
