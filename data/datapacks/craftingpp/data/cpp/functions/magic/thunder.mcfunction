tellraw @s {"translate":"info.cpp.magic.thunder"}
function cpp:magic/get_front_air
execute at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt
execute as @s[scores={cppWandLevel=2..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~ ~ ~1
execute as @s[scores={cppWandLevel=2..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~ ~ ~-1
execute as @s[scores={cppWandLevel=2..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~1 ~ ~
execute as @s[scores={cppWandLevel=2..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~-1 ~ ~

execute as @s[scores={cppWandLevel=3..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~-1 ~ ~-1
execute as @s[scores={cppWandLevel=3..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~-1 ~ ~1
execute as @s[scores={cppWandLevel=3..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~1 ~ ~-1
execute as @s[scores={cppWandLevel=3..}] at @e[type=area_effect_cloud,tag=cpp_far_front_air] run summon lightning_bolt ~1 ~ ~1
kill @e[type=area_effect_cloud,tag=cpp_far_front_air]
