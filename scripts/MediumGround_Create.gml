motion = instance_create(0, 0, ForceAggregator);
vel = instance_create(0, 0, Force);

vel.x = 5;
vel.yacl = 2.1;
motion.decay = 0.5;
damageHitbox = -1;
Force_Attach(vel, motion);

walk_distance = 200;

startX = x;
patrol = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  patrol.main = SmallGround_Partrol;
  patrol.onEnter = SmallGround_Patrol_OnEnter;                        // link Player_Stand as script for step event
  patrol.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    patrol.sprite.left = mground_l_patrol_sprite;               // left facing idle sprite ID
    patrol.sprite.right = mground_r_patrol_sprite;              // right facing idle sprite ID
  Animation_Refresh(patrol.sprite);                  // set the rest of the idle animation vairables automatically

  
attack = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  attack.main = SmallGround_Attack;   
  attack.onEnter = SmallGround_Attack_OnEnter;                   // link Player_Stand as script for step event
  attack.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    attack.sprite.left = mground_l_attack_sprite;               // left facing idle sprite ID
    attack.sprite.right = mground_r_attack_sprite;              // right facing idle sprite ID
  Animation_Refresh(attack.sprite);
  
state = patrol; state_last = patrol; state_next = patrol; 
