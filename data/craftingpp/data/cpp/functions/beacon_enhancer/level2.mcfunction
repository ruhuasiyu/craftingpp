execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..30] fire_resistance 13
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..30] water_breathing 13
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..30] night_vision 13
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..30] invisibility 13
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..30] saturation 13
execute as @s[scores={cppPlayerEff=6}] as @a[distance=..30] unless score @s cppChainTick matches 260.. run scoreboard players set @s cppChainTick 260

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,distance=..30] slowness 13
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,distance=..30] weakness 13
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,distance=..30] glowing 13
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,distance=..30] poison 13
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,distance=..30] wither 13
execute as @s[scores={cppMobType=0,cppMobEff=6}] run tp @e[type=#cpp:hostile,distance=..30] ~ ~1 ~

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=#cpp:normal_mob,distance=..30] slowness 13
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=#cpp:normal_mob,distance=..30] weakness 13
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=#cpp:normal_mob,distance=..30] glowing 13
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=#cpp:normal_mob,distance=..30] poison 13
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=#cpp:normal_mob,distance=..30] wither 13
execute as @s[scores={cppMobType=1,cppMobEff=6}] run tp @e[type=#cpp:normal_mob,distance=..30] ~ ~1 ~
