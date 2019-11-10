scoreboard players set #skyloc cppValue 0
scoreboard players add #skyfac cppValue 1
execute if score #skyfac cppValue matches 4.. run scoreboard players set #skyfac cppValue 0
execute if score #skyfac cppValue matches 2 run scoreboard players add #skylen cppValue 1
execute if score #skyfac cppValue matches 0 run scoreboard players add #skylen cppValue 1
