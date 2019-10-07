execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_shovel"}]} run replaceitem block ~ ~ ~ container.15 minecraft:grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_shovel"}]} run replaceitem block ~ ~ ~ container.15 minecraft:grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_shovel"}]} run replaceitem block ~ ~ ~ container.15 minecraft:grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_shovel"}]} run replaceitem block ~ ~ ~ container.15 minecraft:grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_shovel"}]} run replaceitem block ~ ~ ~ container.15 minecraft:grass_path
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:golden_hoe"}]} run replaceitem block ~ ~ ~ container.15 minecraft:farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:wooden_hoe"}]} run replaceitem block ~ ~ ~ container.15 minecraft:farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:stone_hoe"}]} run replaceitem block ~ ~ ~ container.15 minecraft:farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:iron_hoe"}]} run replaceitem block ~ ~ ~ container.15 minecraft:farmland
execute if block ~ ~ ~ barrel{Items:[{Slot:3b,id:"minecraft:diamond_hoe"}]} run replaceitem block ~ ~ ~ container.15 minecraft:farmland

execute at @s as @s[scores={cppMacType=1201..1299}] store result score #temp1 cppValue run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute at @s as @s[scores={cppMacType=1201..1299}] store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players add #temp1 cppValue 1
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_shovel",tag:{Damage:33}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_shovel",tag:{Damage:60}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_shovel",tag:{Damage:132}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_shovel",tag:{Damage:251}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_shovel",tag:{Damage:1562}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:golden_hoe",tag:{Damage:33}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:wooden_hoe",tag:{Damage:60}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:stone_hoe",tag:{Damage:132}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:iron_hoe",tag:{Damage:251}}]
data remove block ~ ~ ~ Items[{Slot:3b,id:"minecraft:diamond_hoe",tag:{Damage:1562}}]
