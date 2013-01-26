//clean up force and dmgHitbox after attack animation.
if(state.age >= state.sprite.length) {/*
    with(damageHitbox) {
        if(damageHitbox != -1) {
            with(force) {
                instance_destroy();
            }
        }
        instance_destroy();
    }*/
    State_Change(patrol);
}
