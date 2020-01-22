setblock ~ 255 ~ oak_sign
scoreboard players operation #t cppValue = @s cppTradeValue
data modify block ~ 255 ~ Text1 set value '[{"score":{"name":"#t","objective":"cppValue"},"color":"green","italic":"false"}]'
scoreboard players operation #t cppValue /= #100000 cppValue
execute if score #t cppValue matches 101.. run scoreboard players set #t cppValue 100
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.CustomModelData int 1 run scoreboard players add #t cppValue 12972000
data modify block ~ ~ ~ Items[{Slot:8b}].tag.display.Lore[0] set from block ~ 255 ~ Text1
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore[0] set from block ~ 255 ~ Text1
data modify block ~ ~ ~ Items[{Slot:26b}].tag.display.Lore[0] set from block ~ 255 ~ Text1
setblock ~ 255 ~ air
