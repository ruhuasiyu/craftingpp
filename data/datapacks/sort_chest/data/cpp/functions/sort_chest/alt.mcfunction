tag @s add temp
scoreboard players operation #temp cppSortLen = @s cppSortLen
execute as @e[tag=cpp_sort_chest,tag=!temp] if score @s cppSortLen >= #temp cppSortLen run scoreboard players add @s cppSortLen 1
tag @s remove temp
