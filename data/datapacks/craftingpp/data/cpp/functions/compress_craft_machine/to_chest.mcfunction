execute store result score @s cppSlotsDown run data get block ~ ~ ~ Items
execute unless block ~ ~ ~ #cpp:container run scoreboard players set @s cppSlotsDown 27

execute as @s[scores={cppSlotsDown=0..26}] run function cpp:compress_craft_machine/dist
