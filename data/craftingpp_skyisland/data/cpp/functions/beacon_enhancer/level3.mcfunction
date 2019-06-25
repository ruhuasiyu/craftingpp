execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..40] fire_resistance 15
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..40] water_breathing 15
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..40] night_vision 15
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..40] invisibility 15
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..40] saturation 15

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..40] slowness 15
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..40] weakness 15
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..40] glowing 15
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..40] poison 15
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,type=!armor_stand,distance=..40] wither 15

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=!player,type=!armor_stand,distance=..40] slowness 15
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=!player,type=!armor_stand,distance=..40] weakness 15
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=!player,type=!armor_stand,distance=..40] glowing 15
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=!player,type=!armor_stand,distance=..40] poison 15
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=!player,type=!armor_stand,distance=..40] wither 15
