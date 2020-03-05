data modify entity @s Item.tag.HideFlags set value 2
setblock ~ 255 ~ oak_sign
data modify entity @s Item.tag.display.Lore append value '" "'
# 在主手时
data modify entity @s Item.tag.display.Lore append value '[{"text":"","color":"gray","italic":"false"},{"translate":"item.modifiers.mainhand"}]'
# 攻击速度
execute store result score #temp cppValue run data get entity @s Item.tag.AttributeModifiers[{Name:"cpp_attackSpeed"}].Amount 10000
scoreboard players add #temp cppValue 50
scoreboard players operation #temp cppValue /= #100 cppValue
scoreboard players add #temp cppValue 400
scoreboard players operation #t0 cppValue = #temp cppValue
scoreboard players operation #t0 cppValue /= #100 cppValue
scoreboard players operation #temp cppValue %= #100 cppValue
data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attackSpeed"}]'
execute if score #temp cppValue matches ..9 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".0",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attackSpeed"}]'
data modify entity @s Item.tag.display.Lore append from block ~ 255 ~ Text1
# 攻击伤害
execute store result score #temp cppValue run data get entity @s Item.tag.AttributeModifiers[{Name:"cpp_attackDamage"}].Amount 10000
scoreboard players add #temp cppValue 50
scoreboard players operation #temp cppValue /= #100 cppValue
scoreboard players add #temp cppValue 100
scoreboard players operation #t0 cppValue = #temp cppValue
scoreboard players operation #t0 cppValue /= #100 cppValue
scoreboard players operation #temp cppValue %= #100 cppValue
data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attackDamage"}]'
execute if score #temp cppValue matches ..9 run data modify block ~ 255 ~ Text1 set value '[{"color":"dark_green","italic":"false","text":" "},{"score":{"objective":"cppValue","name":"#t0"}},".0",{"score":{"objective":"cppValue","name":"#temp"}}," ",{"translate":"attribute.name.generic.attackDamage"}]'
data modify entity @s Item.tag.display.Lore append from block ~ 255 ~ Text1
setblock ~ 255 ~ air