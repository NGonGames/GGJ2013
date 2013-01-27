if (state.age == 0) {};

if (state.age >= state.sprite.length / state.sprite.rate) {
    State_Change(stand);
}

vel.y += vel.yacl;

Player_X_Input();
Player_X_Accelerate();

Move_X(motion);
Move_Y(motion);
