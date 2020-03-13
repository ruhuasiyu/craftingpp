execute as @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run function cpp:chain/xp
loot give @s mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
execute if predicate cpp:damage run scoreboard players add #damage cppValue 1
execute if score #damage cppValue < #max_durality cppValue run function cpp:chain/pickaxe2/mark
