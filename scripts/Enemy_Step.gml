event_inherited();
if(place_meeting(x,y,DamageHitbox)) {
    var i = instance_place(x,y,DamageHitbox);
    show_debug_message("collision with bullet");
    if(i.type == "player") {
        //destroy player bullet and reduce hp
        with(i) {
            with(i.owner) {
                instance_destroy();   
            }            
            instance_destroy();
        }
        hp -= i.damaage;
    }
}

if(hp < 0) {
    instance_destroy();
}
