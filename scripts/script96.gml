event_inherited();
motion = instance_create(0,0,ForceAggregator);
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

force = instance_create(0,0,Force);
force.x = sign(Player.vel.xmax);
force.y = 0;

Force_Attach(force, motion);
