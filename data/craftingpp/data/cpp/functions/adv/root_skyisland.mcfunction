tag @s add cpp_new_player
scoreboard players add #skyloc cppValue 1
execute if score #skyloc cppValue >= #skylen cppValue run function cpp:adv/root_skyisland0
execute if score #skyfac cppValue matches 0 run scoreboard players add #skymkx cppValue 1
execute if score #skyfac cppValue matches 1 run scoreboard players add #skymkz cppValue 1
execute if score #skyfac cppValue matches 2 run scoreboard players remove #skymkx cppValue 1
execute if score #skyfac cppValue matches 3 run scoreboard players remove #skymkz cppValue 1
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_temp"]}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=cpp_temp,distance=..1] run function cpp:adv/root_skyisland1
tag @s remove cpp_new_player
