execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..50] fire_resistance 17
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..50] water_breathing 17
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..50] night_vision 17
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..50] invisibility 17
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..50] saturation 17
execute as @s[scores={cppPlayerEff=6}] as @a[distance=..50] unless score @s cppChainTick matches 340.. run scoreboard players set @s cppChainTick 340

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,distance=..50] slowness 17
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,distance=..50] weakness 17
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,distance=..50] glowing 17
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,distance=..50] poison 17
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,distance=..50] wither 17
execute as @s[scores={cppMobType=0,cppMobEff=6}] run tp @e[type=#cpp:hostile,distance=..50] ~ ~1 ~

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=#cpp:normal_mob,distance=..50] slowness 17
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=#cpp:normal_mob,distance=..50] weakness 17
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=#cpp:normal_mob,distance=..50] glowing 17
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=#cpp:normal_mob,distance=..50] poison 17
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=#cpp:normal_mob,distance=..50] wither 17
execute as @s[scores={cppMobType=1,cppMobEff=6}] run tp @e[type=#cpp:normal_mob,distance=..50] ~ ~1 ~
