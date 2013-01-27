sprite_index = bulletice_sprite;
event_inherited();
damageHitbox.damage = 10;
vel.x = sign(Player.vel.xmax) * 20;
damageHitbox.force.x = vel.x;
damageHitbox.force.y = -10;
