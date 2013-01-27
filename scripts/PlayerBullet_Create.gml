event_inherited();
motion = instance_create(0,0,ForceAggregator);

sprite_index = bullethand_sprite;
with (instance_create(x, y, DamageHitbox)) {
    owner = other.id;
    type = "player";
    force = instance_create(0, 0, Force);
    force.impulse = true;
    sprite_index = other.sprite_index;
    other.damageHitbox = id;
}

vel = instance_create(0,0,Force);

image_xscale = sign(Player.vel.x);
Force_Attach(vel, motion);
