event_inherited();
motion = instance_create(0, 0, ForceAggregator);
vel = instance_create(0, 0, Force);

vel.x = 6;
vel.yacl = 2.1;
motion.decay = 0.5;
damageHitbox = -1;
Force_Attach(vel, motion);

patrol = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  patrol.main = AirSpike_Patrol;                       // link Player_Stand as script for step event
  patrol.onEnter = AirSpike_Patrol_OnEnter;
  patrol.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    patrol.sprite.left = air_l_patrol_sprite;               // left facing idle sprite ID
    patrol.sprite.right = air_r_patrol_sprite;              // right facing idle sprite ID
  Animation_Refresh(patrol.sprite);                  // set the rest of the idle animation vairables automatically
  patrol.startx = x;
  patrol.starty = y;
  patrol.distance = 350;
  
dive = instance_create(0, 0, StateTemplate);
  dive.main = AirSpike_Dive;
  dive.sprite = instance_create(0, 0, Animation);
    dive.sprite.left = air_l_patrol_sprite;
    dive.sprite.right = air_r_patrol_sprite;
  Animation_Refresh(dive.sprite);
  dive.spd = 6;

  
attack = instance_create(0, 0, StateTemplate);       // represents normal, stationary resting
  attack.main = AirSpike_Attack;   
  attack.onEnter = AirSpike_Attack_OnEnter;                   // link Player_Stand as script for step event
  attack.sprite = instance_create(0, 0, Animation);  // create animation object to represent idling
    attack.sprite.left = air_l_attack_sprite;               // left facing idle sprite ID
    attack.sprite.right = air_r_attack_sprite;              // right facing idle sprite ID
  Animation_Refresh(attack.sprite);
  attack.cooldown = 0;
  
state = patrol; state_last = patrol; state_next = patrol; 
