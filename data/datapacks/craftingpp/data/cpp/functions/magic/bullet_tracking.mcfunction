particle minecraft:flame ~ ~ ~ 0.01 0.01 0.01 0.001 1
tag @e[tag=cpp_pseduo_target] remove cpp_pseduo_target
execute positioned ^ ^ ^64 run tag @e[type=#cpp:normal_mob,distance=..63] add cpp_pseduo_target

execute unless entity @e[type=player,distance=..32] unless entity @e[tag=cpp_pseduo_target,distance=..32,sort=nearest,limit=1] run kill @s

summon area_effect_cloud ^ ^ ^1 {Tags:["cpp_aec_marker"]}
execute as @e[type=area_effect_cloud,tag=cpp_aec_marker,sort=nearest,limit=1] at @s facing entity @e[tag=cpp_pseduo_target,distance=..32,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.2
execute at @e[type=area_effect_cloud,tag=cpp_aec_marker,sort=nearest,limit=1] run tp @s ~ ~ ~
kill @e[type=area_effect_cloud,tag=cpp_aec_marker,sort=nearest,limit=1]

execute as @s[tag=cpp_magic_wind1] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..2] glowing 2 0 true
execute as @s[tag=cpp_magic_wind1] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..2] levitation 1 63
execute as @s[tag=cpp_magic_wind2] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..3] glowing 2 0 true
execute as @s[tag=cpp_magic_wind2] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..3] levitation 1 63
execute as @s[tag=cpp_magic_wind3] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..5] glowing 2 0 true
execute as @s[tag=cpp_magic_wind3] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..5] levitation 1 63

execute as @s[tag=cpp_magic_spirit1] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..3] glowing 10 0 true
execute as @s[tag=cpp_magic_spirit1] if entity @e[type=#cpp:normal_mob,distance=..1.5] run scoreboard players add @e[type=#cpp:normal_mob,distance=..3] cppNoAITick 200
execute as @s[tag=cpp_magic_spirit1] if entity @e[type=#cpp:normal_mob,distance=..1.5] as @e[type=#cpp:normal_mob,distance=..3] run data merge entity @s {NoAI:1b}
execute as @s[tag=cpp_magic_spirit2] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..3] glowing 15 0 true
execute as @s[tag=cpp_magic_spirit2] if entity @e[type=#cpp:normal_mob,distance=..1.5] run scoreboard players add @e[type=#cpp:normal_mob,distance=..3] cppNoAITick 300
execute as @s[tag=cpp_magic_spirit2] if entity @e[type=#cpp:normal_mob,distance=..1.5] as @e[type=#cpp:normal_mob,distance=..3] run data merge entity @s {NoAI:1b}
execute as @s[tag=cpp_magic_spirit3] if entity @e[type=#cpp:normal_mob,distance=..1.5] run effect give @e[type=#cpp:normal_mob,distance=..3] glowing 20 0 true
execute as @s[tag=cpp_magic_spirit3] if entity @e[type=#cpp:normal_mob,distance=..1.5] run scoreboard players add @e[type=#cpp:normal_mob,distance=..3] cppNoAITick 400
execute as @s[tag=cpp_magic_spirit3] if entity @e[type=#cpp:normal_mob,distance=..1.5] as @e[type=#cpp:normal_mob,distance=..3] run data merge entity @s {NoAI:1b}

execute if entity @e[type=#cpp:normal_mob,distance=..1.5] run kill @s
