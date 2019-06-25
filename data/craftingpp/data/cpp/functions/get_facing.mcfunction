execute store result score @s cppValue run data get entity @s Rotation[0]
scoreboard players add @s cppValue 225
execute if score @s cppValue matches ..-1 run scoreboard players add @s cppValue 360
execute if score @s cppValue matches 360.. run scoreboard players remove @s cppValue 360
scoreboard players set #90 cppValue 90
scoreboard players operation @s cppValue /= #90 cppValue
