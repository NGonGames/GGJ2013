event_inherited();
motion = instance_create(0,0,ForceAggregator);

sprite_index = icebossbullet_sprite;
with (instance_create(x, y, DamageHitbox)) {
    owner = other.id;
    damage = 10;
    type = "enemy";
    force = instance_create(0, 0, Force);
    force.impulse = true;
    sprite_index = other.sprite_index;
    other.damageHitbox = id;
}

vel = instance_create(0,0,Force);
vel.y = 5;

Force_Attach(vel, motion);
