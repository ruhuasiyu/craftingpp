tag @s add temp
scoreboard players operation #temp cppSortLen = @s cppSortLen
scoreboard players set @s cppSortLenNew 0
execute as @e[tag=cpp_sort_chest] if score @s cppSortLen > #temp cppSortLen run scoreboard players add @e[tag=cpp_sort_chest,tag=temp] cppSortLenNew 1
tag @s remove temp
