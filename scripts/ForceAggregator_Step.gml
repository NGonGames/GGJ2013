for (var i = 0; i < ds_list_size(force_list); ++i) {
    var tempForce = ds_list_find_value(force_list, i);
    if(tempForce.impulse) {
        tempForce.x = tempForce.x * decay;
        tempForce.y = tempForce.y * decay;
        /*if(tempForce.x < 0.01 && tempForce.y < 0.01) {
            ds_list_delete(force_list, i);
            --i;
            with(tempForce) {
                instance_destroy();
            }
        }*/
    }
}
