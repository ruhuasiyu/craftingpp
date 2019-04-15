data modify entity @s Offers.Recipes[3].buy.id set value "minecraft:firework_star"
data modify entity @s Offers.Recipes[3].buy merge value {tag:{display:{Name:"{\"translate\":\"item.cpp.moon_shard\"}"},id:"cpp:moon_shard",CustomModelData:12970027}}

setblock ~ 255 ~ chest
loot replace block ~ 255 ~ container.0 loot cpp:chests/exploration_map
data modify entity @s Offers.Recipes[3].sell.tag set from block ~ 255 ~ Items[0].tag
setblock ~ 255 ~ air
