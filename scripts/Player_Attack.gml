if (state.age == 0) {};

if (state.age >= state.sprite.length) {
    State_Change(stand);
}

vel.y += vel.yacl;

Move_X(motion);
Move_Y(motion);
