fill ~ 13 ~ ~6 19 ~6 minecraft:air
setblock ~2 14 ~1 minecraft:structure_block{posX:-2,posY:-1,posZ:-1,name:"cpp:build/mossybox",mode:"LOAD",integrity:0.5f}
setblock ~1 14 ~1 minecraft:redstone_block
fill ~ 13 ~ ~6 19 ~6 minecraft:cobblestone keep
fill ~1 14 ~1 ~5 18 ~5 minecraft:air
setblock ~3 14 ~3 minecraft:mob_spawner{MaxNearbyEntities:6s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{id:"minecraft:creeper"},MaxSpawnDelay:800s,MaxSpawnDelay:200s,SpawnRange:4s}
setblock ~3 14 ~5 minecraft:chest{LootTable:"minecraft:chests/simple_dungeon"}
setblock ~3 14 ~1 minecraft:chest[facing=south]{LootTable:"minecraft:chests/simple_dungeon"}