event_inherited();
if(place_meeting(x + sign(vel.xmax),y,DamageHitbox) && state != recoil) {

  State_Change(recoil);
  var i = instance_place(x,y,DamageHitbox);
  show_debug_message("attached force");
  var maxX = (sprite_width/2)+(i.sprite_width/2);
  var actX = (x+(sprite_width/2))-(i.x+(i.sprite_width/2));
  var xMulti = actX/maxX;
  i.force.x *= xMulti;
  
  var maxY = (sprite_height/2)+(i.sprite_height/2);
  var actY =  y - i.y;
  var yMulti = actY/maxY;
  i.force.y *= yMulti;
  show_debug_message(string(i.force.y));
  Force_Attach(i.force,motion);
}
if(place_meeting(x,y,DamageHitbox)) {
    vel.x = 0;
    vel.y = 0;
}
