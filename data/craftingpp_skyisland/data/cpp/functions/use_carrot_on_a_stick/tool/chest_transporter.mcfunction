summon item ~ ~ ~ {Item:{id:"minecraft:chest",Count:1b,tag:{BlockEntityTag:{Items:0}}},Tags:["cpp_temp"]}
data modify entity @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
setblock ~ ~ ~ air
tag @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] remove cpp_temp

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp2 cppValue run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp2 cppValue run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

execute if score #temp2 cppValue matches 0 run loot spawn ~ ~ ~ loot cpp:random/1
execute if score #temp2 cppValue matches 1 run loot spawn ~ ~ ~ loot cpp:random/2
execute if score #temp2 cppValue matches 2 run loot spawn ~ ~ ~ loot cpp:random/3
execute if score #temp2 cppValue matches 3 run loot spawn ~ ~ ~ loot cpp:random/4
execute if score #temp2 cppValue matches 4 run loot spawn ~ ~ ~ loot cpp:random/5
execute if score #temp2 cppValue matches 5 run loot spawn ~ ~ ~ loot cpp:random/6
execute if score #temp2 cppValue matches 6 run loot spawn ~ ~ ~ loot cpp:random/7
execute if score #temp2 cppValue matches 7 run loot spawn ~ ~ ~ loot cpp:random/8
execute if score #temp2 cppValue matches 8.. run loot spawn ~ ~ ~ loot cpp:random/9

execute as @s[gamemode=!creative] if entity @e[type=item,distance=..2,nbt={Item:{tag:{isRdMark:1b}}}] run function cpp:use_carrot_on_a_stick/tool/chest_transporter_damage
