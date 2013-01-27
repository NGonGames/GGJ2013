//clean up force and dmgHitbox after attack animation.

vel.x = attack.xspd * sign(vel.x);

Move_X(motion, true);

if(state.age >= state.sprite.length * 3) {
    with (damageHitbox) {
        instance_destroy();
    }
    State_Change(patrol);
    attack.cooldown = 30;
}
