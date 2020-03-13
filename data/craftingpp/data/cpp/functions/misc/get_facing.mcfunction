# 将玩家的朝向存储在 cppValue 0-4 对应北东南西
execute store result score #facing cppValue run data get entity @s Rotation[0]
scoreboard players add #facing cppValue 225
execute if score #facing cppValue matches ..-1 run scoreboard players add #facing cppValue 360
execute if score #facing cppValue matches 360.. run scoreboard players remove #facing cppValue 360
scoreboard players operation #facing cppValue /= #90 cppValue
