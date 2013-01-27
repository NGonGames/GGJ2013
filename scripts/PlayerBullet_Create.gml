event_inherited();
motion = instance_create(0,0,ForceAggregator);

with (instance_create(x, y, DamageHitbox)) {
    owner = other.id;
    type = "player";
    force = instance_create(0, 0, Force);
    force.impulse = true;
    sprite_index = other.sprite_index;
    other.damageHitbox = id;
}

vel = instance_create(0,0,Force);

image_xscale = sign(Player.vel.xmax);
Force_Attach(vel, motion);
