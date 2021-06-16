part_sys = part_system_create();

part_type_explode = part_type_create();
part_type_sprite(part_type_explode, spr_part_burst, false, false, false);
part_type_size(part_type_explode, 1, 0.5, -0.01, 0.05);
part_type_color3(part_type_explode, c_orange, c_yellow, c_silver);
part_type_alpha3(part_type_explode, 0.75, 0.5, 0);
part_type_life(part_type_explode, 20, 20);