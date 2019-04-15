execute as @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] if block ~ ~ ~ coal_ore run summon experience_orb ~ ~ ~ {Value:1s}
execute as @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] if block ~ ~ ~ nether_quartz_ore run summon experience_orb ~ ~ ~ {Value:3s}
execute as @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] if block ~ ~ ~ lapis_ore run summon experience_orb ~ ~ ~ {Value:4s}
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
function cpp:chain/damage_check
execute if score #temp cppValue < #max_durality cppValue run function cpp:chain/pickaxe3/mark
