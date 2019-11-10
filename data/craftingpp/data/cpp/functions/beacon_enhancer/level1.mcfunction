execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..20] fire_resistance 11
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..20] water_breathing 11
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..20] night_vision 11
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..20] invisibility 11
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..20] saturation 11

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,distance=..20] slowness 11
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,distance=..20] weakness 11
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,distance=..20] glowing 11
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,distance=..20] poison 11
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,distance=..20] wither 11

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=!player,type=!armor_stand,distance=..20] slowness 11
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=!player,type=!armor_stand,distance=..20] weakness 11
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=!player,type=!armor_stand,distance=..20] glowing 11
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=!player,type=!armor_stand,distance=..20] poison 11
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=!player,type=!armor_stand,distance=..20] wither 11
