summon item ~ ~ ~ {Item:{id:"minecraft:chest",Count:1b,tag:{BlockEntityTag:{}}},Tags:["cpp_temp"]}
data modify entity @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] Item.tag.BlockEntityTag set from block ~ ~ ~ {}
setblock ~ ~ ~ air
tag @e[tag=cpp_temp,distance=..2,sort=nearest,limit=1] remove cpp_temp

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp cppValue run data get entity @s Inventory[{Slot:-106b}].tag.Damage
scoreboard players add #temp cppValue 1

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get #temp cppValue
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #temp cppValue

execute if score #temp cppValue matches 26.. run replaceitem entity @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}},gamemode=!creative] weapon.offhand air
execute if score #temp cppValue matches 26.. run replaceitem entity @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}},gamemode=!creative] weapon.mainhand air
