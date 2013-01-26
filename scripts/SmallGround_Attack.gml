if(state.age == 0) {
    with(instance_create(0,0,DamageHitbox)) {
        owner = other.id;
        damage = 10;
        type = "enemy";
        force = instance_create(0,0,Force);
        force.impulse = true;
        force.x = 10;
        force.y = 10;
    }
    state.sprite.index = 0;
}

if(state.age >= state.sprite.length) {
    State_Change(patrol);
}
