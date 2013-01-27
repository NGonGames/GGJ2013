switch (GameData.weapon) {
    case 0: instance_create(x, y, PlayerBulletHand); break;
    case 1: instance_create(x, y, PlayerBulletAxe); break;
    case 2: instance_create(x, y, PlayerBulletGrenade); break;
    case 3: instance_create(x, y, PlayerBulletIce); break;
    case 4:
        for(var i = 0; i<5; i++) {
            with(instance_create(x, y, PlayerBulletFire)) {
                switch(i) {
                    case 0:
                        image_angle = sign(vel.x) * 30;
                        vel.y = -3; 
                        break;
                    case 1:
                        image_angle = sign(vel.x) * 15;
                        vel.y = -1.5;
                        break;
                    case 2://do nothing and laugh
                        break;
                    case 3:
                        image_angle = sign(vel.x) * -15;
                        vel.y = 1.5; 
                        break;
                    case 4:
                        image_angle = sign(vel.x) * -30;
                        vel.y = 3; 
                        break;
                }
            }   
        }             
      break;
    case 5: instance_create(x, y, PlayerBulletSin); break;
}

var diff = heart.as_high - heart.as_low;

state.sprite.rate = heart.as_low + diff * (heart.heartCur / heart.heartMax);
