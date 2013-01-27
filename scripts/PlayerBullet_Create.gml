event_inherited();
motion = instance_create(0,0,ForceAggregator);

sprite_index = air_r_attack_sprite;
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
vel.x = sign(Player.vel.xmax) * 10;
vel.y = 0;

sprite = instance_create(0, 0, Animation);
sprite.left = air_l_attack_sprite;
sprite.right = air_r_attack_sprite;
Animation_Refresh(sprite);


Force_Attach(vel, motion);
