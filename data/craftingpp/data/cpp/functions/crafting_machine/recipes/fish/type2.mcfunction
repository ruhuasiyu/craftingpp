scoreboard players set #temp2 cppValue -1
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:experience_bottle"}]} run scoreboard players set #temp2 cppValue 0
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:glowstone_dust"}]} run scoreboard players set #temp2 cppValue 256
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:diamond"}]} run scoreboard players set #temp2 cppValue 512
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:coal"}]} run scoreboard players set #temp2 cppValue 768
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:redstone"}]} run scoreboard players set #temp2 cppValue 1024
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:lapis_lazuli"}]} run scoreboard players set #temp2 cppValue 1280
execute if score #temp2 cppValue matches 0.. run function cpp:crafting_machine/recipes/fish/type3
