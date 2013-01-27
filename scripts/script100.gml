if(place_meeting(x,y,DamageHitbox)) {
    var i = instance_meeting(DamageHitbox);
    if(i.type == "player_bullet") {
        //destroy player bullet and reduce hp
        with(i) {
            instance_destroy();
        }
        hp -= i.damaage;
    }
}
