execute store result score @s cppValue run data get block ~ ~ ~ Items
scoreboard players remove @s cppValue 18
execute as @s[scores={cppValue=1..}] run function cpp:crafting_machine/type
