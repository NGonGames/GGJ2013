event_inherited();
if(place_meeting(x + sign(vel.xmax), y, DamageHitbox) && state != recoil) {
    if(instance_place(x,y,DamageHitbox).type != "player") {
    State_Change(recoil);
    var i = instance_place(x, y, DamageHitbox);
    if (i.force != -1) {
        i.force.y = -20;
        if (i.x < x) {
            i.force.x = 20;
        } else {
            i.force.x = -20;
        }
        Force_Attach(i.force, motion);
    }
    }
}

if (place_meeting(x, y, DamageHitbox)) {
    if(instance_place(x,y, DamageHitbox).type != "player") {
    vel.x = 0;
    vel.y = 0;
    }
}
