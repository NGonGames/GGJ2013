if (state.age == 0) {};

if (state.age >= state.sprite.length / state.sprite.rate) {
    State_Change(stand);
}

vel.y += vel.yacl;

Move_X(motion);
Move_Y(motion);
