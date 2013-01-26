with(instance_create(x,y,DamageHitbox)) {

    owner = other.id;
    damage = 10;
    type = "enemy";
    force = instance_create(0,0,Force);
    force.impulse = true;
    force.x = 10;
    force.y = 10;
    mask_index = object_get_mask(other);
    other.damageHitbox = id;
}
state.sprite.index = 0;
