scoreboard players operation #temp cppValue += #temp1 cppValue
scoreboard players operation #temp cppValue += #temp2 cppValue
scoreboard players operation #temp cppValue += #temp3 cppValue
execute store result block ~ ~ ~ Items[{Slot:1b}].tag.BucketVariantTag int 1 run scoreboard players get #temp cppValue
replaceitem block ~ ~ ~ container.16 air
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16b
