# 获得1/(耐久度+1)几率的条件
loot spawn ~ ~ ~ loot cpp:random/60
execute store result score #damage_var cppValue run data get entity @e[type=item,nbt={Item:{tag:{isRdMark:1b}}},distance=..1,limit=1] Item.Count
scoreboard players operation #damage_var cppValue *= @s cppChainDam

execute if score #damage_var cppValue matches ..60 run scoreboard players add #temp cppValue 1
execute store result entity @s[gamemode=!creative] SelectedItem.tag.Damage int 1 run scoreboard players get #temp cppValue

kill @e[type=item,nbt={Item:{tag:{isRdMark:1b}}},distance=..1,limit=1]
