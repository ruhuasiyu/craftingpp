execute store result score #temp cppValue run spreadplayers 0 0 1 10 false @s
execute if score #temp cppValue matches 0 run fill -1 62 -1 1 62 1 dirt
spreadplayers 0 0 1 10 false @s
tellraw @s ["<",{"selector":"@s"},"> Slonhon Ral!"]
