if (damageHitbox != -1) {
    with(damageHitbox) {
        instance_destroy();
    }
}

if(vel != -1) {
    with(vel) {
        instance_destroy();
    }    
}

if (motion != -1) {
    with (motion) {
        instance_destroy();
    }
}
