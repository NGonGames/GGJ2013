motion = instance_create(0, 0, ForceAggregator);
vel = instance_create(0, 0, Force);

vel.xmax = 14;      // @maximum horizontal velocity
vel.xcap = 14;      // maximum horizontal speed
vel.xacl = 1.8;     // @horizontal acceleration
vel.xprs = false;   // whether some form of horizontal input is held down.
vel.fric = 1.1;     // @horizontal friction

vel.ymax = 15;      // @maximum falling speed
vel.yacl = 2.1;     // @gravity

Force_Attach(vel, motion);
