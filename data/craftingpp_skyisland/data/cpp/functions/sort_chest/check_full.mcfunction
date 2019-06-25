execute store result score #chest1 cppValue run data get block ~ ~ ~ Items
execute at @e[type=armor_stand,tag=cpp_sort_chest_half,distance=..2,limit=1] store result score #chest2 cppValue run data get block ~ ~ ~ Items
execute if score #chest1 cppValue matches ..26 if score #chest2 cppValue matches 1.. as @e[type=armor_stand,tag=cpp_sort_chest_half,distance=..2,limit=1] run function cpp:sort_chest/trans
