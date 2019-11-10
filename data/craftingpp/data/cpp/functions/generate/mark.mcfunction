fill ~-16 0 ~-16 ~15 0 ~15 air
fill ~-16 1 ~-16 ~15 1 ~15 bedrock
# 全区块生成
execute if predicate cpp:chance25 run function cpp:generate/structures/creeper_dungeon
# 扩散生成
loot spawn ~ ~ ~ loot cpp:generate/markers
execute store result score #t cppValue run spreadplayers ~ ~ 0 15 false @e[type=item,nbt={Item:{tag:{cppIsGenerateMarker:1b}}}]
execute as @e[type=item,nbt={Item:{tag:{cppIsGenerateMarker:1b}}}] at @s run function cpp:generate/build
kill @e[type=item,nbt={Item:{tag:{cppIsGenerateMarker:1b}}}]
