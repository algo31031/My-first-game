part_sys = part_system_create();
part_system_layer(part_sys, "Effects");

part_type_explode = part_type_create();
part_type_sprite(part_type_explode, spr_explosion3, false, false, false);
part_type_size(part_type_explode, 1.5, 1.75, 0.05, 0.25);
part_type_life(part_type_explode, 15, 15);
part_type_explode_smoke = part_type_create();
part_type_sprite(part_type_explode_smoke, spr_explosion12, false, false, false);
part_type_size(part_type_explode_smoke, 1.75, 2, 0.05, 0.25);
part_type_life(part_type_explode_smoke, 20, 20);
part_type_alpha3(part_type_explode_smoke, 0.75, 0.5, 0.25);
part_type_explode_small = part_type_create();
part_type_sprite(part_type_explode_small, spr_explosion2, false, false, false);
part_type_size(part_type_explode_small, 0.5, 1, 0.1, 0.25);
part_type_life(part_type_explode_small, 10, 10);


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
part_type_life(part_type_missile_exhaust, 8, 8);
part_type_jetpack_exhaust = part_type_create();
part_type_sprite(part_type_jetpack_exhaust, spr_spaceEffects_017, false, false, false);
part_type_size(part_type_jetpack_exhaust, 0.3, 0.5, 0.1, 0.05);
part_type_scale(part_type_jetpack_exhaust, 0.5, 1);
part_type_orientation(part_type_jetpack_exhaust, 180, 180, 0, 0, false);
part_type_life(part_type_jetpack_exhaust, 8, 8);

part_type_hit_char = part_type_create();
part_type_shape(part_type_hit_char, pt_shape_circle);
part_type_size(part_type_hit_char, 0.25, 0.5, 0.05, 0);
part_type_life(part_type_hit_char, 5, 5);

part_type_jet = part_type_create();
part_type_sprite(part_type_jet,spr_spaceEffects_001,false,false,false);
part_type_orientation(part_type_jet, 270, 270, 0, 0, false);
part_type_life(part_type_jet, 10, 10);

part_type_smoke = part_type_create();
part_type_shape(part_type_smoke, pt_shape_smoke);
part_type_size(part_type_smoke, 0.2, 0.4, 0.02, 0.05);
part_type_life(part_type_smoke, 10, 10);
part_type_alpha3(part_type_smoke, 0.25, 0.75, 1);
part_type_color3(part_type_smoke, c_orange, c_gray, c_dkgray);

part_type_portal = part_type_create();
part_type_shape(part_type_portal, pt_shape_ring);
part_type_size(part_type_portal, 0.75, 1, 0.05, 0.05);
part_type_scale(part_type_portal, 0.25, 0.5);
part_type_life(part_type_portal, 30, 30);
part_type_color3(part_type_portal, c_olive, c_orange, c_yellow);

part_type_test = part_type_create();
part_type_shape(part_type_test, pt_shape_pixel);
part_type_size(part_type_test, 1, 1, 0, 2);
part_type_life(part_type_test, 10, 10);
part_type_alpha3(part_type_test,1,0.5,0.25);