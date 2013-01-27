event_inherited();
motion = instance_create(0,0,ForceAggregator);

sprite_index = bullet0_r_sprite;
with (instance_create(x, y, DamageHitbox)) {
    owner = other.id;
    damage = 10;
    type = "player";
    force = instance_create(0, 0, Force);
    force.impulse = true;
    force.x = 10;
    force.y = 10;
    sprite_index = other.sprite_index;
    other.damageHitbox = id;
}

vel = instance_create(0,0,Force);
vel.x = sign(Player.vel.xmax) * 20;
vel.y = 0;
image_xscale = sign(Player.vel.xmax);

sprite = instance_create(0, 0, Animation);
sprite.left = bullet0_r_sprite;
sprite.right = bullet0_r_sprite;
Animation_Refresh(sprite);

Force_Attach(vel, motion);
