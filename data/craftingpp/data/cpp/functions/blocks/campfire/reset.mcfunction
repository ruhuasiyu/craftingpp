advancement revoke @s only cpp:block/campfire
execute anchored eyes run function cpp:block/campfire/ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] positioned ~ ~1 ~ anchored eyes run function cpp:block/campfire/ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] positioned ~ ~-1 ~ anchored eyes run function cpp:block/campfire/ray
execute at @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] run function cpp:block/campfire/put
