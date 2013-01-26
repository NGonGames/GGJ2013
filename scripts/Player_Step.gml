event_inherited();
if(place_meeting(x,y,DamageHitbox)) {
  var i = instance_place(x,y,DamageHitbox);
  Force_Attach(i.force,motion);
}
