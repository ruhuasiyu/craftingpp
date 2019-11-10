execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp cppValue run data get entity @s SelectedItem.tag.Damage
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result score #temp cppValue run data get entity @s Inventory[{Slot:-106b}].tag.Damage
scoreboard players add #temp cppValue 1

execute as @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get #temp cppValue
execute as @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #temp cppValue

execute if score #temp cppValue matches 26.. run replaceitem entity @s[nbt=!{SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] weapon.offhand air
execute if score #temp cppValue matches 26.. run replaceitem entity @s[nbt={SelectedItem:{tag:{id:"cpp:chest_transporter"}}}] weapon.mainhand air

kill @e[type=item,distance=..2,nbt={Item:{tag:{isRdMark:1b}}},limit=1]
clear @a firework_star{isRdMark:1b}
