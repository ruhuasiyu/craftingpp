advancement grant @a[distance=..16] only cpp:broadcast_age

execute store result score #pri cppValue run data get block ~ ~-1 ~ Primary
execute store result score #sec cppValue run data get block ~ ~-1 ~ Secondary
execute unless score #pri cppValue = #sec cppValue run function cpp:beacon_enhancer/super1
execute if score #pri cppValue = #sec cppValue run function cpp:beacon_enhancer/super2

execute as @s[scores={cppPlayerEff=1}] run effect give @a fire_resistance 17
execute as @s[scores={cppPlayerEff=2}] run effect give @a water_breathing 17
execute as @s[scores={cppPlayerEff=3}] run effect give @a night_vision 17
execute as @s[scores={cppPlayerEff=4}] run effect give @a invisibility 17
execute as @s[scores={cppPlayerEff=5}] run effect give @a saturation 17
execute as @s[scores={cppPlayerEff=6}] as @a unless score @s cppChainTick matches 340.. run scoreboard players set @s cppChainTick 340

execute as @s[scores={cppMobType=0,cppMobEff=1}] run effect give @e[type=#cpp:hostile] slowness 17
execute as @s[scores={cppMobType=0,cppMobEff=2}] run effect give @e[type=#cpp:hostile] weakness 17
execute as @s[scores={cppMobType=0,cppMobEff=3}] run effect give @e[type=#cpp:hostile] glowing 17
execute as @s[scores={cppMobType=0,cppMobEff=4}] run effect give @e[type=#cpp:hostile] poison 17
execute as @s[scores={cppMobType=0,cppMobEff=5}] run effect give @e[type=#cpp:hostile] wither 17
execute as @s[scores={cppMobType=0,cppMobEff=6}] run tp @e[type=#cpp:hostile,distance=..128] ~ ~1 ~

execute as @s[scores={cppMobType=1,cppMobEff=1}] run effect give @e[type=#cpp:normal_mob] slowness 17
execute as @s[scores={cppMobType=1,cppMobEff=2}] run effect give @e[type=#cpp:normal_mob] weakness 17
execute as @s[scores={cppMobType=1,cppMobEff=3}] run effect give @e[type=#cpp:normal_mob] glowing 17
execute as @s[scores={cppMobType=1,cppMobEff=4}] run effect give @e[type=#cpp:normal_mob] poison 17
execute as @s[scores={cppMobType=1,cppMobEff=5}] run effect give @e[type=#cpp:normal_mob] wither 17
execute as @s[scores={cppMobType=1,cppMobEff=6}] run tp @e[type=#cpp:normal_mob,distance=..128] ~ ~1 ~
