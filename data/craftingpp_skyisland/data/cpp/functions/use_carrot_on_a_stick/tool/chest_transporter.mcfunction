summon item ~ ~ ~ {Item:{id:"minecraft:chest",Count:1b,tag:{BlockEntityTag:{Items:0}}},Tags:["cpp_temp"]}
data modify entity @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] Item.tag.BlockEntityTag.Items set from block ~ ~ ~ Items
setblock ~ ~ ~ air
tag @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] remove cpp_temp

scoreboard players set @s cppChainDam 0
execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score @s cppChainDam run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score @s cppChainDam run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add @s cppChainDam 1

# 获得1/(耐久度+1)几率的条件
loot spawn ~ ~ ~ loot cpp:random/60
execute store result score #damage_var cppValue run data get entity @e[type=item,nbt={Item:{tag:{isRdMark:1b}}},distance=..1,limit=1] Item.Count
scoreboard players operation #damage_var cppValue *= @s cppChainDam

execute as @s[gamemode=!creative] if score #damage_var cppValue matches ..60 run function cpp:use_carrot_on_a_stick/tool/chest_transporter_damage
