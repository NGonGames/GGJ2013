//clean up force and dmgHitbox after attack animation.
if(state.age >= state.sprite.length) {
    with (damageHitbox) {
        instance_destroy();
    }
    State_Change(patrol);
}
