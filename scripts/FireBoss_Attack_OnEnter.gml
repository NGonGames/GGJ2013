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

for(var i = 0; i<5; i++) {
    var angle = 0;
    var yspeed = 0;
    switch(i) {
        case 0:
            angle = 30;
            yspeed = -3;
            break;
        case 1:
            angle = 15;
            yspeed = -1.5;
            break;
        case 3:
            angle = -15;
            yspeed = 1.5;
            break;
        case 4:
            angle = 30;
            yspeed = 3;
            break;
    }        
    with (instance_create(x, y, FireBossBullet)) {
        vel.x = sign(Player.x - other.x) * 10;
        image_xscale = sign(vel.x);
        image_angle = angle * sign(vel.x);
        vel.y = yspeed;
    }
}


state.sprite.index = 0;
