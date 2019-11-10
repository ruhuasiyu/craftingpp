data modify block ~ ~ ~ Items[{id:"minecraft:potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:invisibility",CustomPotionColor:10319449,display:{Name:"{\"translate\":\"item.cpp.potion_of_dirt\"}",Lore:["{\"translate\":\"lore.cpp.chain\"}"]},CustomPotionEffects:[{Id:99b,Duration:3600}],id:"cpp:potion_of_dirt",potionType:["normal"]}
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:invisibility"}
data modify block ~ ~ ~ Items[{id:"minecraft:lingering_potion",tag:{Potion:"minecraft:awkward"}}].tag set value {Potion:"minecraft:invisibility"}

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
