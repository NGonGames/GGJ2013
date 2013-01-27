sprite_index = bulletfire_sprite;
event_inherited();
vel.x = sign(Player.vel.xmax) * 20;
damageHitbox.damage = 2;
