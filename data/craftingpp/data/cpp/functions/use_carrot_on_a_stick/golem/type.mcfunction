function cpp:use_carrot_on_a_stick/golem/get_front_motion_block
execute at @e[type=area_effect_cloud,distance=..8,tag=cpp_front_motion_block,limit=1] run function cpp:use_carrot_on_a_stick/golem/type1
kill @e[type=area_effect_cloud,distance=..8,tag=cpp_front_motion_block,limit=1]
