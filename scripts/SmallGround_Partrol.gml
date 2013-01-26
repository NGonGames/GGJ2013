if (abs(x-startX)>walk_distance) {
    vel.x *= -1
}
vel.y += vel.yacl;
Move_X(motion, 1);
Move_Y(motion);
