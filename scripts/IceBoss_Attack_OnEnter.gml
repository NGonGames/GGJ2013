with (instance_create(x, y, DamageHitbox)) {
    owner = other.id;
    damage = 10;
    type = "enemy";
    force = instance_create(0, 0, Force);
    force.impulse = true;
    force.x = 10;
    force.y = 10;
    sprite_index = other.sprite_index;
    other.damageHitbox = id;
}

with (instance_create(x, y, IceBossBullet)) {
    vel.x = sign(Player.x - other.x) * 10;
    image_xscale = sign(vel.x);
}

state.sprite.index = 0;
