tp @e[dx=20,dy=20,dz=20,type=item] ~ ~512 ~
fill ~ ~ ~ ~20 ~20 ~20 oak_door replace minecraft:coal_ore 
fill ~ ~ ~ ~20 ~20 ~20 spruce_door replace minecraft:iron_ore 
fill ~ ~ ~ ~20 ~20 ~20 birch_door replace minecraft:gold_ore 
fill ~ ~ ~ ~20 ~20 ~20 jungle_door replace minecraft:emerald_ore 
fill ~ ~ ~ ~20 ~20 ~20 acacia_door replace minecraft:lapis_ore 
fill ~ ~ ~ ~20 ~20 ~20 dark_oak_door replace minecraft:diamond_ore 
fill ~ ~ ~ ~20 ~20 ~20 sunflower replace minecraft:redstone_ore 
clone ~ ~ ~ ~20 ~20 ~20 ~ ~ ~ replace move

execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:oak_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre1"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:spruce_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre2"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:birch_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre3"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:jungle_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre4"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:acacia_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre5"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:dark_oak_door"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre6"}
execute at @e[dx=20,dy=20,dz=20,type=item,nbt={Item:{id:"minecraft:sunflower"}}] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,Invulnerable:1,Tags:["cpp_ore_shulker"],ActiveEffects:[{Id:14,Duration:300,ShowParticles:0b},{Id:24,Duration:200,ShowParticles:0b}],DeathLootTable:"minecraft:empty",Team:"cppOre7"}
execute at @e[team=cppOre1] run setblock ~ ~ ~ coal_ore
execute at @e[team=cppOre2] run setblock ~ ~ ~ iron_ore
execute at @e[team=cppOre3] run setblock ~ ~ ~ gold_ore
execute at @e[team=cppOre4] run setblock ~ ~ ~ emerald_ore
execute at @e[team=cppOre5] run setblock ~ ~ ~ lapis_ore
execute at @e[team=cppOre6] run setblock ~ ~ ~ diamond_ore
execute at @e[team=cppOre7] run setblock ~ ~ ~ redstone_ore
kill @e[dx=20,dy=20,dz=20,type=item]
execute offset ~ ~512 ~ run tp @e[dx=20,dy=20,dz=20,type=item] ~ ~-512 ~
tp @s ~ -1000 ~
kill @s