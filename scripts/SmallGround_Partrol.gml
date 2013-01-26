if (abs(x - startX) > walk_distance || place_meeting(x + sign (vel.x), y, Solid) || place_meeting(x + sign(vel.x), y, Enemy)) {
    vel.x *= -1
}

vel.y += vel.yacl;

Move_X(motion, 1);
Move_Y(motion);
