data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_sky"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_sky\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_ocean"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ocean\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_ridge"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ridge\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_earth"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_earth\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_fire"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_fire\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_life"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_life\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_sky"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_sky\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_ocean"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ocean\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_ridge"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ridge\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_earth"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_earth\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_fire"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_fire\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_long_life"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_life\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_sky"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_sky\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_ocean"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ocean\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_ridge"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_ridge\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_earth"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_earth\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_fire"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_fire\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion",tag:{id:"cpp:splash_potion_of_strong_life"}}].tag.display.Name set value "{\"translate\":\"item.cpp.lingering_potion_of_life\"}"
data modify block ~ ~ ~ Items[{id:"minecraft:splash_potion"}].id set value "minecraft:lingering_potion"

execute store result score #temp cppValue run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players remove #temp cppValue 1
tag @s remove cpp_potion_of_long
