execute store result score @s cppSlotsDown run data get block ~ ~ ~ Items
execute unless block ~ ~ ~ #cpp:container run scoreboard players set @s cppSlotsDown 27

execute as @s[scores={cppSlotsDown=0..25,cppTemperature=0,cppPressure=0}] run function cpp:all_in_one_machine/dist/ll
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=0,cppPressure=1}] run function cpp:all_in_one_machine/dist/ln
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=0,cppPressure=2}] run function cpp:all_in_one_machine/dist/lh
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=1,cppPressure=0}] run function cpp:all_in_one_machine/dist/nl
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=1,cppPressure=1}] run function cpp:all_in_one_machine/dist/nn
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=1,cppPressure=2}] run function cpp:all_in_one_machine/dist/nh
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=2,cppPressure=0}] run function cpp:all_in_one_machine/dist/hl
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=2,cppPressure=1}] run function cpp:all_in_one_machine/dist/hn
execute as @s[scores={cppSlotsDown=0..25,cppTemperature=2,cppPressure=2}] run function cpp:all_in_one_machine/dist/hh
