loot replace block ~ ~ ~ container.16 1 loot cpp:crafting_machine/fish/dye2
execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:16b}].tag.cppDyeId 65536
loot replace block ~ ~ ~ container.16 1 loot cpp:crafting_machine/fish/dye3
execute store result score #temp1 cppValue run data get block ~ ~ ~ Items[{Slot:16b}].tag.cppDyeId 16777216
loot replace block ~ ~ ~ container.16 1 loot cpp:crafting_machine/fish/mat10
execute store result score #temp2 cppValue run data get block ~ ~ ~ Items[{Slot:16b}].tag.cppDyeId 256
loot replace block ~ ~ ~ container.16 1 loot cpp:crafting_machine/fish/mat11
execute store result score #temp3 cppValue run data get block ~ ~ ~ Items[{Slot:16b}].tag.cppDyeId

scoreboard players operation #temp cppValue += #temp1 cppValue
scoreboard players operation #temp cppValue += #temp2 cppValue
scoreboard players operation #temp cppValue += #temp3 cppValue
execute store result block ~ ~ ~ Items[{Slot:1b}].tag.BucketVariantTag int 1 run scoreboard players get #temp cppValue
replaceitem block ~ ~ ~ container.16 air
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 16b
