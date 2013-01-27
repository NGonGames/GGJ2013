event_inherited();
motion = instance_create(0, 0, ForceAggregator);
vel = instance_create(0, 0, Force);

vel.x = 7;
vel.yacl = 2.1;
motion.decay = 0.7;
damageHitbox = -1;
Force_Attach(vel, motion);


patrol = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  patrol.main = IceBoss_Patrol;
  patrol.onEnter = IceBoss_Patrol_OnEnter;                        // link Player_Stand as script for step event
  patrol.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    patrol.sprite.left = iboss_walk_l_sprite;               // left facing idle sprite ID
    patrol.sprite.right = iboss_walk_r_sprite;              // right facing idle sprite ID
  Animation_Refresh(patrol.sprite);                  // set the rest of the idle animation vairables automatically
  patrol.startx = x;
  patrol.distance = 200;

  
attack = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  attack.main = IceBoss_Attack;   
  attack.onEnter = IceBoss_Attack_OnEnter;                   // link Player_Stand as script for step event
  attack.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    attack.sprite.left = iboss_attack_l_sprite;               // left facing idle sprite ID
    attack.sprite.right = iboss_attack_r_sprite;              // right facing idle sprite ID
  Animation_Refresh(attack.sprite);
  attack.cooldown = 30;
  
special = instance_create(0, 0, StateTemplate);
  special.main = IceBoss_Special;
  special.sprite = instance_create(0, 0, Animation);
    special.sprite.left = iboss_power_l_sprite;
    special.sprite.right = iboss_power_r_sprite;
  Animation_Refresh(special.sprite);

dazed.sprite.left = patrol.sprite.left;
dazed.sprite.right = patrol.sprite.right;
state = patrol; state_last = patrol; state_next = patrol;
