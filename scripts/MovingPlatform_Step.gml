if (!place_meeting(x + spd * dir, y, Solid)) {
    x += spd * dir;
} else {
    dir *= -1;
}


if (x < xstart) {
    dir = abs(dir);
} else if (x > xstart + length) {
    dir = -abs(dir);
}

if (place_meeting(x, y - 1, Player) && !place_meeting(x, y, Player)) {
    with (instance_place(x, y - 1, Player)) {
        repeat (other.spd) {
            if (!place_meeting(x + other.dir, y, Solid)) {
                x += other.dir;
            }
        }
    }
}
