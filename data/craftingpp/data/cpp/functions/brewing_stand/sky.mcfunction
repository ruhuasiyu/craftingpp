data modify block ~ ~ ~ Items[{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:swiftness",CustomPotionColor:155585,display:{Name:"{\"translate\":\"item.cpp.potion_of_sky\"}"},CustomPotionEffects:[{Id:28b,Duration:1800}],id:"cpp:potion_of_sky",potionType:["normal"]}
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:swiftness",CustomPotionColor:155585,display:{Name:"{\"translate\":\"item.cpp.splash_potion_of_sky\"}"},CustomPotionEffects:[{Id:28b,Duration:1800}],id:"cpp:splash_potion_of_sky",potionType:["normal"]}
data modify block ~ ~ ~ Items[{id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:swiftness",CustomPotionColor:155585,display:{Name:"{\"translate\":\"item.cpp.lingering_potion_of_sky\"}"},CustomPotionEffects:[{Id:28b,Duration:1800}],id:"cpp:lingering_potion_of_sky",potionType:["normal"]}

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
