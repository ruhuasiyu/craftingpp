execute as @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.cobblestone_heap"}}}}] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:heap/cobblestone",Tags:["cpp_dead"]}
kill @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.cobblestone_heap"}}}}]

execute as @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.stone_heap"}}}}] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:heap/stone",Tags:["cpp_dead"]}
kill @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.stone_heap"}}}}]

execute as @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.dirt_heap"}}}}] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:heap/dirt",Tags:["cpp_dead"]}
kill @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.dirt_heap"}}}}]

execute as @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.sand_heap"}}}}] run summon minecraft:bat ~ ~ ~ {ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b}],Silent:1,LifeTicks:1,Health:1,DeathLootTable:"cpp:heap/sand",Tags:["cpp_dead"]}
kill @s[nbt={Potion:{tag:{display:{LocName:"cpp.item.sand_heap"}}}}]
