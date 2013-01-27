if (!argument[0] || !argument[1]) {
    exit;
}
with (argument[1]) {
    var f = argument[0];
    if(f.impulse) {
        var tmpF = instance_create(0,0,Force);
        tmpF.x = f.x;
        tmpF.y = f.y;
        tmpF.impulse = true;
        f = tmpF;
    }
    f.agg = id;
    ds_list_add(force_list, f);
}
