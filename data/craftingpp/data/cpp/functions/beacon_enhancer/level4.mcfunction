scoreboard players add @a[distance=..64,scores={cppMana=..59}] cppMana 1
execute positioned ~ ~-2 ~ if entity @e[tag=cpp_sun_stone,distance=..0.5] positioned ~1 ~ ~1 if entity @e[tag=cpp_sun_stone,distance=..0.5] positioned ~ ~ ~-2 if entity @e[tag=cpp_sun_stone,distance=..0.5] positioned ~-2 ~ ~ if entity @e[tag=cpp_sun_stone,distance=..0.5] positioned ~ ~ ~2 if entity @e[tag=cpp_sun_stone,distance=..0.5] positioned ~1 ~ ~ if entity @e[tag=cpp_moon_stone,distance=..0.5] positioned ~ ~ ~-2 if entity @e[tag=cpp_moon_stone,distance=..0.5] positioned ~1 ~ ~1 if entity @e[tag=cpp_moon_stone,distance=..0.5] positioned ~-2 ~ ~ if entity @e[tag=cpp_moon_stone,distance=..0.5] run scoreboard players add @a[distance=..128,scores={cppMana=..99}] cppMana 1

execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..50] fire_resistance 17
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..50] water_breathing 17
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..50] night_vision 17
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..50] invisibility 17
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..50] saturation 17

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..50] slowness 17
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..50] weakness 17
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..50] glowing 17
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..50] poison 17
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..50] wither 17

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=!player,type=!armor_stand,distance=..50] slowness 17
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=!player,type=!armor_stand,distance=..50] weakness 17
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=!player,type=!armor_stand,distance=..50] glowing 17
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=!player,type=!armor_stand,distance=..50] poison 17
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=!player,type=!armor_stand,distance=..50] wither 17
