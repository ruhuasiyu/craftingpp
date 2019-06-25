execute store result score #playerPos cppValue run data get entity @p[nbt={Inventory:[{tag:{id:"cpp:magnet",Type:0b}}]}] Pos[0] 100
execute store result score #itemPos cppValue run data get entity @s Pos[0] 100
execute store result entity @s Motion[0] double 0.001 run scoreboard players operation #playerPos cppValue -= #itemPos cppValue

execute store result score #playerPos cppValue run data get entity @p[nbt={Inventory:[{tag:{id:"cpp:magnet",Type:0b}}]}] Pos[1] 100
execute store result score #itemPos cppValue run data get entity @s Pos[1] 100
execute store result entity @s Motion[1] double 0.001 run scoreboard players operation #playerPos cppValue -= #itemPos cppValue

execute store result score #playerPos cppValue run data get entity @p[nbt={Inventory:[{tag:{id:"cpp:magnet",Type:0b}}]}] Pos[2] 100
execute store result score #itemPos cppValue run data get entity @s Pos[2] 100
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation #playerPos cppValue -= #itemPos cppValue
