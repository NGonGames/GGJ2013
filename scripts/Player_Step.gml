var diff = heart.xend - heart.xbegin;
vel.xcap = heart.xbegin + diff * (heart.heartCur / heart.heartMax);
diff = heart.hpr_high - heart.hpr_low;
var hpr = heart.hpr_low + diff * (1 - heart.heartCur / heart.heartMax);

event_inherited();
if(place_meeting(x, y, DamageHitbox) && state != recoil) {
    if(instance_place(x, y,DamageHitbox).type != "player") {
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
            if (i.damage) {
                hp -= i.damage;
            }
        }
    }
}

if (hp < 100) {
    hp += .1;
}

//Dont do physics for things not on screen
instance_activate_all();
instance_deactivate_region(view_xview - 500, view_yview - 500, view_wview + 500, view_hview + 500, false, true);
//activate stuff in at 0,0
instance_activate_region(-10, -10, 20, 20, true);
instance_activate_object(Camera);

if (place_meeting(x, y, DamageHitbox)) {
    if(instance_place(x,y, DamageHitbox).type != "player") {
        vel.x = 0;
        vel.y = 0;
    }
}

if (Input_Pressed(Input.menu)) {
    instance_create(0, 0, PauseMenu);
}

if (place_meeting(x, y, Key)) {
    with (instance_place(x, y, Key)) {
        instance_destroy();
        GameData.num_keys += 1;
    }
}


