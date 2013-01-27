instance_create(x,y,PlayerBullet);

var diff = heart.as_high - heart.as_low;

state.sprite.rate = heart.as_low + diff * (heart.heartCur / heart.heartMax);
