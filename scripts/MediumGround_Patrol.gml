if (abs(x - patrol.startx) > patrol.distance || place_meeting(x + sign (vel.x), y, Solid) || place_meeting(x + sign(vel.x), y, Enemy) ||
 (!place_meeting(x + sign(vel.x), y + 1, Solid) && !place_meeting(x + sign(vel.x), y + 2, Solid))) {
    vel.x *= -1
}

vel.y += vel.yacl;

Move_X(motion, 1);
Move_Y(motion);

if (abs(Player.x - x) < 256 && abs(Player.y - y) < 128 && attack.cooldown == 0) {
    State_Change(attack);
    vel.x = abs(vel.x) * sign(Player.x - x);
}
