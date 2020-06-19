execute as @s[scores={cppPlayerEff=1}] run effect give @a[distance=..40] fire_resistance 15
execute as @s[scores={cppPlayerEff=2}] run effect give @a[distance=..40] water_breathing 15
execute as @s[scores={cppPlayerEff=3}] run effect give @a[distance=..40] night_vision 15
execute as @s[scores={cppPlayerEff=4}] run effect give @a[distance=..40] invisibility 15
execute as @s[scores={cppPlayerEff=5}] run effect give @a[distance=..40] saturation 15
execute as @s[scores={cppPlayerEff=6}] as @a[distance=..40] unless score @s cppChainTick matches 300.. run scoreboard players set @s cppChainTick 300

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile,distance=..40] slowness 15
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile,distance=..40] weakness 15
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile,distance=..40] glowing 15
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile,distance=..40] poison 15
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile,distance=..40] wither 15
execute as @s[scores={cppMobType=0,cppMobEff=6}] run tp @e[type=#cpp:hostile,distance=..40] ~ ~1 ~

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=#cpp:normal_mob,distance=..40] slowness 15
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=#cpp:normal_mob,distance=..40] weakness 15
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=#cpp:normal_mob,distance=..40] glowing 15
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=#cpp:normal_mob,distance=..40] poison 15
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=#cpp:normal_mob,distance=..40] wither 15
execute as @s[scores={cppMobType=1,cppMobEff=6}] run tp @e[type=#cpp:normal_mob,distance=..40] ~ ~1 ~
