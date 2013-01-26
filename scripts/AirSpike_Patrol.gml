if (abs(x - patrol.startx) > patrol.distance || place_meeting(x + sign (vel.x), y, Solid) || place_meeting(x + sign(vel.x), y, Enemy)) {
    vel.x *= -1;
}

vel.y = max(0, min(abs(y - patrol.starty), 4)) * sign(patrol.starty - y);


Move_X(motion);
Move_Y(motion);

if (abs(Player.x - x) < 256 && abs(Player.y - y) < 256 && attack.cooldown == 0) {
    State_Change(dive);
    vel.x = abs(vel.x) * sign(Player.x - x);
}

attack.cooldown = max(attack.cooldown - 1, 0);
