data modify entity @s Item.tag.HideFlags set value 2
setblock ~ 255 ~ oak_sign
data modify entity @s Item.tag.display.Lore append value '" "'
# 在主手时
data modify entity @s Item.tag.display.Lore append value '[{"text":"","color":"gray","italic":"false"},{"translate":"item.modifiers.mainhand"}]'
# 攻击伤害
execute store result score #temp cppValue run data get entity @s Item.tag.AttributeModifiers[{Name:"cpp_attack_damage"}].Amount 10000

execute store result score #lv cppValue run data get entity @s Item.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
scoreboard players set #5000 cppValue 5000
execute if score #lv cppValue matches 1.. run scoreboard players operation #lv cppValue *= #5000 cppValue
execute if score #lv cppValue matches 1.. run scoreboard players add #lv cppValue 5000
execute if score #lv cppValue matches 1.. run scoreboard players operation #temp cppValue += #lv cppValue
execute store result entity @s Item.tag.AttributeModifiers[{Name:"cpp_attack_damage"}].Amount double 0.0001 run scoreboard players get #temp cppValue

scoreboard players add #temp cppValue 50
scoreboard players operation #temp cppValue /= #100 cppValue
scoreboard players add #temp cppValue 100
scoreboard players operation #t0 cppValue = #temp cppValue
scoreboard players operation #t0 cppValue /= #100 cppValue
scoreboard players operation #temp cppValue %= #100 cppValue
scoreboard players operation #s cppValue = #temp cppValue
scoreboard players operation #s cppValue %= #10 cppValue
scoreboard players operation #s2 cppValue = #temp cppValue
scoreboard players operation #s2 cppValue /= #10 cppValue
data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute if score #temp cppValue matches ..9 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".0",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute if score #s cppValue matches 0 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#s2"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
execute if score #temp cppValue matches 0 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}}," ",{"translate":"attribute.name.generic.attack_damage"}]'
data modify entity @s Item.tag.display.Lore append from block ~ 255 ~ Text1
# 攻击速度
execute store result score #temp cppValue run data get entity @s Item.tag.AttributeModifiers[{Name:"cpp_attack_speed"}].Amount 10000
scoreboard players add #temp cppValue 50
scoreboard players operation #temp cppValue /= #100 cppValue
scoreboard players add #temp cppValue 400
scoreboard players operation #t0 cppValue = #temp cppValue
scoreboard players operation #t0 cppValue /= #100 cppValue
scoreboard players operation #temp cppValue %= #100 cppValue
scoreboard players operation #s cppValue = #temp cppValue
scoreboard players operation #s cppValue %= #10 cppValue
scoreboard players operation #s2 cppValue = #temp cppValue
scoreboard players operation #s2 cppValue /= #10 cppValue
data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute if score #temp cppValue matches 1..9 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".0",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute if score #s cppValue matches 0 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#s2"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
execute if score #temp cppValue matches 0 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}}," ",{"translate":"attribute.name.generic.attack_speed"}]'
data modify entity @s Item.tag.display.Lore append from block ~ 255 ~ Text1
setblock ~ 255 ~ air