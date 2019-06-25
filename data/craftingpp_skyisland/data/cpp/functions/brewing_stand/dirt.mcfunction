execute if block ~ ~ ~ brewing_stand{Items:[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.0 potion{Potion:"minecraft:invisibility",CustomPotionColor:10319449,display:{Name:"{\"translate\":\"item.cpp.potion_of_dirt\"}",Lore:["{\"translate\":\"lore.cpp.chain\"}"]},CustomPotionEffects:[{Id:99b,Duration:3600s}],id:"cpp:potion_of_dirt",potionType:["normal"]}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.1 potion{Potion:"minecraft:invisibility",CustomPotionColor:10319449,display:{Name:"{\"translate\":\"item.cpp.potion_of_dirt\"}",Lore:["{\"translate\":\"lore.cpp.chain\"}"]},CustomPotionEffects:[{Id:99b,Duration:3600s}],id:"cpp:potion_of_dirt",potionType:["normal"]}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:2b,id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.2 potion{Potion:"minecraft:invisibility",CustomPotionColor:10319449,display:{Name:"{\"translate\":\"item.cpp.potion_of_dirt\"}",Lore:["{\"translate\":\"lore.cpp.chain\"}"]},CustomPotionEffects:[{Id:99b,Duration:3600s}],id:"cpp:potion_of_dirt",potionType:["normal"]}

execute if block ~ ~ ~ brewing_stand{Items:[{Slot:0b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.0 splash_potion{Potion:"minecraft:invisibility"}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:1b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.1 splash_potion{Potion:"minecraft:invisibility"}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:2b,id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.2 splash_potion{Potion:"minecraft:invisibility"}

execute if block ~ ~ ~ brewing_stand{Items:[{Slot:0b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.0 lingering_potion{Potion:"minecraft:invisibility"}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:1b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.1 lingering_potion{Potion:"minecraft:invisibility"}
execute if block ~ ~ ~ brewing_stand{Items:[{Slot:2b,id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}]} run replaceitem block ~ ~ ~ container.2 lingering_potion{Potion:"minecraft:invisibility"}

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
