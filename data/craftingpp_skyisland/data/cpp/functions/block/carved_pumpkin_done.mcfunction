summon item ~ ~ ~ {Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:12971000}},Tags:["cpp_temp"]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] run data modify entity @e[tag=cpp_temp,distance=..0.1,limit=1] Item set from entity @s SelectedItem
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carved_pumpkin"}}] run data modify entity @e[tag=cpp_temp,distance=..0.1,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
data modify entity @e[tag=cpp_temp,distance=..0.1,limit=1] Item.Count set value 1b
tag @e[tag=cpp_temp,distance=..0.1,limit=1] remove cpp_temp
setblock ~ ~ ~ air
