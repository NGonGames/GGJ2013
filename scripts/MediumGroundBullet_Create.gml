event_inherited();
motion = instance_create(0,0,ForceAggregator);
motion.owner = id;
sprite_index = mgp_sprite;
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

vel = instance_create(0,0,Force);
vel.y = 2;

Force_Attach(vel, motion);
