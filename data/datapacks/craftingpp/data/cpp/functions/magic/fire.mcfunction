tellraw @s {"translate":"info.cpp.magic.fire"}
function cpp:magic/get_front_air
execute as @s[scores={cppWandLevel=1}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run fill ~ ~-1 ~ ~ ~1 ~ fire keep
execute as @s[scores={cppWandLevel=2}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep
execute as @s[scores={cppWandLevel=3}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 fire keep
kill @e[type=area_effect_cloud,tag=cpp_far_front_air]
