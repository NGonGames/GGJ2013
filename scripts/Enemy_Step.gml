event_inherited();
if(place_meeting(x,y,DamageHitbox)) {
    var i = instance_place(x,y,DamageHitbox);
    if(i.type == "player") {
        //destroy player bullet and reduce hp
        
        hp -= i.damage;
        Player.heart.heartCur += 8;
        with(i) {
            with(i.owner) {
                instance_destroy();   
            }            
            instance_destroy();
        }
    }
}

if(hp < 0) {
    instance_destroy();
}

if (place_meeting(x, y, Enemy)) {
    x = xprevious;
    y = yprevious;
}
