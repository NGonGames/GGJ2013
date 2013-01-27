sprite_index = bullethand_sprite;
event_inherited();
vel.x = sign(Player.vel.xmax) * 20;
vel.t = 0;
vel.y = -5;
