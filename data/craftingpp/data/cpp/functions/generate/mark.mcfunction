fill ~-16 0 ~-16 ~15 0 ~15 air
fill ~-16 1 ~-16 ~15 1 ~15 bedrock
# 全区块生成: 苦力怕刷怪笼
execute if predicate cpp:creeper_dungeon run function cpp:generate/structures/creeper_dungeon
# 扩散生成
loot spawn ~ ~ ~ loot cpp:generate/markers
execute store result score #t cppValue run spreadplayers ~ ~ 0 15 false @e[type=item,nbt={Item:{tag:{cppGenerateMarker:1b}}}]
execute as @e[type=item,nbt={Item:{tag:{cppGenerateMarker:1b}}}] at @s if block ~ ~-1 ~ grass run tp ~ ~-1 ~
execute as @e[type=item,nbt={Item:{tag:{cppGenerateMarker:1b}}}] at @s run function cpp:generate/build
