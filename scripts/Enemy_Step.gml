event_inherited();
if(place_meeting(x,y,DamageHitbox)) {
    var i = instance_place(x,y,DamageHitbox);
    if(i.type == "player") {
        //add force of hitbox to enemy
        hp -= i.damage;
        if(i.owner.object_index == PlayerBulletFire)
        {
            Player.heart.heartCur += 1;            
        }
        if(i.owner.object_index == PlayerBulletIce)
        {
            dazedCounter = 10;
            State_Change(dazed);    
        }
        else {
            Player.heart.heartCur += 8;
        }
        with(i) {
            with(i.owner) {
                instance_destroy();   
            }            
            instance_destroy();
        }
    }
}

if (place_meeting(x, y, Enemy)) {
    x = xprevious;
    y = yprevious;
}

if(hp < 0) {
    instance_destroy();
}
