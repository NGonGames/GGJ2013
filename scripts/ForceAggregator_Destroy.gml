var countOut = 0;
while (ds_list_size(force_list) && countOut < 11) {
    if (instance_exists(ds_list_find_value(force_list, 0))) {
        with (ds_list_find_value(force_list, 0)) {
            instance_destroy();
        }
        ds_list_delete(force_list, 0);
    }
    countOut ++;
}
ds_list_destroy(force_list);
