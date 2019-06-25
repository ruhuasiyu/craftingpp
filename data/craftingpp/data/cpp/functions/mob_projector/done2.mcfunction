scoreboard players remove @s cppStoredxp 8

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove #temp cppValue 1

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 16
execute as @s[scores={cppMacType=31}] run function cpp:random

execute as @s[scores={cppMacType=21}] run summon witch ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=22}] run summon slime ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=23}] run summon phantom ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=24}] run summon polar_bear ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=25}] run summon zombie_pigman ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=26}] run summon ghast ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=27}] run summon magma_cube ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=28}] run summon blaze ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=29}] run summon enderman ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=30}] run summon endermite ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=31,cppRandom=1..15}] run summon villager ~ ~-2 ~
execute as @s[scores={cppMacType=31,cppRandom=16}] run summon wandering_trader ~ ~-2 ~

scoreboard players reset @s cppTick
