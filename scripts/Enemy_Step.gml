event_inherited();
if(place_meeting(x,y,DamageHitbox)) {
    var i = instance_place(x,y,DamageHitbox);
    if(i.type == "player") {
        //add force of hitbox to enemy
        Force_Attach(i.force,motion);
        show_debug_message(string(i.force.x));
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

if (place_meeting(x, y, Enemy)) {
    x = xprevious;
    y = yprevious;
}
//if only force acting on enemy is its vel unsuspend Animation Direction Change
if(ds_list_size(motion.force_list) == 1) {
    ChangeDirection = true;
}
else {
    ChangeDirection = false;
}


if(hp < 0) {
    instance_destroy();
}
