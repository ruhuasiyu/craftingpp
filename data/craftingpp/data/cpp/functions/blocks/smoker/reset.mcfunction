advancement revoke @s only cpp:block/smoker
execute anchored eyes run function cpp:block/smoker/ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] positioned ~ ~1 ~ anchored eyes run function cpp:block/smoker/ray
execute unless entity @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] positioned ~ ~-1 ~ anchored eyes run function cpp:block/smoker/ray
execute at @e[type=area_effect_cloud,distance=..7,tag=cpp_adv_pos] run function cpp:block/smoker/put
