part_sys = part_system_create();

part_type_explode = part_type_create();
part_type_sprite(part_type_explode, spr_part_burst, false, false, false);
part_type_size(part_type_explode, 1, 2, 0.05, 1);
part_type_color3(part_type_explode, c_orange, c_yellow, c_silver);
part_type_life(part_type_explode, 30, 30);

part_type_exhaust = part_type_create();
part_type_sprite(part_type_exhaust, cat_run_strip4, false, false, true);
part_type_size(part_type_exhaust, 2, 2, 0, 0);
part_type_life(part_type_exhaust, 60, 60);