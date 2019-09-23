scoreboard players remove @s cppStoredxp 32

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:4b}].Count
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players remove #temp cppValue 1
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:22b}].Count
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players remove #temp cppValue 1

scoreboard players set #random_min cppRandom 1
scoreboard players set #random_max cppRandom 16
execute as @s[scores={cppMacType=41}] run function cpp:random
execute as @s[scores={cppMacType=43}] run function cpp:random
execute as @s[scores={cppMacType=50}] run function cpp:random

execute as @s[scores={cppMacType=41,cppRandom=1..7}] run summon vindicator ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=41,cppRandom=8..14}] run summon pillager ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=41,cppRandom=15}] run summon evoker ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=41,cppRandom=16}] run summon ravager ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=43,cppRandom=1}] run summon elder_guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=43,cppRandom=2..16}] run summon guardian ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=44}] run summon shulker ~ ~-2 ~ {PersistenceRequired:1b,Color:16b}
execute as @s[scores={cppMacType=45}] run summon wither_skeleton ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=46}] run summon wolf ~ ~-2 ~ {Angry:0b}
execute as @s[scores={cppMacType=47}] run summon cat ~ ~-2 ~ {PersistenceRequired:1b}
execute as @s[scores={cppMacType=48}] run summon horse ~ ~-2 ~
execute as @s[scores={cppMacType=49}] run summon donkey ~ ~-2 ~
execute as @s[scores={cppMacType=50,cppRandom=1..15}] run summon llama ~ ~-2 ~
execute as @s[scores={cppMacType=50,cppRandom=16}] run summon trader_llama ~ ~-2 ~
execute as @s[scores={cppMacType=51}] run summon parrot ~ ~-2 ~
execute as @s[scores={cppMacType=52}] run summon turtle ~ ~-2 ~
execute as @s[scores={cppMacType=53}] run summon fox ~ ~-2 ~
execute as @s[scores={cppMacType=54}] run summon panda ~ ~-2 ~

scoreboard players reset @s cppTick
