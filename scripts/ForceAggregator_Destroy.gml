while (ds_list_size(force_list)) {
    if (instance_exists(ds_list_find_value(force_list, 0))) {
        with (ds_list_find_value(force_list, 0)) {
            instance_destroy();
        }
        ds_list_delete(force_list, 0);
    }
}
ds_list_destroy(force_list);
