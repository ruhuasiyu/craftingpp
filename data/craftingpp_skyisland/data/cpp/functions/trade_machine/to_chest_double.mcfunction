execute store result score @s cppSlotsDown run data get block ~ ~ ~ Items
execute as @s[scores={cppSlotsDown=0..25}] run function cpp:trade_machine/dist
