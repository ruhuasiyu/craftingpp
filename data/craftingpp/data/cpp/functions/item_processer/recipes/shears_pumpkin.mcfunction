replaceitem block ~ ~ ~ container.15 jack_o_lantern
replaceitem block ~ ~ ~ container.16 pumpkin_seeds 4
execute store result score #temp1 cppValue run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add #temp1 cppValue 1
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:shears",tag:{Damage:238}}]
