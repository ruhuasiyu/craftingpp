summon armor_stand ~ 72 ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_sorcerer_stone","cpp_barrier","cpp_need_fire","cpp_temp"],Fire:32767s}
spreadplayers ~ ~ 1 10 false @e[tag=cpp_sorcerer_stone,tag=cpp_temp]
execute as @e[tag=cpp_sorcerer_stone,tag=cpp_temp,limit=1] at @s align xyz run tp @s ~0.5 ~10 ~0.5
loot replace entity @e[tag=cpp_sorcerer_stone,tag=cpp_temp,limit=1] armor.head loot cpp:sorcerer_stone
execute at @e[tag=cpp_sorcerer_stone,tag=cpp_temp,limit=1] run setblock ~ ~ ~ barrier
scoreboard players set #load_sorcerer_stone cppValue 1
tag @e[tag=cpp_temp] remove cpp_temp
