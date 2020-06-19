setblock ~ 255 ~ chest
loot insert ~ 255 ~ loot cpp:misc/random_smart_hand
execute store result score @s cppTick run data get block ~ 255 ~ Items[0].tag.AttributeModifiers[0].Amount
setblock ~ 255 ~ air
