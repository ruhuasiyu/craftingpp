scoreboard players add #time_conditioner cppValue 1
execute if score #time_conditioner cppValue matches 5 run scoreboard players set #time_conditioner cppValue 1
execute if score #time_conditioner cppValue matches 1 run tellraw @a [{"translate":"item.cpp.time_contitioner.info"},{"selector":"@s"},{"translate":"item.cpp.time_contitioner.accelerate"}]
execute if score #time_conditioner cppValue matches 2 run tellraw @a [{"translate":"item.cpp.time_contitioner.info"},{"selector":"@s"},{"translate":"item.cpp.time_contitioner.normal"}]
execute if score #time_conditioner cppValue matches 3 run tellraw @a [{"translate":"item.cpp.time_contitioner.info"},{"selector":"@s"},{"translate":"item.cpp.time_contitioner.uncycle"}]
execute if score #time_conditioner cppValue matches 4 run tellraw @a [{"translate":"item.cpp.time_contitioner.info"},{"selector":"@s"},{"translate":"item.cpp.time_contitioner.cycle"}]

execute if score #time_conditioner cppValue matches 1 run gamerule randomTickSpeed 6
execute if score #time_conditioner cppValue matches 2 run gamerule randomTickSpeed 3
execute if score #time_conditioner cppValue matches 3 run gamerule doDaylightCycle false
execute if score #time_conditioner cppValue matches 4 run gamerule doDaylightCycle true
