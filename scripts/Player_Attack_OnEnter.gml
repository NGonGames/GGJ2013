switch (GameData.weapon) {
    case 0: instance_create(x, y, PlayerBulletHand); break;
    case 1: instance_create(x, y, PlayerBulletAxe); break;
    case 2: instance_create(x, y, PlayerBulletGrenade); break;
    case 3: instance_create(x, y, PlayerBulletIce); break;
    case 4: instance_create(x, y, PlayerBulletFire); break;
    case 5: instance_create(x, y, PlayerBulletSin); break;
}

var diff = heart.as_high - heart.as_low;

state.sprite.rate = heart.as_low + diff * (heart.heartCur / heart.heartMax);
