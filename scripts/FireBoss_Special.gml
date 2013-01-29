if(state.age >= state.sprite.length) {
    with (damageHitbox) {
        instance_destroy();
    }
    State_Change(patrol);
    attack.cooldown = 30;
}
