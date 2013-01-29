if(owner != -1) {
x = owner.x;
y = owner.y;
}
for (var i = 0; i < ds_list_size(force_list); ++i) {
    var tempForce = ds_list_find_value(force_list, i);
    if (!instance_exists(tempForce)) {
        ds_list_delete(force_list, i);
    }
    else if(tempForce.impulse) {
        tempForce.x = tempForce.x * decay;
        tempForce.y = tempForce.y * decay;
        if(tempForce.x < 0.001 && tempForce.y < 0.001) {
            ds_list_delete(force_list, i);
            --i;
            with(tempForce) {
                instance_destroy();
            }
        }
    }
}
