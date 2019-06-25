execute as @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run function cpp:chain/xp
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
function cpp:chain/damage_check
execute if score #temp cppValue < #max_durality cppValue run function cpp:chain/pickaxe4/mark
