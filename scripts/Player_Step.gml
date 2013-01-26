event_inherited();
if(place_meeting(x,y,DamageHitbox) && state != recoil ) {
  var i = instance_place(x,y,DamageHitbox);
  show_debug_message("attached force");
  if(i.x > x){
    i.force.x *= -1
  }
  Force_Attach(i.force,motion);
  State_Change(recoil);
}
