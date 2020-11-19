execute as @e[type=armor_stand,tag=cpp_mixed_slabs,tag=!cpp_mixed_slabs_schedule] at @s unless block ~ ~ ~ petrified_oak_slab[type=double] run tag @s add cpp_mixed_slabs_schedule
execute if entity @e[type=armor_stand,tag=cpp_mixed_slabs_schedule] unless entity @e[tag=cpp_mixed_slabs_schedule_tag] run schedule function cpp:mixed_slabs/schedule 3t
execute if entity @e[type=armor_stand,tag=cpp_mixed_slabs_schedule] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Marker:1b,Small:1b,DisabledSlots:7967,Tags:["cpp_mixed_slabs_schedule_tag"]}
execute unless entity @e[type=armor_stand,tag=cpp_mixed_slabs_schedule] run kill @e[tag=cpp_mixed_slabs_schedule_tag]
execute as @e[type=armor_stand,tag=cpp_mixed_slabs] run data merge entity @s {Fire:32767s}
