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
