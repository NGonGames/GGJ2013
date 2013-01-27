if (state.age == 0) {
    vel.y = 0;
};

vel.y += vel.yacl / 3;

if (vel.y > 3) {
    vel.y = 3;
}

Move_Y(motion);

if (place_meeting(x, y + 1, Solid)) {
    State_Change(stand);
    vel.xmax *= -1;
    exit;
}

if (!place_meeting(x - sign(vel.x), y, Solid) && !place_meeting(x + sign(vel.x), y, Solid)) {
    State_Change(fall);
    exit;
}

if (Input_Pressed(Input.down)) {
    State_Change(fall);
    if (!place_meeting(x - 1, y, Solid)) {
        x -= 1;
    } else if (!place_meeting(x + 1, y, Solid)) {
        x += 1;
    }
    vel.x *= -1;
    vel.xmax *= -1;
    exit;
}

if (Input_Pressed(Input.jump)) {
    State_Change(jump);
    jump.control = false;
    vel.xmax *= -1;
    vel.x = vel.xmax;
}
