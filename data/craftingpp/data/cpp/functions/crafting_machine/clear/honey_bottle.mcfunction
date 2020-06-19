data modify storage cpp:temp Items set from block ~ ~ ~ Items
execute store result score #t1 cppValue run data remove storage cpp:temp Items[{id:"minecraft:honey_bottle",Count:1b}]
execute store result score #t2 cppValue run data remove storage cpp:temp Items[{id:"minecraft:honey_bottle"}]

data modify storage cpp:dist Item set value {id:"minecraft:glass_bottle",Count:1b}
execute store result storage cpp:dist Item.Count byte 1 run scoreboard players operation #t1 cppValue += #t2 cppValue
function cpp:dist/machine
data remove storage cpp:dist Item

execute as @s[tag=!cpp_dist_success] run data remove block ~ ~ ~ Items[{id:"minecraft:honey_bottle",Count:1b}].tag
execute as @s[tag=!cpp_dist_success] if data block ~ ~ ~ Items[{id:"minecraft:honey_bottle",Count:1b}] run data modify block ~ ~ ~ Items[{id:"minecraft:honey_bottle",Count:1b}] merge value {id:"minecraft:glass_bottle",Count:2b}
execute as @s[tag=!cpp_dist_success] run setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,Count:1b,id:"minecraft:glass_bottle"}]}
execute as @s[tag=!cpp_dist_success] store result block ~ 255 ~ Items[0].Count byte 1 run scoreboard players get #t2 cppValue
execute as @s[tag=!cpp_dist_success] run loot give @p mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[tag=!cpp_dist_success] run setblock ~ 255 ~ air
