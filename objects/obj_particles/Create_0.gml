part_sys = part_system_create();

part_type_explode = part_type_create();
part_type_sprite(part_type_explode, spr_part_burst, false, false, false);
part_type_size(part_type_explode, 1, 2, 0.05, 1);
part_type_color3(part_type_explode, c_orange, c_yellow, c_silver);
part_type_life(part_type_explode, 30, 30);

part_type_spark = part_type_create();
part_type_shape(part_type_spark, pt_shape_spark);
part_type_size(part_type_spark, 0.25, 0.5, 0.05, 0);
part_type_color3(part_type_spark, c_orange, c_yellow, c_silver);
part_type_life(part_type_spark, 15, 15);

part_type_missile_exhaust = part_type_create();
part_type_sprite(part_type_missile_exhaust, spr_spaceEffects_006, false, false, false);
part_type_size(part_type_missile_exhaust, 0.3, 0.5, 0.1, 0);
part_type_scale(part_type_missile_exhaust, 0.75, 0.5);
part_type_orientation(part_type_missile_exhaust, 270, 270, 0, 0, false);
part_type_life(part_type_missile_exhaust, 10, 10);

part_type_hit_char = part_type_create();
part_type_shape(part_type_hit_char, pt_shape_circle);
part_type_size(part_type_hit_char, 0.25, 0.5, 0.05, 0);
part_type_life(part_type_hit_char, 5, 5);

part_type_jet = part_type_create();
part_type_sprite(part_type_jet,spr_spaceEffects_001,false,false,false);
part_type_orientation(part_type_jet, 270, 270, 0, 0, false);
part_type_life(part_type_jet, 10, 10);