sprite_index = bulletgrenade_sprite;
event_inherited();
vel.x = sign(Player.vel.xmax) * 20;
vel.y = -15;
vel.yacl = 1.2;
