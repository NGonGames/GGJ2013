
var force_agg, xtot = 0;

if (argument_count == 1) {
    force_agg = argument[0];
} else {
    show_error("Improper number of arguments to ForceAggregator_Add_X", true);
}

for (var i = 0; i < ds_list_size(force_agg.force_list); ++i) {
    xtot += ds_list_find_value(force_agg.force_list, i).x;
}

return xtot;
